%% Subpunctul_a____________________________________________________________
clear all
close all
clc

teta=pi/3;
w=-pi:0.01:pi;

%zerouri
b1=0.75;
b2= 0.8;
b3=0.9;
b=[1 -(b1+b2+b3) b1*b2+b2*b3+b3*b1 -b1*b2*b3]; %(1-p1z)(1-p2z)(1-p3z)=1-(p1+p2+p3)z+(p1*p2+p2*p3+p3*p1)z^2+p1*p2*p3*z^3

%poli
a1=0.8;
a2=0.95;
a=[1 -a1-a2 a1*a2]; 

[H,w]=freqz(b,a);

figure;
zplane(b, a);
title('Diagrama de poli-zerouri');

figure;
freqz(b, a, w);
title('Raspunsul in frecventa');

%% Subpunctul_b____________________________________________________________
%clear all
%close all
%clc

teta=pi/3;
w=-pi:0.01:pi;

% zerouri
b1  = 0.2; 
b2  = 0.25;
b3  = 0.3;
b=[1 -(b1+b2+b3) b1*b2+b2*b3+b3*b1 -b1*b2*b3];


% poli
a1 = 0.2;
a2 = 0.15;
a3 = 0.25;
a=[1 -a1-a2 a1*a2];

[H,w]=freqz(b,a);

figure;
zplane(b, a);
title('Diagrama de poli-zerouri');

figure;
freqz(b, a, w);
title('Raspunsul in frecventa');