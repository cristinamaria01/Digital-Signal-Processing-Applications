%% Subpunctul_a____________________________________________________________
clear all
close all
clc

% Putem observa ca fata de punctele precedente, aici am obtinut graficele
% in oglinda, avand atenuarile in sus

teta=pi/8;
w=-pi:0.1:pi;
r1=0.2;
a1=[1, -2*r1*cos(teta), r1^2];
[G,w]=freqz(1, a1);

figure;
subplot(3,1,1);
plot(w,abs(G));
ylabel('Amplitudine');
xlabel('w');
title('Caracteristica in frecventa a IIR');
hold on;

subplot(3,1,2);
plot(w,20*log10(abs(G)));
ylabel('Amplituine(dB)');
xlabel('w');
hold on;

subplot(3,1,3);
plot(w,angle(G));
ylabel('Faza');
xlabel('Frecventa normalizata');
hold on;


r2=0.5;
a2=[1, -2*r2*cos(teta), r2^2];
[G,w]=freqz(1, a2);
subplot(3,1,1);
plot(w,abs(G));
hold on;

subplot(3,1,2);
plot(w,20*log10(abs(G)));
hold on;

subplot(3,1,3);
plot(w,angle(G));
hold on;


r3=0.7;
a3=[1, -2*r3*cos(teta), r3^2];
[G,w]=freqz(1, a3);
subplot(3,1,1);
plot(w,abs(G));
hold on;

subplot(3,1,2);
plot(w,20*log10(abs(G)));
hold on;

subplot(3,1,3);
plot(w,angle(G));
hold on;


r4=0.9;
a4=[1, -2*r4*cos(teta), r4^2];
[G,w]=freqz(1, a4);
subplot(3,1,1);
plot(w,abs(G));
hold on;
legend('r=0.2', 'r=0.5', 'r=0.7', 'r=0.9');

subplot(3,1,2);
plot(w,20*log10(abs(G)));
hold on;

subplot(3,1,3);
plot(w,angle(G));


figure;
subplot(2,2,1);
zplane(1, a1);
ylabel('partea imaginara');
xlabel('partea reala');
title('Diagrama poli-zerouri pentru r=0.2');

subplot(2,2,2);
zplane(1, a2);
ylabel('partea imaginara');
xlabel('partea reala');
title('Diagrama poli-zerouri pentru r=0.5');

subplot(2,2,3);
zplane(1, a3);
ylabel('partea imaginara');
xlabel('partea reala');
title('Diagrama poli-zerouri pentru r=0.7');

subplot(2,2,4);
zplane(1, a4);
ylabel('partea imaginara');
xlabel('partea reala');
title('Diagrama poli-zerouri pentru r=0.9');

%% Subpunctul a''___________________________________________________________
teta=pi/8;
w=-pi:0.1:pi;
r=0.7;
b=[1 -2*r*cos(teta), r^2];
[H,w]=freqz(b,1);%%%FIR 2
[G,w]=freqz(1, b);%%%IIR

plot(w,20*log10(abs(H)));
hold on;
plot(w,20*log10(abs(G)));
ylabel('Amplituine(dB)');
xlabel('w');
grid on;
title('Graficele in oglinda FIR 2 si IIR');
legend('FIR 2', 'IIR');

%% Subpunctul_b____________________________________________________________
teta=pi/8;
w=-pi:0.1:pi;
r=0.7;
a=[1, -2*r*cos(teta), r^2];
[G,w]=freqz(1, a);
G=1./(1-2*r*cos(teta).*exp(j*w).^(-1)+r^2.*exp(j*w).^(-2));
G0=1/(1-2*r*cos(teta)*exp(j*0)^(-1)+r^2*exp(j*0)^(-2));
Gn = G/G0;
figure;
plot(w,abs(Gn));%%%graficul normat
hold on;
plot(w,abs(G));%%%graficul nenormat
ylabel('Amplitudine');
xlabel('w');
title('Graficul in amplitudine');
legend('normat','nenormat');

