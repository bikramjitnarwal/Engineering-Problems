close all
figure
hold all
grid on

x = linspace(2,10,101);
y = (16.*x) - (4000./x.^2);
plot(x,y)

Q = (8*x.^2)+(4000./(x))
plot(x,Q)

xlabel('Radius (cm)')
ylabel('Area (cm^2)')
title('Minimizing Cylindrical Surface Area')
legend('Derivative','Original Function')