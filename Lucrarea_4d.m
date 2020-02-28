% Lucrarea_4d______________________________________________________________
clear all
close all
clc

load sunet_a
load sunet_i
load sunet_s

% Sunet_a__________________________________________________________________
n1  = 300:1:400;
x1  = ya(n1);
L1  = length(x1) - 1;
rx1 = xcorr(x1, L1, 'biased');

figure(1)
stem(-L1:1:L1, rx1)
title('Grafic auto-corelatie sunet_a')

media_a     = mean(x1)
dispersia_a = sqrt(var(x1));
r0_a        = rx1(L1+1);

% Sunet_i__________________________________________________________________
n2  = 300:1:600;
x2  = yi(n2);
L2  = length(x2) - 1;
rx2 = xcorr(x2, L2, 'biased');

figure(2)
stem(-L2:1:L2, rx2)
title('Grafic auto-corelatie sunet_i')

media_i     = mean(x2)
dispersia_i = sqrt(var(x2));
r0_i        = rx2(L2+1);

% Sunet_s__________________________________________________________________
n3  = 300:1:800;
x3  = ys(n3);
L3  = length(x3) - 1;
rx3 = xcorr(x3, L3, 'biased');

figure(3)
stem(-L3:1:L3, rx3)
title('Grafic auto-corelatie sunet_s')

media_s     = mean(x3)
dispersia_s = sqrt(var(x3));
r0_s        = rx3(L3+1);

% rezulta ca semnalul asociat lui /s/ are caracteristicile cele mai 
% apropiate zgomotului alb, s avand graficul si media cea mai
% apropriata zgomotului alb.
