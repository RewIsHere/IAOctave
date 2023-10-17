clc
clear
close all

imagen_color = imread('imagen/monedas.jpg'); % Carga tu imagen en color aquí

% Lógica alternativa para convertir a escala de grises
imagen_gris = 0.299 * imagen_color(:,:,1) + 0.587 * imagen_color(:,:,2) + 0.114 * imagen_color(:,:,3);

figure
imshow(imagen_gris); % Muestra la imagen en escala de grises
title('escala grises (otra lógica)');

