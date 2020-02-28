% Lucrarea_3a______________________________________________________________
clear all
close all
clc
% Perioada T = 2*pi/omega => T = 30 , se poate observa si din grafic

omega = pi/15;
Ts    = 1;
M     = 31;
t     = 0:0.1:M-1;
n     = 0:M-1;
xa    = sin(omega .* t);            % semnal continuu
x     = sin(omega .* n .* Ts);      % semnal discret

figure()
plot(t, xa);
hold on
stem(n, x);