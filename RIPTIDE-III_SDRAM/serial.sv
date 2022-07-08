module serial(input logic clk, reset, A, CE, WREN, REN, rx, output logic tx, rx_int, tx_int, output logic[7:0] to_CPU, input logic[7:0] from_CPU);
//Note that the latency for this module is 2 clk cycles.
// Status bits:
//	bit 0: TX overwrite
// bit 1: RX overwrite
// bit 2: TX ready
// bit 3: RX ready
// bit 4: TX queue empty
// bit 5: RX queue full
logic rx_overwrite;
logic tx_overwrite;
logic rx_queue_full;
logic rx_queue_empty;
logic tx_queue_full;
logic tx_queue_empty;	//status bits.
logic[7:0] rx_queue_data;
logic rx_ready;
logic data_write;
logic data_read;

assign data_write = CE & WREN & ~A;
assign data_read = CE & REN & ~A;
assign tx_int = tx_queue_empty;
assign rx_int = rx_ready;

always @(posedge clk or posedge reset)
begin
	if(reset)
	begin
		rx_overwrite <= 1'b0;
		tx_overwrite <= 1'b0;
		to_CPU <= 8'h00;
	end
	else
	begin
		to_CPU <= A ? {2'b00, rx_queue_full, tx_queue_empty, ~rx_queue_empty, ~tx_queue_full, rx_overwrite, tx_overwrite} : rx_queue_data;
		if(data_write && tx_queue_full)	//write new and queue full
		begin
			tx_overwrite <= 1'b1;
		end
		if(CE && REN && A)	// read status
		begin
			tx_overwrite <= 1'b0;	//these are held for only one read cycle.
			rx_overwrite <= 1'b0;
		end
		if(rx_queue_full & rx_ready)	//receive new and queue full
		begin
			rx_overwrite <= 1'b1;
		end
	end
end

logic tx_ready;
logic[7:0] rx_data;
logic[7:0] tx_data;
logic tx_req;
logic tx_active;

always @(posedge clk or posedge reset)
begin
	if(reset)
		tx_active <= 1'b0;
	else
	begin
		if(tx_req)
			tx_active <= 1'b1;
		if(tx_ready)
			tx_active <= 1'b0;
	end
end

assign tx_req = ~tx_active && ~tx_queue_empty;

queue_8_8 tx_queue(.clk(clk), .reset(reset), .push(data_write), .pop(tx_req), .full(tx_queue_full), .empty(tx_queue_empty), .din(from_CPU), .dout(tx_data));
queue_8_8 rx_queue(.clk(clk), .reset(reset), .push(rx_ready), .pop(data_read), .full(rx_queue_full), .empty(rx_queue_empty), .din(rx_data), .dout(rx_queue_data));
UART UART_inst(.clk(clk), .reset(reset), .tx_req(tx_req), .tx_data(tx_data), .rx(rx), .tx(tx), .rx_data(rx_data), .tx_ready(tx_ready), .rx_ready(rx_ready));
endmodule
