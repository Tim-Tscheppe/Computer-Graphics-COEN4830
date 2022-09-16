% grayscale_fourier_image.m - display magnitude of Fourier Transformed image
% Fred J. Frigo, Ph.D. , Tim Tscheppe
% 16-Sep-2021
%

% Read color photo
im = imread('FourierEqn.jpg');
figure();
imshow(im);
 
% Convert to gray scale
gray = (0.2989 * double(im(:,:,1)) + ...
        0.5870 * double(im(:,:,2)) + ...
        0.1140 * double(im(:,:,3)))/255;

figure();
imshow(gray);

% Take the magnitude of the FFT
F=fft2(double(gray));
S=fftshift(F);
L=log2(S);
A=abs(L);
figure();
imagesc(A);
axis image;
title("Magnitude of FFT image");