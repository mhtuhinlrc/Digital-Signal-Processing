clc
clear all;
close all;
img1 = uigetfile('*', 'Please select Image 01');
x1 = imread(img1); % Read image from graphics file
figure(1)
imshow(x1); % Read image from graphics file
img2 = uigetfile('*', 'Please select Image 02');
x2 = imread(img2);
figure(2)
imshow(x2);
Result =abs(x1 - x2);
figure(3)
imshow(Result);
