I = imread('eight.tif');                % 读取文件
J2 = imnoise(I, 'salt & pepper', 0.04); % 叠加密度为0.04的椒盐噪声。
filter1 = medfilt2(J2, [3 3]);          % 中值,窗口大小为3×3
h = fspecial('average', [3 3]);         % 均值,窗口大小为3×3
filter2 = imfilter(J2, h);
figure
subplot(3, 1, 1), imshow(J2), title("加噪图片");                     % 显示图像
subplot(3, 1, 2), imshow(filter1), title("去噪1");                    
subplot(3, 1, 3), imshow(filter2), title("去噪2");