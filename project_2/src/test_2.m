imname = "test.png";
I = imread(imname);
I = im2double(I);                   % 将uint8型转换为double型，否则不能计算统计量
grayI = 0.29900 * I(:, :, 1) + 0.58700 * I(:, :, 2) + 0.11400 * I(:, :, 3); % 公式，转换成灰度图片
v = var(grayI(:));                  % 计算灰度图片的方差
imwrite(grayI, "gray_" + imname);   % 将灰度图片保存在gray_${imname}

figure
subplot(2, 1, 1), imshow(I), title("原图");
subplot(2, 1, 2), imshow(grayI), title("灰度图");

fprintf("生成的灰度图片保存在：gray_%s\n", imname);
fprintf("灰度图片的方差为：%f\n", v);
