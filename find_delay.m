clear all
close all
clc
load rpys.mat
%%
close all
t_use = 12;

t_imu = rpy_imu(:,end);
t_vis = rpy_vision(:,end);

subplot(2,1,1)
plot(t_imu, rpy_imu(:,2))
hold on
plot(t_vis, rpy_vision(:,2),'r')
legend('imu', 'vision')
grid on