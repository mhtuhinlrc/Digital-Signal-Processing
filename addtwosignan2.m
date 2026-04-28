clc
clear all;
n1=input('enter the range:');
x1=input('enter the sequence:');
n2=input('enter the range:');
x2=input('enter the sequence:');
subplot(3,1,1);
stem(n1,x1);
title('1st signal');
subplot(3,1,2);
stem(n2,x2);
title('2nd signal');
x=x1+x2;
subplot(3,1,3);
stem(n1,x);
title('additional signal');