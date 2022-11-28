% edge_filter.m -  read jpeg image and perform edge filter
%
%
% COEN 4830 / EECE 5830 - Marquette University
% Fred J. Frigo, Ph.D.
% 19-Nov-2022
%

% Get input file to test
imfile = 'duluth_liftbridge.jpeg';
if(imfile == "")
    [fname, pname] = uigetfile('*.*', 'Select input file');
    imfile = strcat(pname, fname);
end

img = imread(imfile);
figure();
image(img);

% Convert to gray scale
gray = rgb2gray(img); 
figure();
imshow(gray);
