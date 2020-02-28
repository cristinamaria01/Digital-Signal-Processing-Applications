% Lucrarea_4b______________________________________________________________
clear all
close all
clc

N   = 31;
L   = 30;
n   = 0:N-1;
ohm = 2*pi/7;           % pentru a avea cel putin 5 perioade
x   = sin(ohm .*n);

figure(1)
stem(n, x)
xlabel('Suport')
ylabel('Sinusoida')

T   = 2*pi/ohm;         % perioada
rx  = xcorr(x, L, 'biased');

figure(2)
stem(-L:1:L, rx)
title('Grafic auto-corelatie')

% Din graficul de auto-corelatie putem observa ca punctele de maxim si
% minim local sunt simetrice fata de axa Oy si totodata la intervale care
% sunt multiplul perioadei. In acest caz, 7.



