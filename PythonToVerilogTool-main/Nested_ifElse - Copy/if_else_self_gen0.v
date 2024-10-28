module if_else_self_gen_0( input clk, input reset, input [31:0]array_a_wire_0, input [31:0]array_b_wire_0, output [31:0]temp_combine); 


	//Proceed with if_section calculation.
	if_self_gen_0 if_HDL_0( clk, reset, array_a_wire_0, array_b_wire_0, temp_if);
	wire [31:0]temp_if;


	//Proceed with else_section calculation.
	else_self_gen_0 else_HDL_0( clk, reset, array_a_wire_0, array_b_wire_0, temp_else);
	wire [31:0]temp_else;


	//Proceed with if_condition.
	wire if_condition_0;
 	if_V0 if_con0( clk ,reset,array_a_wire_0,  array_b_wire_0,  if_condition_0);


 	assign temp_combine = if_condition_0 ? temp_if : temp_else;




endmodule