imname = input('image:', 's');  % 读取图像文件
px = input('x:');               % 输入横坐标x
py = input('y:');               % 输入纵坐标y
I = imread(imname);             % 读取文件
[x, y, z] = size(I);            % 获取文件大小，z在这里是3，代表r、g、b
for m = max(px - 1, 1) : min(px + 1, x) % 获取（x，y）及周围8个点坐标，通过max、min函数检查边界
    for n = max(py - 1, 1) : min(py + 1, y)
        fprintf('(%d, %d): (%d, %d, %d)\n', m, n, I(m, n, 1), I(m, n, 2), I(m, n, 3));
    end
end