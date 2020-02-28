% Lucrarea_4a______________________________________________________________
clear all
close all
clc

N    = 30;
L    = 25;                  % L < N

% Generam un semnal aleator cu distributie gaussiana de medie nula si
% dispersie unitara:
x    = randn(1,N);         

% Putem calcula media semnalului cu ajutorul functiei mean
media_semnalului = mean(x)

% Calculam primele valori ale auto-corelatiei deviate rx
rx   = xcorr(x, L, 'biased');

% Afisam valoarea lui rx[0]
rx_0 = rx(L+1)

% Calculam dispersia variabilei aleatoare care este radacina patrata din
% varianta variabilei aleatoare care ar trebui sa fie aprox. egala cu rx[0]
% conform relatiei L#1.23
dispersia = sqrt(var(x))

% Observam ca functia de auto-corelatie are maximul in origine
% valoarea sa in 0 reprezinta corelatia dintre valoarea semnalului la un
% moment de timp dat si ea insasi
figure()
stem(-L:1:L, rx)
title('Graficul secventei de auto-corelatie');

% Functia de auto-corelatie indica corelatia dintre puncte separate prin
% diferite intervale de timp. Adica, cat de corelate sunt punctele din
% trecut cu cele din viitor.

% Odata ce marim numarul de perioade de timp dintre puncte functia de auto-
% corelatie va scadea spre 0 deoarece punctele vor deveni mai separate
% unele de altele si astfel va fi mai greu de prevazut in viitor.

% Prin urmare, se va produce un semnal apropiat de zgomotul alb datorita
% imprevizibilitatii datelor viitoare.
% Totodata, zgomotul alb are urmatoarele proprietati:
% - media este nula
% - deviatia standard este constanta