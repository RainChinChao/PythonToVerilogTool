`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2024 11:51:07
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


//module top( input start, input [31:0]w1, input [31:0]x, input [31:0]T1, input [31:0] A,
//input [31:0] w2, input [31:0]T2, input [31:0]M, input [31:0]K,  input [31:0]B, input [31:0]N, input clk, output valid, output busy, output [31:0]Add_all_1
//, input reset
//    );
    
//    wire [31:0]w1x;
//	wire start_mul_HDL_0;
//	wire valid_mul_HDL_0;
//	wire busy_mul_HDL_0;
//	mul_always mul_HDL_0(w1, x, w1x, clk, start, reset, valid_mul_HDL_0,busy_mul_HDL_0);
//	//assign start_mul_HDL_0 = start;
//	wire [31:0]w1x_T1;
//	wire start_addition_HDL_0;
//	wire valid_addition_HDL_0;
//	wire busy_addition_HDL_0;
//	addition_always addition_HDL_0(w1x, T1, w1x_T1, clk, start, reset, valid_addition_HDL_0,busy_addition_HDL_0);
//	//assign start_addition_HDL_0 = valid_mul_HDL_0;
//	wire [31:0]sin_w1x_T1;
//	wire [31:0]cos_w1x_T1;
//	wire [31:0]tan_w1x_T1;
//	wire start_sincostan_HDL_0;
//	wire valid_sincostan_HDL_0;
//	wire busy_sincostan_HDL_0;
//	tan_inout sincostan_HDL_0 ( clk, w1x_T1, sin_w1x_T1, cos_w1x_T1, tan_w1x_T1, start, reset, valid_sincostan_HDL_0, busy_sincostan_HDL_0);
//	//assign start_sincostan_HDL_0 = valid_addition_HDL_0;
//	wire [31:0]A_sin;
//	wire start_mul_HDL_1;
//	wire valid_mul_HDL_1;
//	wire busy_mul_HDL_1;
//	mul_always mul_HDL_1(A, sin_w1x_T1, A_sin, clk, start, reset, valid_mul_HDL_1,busy_mul_HDL_1);
//	//assign start_mul_HDL_1 = valid_sincostan_HDL_0;
//	wire [31:0]w2x;
//	wire start_mul_HDL_2;
//	wire valid_mul_HDL_2;
//	wire busy_mul_HDL_2;
//	mul_always mul_HDL_2(w2, x, w2x, clk, start, reset, valid_mul_HDL_2,busy_mul_HDL_2);
//	//assign start_mul_HDL_2 = valid_mul_HDL_1;
//	wire [31:0]w2x_T2;
//	wire start_addition_HDL_1;
//	wire valid_addition_HDL_1;
//	wire busy_addition_HDL_1;
//	addition_always addition_HDL_1(w2x, T2, w2x_T2, clk, start, reset, valid_addition_HDL_1,busy_addition_HDL_1);
//	//assign start_addition_HDL_1 = valid_mul_HDL_2;
//	wire [31:0]sin_w2x_T2;
//	wire [31:0]cos_w2x_T2;
//	wire [31:0]tan_w2x_T2;
//	wire start_sincostan_HDL_1;
//	wire valid_sincostan_HDL_1;
//	wire busy_sincostan_HDL_1;
//	tan_inout sincostan_HDL_1 ( clk, w2x_T2, sin_w2x_T2, cos_w2x_T2, tan_w2x_T2, start, reset, valid_sincostan_HDL_1, busy_sincostan_HDL_1);
//	//assign start_sincostan_HDL_1 = valid_addition_HDL_1;
//	wire [31:0]log;
//	wire start_log_HDL_0;
//	wire valid_log_HDL_0;
//	wire busy_log_HDL_0;
//	log_inout log_HDL_0( start, clk, reset, 655360, cos_w2x_T2, log,busy_log_HDL_0, valid_log_HDL_0);
//	//assign start_log_HDL_0 = valid_sincostan_HDL_1;
//	wire [31:0]MK;
//	wire start_mul_HDL_3;
//	wire valid_mul_HDL_3;
//	wire busy_mul_HDL_3;
//	mul_always mul_HDL_3(M, K, MK, clk, start, reset, valid_mul_HDL_3,busy_mul_HDL_3);
//	//assign start_mul_HDL_3 = valid_log_HDL_0;
//	wire [31:0]MKN;
//	wire start_mul_HDL_4;
//	wire valid_mul_HDL_4;
//	wire busy_mul_HDL_4;
//	mul_always mul_HDL_4(MK, N, MKN, clk, start, reset, valid_mul_HDL_4,busy_mul_HDL_4);
//	//assign start_mul_HDL_4 = valid_mul_HDL_3;
//	wire [31:0]sqrt;
//	wire start_sqrt_HDL_0;
//	wire valid_sqrt_HDL_0;
//	wire busy_sqrt_HDL_0;
//	sqrt sqrt_HDL_0 ( clk, MKN, start, reset, sqrt, busy_sqrt_HDL_0, valid_sqrt_HDL_0);
//	//assign start_sqrt_HDL_0 = valid_mul_HDL_4;
//	wire [31:0]Add_part;
//	wire start_addition_HDL_2;
//	wire valid_addition_HDL_2;
//	wire busy_addition_HDL_2;
//	addition_always addition_HDL_2(A_sin, log, Add_part, clk, start, reset, valid_addition_HDL_2,busy_addition_HDL_2);
//	//assign start_addition_HDL_2 = valid_sqrt_HDL_0;
//	wire [31:0]Div;
//	wire start_division_HDL_0;
//	wire valid_division_HDL_0;
//	wire busy_division_HDL_0;
//	Division_always division_HDL_0(Add_part, sqrt, Div, clk, start, reset, valid_division_HDL_0,busy_division_HDL_0);
//	//assign start_division_HDL_0 = valid_addition_HDL_2;
//	wire [31:0]BN_power;
//	wire start_power_HDL_0;
//	wire valid_power_HDL_0;
//	wire busy_power_HDL_0;
//	Power_PN power_HDL_0( clk, B, (N>>16), BN_power, start, reset, valid_power_HDL_0,busy_power_HDL_0);
//	//assign start_power_HDL_0 = valid_division_HDL_0;
//	wire [31:0]Add_all;
//	wire start_addition_HDL_3;
//	wire valid_addition_HDL_3;
//	wire busy_addition_HDL_3;
//	addition_always addition_HDL_3(Div, BN_power, Add_all, clk, start, reset, valid_addition_HDL_3,busy_addition_HDL_3);
//	assign start_addition_HDL_3 = valid_power_HDL_0;
//	assign valid = valid_addition_HDL_3;
//	assign busy = busy_addition_HDL_3;
	
//	assign Add_all_1 = Add_all;
//endmodule


//module top( input start, input [31:0]w1, input [31:0]x, input [31:0]T1, input [31:0] A,
//input [31:0] w2, input [31:0]T2, input [31:0]M, input [31:0]K,  input [31:0]B, input [31:0]N, input clk, output valid, output busy, output [31:0]Add_all_1
//, input reset
//    );

module top( input [31:0]w1, input [31:0]x, input [31:0]T1, input [31:0]A, input [31:0]w2, input [31:0]T2, 
input [31:0]M, input [31:0]K, input [31:0]N, input [31:0]B, input [31:0]N_power, output [31:0]Add_all, 
input clk, input start, output valid, output busy, input reset); 

	wire [31:0]w1x;
	//Proceed with w1x = w1 * x
	wire start_mul_HDL_0;
	wire valid_mul_HDL_0;
	wire busy_mul_HDL_0;
	mul_always mul_HDL_0(w1, x, w1x, clk, start_mul_HDL_0, reset, valid_mul_HDL_0,busy_mul_HDL_0);
	assign start_mul_HDL_0 = start;


	wire [31:0]w1x_T1;
	//Proceed with w1x_T1 = w1x + T1
	wire start_addition_HDL_0;
	wire valid_addition_HDL_0;
	wire busy_addition_HDL_0;
	addition_always addition_HDL_0(w1x, T1, w1x_T1, clk, start_addition_HDL_0, reset, valid_addition_HDL_0,busy_addition_HDL_0);
	assign start_addition_HDL_0 = start;


	wire [31:0]sin_w1x_T1;
	wire [31:0]cos_w1x_T1;
	wire [31:0]tan_w1x_T1;
	//Proceed with sin_w1x_T1 = sin(w1x_T1)
 	//cos_w1x_T1 = cos(w1x_T1)
 	//tan_w1x_T1 = tan(w1x_T1)
 	wire start_sincostan_HDL_0;
	wire valid_sincostan_HDL_0;
	wire busy_sincostan_HDL_0;
	tan_inout sincostan_HDL_0 ( clk, w1x_T1, sin_w1x_T1, cos_w1x_T1, tan_w1x_T1, start_sincostan_HDL_0, reset, valid_sincostan_HDL_0, busy_sincostan_HDL_0);
	assign start_sincostan_HDL_0 = start;


	wire [31:0]A_sin;
	//Proceed with A_sin = A * sin_w1x_T1
	wire start_mul_HDL_1;
	wire valid_mul_HDL_1;
	wire busy_mul_HDL_1;
	mul_always mul_HDL_1(A, sin_w1x_T1, A_sin, clk, start_mul_HDL_1, reset, valid_mul_HDL_1,busy_mul_HDL_1);
	assign start_mul_HDL_1 = start;


	wire [31:0]w2x;
	//Proceed with w2x = w2 * x
	wire start_mul_HDL_2;
	wire valid_mul_HDL_2;
	wire busy_mul_HDL_2;
	mul_always mul_HDL_2(w2, x, w2x, clk, start_mul_HDL_2, reset, valid_mul_HDL_2,busy_mul_HDL_2);
	assign start_mul_HDL_2 = start;


	wire [31:0]w2x_T2;
	//Proceed with w2x_T2 = w2x + T2
	wire start_addition_HDL_1;
	wire valid_addition_HDL_1;
	wire busy_addition_HDL_1;
	addition_always addition_HDL_1(w2x, T2, w2x_T2, clk, start_addition_HDL_1, reset, valid_addition_HDL_1,busy_addition_HDL_1);
	assign start_addition_HDL_1 = start;


	wire [31:0]sin_w2x_T2;
	wire [31:0]cos_w2x_T2;
	wire [31:0]tan_w2x_T2;
	//Proceed with sin_w2x_T2 = sin(w2x_T2)
 	//cos_w2x_T2 = cos(w2x_T2)
 	//tan_w2x_T2 = tan(w2x_T2)
 	wire start_sincostan_HDL_1;
	wire valid_sincostan_HDL_1;
	wire busy_sincostan_HDL_1;
	tan_inout sincostan_HDL_1 ( clk, w2x_T2, sin_w2x_T2, cos_w2x_T2, tan_w2x_T2, start_sincostan_HDL_1, reset, valid_sincostan_HDL_1, busy_sincostan_HDL_1);
	assign start_sincostan_HDL_1 = start;


	wire [31:0]log;
	//Proceed with log = log655360 ( cos_w2x_T2)
	wire start_log_HDL_0;
	wire valid_log_HDL_0;
	wire busy_log_HDL_0;
	log_inout log_HDL_0( start_log_HDL_0, clk, reset, 655360, cos_w2x_T2, log,busy_log_HDL_0, valid_log_HDL_0);
	assign start_log_HDL_0 = start;


	wire [31:0]MK;
	//Proceed with MK = M * K
	wire start_mul_HDL_3;
	wire valid_mul_HDL_3;
	wire busy_mul_HDL_3;
	mul_always mul_HDL_3(M, K, MK, clk, start_mul_HDL_3, reset, valid_mul_HDL_3,busy_mul_HDL_3);
	assign start_mul_HDL_3 = start;


	wire [31:0]MKN;
	//Proceed with MKN = MK * N
	wire start_mul_HDL_4;
	wire valid_mul_HDL_4;
	wire busy_mul_HDL_4;
	mul_always mul_HDL_4(MK, N, MKN, clk, start_mul_HDL_4, reset, valid_mul_HDL_4,busy_mul_HDL_4);
	assign start_mul_HDL_4 = start;


	wire [31:0]sqrt;
	//Proceed with sqrt = sqrt( MKN )
	wire start_sqrt_HDL_0;
	wire valid_sqrt_HDL_0;
	wire busy_sqrt_HDL_0;
	sqrt sqrt_HDL_0 ( clk, MKN, start_sqrt_HDL_0, reset, sqrt, busy_sqrt_HDL_0, valid_sqrt_HDL_0);
	assign start_sqrt_HDL_0 = start;


	wire [31:0]Add_part;
	//Proceed with Add_part = A_sin + log
	wire start_addition_HDL_2;
	wire valid_addition_HDL_2;
	wire busy_addition_HDL_2;
	addition_always addition_HDL_2(A_sin, log, Add_part, clk, start_addition_HDL_2, reset, valid_addition_HDL_2,busy_addition_HDL_2);
	assign start_addition_HDL_2 = start;


	wire [31:0]Div;
	//Proceed with Div = Add_part / sqrt
	wire start_division_HDL_0;
	wire valid_division_HDL_0;
	wire busy_division_HDL_0;
	Division_always division_HDL_0(Add_part, sqrt, Div, clk, start_division_HDL_0, reset, valid_division_HDL_0,busy_division_HDL_0);
	assign start_division_HDL_0 = start;


	wire [31:0]BN_power;
	//Proceed with BN_power = Pow(B, N_power)
	wire start_power_HDL_0;
	wire valid_power_HDL_0;
	wire busy_power_HDL_0;
	Power_PN power_HDL_0( clk, B, (N_power>>16), BN_power, start_power_HDL_0, reset, valid_power_HDL_0,busy_power_HDL_0);
	assign start_power_HDL_0 = start;


	wire [31:0]Add_all;
	//Proceed with Add_all = Div + BN_power
	wire start_addition_HDL_3;
	wire valid_addition_HDL_3;
	wire busy_addition_HDL_3;
	addition_always addition_HDL_3(Div, BN_power, Add_all, clk, start_addition_HDL_3, reset, valid_addition_HDL_3,busy_addition_HDL_3);
	assign start_addition_HDL_3 = start;


	assign valid = valid_addition_HDL_3;
	assign busy = busy_addition_HDL_3;
endmodule










