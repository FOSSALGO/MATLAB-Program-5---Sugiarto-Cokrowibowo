clear all
% --------------- Unit-ramp response ---------------
% ***** The unit-ramp response is obtained as the unit-step
% response of G(s)/s *****
% ***** Enter the numerator and denominator of G(s)/s *****
num = [2 1];
den = [1 1 1 0];
% ***** Specify the computing time points (such as t = 0:0.1:10)
% and then enter step-response command: c = step(num,den,t) *****
t = 0:0.1:10;
c = step(num,den,t);
% ***** In plotting the ramp-response curve, add the reference
% input to the plot. The reference input is t. Add to the
% argument of the plot command with the following: t,t,'-'. Thus
% the plot command becomes as follows: plot(t,c,'o',t,t,'-') *****
plot(t,c,'o',t,t,'-')
% ***** Add grid, title, xlabel, and ylabel *****
grid
title('Unit-Ramp Response Curve for System G(s) = (2s + 1)/(s^2 + s + 1)')
xlabel('t Sec')
ylabel('Input and Output')