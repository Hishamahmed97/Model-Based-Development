% first_order_step
K = 1;
R = 10e3;
C = 1e-7;
T = R * C;
num = [0 K];
den = [T 1];
G = tf(num,den);
step(G);
x = stepinfo(G);
rise = x.RiseTime;
settling = x.SettlingTime;
peak = x.PeakTime;
disp(["rise time = ",rise]);
disp(["settling time = ",settling]);
disp(["peak time = ",peak]);

