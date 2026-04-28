clc
clear all
close all
n1=input('Enter the time sample range:');
x=input('Enter the sequence:');
d=input('Enter the required amount to delay:');
w=randn(1,length(n1));
y=x+w;
n2=n1+d;
r=xcorr(y,x);
n1=-fliplr(n1);
nl=min(n1)+min(n2);
nh=max(n1)+max(n2);
np=nl:1:nh;
stem(np,r);
