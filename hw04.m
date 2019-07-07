w0 = [0 pi/3 pi];
s2={'0', '\pi/3', '\pi'};
s1='h[n]=cos(';
s3='*n)*u[n] ';
n = 0:20;
u = n >= 0;                  %u[n]
subplot(4,1,1);
stem(n,u);
xlabel('n');
ylabel('u(n)');
title('u[n]');
for i =1:3
x = cos(w0(i)*n);
h = x.*u;                    %h[n]=cos(w0*n)*u[n]
subplot(4,1,i+1)
stem(n,h,'b');
xlabel('n');
ylabel('h(n)');
title(strcat(s1,s2(i),s3));
end
