clc
close all
clear all

Temps = [300:100:2000];

% Import Keq data form Project5.xlsx
Keq = readmatrix('Project5.xlsx', 'Sheet', 'Keq', 'Range', 'I14:I31');

% Plot Keq vs. T
figure
plot(Temps, Keq, '-', 'Color', 'r')
hold on
plot(Temps, Keq, 'ko')
xlabel('Temperature (K)')
ylabel('Equilibrium Constant')

% Plot ln(Keq) vs. T 
figure
% red line
plot(Temps, Keq, '-', 'Color', 'r')
% Black markers
hold on
plot(Temps, Keq, 'kx')
grid on
set(gca, 'YScale', 'log')
xlabel('Temperature (K)')
ylabel('Equilibrium Constant')

