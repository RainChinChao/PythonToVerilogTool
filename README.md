# PythonToVerilogTool

The complicated function depicts the function below:

results = (A*sin(w1*x+T1) + log10(cos(w2*x+T2))) / sqrt(M*K*N) + power(B,N)


The Unrolled refers to:

for i = 0 to 4
result = result + a[i]*b[i]


The Unrolled If/Else refers to

result = result + a[0]*b[0]
for i = 1 to 4
if(a[i]>2){
result = result + a[i]*b[i]
}



The Parallel refers to


for i = 0 to 4

result[i] = a[i]*b[i]

