# -*- coding: utf-8 -*-
"""
Created on Thu Feb 29 09:52:46 2024

@author: elx22yz
"""

''' 29/02/2024
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
import lib_para
lib_para.Address_counter = -1
# Initialize Address_counter = 0


'''
Addition_V1('c', 'a', 'b')
Addition_V1('f', 'a', 'c')
Addition_V1('g', 'a', 'f')
Addition_V1('h', 'f', 'c')
Addition_V1('x', 'y', 'z')
'''

'''
Addition_V('c', 'a', 'b')
SinCosTan_V('x', 'y', 'z', 'c')
Addition_V('d', 'x', 'a')

Addition_V('e', 'd', 'y')
Addition_V('f', 'e', 'z')
Addition_V('h', 'f', 'g')
'''

# Test for complicated equation
# (Asin(w1x+T1)+log10(cos(w2x+T2)))/sqrt(MKN)+power(B,N)

from input_define import input_define
from output_define import output_define
from number_to_hex_Input import number_to_hex
input_define("w1")
input_define("x")
input_define("T1")
input_define("A")
input_define("w2")
input_define("T2")
input_define("M")
input_define("K")
input_define("N")
input_define("B")
input_define("N_power")
output_define("Add_all")






# Asin(w1x+T1)
Multiplication_V('w1x', 'w1', 'x')
Addition_V('w1x_T1', 'w1x', 'T1')
SinCosTan_V('sin_w1x_T1', 'cos_w1x_T1', 'tan_w1x_T1', 'w1x_T1')
Multiplication_V('A_sin', 'A', 'sin_w1x_T1')

# log10(cos(w2x+T2))
Multiplication_V('w2x', 'w2', 'x')
Addition_V('w2x_T2', 'w2x', 'T2')
SinCosTan_V('sin_w2x_T2', 'cos_w2x_T2', 'tan_w2x_T2', 'w2x_T2')
Logarithm_V('log', number_to_hex(10), 'cos_w2x_T2')

# sqrt(MKN)
Multiplication_V('MK', 'M', 'K')
Multiplication_V('MKN', 'MK', 'N')
Sqrt_V('sqrt', 'MKN')

# (Asin(w1x+T1) + log10(cos(w2x+T2)))/sqrt(MKN)
Addition_V('Add_part', 'A_sin', 'log')
Division_V('Div', 'Add_part', 'sqrt')

# power(B,N)
Power_V('BN_power', 'B', 'N_power')


# (Asin(w1x+T1) + log10(cos(w2x+T2)))/sqrt(MKN) + power(B,N)
Addition_V('Add_all', 'Div', 'BN_power')


import lib_para
cc = lib_para.Eq_record
counter__=lib_para.Address_counter

#print(counter__)
from Verilog_Generation import PyToVer
PyToVer("top")

