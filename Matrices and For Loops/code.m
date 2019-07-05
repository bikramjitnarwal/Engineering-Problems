t = linspace(0,5,101)

figure;

for a = 1:0.1:2
    p = (1000/a) * exp(0.5*a*t);
    plot(t,p);
    hold on;
end

hold all;
grid on;

xlabel('Time (hrs)');
ylabel('Population of Bacteria');
legend('a=1.0','a=1.1','a=1.2','a=1.3','a=1.4','a=1.5','a=1.6','a=1.7','a=1.8','a=1.9','a=2.0')