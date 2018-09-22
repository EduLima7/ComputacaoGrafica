clc; clear all; close all;
oldpath = path;
path(oldpath,'C:\Users\Edu\Documents\MATLAB\images\dolar');
x = uint8(imread('dolar.jpg'));

[l,h,p] = size(x);
x1 = uint8(ones(l,h,p));
for d1 = 1:l
    for d2 = 1:h
        for d3 = 1:p
            if(x(d1,d2,d3)>128)
                x1(d1,d2,d3) = 255;
            else
                x1(d1,d2,d3) = 0;
            end
        end
    end
end
figure();
subplot(1,2,1); imshow(x); title('Original');
subplot(1,2,2); imshow(x1); title('Binarizado');
