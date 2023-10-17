clc
clear
close all

% Cargar la imagen
imagen_original = imread('imagen/coches.jpg'); % Cambia la ruta según tu imagen

% Obtener dimensiones de la imagen
[filas, columnas, canales] = size(imagen_original);

% Valor máximo para imágenes de 8 bits por canal
max_valor = 255;

% Generar la imagen negativa
imagen_negativa = max_valor - imagen_original;

% Mostrar la imagen original
figure
imshow(imagen_original);
title('Imagen Original');

% Mostrar la imagen negativa
figure
imshow(imagen_negativa);
title('Imagen Negativa');

