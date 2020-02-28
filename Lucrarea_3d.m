% Lucrarea_3d______________________________________________________________
clear all
close all
clc

% Sinusoide continue diferite, dar identice in discret
% Diferenta
% In cazul continuu, avem perioade diferite (se poate observa din grafic):
% T_1 = (2*pi)/(pi/3) = 6
% T_2 = (2*pi)/(2*pi + pi/3) = 0.857
% In cazul discret, semnalele se suprapun deoarece (avem aceeasi perioada):
% sin(pi/3) = sin(2*pi + pi/3)
% sin(2*pi/3) = sin(4*pi + 2*pi/3)
% sin(3*pi/3) = sin(6*pi + 3*pi/3)

ohm_1 = pi/3;
ohm_2 = 2*pi + pi/3;

Ts    = 1;
N     = 16;
n     = 0:N-1;
t     = 0:0.1:N-1;

xa_1  = sin(ohm_1 .* t);
xa_2  = sin(ohm_2 .* t);

x_1   = sin(ohm_1 .* n .* Ts);
x_2   = sin(ohm_2 .*n .* Ts);

figure(1)
plot(t, xa_1)
hold on 
plot(t, xa_2)
legend('Sinusoida cu ohm_1', 'Sinusoida ohm_2')
title('Sinusoide continue diferite')

figure(2)
stem(n, x_1)
hold on
stem(n, x_2)
legend('Sinusoida cu ohm_1' , 'Sinusoida cu ohm_2')
title('Aceleasi sinusoide, dar in discret')
