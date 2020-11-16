clear all 
close all 
clc 

x = 0:0.2:10;  %the range of x values
y = x;         %the range of y values

[X,Y] = meshgrid(x,y);  %this generates the actual grid of x and y values

C = cos(X.*2 - Y);
F = Y.^2.*C;       %the function we are plotting

figure(1) 
surf(X,Y,F)        %surface plotting function

xlabel('x','Fontsize',12,'FontWeight','bold','color','k')
ylabel('y','Fontsize',12,'FontWeight','bold','color','k')
zlabel('{y^2}cos(2x-y)','Fontsize',12,'FontWeight','bold','color','k')

a = colorbar;
a.Label.String = 'Elevation';