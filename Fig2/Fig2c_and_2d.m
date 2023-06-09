clear
clc
close all

rho_1=1000;
rho_2=1190;
rho_4=rho_1;

c_1=1500;
c_2=1260;
c_4=c_1;

theta_1=0;
theta_2=0;
theta_3=0;
theta_4=0;

d_1=0.01546;
d_2=0.00354;
d_3=0.002;
d_4=0.015;

Z_1=rho_1*c_1;
Z_2=rho_2*c_2;
Z_4=Z_1;

alpha=25.3*10^(-16);
d_1=0.009;
d_4=0.009;
load('signal_7_5M.mat');
signal=signal_7_5M;

figure
subplot(2,1,1);
plot(signal(:,1),signal(:,2));
hold on 
plot(signal(:,3),signal(:,4));
xlabel('Time/s')
grid on
grid minor
legend('Direct signal','Reflected signal');

subplot(2,1,2);
plot(signal(:,5),signal(:,6));
hold on
plot(signal(:,7),signal(:,8));
xlabel('Time/s')
grid on
grid minor
legend('Direct signal','Transmissed signal');

