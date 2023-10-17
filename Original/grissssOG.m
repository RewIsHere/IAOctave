clc
clear
close all

imagen_color = imread('Imagen\lel.jpg'); % Carga tu imagen en color aquí

imagen_gris = rgb2gray(imagen_color);
figure
imshow(imagen_gris); % Muestra la imagen en escala de grises
title('escala grises')
