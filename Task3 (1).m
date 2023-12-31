a = imread("C:\Users\Noura\Downloads\Csc478-Hw1-442201375\image.jpg");

subplot(2,2,1),imshow(a),title('Original Image');
subplot(2,2,2),imshow(Result),title('Image after histogram equalization');

Result = histeq(a);

subplot(2,2,3),imhist(a),title('Histogram of Original Image');
subplot(2,2,4),imhist(Result),title('Histogram of Equalized Image');


