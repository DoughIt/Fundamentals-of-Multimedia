function [a_quan]=ula_pcm(a,n,u)
%ULA_PCM 	u-law PCM encoding of a sequence
%       	[A_QUAN]=MULA_PCM(X,N,U).
%       	X=input sequence.
%       	n=number of quantization levels (even).     	
%		a_quan=quantized output before encoding.
%       U the parameter of the u-law

x = ulaw(a, u);     % 经过u律压缩函数
y = u_pcm(x, n);    % 经过均匀压缩函数
a_quan = inv_ulaw(y, u) * max(abs(a)); % u律压缩逆运算，均匀压缩逆运算（不完全，仅乘模拟输入的最大值）
end
