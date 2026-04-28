clear all;
close all
dt=0.003;
t = 0:dt:1;
x = sin(2*pi*50*t) + sin(2*pi*120*t);%%Input signal
figure(1)
plot(t,x)
figure(2)
N = 1000;
y = fft(x,N);
z=abs(y);
freq = 1:N;
plot(freq,z)
 