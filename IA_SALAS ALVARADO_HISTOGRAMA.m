clc
clear
close all

% Cargar la imagen en color
imagen_color = imread('imagen\IMG.jpg'); % Cambia el nombre del archivo según tu imagen

% Convertir la imagen a escala de grises
imagen_gris = rgb2gray(imagen_color);

% Calcular el histograma de la imagen en escala de grises
histograma = imhist(imagen_gris);

% Mostrar la imagen en escala de grises
subplot(2, 1, 1);
imshow(imagen_gris);
title('Imagen en Escala de Grises');

% Mostrar el histograma
subplot(2, 1, 2);
bar(histograma);
title('Histograma de la Imagen en Escala de Grises');
xlabel('Valor de Píxel');
ylabel('Frecuencia');

% Ajustar la presentación
colormap gray;

