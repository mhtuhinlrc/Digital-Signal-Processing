clear all;
close all
dt=0.003;
t = 0:dt:1;
x = sin(2*pi*50*t) + sin(2*pi*120*t);%%Input signal
figure(1)
plot(t,x)
figure(2)
N = length(x);
y = fft(x,N); %%frequency analysis of the input signal using fft
freq = 1/(dt*N)*(0:N);
L = 1:floor(N/2);
plot(freq(L),abs(y(L)))
 
 
w = exp(-i*2*pi/N);
tic
for a=1:N
for b=1:N
DFT(a,b) = w^((a-1)*(b-1));
end
end
y2=(DFT*x').';
[y;y2];
figure(3)
plot(freq(L),abs(y2(L)))
