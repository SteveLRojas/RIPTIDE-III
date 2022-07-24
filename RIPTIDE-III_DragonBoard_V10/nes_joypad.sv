module nes_joypad(
		input wire rst,
		input wire clk,
		input wire[1:0] data_d,
		output reg[1:0] clk_q,
		output reg[1:0] latch_q,
		
		//output wire[7:0] jp1_d,
		//output wire[7:0] jp2_d,
		
		input wire rs,
		output reg[7:0] to_cpu
	);

	reg[7:0] cntr_200;
	reg clk_8us;
	
	reg [3:0] pulse_count;
	reg [7:0] data_shift[1:0];
	reg [7:0] joypad_buttons[1:0];
	
	//assign jp1_d = joypad_buttons[0];
	//assign jp2_d = joypad_buttons[1];
	
	always @(posedge clk or posedge rst)
	begin
		if(rst)
		begin
			cntr_200 <= 8'h0;
			clk_8us <= 1'b0;
			pulse_count <= 4'h0;
			data_shift[0] <= 8'h0;
			data_shift[1] <= 8'h0;
			joypad_buttons[0] <= 8'h00;
			joypad_buttons[1] <= 8'h00;
			clk_q <= 2'b00;
			latch_q <= 2'b00;
			to_cpu <= 8'h00;
		end
		else
		begin
			// Divided Clock (Trigger the pulses)
			if(cntr_200 == 8'd199)
			begin
				cntr_200 <= 8'h0;
				clk_8us <= ~clk_8us;
				
				// On rising edge
				if(~clk_8us)	
				begin
					pulse_count <= pulse_count + 4'b1;
					data_shift[0] <= {data_shift[0][6:0], data_d[0]};
					data_shift[1] <= {data_shift[1][6:0], data_d[1]};
					
					if(pulse_count == 4'd8)
					begin
						pulse_count <= 4'd0;
						joypad_buttons[0] <= data_shift[0];
						joypad_buttons[1] <= data_shift[1];
					end
				end
			end
			else
			begin
				cntr_200 <= cntr_200 + 8'b1;
			end
			
			// Send latch pulse & clock pulse
			// -> driving with clk_8us means this is in sync with divided clock block
			if(~|pulse_count)	
			begin
				latch_q <= ~{2{clk_8us}};
			end
			else
			begin
				latch_q <= 2'b11;
				clk_q <= {2{clk_8us}};
			end	
		
			// Drive register interface
			to_cpu <= ~joypad_buttons[rs];
		end
	end

endmodule
