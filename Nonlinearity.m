function output=Nonlinearity(Sbox)
Output_bits=log2(max(Sbox)+1);
Input_bits=log2(length(Sbox));
P=1:(2^Output_bits)-1;

bi_P=de2bi(P);
bi_Sbox=de2bi(Sbox);
M=mod(bi_P*bi_Sbox',2)';
i=1;
while i<(2^Input_bits)
    N(i)=Non_f(M(:,i),Input_bits);
    i=i+1;
end
output=N;

