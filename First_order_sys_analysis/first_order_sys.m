K = 1;
R = 10e3;
C = 1e-7;
T = R * C;
num = [0 K];
den = [T 1];

G = tf(num,den);

t = 0:0.1:10; % for ramp  --> 1/s2
u_ramp = t;
[y_ramp,t_ramp] = lsim(G,u_ramp,t); % linear simulation
plot(t_ramp,y_ramp);
hold on
step(G);