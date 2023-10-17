clc
clear
close all

pkg load image


L1 = imread('imagen/IMG2.jpg');
L2 = L1;
[ren, col, p] = size(L1);

% Mostrar la imagen original
figure("numbertitle", "off", "name", "ITSPR - ISC - Alexis Eduardo Salas Alvarado Inteligencia artificial")
imshow(L1);
title('Imagen original');

% Definir la intensidad del filtro verde (0 para transparente, 255 para verde completo)
intensidad_verde = 200;  % Ajusta según sea necesario

% Identificar y aplicar el filtro verde a la piel (ajusta los valores de umbral según sea necesario)
umbral_rojo = 150;  % Umbral para el componente rojo
umbral_verde = 100; % Umbral para el componente verde
umbral_azul = 100;  % Umbral para el componente azul

for i = 1:ren
    for j = 1:col
        % Extraer los componentes RGB de cada píxel
        r = L1(i, j, 1);
        g = L1(i, j, 2);
        b = L1(i, j, 3);

        % Comprobar si el píxel es piel (basado en los umbrales)
        if r > 110 && g > 20 && b > 20
            % Aplicar el filtro verde con intensidad a la piel
            L2(i, j, 2) = intensidad_verde;  % Componente verde modificado
        end
    end
end

% Mostrar la imagen con el filtro verde aplicado (apariencia de transparencia)
figure("numbertitle", "off", "name", "ITSPR - ISC - Alexis Eduardo Salas Alvarado Inteligencia artificial")
imshow(L2);
title('Imagen con filtro verde (apariencia de transparencia)');

% Guardar la imagen con el filtro verde aplicado
imwrite(L2, 'imagen_con_filtro_verde_transparente.jpeg');
