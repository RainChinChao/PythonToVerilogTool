# -*- coding: utf-8 -*-
"""
Created on Tue Apr 30 15:09:27 2024

@author: elx22yz
"""



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
from Addition_Index_Gen import Addition_Index_V
from SinCosTan_Index_Gen import SinCosTan_Index_V
from Sqrt_Index_Gen import Sqrt_Index_V
from Multiplication_IF_Gen import Multiplication_If_V
from Multiplication_Else_Gen import Multiplication_Else_V
from Multiplication_Index_Else_Gen import Multiplication_Index_Else_V
from Multiplication_Index_If_Gen import Multiplication_Index_IF_V
from If_Index_Gen import If_Index_V
import IfElse_Arrays
lib_para.Address_counter = -1
# Initialize Address_counter = 0
from number_to_hex_Input import number_to_hex
from array_define_Gen import array_define
from output_define import output_define
from input_define import input_define
from Multiplication_Index_Gen import Multiplication_Index_V


from array_define_content import array_define_content



input_define("c")
#input_define("b")


output_define("array_x_wire_4")
output_define("array_x_wire_3")
output_define("array_x_wire_2")
output_define("array_x_wire_1")
output_define("array_x_wire_0")
#print(number_to_hex(1))
a = [number_to_hex(1), number_to_hex(2), number_to_hex(3), number_to_hex(4) , number_to_hex(5)]
b = [number_to_hex(7), number_to_hex(8), number_to_hex(9), number_to_hex(10) , number_to_hex(11)]
#b = [0, 0, 0, 0, 0]
array_define_content("a", a)
array_define_content("b", b)

#array_define_content("x", x)

#Addition_Index_V('a', -1, 'b', 2, 'c', -1) #18
#Addition_Index_V('a', -1, 'a', 2, 'c', -1) #18


#exec("Multiplication_V( 'temp', 'array_a_wire_0', 'array_b_wire_0' )")
#exec("Multiplication_V( 'temp', 'array_a_wire_0', 'array_b_wire_0' )")
#exec("Addition_V( 'array_x_wire_0', 'temp', '0')")

for i in range(0, 5):
    #exec("Multiplication_V( 'temp_" + str(i) + "', 'array_a_wire_" + str(i) + "', 'array_b_wire_" + str(i) + "')")
    #exec("Multiplication_V( 'temp', 'array_a_wire_1', 'array_b_wire_1' )")
    
    wire_a = "array_a_wire_" + str(i) 
    wire_b = "array_b_wire_" + str(i) 
    wire_x = "array_x_wire_" + str(i)
    #wire_x_1 = "array_x_wire_" + str(i-1)
    
    Multiplication_V( wire_x, wire_a, wire_b)
    #Addition_V( wire_x, 'temp', wire_x_1)
    #exec("Multiplication_V( 'temp', 'array_a_wire_" + str(i) + "', 'array_b_wire_" + str(i) + "')")
    #exec("Multiplication_V( 'temp', 'array_a_wire_" + str(i) + "', 'array_b_wire_" + str(i) + "')")
    #exec("Addition_V( 'array_x_wire_" + str(i) + "', 'temp' , 'array_x_wire_" + str(i-1) + "')")
    
    
    





import lib_para
binary_tree_main = lib_para.Eq_record
from Verilog_Generation import PyToVer
PyToVer("top")
import Verilog_IF_Else_Inout_Gen
import Verilog_IF_Else_Gen
import Verilog_Generation
import lib_in_out_names
ccccccc= lib_in_out_names.result_names
ddddddddd = lib_in_out_names.result_name_no