%Discrete Fourier Trasform

x = input('Enter the input signal');
N = length(x);


if(mod(N,2) ~= 0),
    x =[x zeros(1,rem(N,2))];
    N = length(x);
end
X = zeros(1,N);
for k = 1:N,
   sum =0;
   for n = 1:N,
      q = x(1,n)*exp(((-1i)*2*pi*(k-1)*(n-1))/N);
      sum = sum + q;
   end
   X(1,k) = sum;
end