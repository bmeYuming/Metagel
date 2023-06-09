
clc,clear
close all

load('reflected_coefficient.mat')
load('transmission_coefficient.mat')
x = linspace(5e6,10e6,100);
x_label = 'Time/s';

figure(1)
plot(x, abs(r));
hold on
plot(x, abs(t));
hold on 
plot(x, imag(r));
hold on 
plot(x, imag(t));
legend('R','T','Rp','Tp')

load rho_eff.mat
load K_eff.mat
x = linspace(5e6,10e6,100);

figure(2)
plot(x, rho_eff(:,2)');
legend('rho_e_f_f')
figure(3)
plot(x, K_eff(:,2)');
legend('K_e_f_f')
