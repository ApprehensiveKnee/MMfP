
clc;
clear all;
close all;

% Read the data from the csv file and store the colums values in 3 arrays. 
data = csvread('energy_comparison.csv',1,0);
RCH4 = data(:,1);
EHF = data(:,2);
ERS2_1 = data(:,3);
ERS2_2 = data(:,4);
ERS2_3 = data(:,5);

%Mark the minimum energy points
[minEHF, indexEHF] = min(EHF);
[minERS2_1, indexERS2_1] = min(ERS2_1);
[minERS2_2, indexERS2_2] = min(ERS2_2);
[minERS2_3, indexERS2_3] = min(ERS2_3);

% Plot the data
figure
plot(RCH4, EHF, "Color", "#D95319", 'LineWidth', 1.5)
hold on
plot(RCH4(indexEHF), minEHF, 'x', 'MarkerSize', 10, 'MarkerEdgeColor', 'k', 'LineWidth', 2)
plot(RCH4, ERS2_1, "Color", "#7E2F8E", 'LineWidth', 1.5)
plot(RCH4(indexERS2_1), minERS2_1, 'diamond', 'MarkerSize', 10, 'MarkerEdgeColor', 'k', 'LineWidth', 2)
plot(RCH4, ERS2_2, "Color", "#6E2F8E", 'LineWidth', 1.5)
plot(RCH4(indexERS2_2), minERS2_2, '^', 'MarkerSize', 10, 'MarkerEdgeColor', 'k', 'LineWidth', 2)
plot(RCH4, ERS2_3, "Color", "#5E2F8E", 'LineWidth', 1.5)
plot(RCH4(indexERS2_3), minERS2_3, 'v', 'MarkerSize', 10, 'MarkerEdgeColor', 'k', 'LineWidth', 2)
xlabel('C-H bond length (Angstroms)')
ylabel('Energy (hartree/mol)')
title('1D MPE scan of CH4 dissociation')
legend('HF', 'HF min', 'RS2', 'RS2 min')
grid on


