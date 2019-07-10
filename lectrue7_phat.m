
fa = 1e6;
fs = 2000;
ncycle =10;
f0 = 400;
phase=rand(1)*pi;
ta = 0:1/fa:ncycle/f0;
t1 = 0:1/fs:ncycle/f0;
sin0 = sin(2*pi*f0*ta+phase);
sin1 = sin(2*pi*f0*t1+phase);

%reconstruct
yt = zeros(1,length(ta));
xt = zeros(1,length(ta));
for i = 1:length(t1)
%xt= sin1(i)*rectpuls(ta*fs - (i - 1));                                 %xung chu nhat 
%xt= sin1(i)*tripuls(ta*fs - (i - 1),2);                                %xung tam giac
xt = sin1(i)*sinc(ta*fs - (i-1)).*rectpuls(ta*fs - (i- 1),8);           %xung sinc
yt = yt + xt;
end
rect1 = rectpuls(ta ,8/fs);
sincc1 = sinc(ta*fs-20).*rectpuls(ta*fs - 20, 8);
% plot(ta,sin0);
hold on;
% tri = tripuls(ta - (1 - 1)/fs,2/fs);
% plot(ta,tri);
subplot(3,1,1)
stem(t1*fs,sin1,'r');
title('tin hieu lay mau');
 subplot(3,1,2);
 plot(ta*fs,sincc1,'LineWidth',3);
 title('xung truplicate sinc');
 grid on
 subplot(3,1,3);
 plot(ta*fs,yt,'b');
 title('tin hieu da khoi phuc');
