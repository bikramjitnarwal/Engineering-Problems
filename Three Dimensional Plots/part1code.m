close all;
domain_x = (-2:0.05:2)
domain_y = (-2:0.05:2)

[X,Y] = meshgrid(domain_x,domain_y)

Z = X.*exp(-X.^2-Y.^2)

surfc(X,Y,Z)
xlabel('x')
ylabel('y')
zlabel('g(x,y) = X.*exp(-X.^2-Y.^2)')
title('Surface Plot of g(x,y)')

