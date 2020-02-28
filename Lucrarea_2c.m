% Lucrarea_2c______________________________________________________________
clear all
close all
clc

% Cu valorile din indrumarul de laborator:
ohm = pi/3;   
Ts  = 1;
M   = 12;
t   = 0:0.1:M-1;
n   = 0:M-1;

%{
% SAU CU ALTE VALORI:
ohm = pi/5;
Ts  = 1;
M   = 24;
t   = 0:0.1:M-1;
n   = 0:M-1;
%}

xa  = sin(ohm * t);                 % semnal continuu
x   = sin(ohm .* n .* Ts);          % semnal discret

figure()
plot(t, xa);
hold on
stem(n, x);
legend('Semnal continuu sin(pi*t/3','Semnal discret sin(n*pi/3)')

