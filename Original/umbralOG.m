clc
clear
close all

a= imread('coches.jpg');
subplot (2,1,1);
imshow (a);title('Imagen original');
%*****************************************************************************************************************************
imagen=a;
imagen= im2double(imagen);
l=256;
negativa= (l-1)-a;
negativa=uint8(negativa);
subplot(2,1,2);
imshow(negativa);
title('Imagen Negativo');

%/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

% Lee la imagen
imagen = a;

% Asegúrate de que la imagen esté en formato de doble precisión para los cálculos
imagen = im2double(imagen);

% Define el valor de umbral (p1)
p1 = 400;  % Cambia este valor según tus necesidades

% Aplica el operador de umbral
imagen_umbral = imagen > p1;
imagen_umbral = imagen_umbral * 255;

% Asegúrate de que los valores estén en el rango [0, 255]
imagen_umbral = uint8(imagen_umbral);
figure
subplot(2,1,1);
imshow(imagen_umbral);
title('Imagen Umbral')
%--------------------------------------------------------------------------------------------------
imagen = a;

% Asegúrate de que la imagen esté en formato de doble precisión para los cálculos
imagen = im2double(imagen);

% Define los valores de umbral (p1 y p2)
p1 = 0.4;
p2 = 0.6;

% Aplica el operador de intervalo de umbral binario
imagen_intervalo_umbral = (imagen <= p1) | (imagen >= p2);
imagen_intervalo_umbral = imagen_intervalo_umbral * 255;

% Asegúrate de que los valores estén en el rango [0, 255]
imagen_intervalo_umbral = uint8(imagen_intervalo_umbral);
subplot(2,1,2);
imshow(imagen_intervalo_umbral);
title('Imagen Umbral Binario');
