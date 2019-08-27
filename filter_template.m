pkg load image

img = imread("C:/Users/rednb/Desktop/Processing/Gray_Dog.jpg");
img2 = imread("C:/Users/rednb/Desktop/Processing/Gray_Dog.jpg");
%filter blurs image by evening out higher intensity values (low pass)
double(img2);

% filters

f = (1/49)*ones(7,7); % create 7x7 filter of 1
hif = [-1 -1 -1 ; -1 8 -1; -1 -1 -1]; % 3x3 high filter
f2 = hif;
f3 = ones(15)/255; % 15x15 low filter
hif2 = [0 1 0; 1 -4 1; 0 1 0];  % high filter

result = imfilter(img, f); %apply filter to image & store in result
result2 = imfilter(img2, f2); %apply high filter
result3 = imfilter(img, f3);
result4 = filter2(hif2, img); % filter2 option

% display output

subplot(1,3,1)
imshow(img);
title('Original Image', 'fontsize', 30)

subplot(1,3,2)
imshow(result);
title('Low-Pass Filter Image', 'fontsize', 30)

subplot(1,3,3)
imshow(result2);
title('High-Pass Filter Image', 'fontsize', 30)

%figure(2); imshow(img>150); %thresholding, show everything in img above 150 int.
figure(2); imshow(img>100, [0 1]); %thresholding, show everything in img above 100 int.
%figure(3); imshow(result3);
%figure(3); imshow(result4, []);title('Edge Detection using Filter2()','fontsize', 20) %displays high filter
figure(3); imshow(result4>120, []);title('Threshold Output at 120','fontsize', 20) %threshold to show above 200


