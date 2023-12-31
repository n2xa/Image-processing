a = imread("C:\Users\Noura\Downloads\image.jpg");

Result = a;
Result(Result<50)= 0;    
Result(Result>150)= 255; 

subplot(1,2,1),imshow(a),title('Original Image');
subplot(1,2,2),imshow(Result),title('New Image');

