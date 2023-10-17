
imagen_original = imread('F:\ia\imagen\coches.jpg'); % Carga tu imagen aquí
p1 = 50; % Ajusta los valores de p1 y p2 según tus necesidades
p2 = 200;



function imagen_extendida = operador_extension(imagen, p1, p2)
  [filas, columnas] = size(imagen);
  imagen_extendida = zeros(filas, columnas);

  for fila = 1:filas
    for columna = 1:columnas
      p = imagen(fila, columna);

      if p <= p1
        imagen_extendida(fila, columna) = 0;
      elseif p >= p2
        imagen_extendida(fila, columna) = 255;
      else
        imagen_extendida(fila, columna) = (p - p1) * 255 / (p2 - p1);
      end
    end
  end
end

imagen_extendida = operador_extension(imagen_original, p1, p2);

imshow(uint8(imagen_extendida)); % Muestra la imagen extendida

