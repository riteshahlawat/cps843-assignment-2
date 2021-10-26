% Problem 1
I = imread('bike.jpg');
I = rgb2gray(I);
figure; imshow(I); title('Original Image');
% Roberts Edge
E1 = edge(I, 'roberts');
figure; imshow(E1); title('Edge Detection - Roberts');
% Sobel Edge
E2 = edge(I, 'sobel');
figure; imshow(E2); title('Edge Detection - Sobel');
% Prewitt Edge
E3 = edge(I, 'prewitt');
figure; imshow(E3); title('Edge Detection - Prewitt');

% Problem 3
I = imread('bike.jpg');
I = rgb2gray(I);
h = fspecial('gaussian', 5, 2.5);
blurred = imfilter(I, h);
diff = I - blurred;
k = 1;
highboost_k_1 = I + k * diff;
k = 5;
highboost_k_5 = I + k * diff;

figure; imshow(highboost_k_1); title('HighBoosted Image, k = 1');
figure; imshow(highboost_k_5); title('HighBoosted Image, k = 5');

% Problem 4
I = imread('bike.jpg');
I = rgb2gray(I);

blurred_noise = imnoise(I, 'gaussian');
figure; imshow(blurred_noise); title('Noisy Image');

average_filter = filter2(fspecial('average', 5), blurred_noise)/255;
figure; imshow(average_filter); title('Average Filter');

gaussian_filter = imgaussfilt(blurred_noise, 2.5);
figure; imshow(gaussian_filter); title('Gaussian Filter');

