clear all
t = 0:0.05:10;
A = [0 1 0;0 0 1;-10 -17 -8];
B = [2;1;0.5];
C=[1 0 0];
[y,x,t] = step(A,B,C*A,C*B,1,t);
plot(t,y)
grid;
title('Response to Initial Condition')
xlabel('t (sec)')
ylabel('Output y')