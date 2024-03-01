%define parameters

Wn = 1;
Zeta = [0, 0.1, 0.3, 0.5, 0.7, 0.9, 1];
time_sim = 0:0.01:20;
step_input = ones(size(time_sim));

num = [0 Wn^2];
for i=1:length(Zeta)
    
den = [1, 2*Zeta(i)*Wn, Wn^2];
sys = tf(num,den);

[y,t] = step(sys,time_sim);
subplot(length(Zeta),1,i);
plot(t,step_input,'b','LineWidth',1.5);
hold on
plot(t,y,'r','LineWidth',1.5);
xlabel('time');
ylabel('system response');
title(['Damping ration (\zeta)',num2str(Zeta(i))]);

end
