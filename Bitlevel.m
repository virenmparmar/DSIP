%Bitlevel Slicing using MATLAB
r = imread('img.jpg');%Input image
r = rgb2gray(r);
r = im2uint8(r); %Converting to 3-bit grayscale image
[row col] = size(r);

for i = 1:row,
    for j = 1:col,
       x = decimalToBinaryVector(r(i,j),8); %Converting decimal values to binary
       one(i,j) = x(1,1);  %Most Significant Bit
       two(i,j) = x(1,2);
       three(i,j) = x(1,3); 
       four(i,j) = x(1,4);
       five(i,j) = x(1,5);
       six(i,j) = x(1,6);
       seven(i,j) = x(1,7);
       eight(i,j) = x(1,8); %Least Significant bit
    end
end

subplot(5,2,1);
imshow(r);
title('Original Image');
subplot(5,2,2);
imshow(one);
title('one');
subplot(5,2,3);
imshow(two);
title('two');
subplot(5,2,4);
imshow(three);
title('three');
subplot(5,2,5);
imshow(four);
title('four');
subplot(5,2,6);
imshow(five);
title('five');
subplot(5,2,7);
imshow(six);
title('six');
subplot(5,2,8);
imshow(seven);
title('seven');
subplot(5,2,9);
imshow(eight);
title('eight');