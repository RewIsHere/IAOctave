clc
clear
close all

% Cargar la imagen
f = imread('imagen/coches.jpg');

% Umbralización selectiva
level = graythresh(f);
g = im2bw(f, level);

figure('Name', 'Umbral selectivo')
imshow(g);
title('Umbral selectivo');

% Filtrado de media y operaciones en escala de grises
image = f;
mean_image = imfilter(image, fspecial('average', [15 15]), 'replica');
subtrac = image - (mean_image + 1);
black_white = im2bw(subtrac, graythresh(subtrac));

figure('Name', 'B&W')
imshow(black_white);
title('B&W');

% Umbralización binaria
image_variable = f;
threshold = 0.8;
threshol = im2bw(image_variable, threshold);

figure('Name', 'Umbral Binario de 0.8')
imshow(threshol);
title('Umbral Binario de 0.8');

% Imagen negativa
ima = f;
negativa = 255 - ima;

figure('Name', 'Imagen Negativo')
imshow(negativa);
title('Imagen Negativo');

