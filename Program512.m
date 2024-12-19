clear all
% ------- Ramp Response -------
num = [2 1];
den = [1 1 1];
t = 0:0.1:10;
r = t;
y = lsim(num,den,r,t);
plot(t,r,'-',t,y,'o')
grid
title('Unit-Ramp Response Obtained by Use of Command "lsim"')
xlabel('t Sec')
ylabel('Unit-Ramp Input and System Output')
text(6.3,4.6,'Unit-Ramp Input')
text(4.75,9.0,'Output')