M = [];
theta = linspace(0, 180, 401);
x = linspace(0, 10, 501);

for i_x = 1:length(x)
    for i_theta = 1:length(theta)
        M(i_x, i_theta) = x(i_x)*400*cosd(theta(i_theta))+ 3*400*sind(theta(i_theta));
    end
end

%Figure(1)
plot(x,M(:,1))
hold on 
plot(x,M(:,201))
hold on 
plot(x,M(:,301))
hold on 
plot(x,M(:,401))
hold on 

xlabel('x(m)')
ylabel('Moment at A (Nm)')
title('Moment at A as x varies')
label1 = sprintf('%s= %2.1f%s', '\theta', theta(1), '\circ');
label2 = sprintf('%s= %2.1f%s', '\theta', theta(201), '\circ');
label3 = sprintf('%s= %2.1f%s', '\theta', theta(301), '\circ');
label4 = sprintf('%s= %2.1f%s', '\theta', theta(401), '\circ');

legend(label1, label2, label3, label4)