%Graylevel Slicing without background
r = imread('C:\Uers\EXAM\Desktop\1411037\flower.jpg');
r = rgb2gray(r);

s=r;

[row col] = size(r);

a = input('Enter a');
b = input('Enter b');

for i = 1:row,
    for j = 1:col,
        if((r(i,j)>=a) && (r(i,j)<b))
            s(i,j)=255;
        else
            s(i,j)=0;
        end
    end
end

subplot(2,1,1);
imshow(r);
title('Original Image');
subplot(2,1,2);
imshow(s);
title('Gray level Slicing');