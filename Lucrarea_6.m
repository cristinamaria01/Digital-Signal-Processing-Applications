%% Punctul_a_______________________________________________________________
clear all
close all
clc

% Putem observa ca este greu de estimat vizual o periodicitate a
% semnalului, deoarece la fiecare rulare semnalul e ia noi valori.
% Astfel, nu se ofera suficiente informatii pentru determinarea lui w0.

N   = 629;
n   = 0:N-1;
e   = randn(1, N);
w   = -pi:0.01:pi;

x   = cos(w.*n) + e;

figure(1)
subplot(2,1,1)
stem(n, x)
title('Semnalul x in discret')
subplot(2,1,2)
plot(n, x)
title('Semnalul x in continuu')

%% Punctul_b_______________________________________________________________
clear all
close all
clc

N   = 629;
n   = 0:N-1;
e   = randn(1,N);
w   = -pi:0.01:pi;
%45;81
x   = cos(w.*n) + e;
X   = freqz(x,1,w);
phi = 1/N .* (abs(X).^2);

figure(1)
subplot(2,1,1)
plot(w, phi)
title('Densitatea de putere spectrala a semnalului')
subplot(2,1,2)
plot(w, abs(20*log(phi)))
title('Densitatea spectrala in dB')

%% Punctul_c_______________________________________________________________
clear all
close all
clc

L   = 314;
N   = 629;
n   = 0:N-1;
e   = randn(1, N);
w   = -pi:0.01:pi;

figure(1)
subplot(2,3,1)
a = 0.01;
x = cos(w.*n) + a*e;
plot(w, x)
title('a = 0.01')

subplot(2,3,2)
a = 0.5;
x = cos(w.*n) + a*e;
plot(w, x)
title('a = 0.5')

subplot(2,3,3)
a = 1;
x = cos(w.*n) + a*e;
plot(w, x)
title('a = 1')

subplot(2,3,4)
a = 50;
x = cos(w.*n) + a*e;
plot(w, x)
title('a = 50')

subplot(2,3,5)
a = 100;
x = cos(w.*n) + a*e;
plot(w, x)
title('a = 100')

subplot(2,3,6)
a = 5000;
x = cos(w.*n) + a*e;
plot(w, x)
title('a = 5000')

figure(2)
subplot(2,3,1)
a = 0.01;
x = cos(w.*n) + a*e;
X = freqz(x,1,w);
phi = 1/N * (abs(X).^2);
plot(w, phi)
title('Densit. spec. a = 0.01')

subplot(2,3,2)
a = 0.5;
x = cos(w.*n) + a*e;
X = freqz(x,1,w);
phi = 1/N * (abs(X).^2);
plot(w, phi)
title('Densit. spec. a = 0.5')

subplot(2,3,3)
a = 10;
x = cos(w.*n) + a*e;
X = freqz(x,1,w);
phi = 1/N * (abs(X).^2);
plot(w, phi)
title('Densit. spec. a = 10')

subplot(2,3,4)
a = 50;
x = cos(w.*n) + a*e;
X = freqz(x,1,w);
phi = 1/N * (abs(X).^2);
plot(w, phi)
title('Densit. spec. a = = 50')

subplot(2,3,5)
a = 70;
x = cos(w.*n) + a*e;
X = freqz(x,1,w);
phi = 1/N * (abs(X).^2);
plot(w, phi)
title('Densit. spec. a = 70')

subplot(2,3,6)
a = 81;
x = cos(w.*n) + a*e;
X = freqz(x,1,w);
phi = 1/N * (abs(X).^2);
plot(w, phi)
title('Densit. spec. a = 81')

%% Punctul_d_______________________________________________________________
clear all
close all
clc

N   = 629;
L   = 314;
n   = 0:N-1;
e   = randn(1, N);
w   = -pi:0.01:pi;

a   = 0.01;
x   = cos(w.*n) + a*e;
v   = a*e;
rx  = xcorr(x, L, 'biased');
rv  = xcorr(v, L, 'biased');
SNR = 20*log(rx(L+1)/rv(L+1));
disp('Pentru a = 0.01 -> SNR:')
disp(SNR)
subplot(2,3,1)
SNR = 20*log(rx'/rv');
plot(w, SNR)
title('Grafic SNR 0.01')

a   = 0.5;
x   = cos(w.*n) + a*e;
v   = a*e;
rx  = xcorr(x, L, 'biased');
rv  = xcorr(v, L, 'biased');
SNR = 20*log(rx(L+1)/rv(L+1));
disp('Pentru a = 0.5 -> SNR:')
disp(SNR)
subplot(2,3,2)
SNR = 20*log(rx'/rv');
plot(w, SNR)
title('Grafic SNR 0.5')

a   = 10;
x   = cos(w.*n) + a*e;
v   = a*e;
rx  = xcorr(x, L, 'biased');
rv  = xcorr(v, L, 'biased');
SNR = 20*log(rx(L+1)/rv(L+1));
disp('Pentru a = 10 -> SNR:')
disp(SNR)
subplot(2,3,3)
SNR = 20*log(rx'/rv');
plot(w, SNR)
title('Grafic SNR 10')

a   = 50;
x   = cos(w.*n) + a*e;
v   = a*e;
rx  = xcorr(x, L, 'biased');
rv  = xcorr(v, L, 'biased');
SNR = 20*log(rx(L+1)/rv(L+1));
disp('Pentru a = 50 -> SNR:')
disp(SNR)
subplot(2,3,4)
SNR = 20*log(rx'/rv');
plot(w, SNR)
title('Grafic SNR 50')

a   = 70;
x   = cos(w.*n) + a*e;
v   = a*e;
rx  = xcorr(x, L, 'biased');
rv  = xcorr(v, L, 'biased');
SNR = 20*log(rx(L+1)/rv(L+1));
disp('Pentru a = 70 -> SNR:')
disp(SNR)
subplot(2,3,5)
SNR = 20*log(rx'/rv');
plot(w, SNR)
title('Grafic SNR 70')

a   = 81;
x   = cos(w.*n) + a*e;
v   = a*e;
rx  = xcorr(x, L, 'biased');
rv  = xcorr(v, L, 'biased');
SNR = 20*log(rx(L+1)/rv(L+1));
disp('Pentru a = 81 -> SNR:')
disp(SNR)
subplot(2,3,6)
SNR = 20*log(rx'/rv');
plot(w, SNR)
title('Grafic SNR 81')