I = imread('rice_53.jpg');
I = rgb2gray(I); % Convert image to grayscale
imshow(I)
se = strel('disk',90);  
background = imopen(I,se);
imshow(background)
I2 = I - background;
imshow(I2)
I3 = imadjust(I2);
imshow(I3)
bw = imbinarize(I3);
bw = bwareaopen(bw,450); 
imshow(bw)
cc = bwconncomp(bw,4);
cc.NumObjects

% V1 se = 90    bw = 450
% rice_7 --> 8
% rice_15 --> 14
% rice_53 --> 57
% rice_63 --> 64
% rice_82 --> 78
% rice_154 --> 148
% rice_300 --> 355
% rice ---> 265