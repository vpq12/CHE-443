%CHE443 HW2 problem 1
%Create a concentraion vs time plot for the given values

%preamble
clear all; 
close all; 
clc;

%input data
CA= [1.86 1.57 1.43 1.34 1.16 1.10 0.99 0.9 0.86 0.79];
time= [1:10];

%plots
plot (time,CA,'o', 'linewidth',2);
grid on
title('Vy Pham, concentration vs time');
xlabel('time');
ylabel('concentration');