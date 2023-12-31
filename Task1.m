a = imread("C:\Users\Noura\Downloads\Csc478-Hw1-442201375\image.jpg");
Result = fliplr(a);

subplot(1,2,1),imshow(a),title('Original Image');
subplot(1,2,2),imshow(Result),title('Mirrored Image');
