function output=count1(f,n)
i=0;
while i<(2^n)
    Out(i+1)=sum(double(f==i));
    i=i+1;
end
output=Out;