% Lucrarea_4c______________________________________________________________
clear all
close all
clc

load xilo
n  = 8000:1:10000;
x  = yx(n);
L  = length(x) - 1;
rx = xcorr(x, L, 'biased');

figure(1)
stem(-L:1:L, rx)
title('Grafic auto-corelatie xilo')

% Calculam media semnalului - aproximativ 0 
% => are caracteristici apropiate cu cele ale unui zgomot alb
media = mean(x)

