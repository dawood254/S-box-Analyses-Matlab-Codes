function output = Correlation(Sbox)
Output_bits=log2(max(Sbox)+1);
Input_bits=log2(length(Sbox));
P=0:(2^Output_bits)-1;
i=0;
while i<2^Input_bits
j=0;
while j<2^Output_bits
    LA_Table(i+1,j+1)=Walsh_T(P,Sbox,i,j,Input_bits,Output_bits);
    j=j+1;
end
i=i+1;
end
output =  LA_Table;