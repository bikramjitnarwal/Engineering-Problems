xpts = [0,5,10,15,20];
ypts = [200,152,118,93,74];
coefs = polyfit(xpts,ypts,4)

hold on 

x = linspace(0,50,101);
y = polyval(coefs,x)

plot(x,y);
plot(xpts,ypts,'ro');
grid on

xlabel('Time (mins)')
ylabel('Penicillin Concentration micro(g)/ml')
title('Penicillin Concentratio in Relation to Time')

t = linspace(0,50,101);
Y = 200*exp(-0.05276*t)
plot(t,Y)

%Looking at the better curve, it is obvious that the penicillin 
%concentration level will drop below 40g/ml after 32.5 minutes. Also, the 
%longest time someone should wait before penicillin injections is 46 
%minutes