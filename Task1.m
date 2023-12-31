a =  imread("C:\Users\Noura\Downloads\image.jpg");
Result = fliplr(a);

subplot(1,2,1),imshow(a),title('Original Image');
subplot(1,2,2),imshow(Result),title('Mirrored Image');
