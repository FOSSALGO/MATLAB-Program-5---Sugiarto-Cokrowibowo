clear all
% ------------- Unit-step response -------------
num = [25];
den = [1 4 25];
t = 0:0.01:3;
[y,x,t] = step(num,den,t);
plot(t,y)
grid
title('Unit-Step Response of G(s)=25/(sˆ2+4s+25)')
xlabel('t Sec')
ylabel('Output')