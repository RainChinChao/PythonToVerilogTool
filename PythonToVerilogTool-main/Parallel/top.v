module top( input [31:0]a_0, input [31:0]b_0, input [31:0]a_1, input [31:0]b_1, input [31:0]a_2, input [31:0]b_2, input [31:0]a_3, input [31:0]b_3, input [31:0]a_4, input [31:0]b_4, output [31:0]x_4, output [31:0]x_3, output [31:0]x_2, output [31:0]x_1, output [31:0]x_0, input clk, input start, output valid, output busy, input reset); 

	wire [31:0]x_0;
	//Proceed with x_0 = a_0 * b_0
	wire start_mul_HDL_0;
	wire valid_mul_HDL_0;
	wire busy_mul_HDL_0;
	mul_always mul_HDL_0(a_0, b_0, x_0, clk, start_mul_HDL_0, reset, valid_mul_HDL_0,busy_mul_HDL_0);
	assign start_mul_HDL_0 = start;


	wire [31:0]x_1;
	//Proceed with x_1 = a_1 * b_1
	wire start_mul_HDL_1;
	wire valid_mul_HDL_1;
	wire busy_mul_HDL_1;
	mul_always mul_HDL_1(a_1, b_1, x_1, clk, start_mul_HDL_1, reset, valid_mul_HDL_1,busy_mul_HDL_1);
	assign start_mul_HDL_1 = start;


	wire [31:0]x_2;
	//Proceed with x_2 = a_2 * b_2
	wire start_mul_HDL_2;
	wire valid_mul_HDL_2;
	wire busy_mul_HDL_2;
	mul_always mul_HDL_2(a_2, b_2, x_2, clk, start_mul_HDL_2, reset, valid_mul_HDL_2,busy_mul_HDL_2);
	assign start_mul_HDL_2 = start;


	wire [31:0]x_3;
	//Proceed with x_3 = a_3 * b_3
	wire start_mul_HDL_3;
	wire valid_mul_HDL_3;
	wire busy_mul_HDL_3;
	mul_always mul_HDL_3(a_3, b_3, x_3, clk, start_mul_HDL_3, reset, valid_mul_HDL_3,busy_mul_HDL_3);
	assign start_mul_HDL_3 = start;


	wire [31:0]x_4;
	//Proceed with x_4 = a_4 * b_4
	wire start_mul_HDL_4;
	wire valid_mul_HDL_4;
	wire busy_mul_HDL_4;
	mul_always mul_HDL_4(a_4, b_4, x_4, clk, start_mul_HDL_4, reset, valid_mul_HDL_4,busy_mul_HDL_4);
	assign start_mul_HDL_4 = start;


	assign valid = valid_mul_HDL_4;
	assign busy = busy_mul_HDL_4;
endmodule