% Lucrarea_3c______________________________________________________________
clear all
close all
clc

Ts  = 1;
ohm = 1;
N   = 51;
n   = 0:N-1;
t   = 0:0.1:N-1;

xa  = sin(ohm .* t);                % continuu
x   = sin(n*ohm*Ts);                % discret

figure()
stem(n, x)
%hold on
%plot(t, xa)
title('Sinusoida discreta aperiodica')