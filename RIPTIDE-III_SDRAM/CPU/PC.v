module PC(
		input wire clk,
		input wire rst,
		input wire NZT2,
		input wire XEC2,
		input wire JMP,
		input wire CALL2,
		input wire RET,
		input wire interrupt,
		input wire[2:0] int_addr,
		input wire hazard,
		input wire data_hazard,
		input wire branch_hazard,
		//input wire pipeline_flush,
		input wire p_cache_miss,
		input wire[7:0] register_data,
		input wire[12:0] PC_I_field,
		input wire[7:0] PC_I_field2,
		output wire take_branch,
		output wire decoder_rst,
		output wire pipeline_flush,
		//output wire reg_nz,
		output wire[15:0] A);
		
reg prev_hazard;
reg prev_XEC;
reg p_miss;
reg prev_p_miss;
//reg prev_pipeline_flush;
reg prev_branch_taken;
reg[15:0] A_miss, A_miss_next;
reg[15:0] xec_return_addr;
reg[15:0] A_next_I;
reg[15:0] PC_reg;
reg[15:0] A_current_I, A_current_I_alternate, A_pipe0, A_pipe1, A_pipe2;

wire[7:0] adder_out;
wire[15:0] stack_out;
wire[15:0] stack_in;
wire stack_pop;
wire reg_nz;

assign adder_out = (register_data & {8{XEC2}}) + PC_I_field2;
assign reg_nz = |register_data;
assign stack_in = interrupt ? A_pipe2 : A_pipe1;
assign stack_pop = RET & (~branch_hazard) & (~((NZT2 & reg_nz) | XEC2) & (~CALL2)) & ~interrupt;
assign take_branch = ((~branch_hazard) & (JMP | RET)) | ((NZT2 & reg_nz) | XEC2 | CALL2) | interrupt;
assign pipeline_flush = (NZT2 & reg_nz) | XEC2 | CALL2 | interrupt;
assign decoder_rst = take_branch | prev_branch_taken | rst;

call_stack cstack0(.rst(rst), .clk(clk), .push(CALL2 | interrupt), .pop(stack_pop), .data_in(stack_in), .data_out(stack_out));

always @(posedge clk)
begin
	A_next_I <= PC_reg;
	//prev_pipeline_flush <= pipeline_flush;
	prev_branch_taken <= take_branch;
	if(XEC2)
		xec_return_addr <= A_pipe1;
end
always @(posedge clk or posedge rst)	//reset needs not be asynchronous, but doing this eliminates a mux and improves timing.
begin
	if(rst)
	begin
		prev_hazard <= 1'b0;
		prev_XEC <= 1'b0;
		p_miss <= 1'b0;
		prev_p_miss <= 1'b0;
		A_miss <= 16'h0;
		A_miss_next <= 16'h0000;
		A_current_I_alternate <= 16'h0000;
		A_current_I <= 16'h0000;
		A_pipe0 <= 16'h0000;
		A_pipe1 <= 16'h0000;
		A_pipe2 <= 16'h0000;
	end
	else
	begin
		prev_XEC <= XEC2;
		p_miss <= p_cache_miss;
		prev_p_miss <= p_miss;
		if(~p_miss)
		begin
			A_miss_next <= PC_reg;
			A_miss <= A_miss_next;
		end

		if(~p_cache_miss)
		begin
			prev_hazard <= hazard;
		end
		if(hazard && ~prev_hazard)
			A_current_I_alternate <= A_next_I;
		if(~hazard)
		begin
			if(prev_hazard)
				A_current_I <= A_current_I_alternate;
			else
				A_current_I <= A_next_I;
			A_pipe0 <= A_current_I;
		end
		
		if(~data_hazard)
		begin
			A_pipe1 <= A_pipe0;
			A_pipe2 <= A_pipe1;
		end
		
		//if(prev_pipeline_flush)
		if(prev_branch_taken)
		begin
			A_current_I_alternate <= PC_reg;
			A_current_I <= PC_reg;
			A_pipe0 <= PC_reg;
			A_pipe1 <= PC_reg;
			A_pipe2 <= PC_reg;
		end
	end
end

always @(posedge clk or posedge rst)
begin
	if(rst)
	begin
		PC_reg <= 16'h0000;
	end
	else if(CALL2 | (NZT2 & reg_nz) | XEC2 | interrupt | (RET & ~branch_hazard) | JMP | prev_XEC | (p_miss & ~prev_p_miss) | (~hazard & ~p_miss))
	begin
		if((CALL2 | XEC2 | (NZT2 & reg_nz)) & ~interrupt)
		begin
			if(CALL2)
			begin
				PC_reg[15:8] <= register_data;
			end
			else
			begin
				PC_reg[15:8] <= A_pipe2[15:8];
			end
			PC_reg[7:0] <= adder_out;
		end
		else
		begin
			if(interrupt | (RET & ~branch_hazard) | JMP | prev_XEC)
			begin
				if(interrupt | (RET & ~branch_hazard))
				begin
					if(interrupt)
					begin
						PC_reg[15:0] <= {13'h000, int_addr};
					end
					else
					begin
						PC_reg <= stack_out;
					end
				end
				else
				begin
					if(JMP)
					begin
						PC_reg <= {A_pipe0[15:13], PC_I_field};
					end
					else
					begin
						PC_reg <= xec_return_addr;
					end
				end
			end
			else
			begin
				if(p_miss & ~prev_p_miss)
				begin
					PC_reg[15:0] <= A_miss_next;
				end
				else
				begin
					PC_reg <= PC_reg + 16'h0001;
				end
			end
		end
	end
end

assign A = p_miss ? A_miss : PC_reg;

endmodule
