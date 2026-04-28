clear all;
close all;
n1=input('Enter the time sample range of x:');
x=input('enter the sequence:');
n2=input('enter the time sample range of y:');
y=input('enter the sequence:');
u=min(min(n1),min(n2));
t=max(max(n1),max(n2));
r=u:1:t;
z1=[];
temp=1;
for i=1:length(r)
    if(r(i)<min(n1) || r(i)>max(n1))
        z1=[z1 0];
    else
        z1=[z1 x(temp)];
        temp=temp+1;
    end
end
z2=[];
temp=1;
for i=1:length(r)
    if(r(i)<min(n2) || r(i)>max(n2))
        z2=[z2 0];
    else
        z2=[z2 y(temp)];
        temp=temp+1;
    end
end
z=z1+z2
subplot(3,1,1);
stem(r,z1);
subplot(3,1,2);
stem(r,z2);
subplot(3,1,3);
stem(r,z);
