%Script feito para separar as camadas binárias de uma imagem, em cada
%camada é possível ver apenas um nível de bit.
clc; clear all; close all;
oldpath = path;
path(oldpath,'C:\Users\Edu\Documents\MATLAB\images\dolar'); %diretório da imagem
x = uint8(imread('dolar.jpg'));
[l, h, p] = size(x);
x1 = uint8(ones(l,h,p)); x2 = x1; x3 = x1; x4 = x1; x5 = x1; x6 = x1; x7 = x1; x8 = x1;

for d1 = 1:l
    for d2 = 1:h
        for d3 = 1:p
            if x(d1,d2,d3)<=2
                x1(d1,d2,d3) = x(d1,d2,d3);
            elseif x(d1,d2,d3)<=4
                x2(d1,d2,d3) = x(d1,d2,d3);
            elseif x(d1,d2,d3)<=8
              x3(d1,d2,d3) = x(d1,d2,d3);
            elseif x(d1,d2,d3)<=16
                x4(d1,d2,d3) = x(d1,d2,d3);
            elseif x(d1,d2,d3)<=32
                x5(d1,d2,d3) = x(d1,d2,d3);
            elseif x(d1,d2,d3)<=64
                x6(d1,d2,d3) = x(d1,d2,d3);
            elseif x(d1,d2,d3)<=128
                x7(d1,d2,d3) = x(d1,d2,d3);
            else
                x8(d1,d2,d3) = x(d1,d2,d3);
            end
        end
    end
end

figure(); imshow(x); title('Original');

figure();
subplot(2,4,1); imshow(x1); title('Camada1');
subplot(2,4,2); imshow(x2); title('Camada2');
subplot(2,4,3); imshow(x3); title('Camada3');
subplot(2,4,4); imshow(x4); title('Camada4');
subplot(2,4,5); imshow(x5); title('Camada5');
subplot(2,4,6); imshow(x6); title('Camada6');
subplot(2,4,7); imshow(x7); title('Camada7');
subplot(2,4,8); imshow(x8); title('Camada8');
