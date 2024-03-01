%first order ramp input
K = 1;
R = 10e3;
C = 1e-7;
T = R * C;
num = [0 K];
den = [T 1];

G = tf(num,den);

t = 0:0.1:10; 
u_ramp = t;% for ramp input  --> 1/s2


[y_ramp,t_ramp] = lsim(G,u_ramp,t); % linear simulation
plot(t_ramp,y_ramp);
hold on

x = stepinfo(G);
rise = x.RiseTime;
settling = x.SettlingTime;
peak = x.PeakTime;
disp(["rise time = ",rise]);
disp(["settling time = ",settling]);
disp(["peak time = ",peak]);