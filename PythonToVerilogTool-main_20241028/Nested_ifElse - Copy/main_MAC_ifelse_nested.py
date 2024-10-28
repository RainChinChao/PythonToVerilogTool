# -*- coding: utf-8 -*-
"""
Created on Mon Mar 18 14:33:47 2024

@author: elx22yz
"""
''' 18/03/2024
    Version 0.0.1
    This is the function the main function that calls all kinds of generation 
    functions like Addition_V, Multi_V, etc.
'''

import numpy as np
from Template import dt
from SinCosTan_Gen import SinCosTan_V
from Addition_Gen import Addition_V
from Logarithm_Gen import Logarithm_V
from Division_Gen import Division_V
from Multiplication_Gen import Multiplication_V
from Power_Gen import Power_V
from Sqrt_Gen import Sqrt_V
from Subtraction_Gen import Subtraction_V
from Value_Gen import Value_V
from Addition_IF_Gen import Addition_IF_V
from Addition_Else_Gen import Addition_Else_V
from Else_Gen import Else_V
import lib_para
from End_IfElse_Gen import End_IfElse_V
from Multiplication_IF_Gen import Multiplication_IF_V
from Multiplication_Else_Gen import Multiplication_Else_V
import IfElse_Arrays
lib_para.Address_counter = -1
from number_to_hex_Input import number_to_hex
from array_define_Gen import array_define
from output_define import output_define
from input_define import input_define
from array_define_content import array_define_content
from If_Nested_Gen import If_V










output_define("temp")


input_define("array_a_wire_0")
input_define("array_b_wire_0")


wire_a = "array_a_wire_" + str(0) 
wire_b = "array_b_wire_" + str(0) 


If_V(wire_a, number_to_hex(1), '>', '&&', wire_b, number_to_hex(7), '>')
    
Multiplication_IF_V( 'temp', wire_a, wire_b)
       
Else_V("")
    

Addition_Else_V( 'temp', wire_a, wire_b)
 
End_IfElse_V('')
































import lib_para
binary_tree_main = lib_para.Eq_record
counter_all = lib_para.Address_counter
binary_tree_if = lib_para.Eq_record_if_1
counter_if_address = lib_para.Address_counter_if + 1
counter_else_address = lib_para.Address_counter_else + 1
binary_tree_else = lib_para.Eq_record_else_1

storage_binary_tree_if = IfElse_Arrays.if_array
storage_delay_if = IfElse_Arrays.if_delay
storage_delay_else = IfElse_Arrays.else_delay
storage_binary_tree_else = IfElse_Arrays.else_array
if_addresses = IfElse_Arrays.start_address_if
if_count = lib_para.If_counter
else_count = lib_para.Else_counter


from Verilog_Generation_Revised_Changable_file_Name_Nested_if import PyToVer

PyToVer("If_test")
import Verilog_Generation

import Verilog_IF_Else_Inout_Gen
import Verilog_IF_Else_Gen
import Verilog_Generation
dcddddddddd = Verilog_IF_Else_Inout_Gen.else_input_names
dddddddddd = Verilog_IF_Else_Inout_Gen.result_name_no_if
ecddddddddd = Verilog_IF_Else_Inout_Gen.result_names_else
eddddddddd = Verilog_IF_Else_Inout_Gen.result_name_no_else





array_names = lib_para.array_names
array_sizes = lib_para.array_sizes
from array_print_top import array_print_top