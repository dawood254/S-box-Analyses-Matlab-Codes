function output = SAC(Sbox)
Output_bits=log2(max(Sbox)+1);
Input_bits=log2(length(Sbox));
P=1:(2^Output_bits)-1;
i=0;
while 2^i<16 
P1=bitxor(P,2^i);
S1=sub_bytes(P,Sbox);
S2=sub_bytes(P1,Sbox);
S3=bitxor(S1,S2);
P=P(P>0);
bi_P=de2bi(P);
DS3=de2bi(S3,4);
bi_Sbox=de2bi(Sbox);
M=mod(bi_P*DS3',2)';
y(i+1,:)=(sum(M)/(2^(Input_bits)));
i=i+1;
end
output = y;