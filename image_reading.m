clc
clear all
close all
img = uigetfile('*', 'Select your image');
x = imread(img); % Read image from graphics file
figure(1)
imshow(x)% Read image from graphics file
% GrayScale Image
x1 = rgb2gray(x);
figure(2)
imshow(x1)
