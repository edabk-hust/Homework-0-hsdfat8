fs = 400;                              %sample frequency
Ts = 1/fs;
t= -0.5 : Ts : 1.5;                    %sample   
fc = 10;
x = sin(2*pi*fc*t);                    %Sine signal 
subplot(3,1,1);
plot(t,x,'LineWidth',2)
xlabel('t')
ylabel('x(t)')
grid
title('Sine Signal')                   %rectpuls 
h = rectpuls(t-0.5);                   
subplot(3,1,2);
plot(t,h,'LineWidth',2)              
xlabel('t')
ylabel('h(t)')
grid
title('Rectpuls')
c = x .* h;                            %Truncated Sine
subplot(3,1,3);
plot(t,c,'LineWidth',2) 
grid
title('Truncated Sine')
xlabel('t')
ylabel('c(t)')