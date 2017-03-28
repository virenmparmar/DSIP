%Gray Level Slicing with background
r = imread('img.jpg'); % Input Image
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
            s(i,j)=r(i,j);
        end
    end
end

subplot(2,1,1);
imshow(r);
title('Original Image');
subplot(2,1,2);
imshow(s);
title('Gray level Slicing');