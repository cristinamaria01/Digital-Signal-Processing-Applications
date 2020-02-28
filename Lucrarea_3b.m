% Lucrarea_3b______________________________________________________________
clear all
close all
clc

% M-am folosit de formula L#1.7:
% omega = (2*k*pi)/N
% k - numarul de perioade ce se gasesc pe suportul precizat 

%ohm = 3*pi/15;             % pentru k = 3
%ohm = 4*pi/15;             % pentru k = 4
%ohm = 5*pi/15              % pentru k = 5
%ohm = 8*pi/15;             % pentru k = 8
ohm = 7*pi/15;              % pentru k = 7
Ts   = 1;
N    = 31;
t    = 0:0.1:N-1;
n    = 0:N-1;
xa   = sin(ohm .* t);        % semnal continuu
x    = sin(ohm .* n .* Ts);  % semnal discret

figure()
plot(t, xa)
hold on
stem(n, x)






%}