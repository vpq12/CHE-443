%CHE 443 studio 2
%10/08/2020

%1.	Determine the relationship between the rate constant and the temperature of the system. 
%2.	Using MATLAB, plot the data using blue markers 
%3.	Use polyfit to fit a line of best fit for the data points on the plot. 
%4.	What activation energy represents this change in bustliness? 

%preamble 
clear all; 
close all; 
clc;

%data imput 
T= [13 16 22 24 28];
spd= [150 160 230 295 370];

p = polyfit(T,spd,3);

%plot with no effort

%plot(T,spd,'-o');
%grid on


%using best fit to plot
T2 = 13:1:28;
spd2 = polyval(p,T2);
figure(1)
plot(T,spd,'o',T2,spd2)
grid on
xlabel('temperature');
ylabel('speed');
title('Vy Pham, CHE443 studio section 012, Studio#2, 10/08/2020');


%linear plots 
ln_spd2=log(spd2);
T2_kelvin= 273+ T2;
T2_inverse= 1./T2_kelvin;

figure(2)
plot(T2_inverse, ln_spd2);
slope = (ln_spd2(2)-ln_spd2(3))/(T2_inverse(2)-T2_inverse(3));
xlabel('1/T');
ylabel('ln(k)');
title('Vy Pham, CHE443 studio section 012, Studio#2, 10/08/2020');

%activation energy calc
E=slope/8.314  %[J/mol]
