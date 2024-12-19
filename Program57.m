clear all
% ------- This is a MATLAB program to find the rise time, peak time,
% maximum overshoot, and settling time of the second-order system
% and higher-order system -------
% ------- In this example, we assume zeta = 0.6 and wn = 5 -------
num = [25];
den = [1 6 25];
t = 0:0.005:5;
[y,x,t] = step(num,den,t)
r = 1; while y(r) < 1.0001; r = r + 1; end;
rise_time = (r - 1)*0.005
[ymax,tp] = max(y);
peak_time = (tp - 1)*0.005
max_overshoot = ymax-1
s = 1001; while y(s) > 0.98 & y(s) < 1.02; s = s - 1; end;
settling_time = (s - 1)*0.005
% figure(1),
% step(num,den,t)