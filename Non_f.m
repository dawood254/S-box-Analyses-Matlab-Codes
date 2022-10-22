function Output=Non_f(f0,n)
f0_NL=(-1).^f0;
f0_NL=f0_NL';
hw0=2^(n-1)-(max(abs(f0_NL*hadamard(2^n))))/2;
Output=hw0;
