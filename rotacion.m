clc
clear all
close all

img = imread('imagen.jpg');
figure(1)
imshow(img)

%% rotacion 
img_rot = imrotate(img,120,'nearest','crop'); %%crop --> mantiene la resolucion de la imagen original, pero se deforma
figure(2)
imshow(img_rot)

%%animacion usando transformaciones 
for teta = 0:10:100;
    img_rot = imrotate(img,-teta,'nearest','crop');
    figure(3)
    imshow(img_rot)
    pause(0.1) %%modifica la velocidad
end

%%efecto espejo
i_flip1 = flip(img, 1);
i_flip2 = flip(img, 2);
i_flip3 = flip(i_flip2, 1)
figure(4)
imshow([img, i_flip2; i_flip1, i_flip3])
