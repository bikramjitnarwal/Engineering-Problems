%Here, I defined all my variables. I made sure to give each variable a
%distinct name to allow myself and the TA to understand what is going on a
%bit better. I got the thermal diffusivity value from google which was
%needed for the Equation. 
depth = 0.75; 
Surface_Temperature = -1; 
Initial_Temperature = 14;
Thermal_Diffusivity = 1.72*10^(-6);

%The Number_of_days variable is defined from 1 day to 31 days   
Number_of_days = linspace(1,31,101);

%To get the number of seconds in a day, I did some easy calculations -> 24
%hours in a day X 60 Minutes in 1 Hour X 60 Seconds in 1 Minute = Total
%Seconds 
Number_of_seconds = Number_of_days*24*60*60;

%Equation used in the problem. It was given to us. 
Equation = depth./(2*sqrt(Thermal_Diffusivity*Number_of_seconds));

%A foor loop to go through cycles of different surface and initial
%temperatures which would be used to plot the graph. 
for i = 1:length(Number_of_seconds)
    Temp(i) = Surface_Temperature + (Initial_Temperature - Surface_Temperature)*erf(Equation(i)); 
end 

%Plotting each day in relation to its according temperature. 
plot(Number_of_days, Temp)

title ('Temperature in relation to Time')
xlabel('Time in days')
ylabel('Temperature in °C)')

hold on 
clear all 