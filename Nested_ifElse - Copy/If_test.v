module If_test( input [31:0]array_a_wire_0, input [31:0]array_b_wire_0, output [31:0]temp, input clk, input reset); 

	wire [31:0]temp;
	//Proceed with one function if calculation.
	if_else_self_gen_0 else_HDL_0( clk , reset, array_a_wire_0, array_b_wire_0,  temp);





endmodule