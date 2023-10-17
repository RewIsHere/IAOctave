clc
clear
close all

% Cargar la imagen
imagen_original = imread('imagen/monedas.jpg');
subplot(2,1,1);
imshow(imagen_original);
title('Imagen original');

% Invertir la imagen
imagen_negativa = 255 - imagen_original;
subplot(2,1,2);
imshow(imagen_negativa);
title('Imagen Negativo');

%/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

% Umbralización simple
umbral = graythresh(imagen_original);
imagen_umbral_simple = im2bw(imagen_original, umbral);
imagen_umbral_simple = uint8(imagen_umbral_simple * 255);
figure
subplot(2,1,1);
imshow(imagen_umbral_simple);
title('Imagen Umbral Simple');

%--------------------------------------------------------------------------------------------------
% Umbralización de Intervalo Inverso
p1 = 0.4;
p2 = 0.6;
imagen_intervalo_inverso = ~(im2double(imagen_original) >= p1 & im2double(imagen_original) <= p2);
imagen_intervalo_inverso = uint8(imagen_intervalo_inverso * 255);
subplot(2,1,2);
imshow(imagen_intervalo_inverso);
title('Imagen Umbral de Intervalo Inverso');

