clc; clear all; close all;
oldpath = path;
path(oldpath,'C:\Users\Edu\Documents\MATLAB\images');
x = uint8(imread('dolar.jpg'));
x1 = x(:,:,1);
[l,h] = size(x1);
for d1 = 1:l
    for d2 = 1:h
        if(x1(d1,d2)>128)
            x1(d1,d2) = 255;
        else
            x1(d1,d2) = 0;
        end
    end
end
%x2 = x(:,:,2);
%x3 = x(:,:,3);
%subplot(1,3,1);
imshow(x1); title('Camada 1');
%subplot(1,3,2);
%imshow(x2); title('Camada 2');
%subplot(1,3,3);
%imshow(x3); title('Camada 3');
