function out=Walsh(P,Sbox,alpha,Beta,Input_bits,Output_bits)
Bin_alpha=de2bi(alpha,Input_bits);
Bin_Beta=de2bi(Beta,Output_bits);
Bin_Sbox=de2bi(Sbox)';
Bin_P=de2bi(P)';
A=mod(Bin_alpha*Bin_P,2);
B=mod(Bin_Beta*Bin_Sbox,2);
out=sum(A==B);