
clc;
clear all;
close all;

% Read the data from the csv file and store the colums values in 3 arrays. 
data = csvread('energy_comparison.csv',1,0);
RCH4 = data(:,1);
EHF = data(:,2);
ERS2 = data(:,3);

%Mark the minimum energy points
[minEHF, indexEHF] = min(EHF);
[minERS2, indexERS2] = min(ERS2);

% Plot the data
figure
plot(RCH4, EHF, "Color", "#D95319", 'LineWidth', 1.5)
hold on
plot(RCH4(indexEHF), minEHF, 'x', 'MarkerSize', 10, 'MarkerEdgeColor', 'k', 'LineWidth', 2)
plot(RCH4, ERS2, "Color", "#7E2F8E", 'LineWidth', 1.5)
plot(RCH4(indexERS2), minERS2, 'o', 'MarkerSize', 10, 'MarkerEdgeColor', 'k', 'LineWidth', 2)
%plot orizontal line
plot( RCH4, -40.111*ones(size(RCH4)), 'k--', 'LineWidth', 1.)
xlabel('C-H bond length (Angstroms)')
ylabel('Energy (hartree/mol)')
title('1D MPE scan of CH4 dissociation')
legend('HF', 'HF min', 'RS2', 'RS2 min')
grid on


