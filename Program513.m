clear all
t = 0:0.1:12;
A = [-1 0.5;-1 0];
B = [0;1];
C = [1 0];
D = [0];
% For the unit-step input u = 1(t), use the command "y = step(A,B,C,D,1,t)".
y = step(A,B,C,D,1,t);
figure(1),
plot(t,y)
grid
title('Unit-Step Response')
xlabel('t Sec')
ylabel('Output')
% For the response to exponential input u = exp(-t), use the command
% "z = lsim(A,B,C,D,u,t)".
u = exp(-t);
z = lsim(A,B,C,D,u,t);
figure(2),
plot(t,u,'-',t,z,'o')
grid
title('Response to Exponential Input u = exp(-t)')
xlabel('t Sec')
ylabel('Exponential Input and System Output')
text(2.3,0.49,'Exponential input')
text(6.4,0.28,'Output')