imagen_original = imread('imagen/coches.jpg'); % Carga tu imagen aquí
p1 = 50; % Ajusta los valores de p1 y p2 según tus necesidades
p2 = 200;

% Lógica alternativa para la extensión del rango dinámico
func_extension = @(p) (p <= p1) * 0 + (p >= p2) * 255 + ((p > p1) & (p < p2)) .* (p - p1) * 255 / (p2 - p1);

% Aplicar la lógica de extensión del rango dinámico a cada píxel de la imagen
imagen_extendida = arrayfun(func_extension, imagen_original);

imshow(uint8(imagen_extendida)); % Muestra la imagen extendida

