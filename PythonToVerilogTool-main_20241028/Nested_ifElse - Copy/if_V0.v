module if_V0( input clk, input reset, input [31:0]array_a_wire_0, input [31:0]array_b_wire_0,  output if_condition_0);
	reg if_condition_1;
	always@(posedge clk)begin
		if(reset)begin
			if_condition_1 = 0;
		end else begin
			if(array_a_wire_0>65536&&array_b_wire_0>458752) begin
				if_condition_1 = 1;
			end else begin
				if_condition_1 = 0;
			end
		end
	end



	assign if_condition_0 = if_condition_1;



endmodule
