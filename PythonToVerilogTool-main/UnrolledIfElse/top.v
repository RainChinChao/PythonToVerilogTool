module top( input [31:0]a_0, input [31:0]b_0, input [31:0]a_1, input [31:0]b_1, input [31:0]a_2, input [31:0]b_2, input [31:0]a_3, input [31:0]b_3, input [31:0]a_4, input [31:0]b_4, output [31:0]x_4, input clk, input start, output valid, output busy, input reset); 

	wire [31:0]temp;
	//Proceed with temp = a_0 * b_0
	wire start_mul_HDL_0;
	wire valid_mul_HDL_0;
	wire busy_mul_HDL_0;
	mul_always mul_HDL_0(a_0, b_0, temp, clk, start_mul_HDL_0, reset, valid_mul_HDL_0,busy_mul_HDL_0);
	assign start_mul_HDL_0 = start;


	wire [31:0]x_0;
	//Proceed with x_0 = temp + 0
	wire start_addition_HDL_0;
	wire valid_addition_HDL_0;
	wire busy_addition_HDL_0;
	addition_always addition_HDL_0(temp, 0, x_0, clk, start_addition_HDL_0, reset, valid_addition_HDL_0,busy_addition_HDL_0);
	assign start_addition_HDL_0 = start;


	wire [31:0]temp_gen_new_2;
	wire [31:0]x_1;
	//Proceed with one function if calculation.
	wire start_else_HDL_0;
	wire valid_else_HDL_0;
	wire busy_else_HDL_0;
	if_else_self_gen_0 else_HDL_0( clk, start_else_HDL_0, reset, valid_else_HDL_0,busy_else_HDL_0, a_1, b_1, x_0,  temp_gen_new_2, x_1);





	wire [31:0]temp_gen_new_3;
	wire [31:0]x_2;
	//Proceed with one function if calculation.
	wire start_else_HDL_1;
	wire valid_else_HDL_1;
	wire busy_else_HDL_1;
	if_else_self_gen_1 else_HDL_1( clk, start_else_HDL_1, reset, valid_else_HDL_1,busy_else_HDL_1, a_2, x_1, b_2, temp_gen_new_3, x_2);





	wire [31:0]temp_gen_new_4;
	wire [31:0]x_3;
	//Proceed with one function if calculation.
	wire start_else_HDL_2;
	wire valid_else_HDL_2;
	wire busy_else_HDL_2;
	if_else_self_gen_2 else_HDL_2( clk, start_else_HDL_2, reset, valid_else_HDL_2,busy_else_HDL_2, a_3, b_3, x_2,  temp_gen_new_4, x_3);





	wire [31:0]temp_gen_new_5;
	wire [31:0]x_4;
	//Proceed with one function if calculation.
	wire start_else_HDL_3;
	wire valid_else_HDL_3;
	wire busy_else_HDL_3;
	if_else_self_gen_3 else_HDL_3( clk, start_else_HDL_3, reset, valid_else_HDL_3,busy_else_HDL_3, a_4, x_3, b_4, temp_gen_new_5, x_4);





endmodule