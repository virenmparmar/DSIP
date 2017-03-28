%Contrast Streching of the given image

a1 = imread('img.jpg'); % Enter the input image
a1 = rgb2gray(a1); %Matrix of input image

a = a1;
[row col] = size(a1);
r1 = input('Enter r1');
r2 = input('Enter r2');
alpha = input('Enter alpha');
beta = input('Enter beta');
gamma = input('Enter gamma');

s1 = alpha * r1;
s2 =  beta *(r2-r1) +s1;

for i = 1:row,
    for j = 1:col,
        if(a1(i,j)< r1)
            a(i,j) = alpha * a1(i,j);
        elseif(a1(i,j)>=r1 && a1(i,j)<=r2)
            a(i,j) = beta *(a1(i,j)-r1) +s1;
        else
            a(i,j) = gamma *(a1(i,j)-r2) +s2;
        end     
    end
end
subplot(2,1,1);
imshow(a1);
title('Original Image');
subplot(2,1,2);
imshow(a);
title('Contrast Streching');