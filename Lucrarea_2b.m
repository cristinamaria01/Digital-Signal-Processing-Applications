% Lucrarea_2b______________________________________________________________
clear all
close all
clc

M   = 30;                      % lungimea suportului semnalului discretizat
Fs  = 500;                     % frecventa de esantionare
Ts  = 1/Fs;                    % perioada de esantionare
ohm = 2*pi/M;                  % pulsatia

xa = f1(ohm, Ts, M);

function [xa] = f1( ohm, Ts, M)
n   = 0:0.1:M-1;               % suportul
xa  = sin(ohm .* n .* Ts);
end




