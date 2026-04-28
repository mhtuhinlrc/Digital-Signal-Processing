clc
clear all
close all
warning off;
x=imread('img1.png');
y=imread('img2.png');
g=size(x);
y=imresize(y,[g(1),g(2)]);
figure;
imshow(x);
title('First image');
figure;
imshow(y);
title('Second image');
figure;
imshow(x-y);
title('Difference of two images');
