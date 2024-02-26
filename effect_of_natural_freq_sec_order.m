% define parameters
Zeta = 1;
Wn = 1:1:5;
time_sim = 0:0.02:20;
step_input = ones(size(time_sim));


for i=1:length(Wn)

num = [0 Wn(i)^2];    
den = [1, 2*Zeta*Wn(i), Wn(i)^2];
sys = tf(num,den);

[y,t] = step(sys,time_sim);

subplot(length(Wn),1,i);
plot(t,step_input,'b','LineWidth',1.5);
hold on
plot(t,y,'r','LineWidth',1.5);
xlabel('time');
ylabel('system response');
title(['Damping ration (\omega)',num2str(Wn(i))]);

end