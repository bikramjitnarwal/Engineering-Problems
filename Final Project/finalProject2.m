%Average temperature of the months Dec - May
Average_Surface_Temperature = [-1 -3 -3 1 7 14];

%Defining what months to include
Month = ["December" "January" "Febuary" "March" "April" "May"];

%All variables defined that will be used in this piece of code.
for i = 1:length(Average_Surface_Temperature)
    Surface_Temperature = Average_Surface_Temperature(i)
    Initial_Temperature = 14;
    Depth = (0.05:0.01:5);
    Thermal_Diffusivity = 1.72*10^(-6);
    Number_of_days = linspace(1,181,111);
    Number_of_seconds = Number_of_days*24*60*60;
    
%This will enable Matlab to graph in 3D
    [A,B] = meshgrid(Number_of_days,Depth)
    
%This foor loop will go through 2 changing values that change at the same
%time. 
for Q = 1:length(Depth)
        Equation = Depth(Q);
        Function= Equation./(2*sqrt(Thermal_Diffusivity * Number_of_seconds));

        for R = 1:length(Number_of_seconds)
            T(Q,R) = erf(Function(1))*(Initial_Temperature - Surface_Temperature) + Surface_Temperature; 
        end
end

figure
mesh(A,B,T)

title("Average Temperature in " + Month(i));
xlabel("Depth in meters")
ylabel("Time in days")
zlabel("Temperature in °C")
end 