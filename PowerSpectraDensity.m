% Image processing: Power Spectral Density (PSD)

pkg load image % needed to read images

img = imread("C:/Users/rednb/Desktop/Processing/truck3.png");

img = rgb2gray(img);

fft_output = fft2(img);
FFT = fftshift(fft_output);

F = abs(FFT); % magnitude
F = (F-min(min(F)))./(max(max(F))).*255; %normalize data

psd = log10(abs(fftshift(fft2(img)))+eps);
psd_img = mat2gray(psd);

mask = mat2gray(psd) < .6; % set threshold to 60%

figure(1); imshow(img); title('default img', 'fontsize',20)
%figure(2); imshow(psd_img, []); title('PSD img', 'fontsize',20)
figure(2); imshow(psd, []);   % non-filtered PSD
figure(3);imshow(mask.*psd, []);  % PSD below threshold of 60%
figure(4);imshow(real(ifft2(fftshift(mask.*FFT))), []);  % Show img filtered with 60% PSD mask
