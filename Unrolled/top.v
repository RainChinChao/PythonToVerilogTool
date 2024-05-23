`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2024 15:49:43
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top( input [31:0]c, output [31:0]array_x_wire_4, input clk, input start, output valid, output busy, input reset); 



	// Generate the array a[5]
	reg [31:0] array_a_0 = 65536; 
	wire [31:0] array_a_wire_0;
	assign  array_a_wire_0 = array_a_0;
	reg [31:0] array_a_1 = 131072; 
	wire [31:0] array_a_wire_1;
	assign  array_a_wire_1 = array_a_1;
	reg [31:0] array_a_2 = 196608; 
	wire [31:0] array_a_wire_2;
	assign  array_a_wire_2 = array_a_2;
	reg [31:0] array_a_3 = 262144; 
	wire [31:0] array_a_wire_3;
	assign  array_a_wire_3 = array_a_3;
	reg [31:0] array_a_4 = 327680; 
	wire [31:0] array_a_wire_4;
	assign  array_a_wire_4 = array_a_4;
	// End the array a[5]






	// Generate the array b[5]
	reg [31:0] array_b_0 = 458752; 
	wire [31:0] array_b_wire_0;
	assign  array_b_wire_0 = array_b_0;
	reg [31:0] array_b_1 = 524288; 
	wire [31:0] array_b_wire_1;
	assign  array_b_wire_1 = array_b_1;
	reg [31:0] array_b_2 = 589824; 
	wire [31:0] array_b_wire_2;
	assign  array_b_wire_2 = array_b_2;
	reg [31:0] array_b_3 = 655360; 
	wire [31:0] array_b_wire_3;
	assign  array_b_wire_3 = array_b_3;
	reg [31:0] array_b_4 = 720896; 
	wire [31:0] array_b_wire_4;
	assign  array_b_wire_4 = array_b_4;
	// End the array b[5]




	wire [31:0]temp;
	//Proceed with temp = array_a_wire_0 * array_b_wire_0
	wire start_mul_HDL_0;
	wire valid_mul_HDL_0;
	wire busy_mul_HDL_0;
	mul_always mul_HDL_0(array_a_wire_0, array_b_wire_0, temp, clk, start_mul_HDL_0, reset, valid_mul_HDL_0,busy_mul_HDL_0);
	assign start_mul_HDL_0 = start;


	wire [31:0]array_x_wire_0;
	//Proceed with array_x_wire_0 = temp + 0
	wire start_addition_HDL_0;
	wire valid_addition_HDL_0;
	wire busy_addition_HDL_0;
	addition_always addition_HDL_0(temp, 0, array_x_wire_0, clk, start_addition_HDL_0, reset, valid_addition_HDL_0,busy_addition_HDL_0);
	assign start_addition_HDL_0 = start;


	wire [31:0]temp_gen_new_2;
	//Proceed with temp_gen_new_2 = array_a_wire_1 * array_b_wire_1
	wire start_mul_HDL_1;
	wire valid_mul_HDL_1;
	wire busy_mul_HDL_1;
	mul_always mul_HDL_1(array_a_wire_1, array_b_wire_1, temp_gen_new_2, clk, start_mul_HDL_1, reset, valid_mul_HDL_1,busy_mul_HDL_1);
	assign start_mul_HDL_1 = start;


	wire [31:0]array_x_wire_1;
	//Proceed with array_x_wire_1 = temp_gen_new_2 + array_x_wire_0
	wire start_addition_HDL_1;
	wire valid_addition_HDL_1;
	wire busy_addition_HDL_1;
	addition_always addition_HDL_1(temp_gen_new_2, array_x_wire_0, array_x_wire_1, clk, start_addition_HDL_1, reset, valid_addition_HDL_1,busy_addition_HDL_1);
	assign start_addition_HDL_1 = start;


	wire [31:0]temp_gen_new_3;
	//Proceed with temp_gen_new_3 = array_a_wire_2 * array_b_wire_2
	wire start_mul_HDL_2;
	wire valid_mul_HDL_2;
	wire busy_mul_HDL_2;
	mul_always mul_HDL_2(array_a_wire_2, array_b_wire_2, temp_gen_new_3, clk, start_mul_HDL_2, reset, valid_mul_HDL_2,busy_mul_HDL_2);
	assign start_mul_HDL_2 = start;


	wire [31:0]array_x_wire_2;
	//Proceed with array_x_wire_2 = temp_gen_new_3 + array_x_wire_1
	wire start_addition_HDL_2;
	wire valid_addition_HDL_2;
	wire busy_addition_HDL_2;
	addition_always addition_HDL_2(temp_gen_new_3, array_x_wire_1, array_x_wire_2, clk, start_addition_HDL_2, reset, valid_addition_HDL_2,busy_addition_HDL_2);
	assign start_addition_HDL_2 = start;


	wire [31:0]temp_gen_new_4;
	//Proceed with temp_gen_new_4 = array_a_wire_3 * array_b_wire_3
	wire start_mul_HDL_3;
	wire valid_mul_HDL_3;
	wire busy_mul_HDL_3;
	mul_always mul_HDL_3(array_a_wire_3, array_b_wire_3, temp_gen_new_4, clk, start_mul_HDL_3, reset, valid_mul_HDL_3,busy_mul_HDL_3);
	assign start_mul_HDL_3 = start;


	wire [31:0]array_x_wire_3;
	//Proceed with array_x_wire_3 = temp_gen_new_4 + array_x_wire_2
	wire start_addition_HDL_3;
	wire valid_addition_HDL_3;
	wire busy_addition_HDL_3;
	addition_always addition_HDL_3(temp_gen_new_4, array_x_wire_2, array_x_wire_3, clk, start_addition_HDL_3, reset, valid_addition_HDL_3,busy_addition_HDL_3);
	assign start_addition_HDL_3 = start;


	wire [31:0]temp_gen_new_5;
	//Proceed with temp_gen_new_5 = array_a_wire_4 * array_b_wire_4
	wire start_mul_HDL_4;
	wire valid_mul_HDL_4;
	wire busy_mul_HDL_4;
	mul_always mul_HDL_4(array_a_wire_4, array_b_wire_4, temp_gen_new_5, clk, start_mul_HDL_4, reset, valid_mul_HDL_4,busy_mul_HDL_4);
	assign start_mul_HDL_4 = start;


	wire [31:0]array_x_wire_4;
	//Proceed with array_x_wire_4 = temp_gen_new_5 + array_x_wire_3
	wire start_addition_HDL_4;
	wire valid_addition_HDL_4;
	wire busy_addition_HDL_4;
	addition_always addition_HDL_4(temp_gen_new_5, array_x_wire_3, array_x_wire_4, clk, start_addition_HDL_4, reset, valid_addition_HDL_4,busy_addition_HDL_4);
	assign start_addition_HDL_4 = start;


	assign valid = valid_addition_HDL_4;
	assign busy = busy_addition_HDL_4;
endmodule