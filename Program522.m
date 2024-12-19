clear all
% --------- Unit-Ramp Response ---------
num = [1 10];
den = [1 6 9 10];
t = 0:0.1:10;
r = t;
y = lsim(num,den,r,t);
figure(1),
plot(t,r,'-',t,y,'o')
grid
title('Unit-Ramp Response by Use of Command "lsim"')
xlabel('t Sec')
ylabel('Output')
text(3.2,6.5,'Unit-Ramp Input')
text(6.0,3.1,'Output')
% --------- Response to Input r1 = exp(-0.5t). ---------
num = [0 0 1 10];
den = [1 6 9 10];
t = 0:0.1:12;
r1 = exp(-0.5*t);
y1 = lsim(num,den,r1,t);
figure(2),
plot(t,r1,'-',t,y1,'o')
grid
title('Response to Input r1 = exp(-0.5t)')
xlabel('t Sec')
ylabel('Input and Output')
text(1.4,0.75,'Input r1 = exp(-0.5t)')
text(6.2,0.34,'Output')