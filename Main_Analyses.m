clc
clear
Sbox = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];
Nonlinearity = Nonlinearity(Sbox);
Nonlinearity = min(Nonlinearity)
Strict_Avalanch = SAC(Sbox)
Linear_Approx = LAT(Sbox)
Differential_Approx = DDT(Sbox)
Auto_Correlation = Correlation(Sbox)