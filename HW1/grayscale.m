% This script converts a color image to grayscale
% @Tim Tscheppe 31 August 2022 

im = imread('Minions.jpg');
figure();
imshow(im);
 
% Used to grayscale
gray = (0.2989 * double(im(:,:,1)) + ...
        0.5870 * double(im(:,:,2)) + ...
        0.1140 * double(im(:,:,3)))/255;

figure();
imshow(gray);
