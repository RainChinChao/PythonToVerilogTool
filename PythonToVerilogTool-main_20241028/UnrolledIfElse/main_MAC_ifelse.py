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
#from Addition_Gen import Addition_V
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
from If_Gen import If_V
from Else_Gen import Else_V
import lib_para
from End_IfElse_Gen import End_IfElse_V
#from Addition_Index_Gen import Addition_Index_V
#from SinCosTan_Index_Gen import SinCosTan_Index_V
#from Sqrt_Index_Gen import Sqrt_Index_V
from Multiplication_IF_Gen import Multiplication_IF_V
from Multiplication_Else_Gen import Multiplication_Else_V
#from Multiplication_Index_Else_Gen import Multiplication_Index_Else_V
#from Multiplication_Index_If_Gen import Multiplication_Index_IF_V
#from If_Index_Gen import If_Index_V
import IfElse_Arrays
lib_para.Address_counter = -1
# Initialize Address_counter = 0
from number_to_hex_Input import number_to_hex
from array_define_Gen import array_define
from output_define import output_define
from input_define import input_define

from array_define_content import array_define_content








for i in range (0, 5):
    in_a = "a_" + str(i)
    input_define(in_a)
    in_b = "b_" + str(i)
    input_define(in_b)

output_define("x_4")



exec("Multiplication_V( 'temp', 'a_0', 'b_0' )")
exec("Addition_V( 'x_0', 'temp', '0')")

for i in range(1, 5):
    
    wire_a = "a_" + str(i) 
    wire_b = "b_" + str(i) 
    wire_x = "x_" + str(i)
    wire_x_1 = "x_" + str(i-1)       

    If_V(wire_a, number_to_hex(2), '>')     
    Multiplication_IF_V( 'temp', wire_a, wire_b)
    Addition_IF_V( wire_x, 'temp', wire_x_1)       
    
    Else_V("")        
    Addition_Else_V( wire_x, 0, wire_x_1) 
    End_IfElse_V('')





























# input_define("c")
# input_define("b")
# output_define("temp")
# array_define("b", 5)
# #Addition_Index_V('a', -1, 'b', 2, 'c', -1) #18
# #Addition_Index_V('a', -1, 'a', 2, 'c', -1) #18
# #Addition_Index_V('c', -1, 'b', 2, 'c', -1) #18
# #Addition_Index_V('c', -1, 'a', 2, 'c', -1) #18

# for i in range(0, 3):
#     If_Index_V("a", i, 'b', i, '>=') #17
#     #Multiplication_Index_IF_V('f', -1, 'b',  -1, 'c', -1) #18
#     #Multiplication_Index_IF_V('temp', -1, 'a',  -1, 'c', -1) #18
#     kkk= number_to_hex(20)
#     #Multiplication_Index_IF_V('temp', -1, 'a',  -1,kkk , -1) #18
#     #Multiplication_Index_IF_V('f', -1, 'a',  -1,kkk , -1)
#     #Multiplication_Index_IF_V('f', -1, 'a',  -1,kkk , -1)
#     # value g 19
#     # value k 20
#     Addition_IF_V('g', 'f', 'd')
#     Addition_IF_V('h', 'e', 'd')
    
#     Addition_IF_V('g', 'f', 'd')
#     Addition_IF_V('h', 'e', 'd')
    
#     Addition_IF_V('temp', 'f', 'd')
#     Addition_IF_V('temp', 'e', 'd')
    
#     Else_V("")
#     #Multiplication_Index_Else_V('temp', -1, 'temp', -1, 'c', -1) #18
#     #Multiplication_Index_Else_V('c', -1, 'a',  -1, 'c', -1) #18
#     Addition_Else_V('temp', '1', 'b') #19
    
#     Addition_Else_V('temp', 'b', '1') #19
#     Addition_Else_V('c', 'b', '1') #19
#     Addition_Else_V('c', 'b', '1') #1
#     Addition_Else_V('a', 'b', '1') #19
#     Addition_Else_V('a', 'b', '1') #19
#     # value c 20
#     #Addition_Else_V('h', 'a', 'd')
#     End_IfElse_V('')
#     Addition_Index_V('c', i+1, 'c', i, 'temp', -1)
    
    




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

from Verilog_Generation import PyToVer
PyToVer("top")
import Verilog_Generation
#ressult_name = Verilog_Generation.result_names
#ressult_name_no = Verilog_Generation. result_name_no
#ressult_names_counter = Verilog_Generation.result_names_counter
import Verilog_IF_Else_Inout_Gen
import Verilog_IF_Else_Gen
import Verilog_Generation
#ccccccc= Verilog_Generation.result_names
#ddddddddd = Verilog_Generation.result_name_no
#dccccccc= Verilog_IF_Else_Gen.result_names_if
dcddddddddd = Verilog_IF_Else_Inout_Gen.else_input_names
dddddddddd = Verilog_IF_Else_Inout_Gen.result_name_no_if
ecddddddddd = Verilog_IF_Else_Inout_Gen.result_names_else
eddddddddd = Verilog_IF_Else_Inout_Gen.result_name_no_else



# import lib_in_out_names
# dcddddddddd = lib_in_out_names.result_names_if
# dddddddddd = lib_in_out_names.result_name_no_if
# ecddddddddd = lib_in_out_names.result_names_else
# eddddddddd = lib_in_out_names.result_name_no_else


array_names = lib_para.array_names
array_sizes = lib_para.array_sizes
from array_print_top import array_print_top
#array_print_top("top.v")