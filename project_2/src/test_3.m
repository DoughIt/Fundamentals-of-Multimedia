imname = "test.png";
I = imread(imname);
J = imadjust(I, [0.2, 0.6], [0, 1]);% 灰度拉伸
H = histeq(I);                      % 直方图均衡化
figure
subplot(2, 2, 1), imshow(I), title("原图");
subplot(2, 2, 2), imshow(J), title("灰度拉伸图");
subplot(2, 2, 3), imhist(I), title("灰度分布直方图");
subplot(2, 2, 4), imhist(H), title("直方图均衡化");