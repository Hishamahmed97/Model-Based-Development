% define parameters
Zeta =    [0.1, 0.5, 0.9];
Wn   =    [1, 2, 4];

time_sim = 0:0.02:20;

step_input = ones(size(time_sim));
for i=1:length(Wn)
    
    for j = 1:length(Zeta)
        
    num = [0 Wn(i)^2];    
    den = [1, 2*Zeta(j)*Wn(i), Wn(i)^2];
    sys = tf(num,den);

    [y,t] = step(sys,time_sim);

    subplot(length(Wn),length(Zeta),j);
    plot(t,step_input,'b','LineWidth',1.5);
    hold on
    plot(t,y,'r','LineWidth',1.5);
    xlabel('time');
    ylabel('system response');
    title(['Damping ration (\omega)',num2str(Wn(i))]);
    end
    

end