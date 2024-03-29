module ps2_host(
		input wire clk,
		input wire rst,
		input wire ps2_clk_d,
		input wire ps2_data_d,
		input wire[7:0] tx_data,
		input wire tx_req,
		output reg ps2_clk_q,
		output reg ps2_data_q,
		output reg [7:0] rx_data,
		output reg rx_ready,
		output reg tx_ready);

reg prev_ps2_clk;
reg prev_tx_req;
wire tx_last;
reg prev_tx_last;
reg tx_done;
reg rx_inhibit;
reg ps2_clk_s, ps2_data_s;
reg [11:0] rx_shift_reg;
reg [9:0] tx_shift_reg;
reg[7:0] tx_hold;
reg [12:0] timer;	//50 MHz
//reg[11:0] timer;	//25 MHz
//reg[8:0] timer;	//4 MHz 100us timer
wire timer_z;

assign timer_z = (~|timer);
assign tx_last = &tx_shift_reg;

always @(posedge clk)
begin
	ps2_clk_s <= ps2_clk_d;
	ps2_data_s <= ps2_data_d;
	prev_ps2_clk <= ps2_clk_s;
	prev_tx_req <= tx_req;
	prev_tx_last <= tx_last;
	
	ps2_clk_q <= ~timer_z;
	ps2_data_q <= (~tx_shift_reg[0]) & timer_z;
	
	if(rst)
	begin
		rx_shift_reg <= 12'b100000000000;
		tx_shift_reg <= 10'b1111111111;
		timer <= 13'h0000;
		//timer <= 12'h000;
		//timer <= 9'h000;
		rx_data <= 8'h00;
		rx_ready <= 1'b0;
		rx_inhibit <= 1'b0;
		tx_done <= 1'b0;
		tx_ready <= 1'b0;
		tx_hold <= 8'h00;
	end
	else
	begin
		if(rx_shift_reg[0] | rx_inhibit)
			rx_shift_reg <= 12'b100000000000;
		else if(prev_ps2_clk & (~ps2_clk_s))
			rx_shift_reg <= {ps2_data_s, rx_shift_reg[11:1]};
		
		if(rx_shift_reg[0])	//last bit received
			rx_data <= rx_shift_reg[9:2];
		
		rx_ready <= rx_shift_reg[0];
		
		if(tx_req & (~prev_tx_req))
		begin
			timer <= 13'b1111111111111;
			//timer <= 12'hFFF;
			//timer <= 9'h1FF;
			rx_inhibit <= 1'b1;
			tx_hold <= tx_data;
		end
		else if(~timer_z)
			timer <= timer - 13'h0001;
			//timer <= timer - 12'h001;
			//timer <= timer - 9'h001;
		
		if(~timer_z)
			tx_shift_reg <= {~^tx_hold, tx_hold, 1'b0};
		else if(prev_ps2_clk & (~ps2_clk_s))
			tx_shift_reg <= {1'b1, tx_shift_reg[9:1]};

		if(tx_last & (~prev_tx_last))
			tx_done <= 1'b1;	//tx_done means the last 0 has been sent (data line is released by host)
			
		tx_ready <= tx_done & (prev_ps2_clk & (~ps2_clk_s) & (~ps2_data_s));	//detect ACK
		
		if(tx_ready)
		begin
			rx_inhibit <= 1'b0;
			tx_done <= 1'b0;
		end
	end
end
endmodule
