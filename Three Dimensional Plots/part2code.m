close all;
domain_x = (-2:0.05:2)
domain_y = (-2:0.05:2)

[X,Y] = meshgrid(domain_x,domain_y)

Z = X.*exp(-X.^2-Y.^2)

plot(domain_x, Z(1,:));
grid on 
xlabel('x');
ylabel('y')
hold on 

plot(domain_y, Z(:,21));
grid on 
xlabel('x');
ylabel('y')
hold on 

plot(domain_x, Z(41,:));
grid on 
xlabel('x');
ylabel('y')
hold on 