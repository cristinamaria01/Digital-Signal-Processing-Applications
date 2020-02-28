% Lucrarea_2a______________________________________________________________
clear all
close all
clc

load sunet_a.mat
load sunet_i.mat
load sunet_s.mat
load xilo.mat

% Frecventele de esantionare, luate din tabelul 1.1
Fs_a = 8000;
Fs_i = 8000;
Fs_s = 8000;
Fs_x = 44100;

% Durata reala a semnalelor reprezinta:
% nr. de esantioane(lungimea vectorului) * perioada de esantionare
durata_reala_a = length(ya) * (1/Fs_a);
durata_reala_i = length(yi) * (1/Fs_i);
durata_reala_s = length(ys) * (1/Fs_s);
durata_reala_x = length(yx) * (1/Fs_x);