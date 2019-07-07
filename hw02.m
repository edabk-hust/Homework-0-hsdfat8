%c(t)=sin(2*pi*fc*t)*rectpuls(t)
fc=5;
f=-20:0.1:20;
Cf = 0.5*1j*exp(-1j*pi*(f+fc)).*sinc(f+fc)- 0.5*1j*exp(-1j*pi*(f-fc)).*sinc(f-fc);
plot(f,abs(Cf),'LineWidth',2)
grid
title('Magnitude of Fourier Transform of c(t)');
xlabel('f (Hz)');
ylabel('|C(f)|');