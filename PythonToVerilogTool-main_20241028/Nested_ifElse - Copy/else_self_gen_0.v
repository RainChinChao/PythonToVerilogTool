module else_self_gen_0( input clk, input reset, input [31:0]array_a_wire_0, input [31:0]array_b_wire_0, output [31:0]temp); 
	wire [31:0]temp;
	//Proceed with temp = array_a_wire_0 + array_b_wire_0
	addition_always addition_HDL_0(array_a_wire_0, array_b_wire_0, temp, clk,  reset);
endmodule