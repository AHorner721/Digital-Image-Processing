%       Histograms and Point Operations

pkg load image

img = imread("C:/Users/rednb/Desktop/Processing/truck3.png");
img2 = imread("C:/Users/rednb/Desktop/Processing/GoldenDog.png");

% To use 'imhist()' img must be converted to grayscale!

img = rgb2gray(img);    % truck
img2 = rgb2gray(img2);  % doggo

imhist(img2);           % shows histogram of original gray img

new_img = (img2 > 200); % new image with threshold of 200 applied

%figure(1);imshow(new_img, []);    % Display new image in B&W (need '[]')



%        Digital Negative


% F(D)= 255 - Img. Creates negative version of img
figure(1);imshow(img2);title('Default Img','fontsize',20)
figure(2);imshow(255-img2);title('Digital Negative Img','fontsize',20)



%        Contrast Stretching


L = 0;     % low range
H = 200;   % high range

con_img = 255/(H - L)*(double(img2)-L); % formula for changing contrast
con_img(con_img > 255) = 255;           % clip max value in img to be 255
%figure(3); imshow(con_img, []);title('Contrasting Img','fontsize',20)
%imhist(uint8(con_img)); 

%automatic contrast function
figure(3);imshow(imadjust(img2));title('Imadjust Function','fontsize',20) 



%        Histogram Equalization


%  Tries to unify the intensity values of an img
J = histeq(img2); % Uses Cumlative Density Function to find Probability of Intensity value
figure(4);imshow(J);title('Histogram Equalization Img','fontsize',20)
%figure(5);imhist(J);title('Histogram Equalization','fontsize',20)


%        Gamma correction

c=5;
gamma = .6;               % y = gamma
result = c * img2.^gamma; % s = cr^y  gamma formula

figure(5); imshow(result);title('Gamma corrected','fontsize',20)
% Gamma deals with device power output/lumminance of img


