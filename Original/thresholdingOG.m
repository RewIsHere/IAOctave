clc
clear
close all


f= imread('coches.jpg');
level=graythresh(f)
g= im2bw(f,level);
imshow(g);
title('umbral selectivo')
%######################################
image =f;
mean_image=imfilter(image,fspecial('average'),[15,15],'replica');
subtrac=image-(mean_image+1);
black_white=im2bw(subtrac,0);
figure
imshow(black_white);
title('B&W')
%*****************************************
image_variable=f;
binary_image=im2bw(image_variable);

threshol=im2bw(image_variable,0.8);
figure
imshow(threshol);
title('Umbral Binario de 0.8')

%------------------------------------------------
ima=f;
l=256;
negativa= (l-1)-ima;
figure
imshow(negativa);
title('Imagen Negativo');
