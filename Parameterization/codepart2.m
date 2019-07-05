theta = linspace(0,180,401);
x = linspace(0,10,501);

for i_x = 1:length(x)
    for i_theta = 1:length(theta)
        M(i_x, i_theta) = x(i_x)*400*cosd(theta(i_theta))+ 3*400*sind(theta(i_theta));
    end
end

%Figure(2)
plot(theta,M(1,:))
hold on 
plot(theta,M(201,:))
hold on 
plot(theta,M(301,:))
hold on 
plot(theta,M(401,:))
hold on 
plot(theta,M(501,:))
hold on 

xlabel('theta(degrees)')
ylabel('Moment at A (Nm)')
title('Moment at A as x varies')

label1 = sprintf('x=%2.1f m', x(1));
label2 = sprintf('x=%2.1f m', x(201));
label3 = sprintf('x=%2.1f m', x(301));
label4 = sprintf('x=%2.1f m', x(401));
label5 = sprintf('x=%2.1f m', x(501));

legend(label1, label2, label3, label4, label5)