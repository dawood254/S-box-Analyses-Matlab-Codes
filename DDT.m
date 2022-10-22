 function output=DDT(Sbox)
input_bits=log2(length(Sbox));
output_bits=log2(max(Sbox)+1);
P=0:(2^input_bits)-1;
i=0;
while i<(2^output_bits)
S1=sub_bytes(bitxor(P,i),Sbox);
S2=sub_bytes(P,Sbox);
S3=bitxor(S1,S2);
DDTable(i+1,:)=count1(S3,output_bits);
i=i+1;
end
output=DDTable;
