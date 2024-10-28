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

from Multiplication_IF_Gen import Multiplication_IF_V
from Multiplication_Else_Gen import Multiplication_Else_V


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
output_define("x_3")
output_define("x_2")
output_define("x_1")
output_define("x_0")




for i in range(0, 5):
   
    wire_a = "a_" + str(i) 
    wire_b = "b_" + str(i) 
    wire_x = "x_" + str(i)
    
    
    Multiplication_V( wire_x, wire_a, wire_b)
   
    
    
    





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