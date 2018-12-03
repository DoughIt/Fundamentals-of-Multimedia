function [a_quan]=u_pcm(a,n)
%U_PCM  	uniform PCM encoding of a sequence
%       	[A_QUAN]=U_PCM(A,N)
%       	a=input sequence.
%       	n=number of quantization levels (even).
%		a_quan=quantized output before encoding.

a_max = max(abs(a)); % 找到采样点的最大值
a_quan = a ./ a_max; % 将采样点映射到(-1, 1)
for i = -1 : 2 / n : 1 % 将(-1, 1)分成n段
    a_quan_seg = a_quan(a_quan >= i & a_quan < (i + 2 / n)); % 获取在(i, i + 2 / n)范围内的采样点
    a_quan(a_quan >= i & a_quan < (i + 2 / n)) = (max(a_quan_seg) + min(a_quan_seg)) / 2; % 将这些采样点设为（最大值 + 最小值） / 2
end
    
end
