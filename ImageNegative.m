%Image Negative. Here, RGB image has been considered
a = imread('img.jpg');
a1 = rgb2gray(a);
negative = 255-a1;
subplot(3,1,1);
imshow(a);
title('Original Image');
subplot(3,1,2);
imshow(a1);
title('GrayScale Image');
subplot(3,1,3);
imshow(negative);
title('Negative Image');