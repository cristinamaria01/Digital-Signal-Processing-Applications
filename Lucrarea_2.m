clear all
close all
clc

% Fiind filtru de orinul 2, in teta si (pi-teta), am obtinut 2 atenuari 

% teta = pi/3;
teta=pi/8;                      %teta ales de mine
w=-pi:0.1:pi;
r1=0.25;
b1=[1 -2*r1*cos(teta), r1^2];
[H,w]=freqz(b1,1);

%%%Graficele pentru valoare r1_____________________________________________
subplot(3,1,1);
plot(w,abs(H));
ylabel('Amplitudine');
xlabel('w');
title('Caracteristica in frecventa a filtrullui de tip FIR de ordinul 2');
hold on;

subplot(3,1,2);
plot(w,20*log10(abs(H)));
ylabel('Amplituine(dB)');
xlabel('w');
hold on;

subplot(3,1,3);
plot(w,angle(H));
ylabel('Faza');
xlabel('Frecventa normalizata');
hold on;


r2=0.5;
b2=[1 -2*r2*cos(teta), r2^2];
[H,w]=freqz(b2,1);

%%%Graficele pentru valoare r2_____________________________________________
subplot(3,1,1);
plot(w,abs(H));
hold on;

subplot(3,1,2);
plot(w,20*log10(abs(H)));
hold on;

subplot(3,1,3);
plot(w,angle(H));
hold on;


r3=0.7;
b3=[1 -2*r3*cos(teta), r3^2];
[H,w]=freqz(b3,1);

%%%Graficele pentru valoare r3_____________________________________________
subplot(3,1,1);
plot(w,abs(H));
hold on;

subplot(3,1,2);
plot(w,20*log10(abs(H)));
hold on;

subplot(3,1,3);
plot(w,angle(H));
hold on;


r4=0.9;
b4=[1 -2*r4*cos(teta), r4^2];
[H,w]=freqz(b4,1);

%%%Graficele pentru valoare r4_____________________________________________
subplot(3,1,1);
plot(w,abs(H));
hold on;
legend('r=0.25', 'r=0.5', 'r=0.7', 'r=0.9');

subplot(3,1,2);
plot(w,20*log10(abs(H)));
hold on;

subplot(3,1,3);
plot(w,angle(H));


figure;
%%%Diagrama zerourilor pentru r1=0.25______________________________________
subplot(2,2,1);
zplane(b1,1);
ylabel('partea imaginara');
xlabel('partea reala');
title('Diagrama zerourilor pentru r=0.25');

%%%Diagrama zerourilor pentru r2=0.5_______________________________________
subplot(2,2,2);
zplane(b2,1);
ylabel('partea imaginara');
xlabel('partea reala');
title('Diagrama zerourilor pentru r=0.5');

%%%Diagrama zerourilor pentru r3=0.7_______________________________________
subplot(2,2,3);
zplane(b3,1);
ylabel('partea imaginara');
xlabel('partea reala');
title('Diagrama zerourilor pentru r=0.7');

%%%Diagrama zerourilor pentru r4=0.9_______________________________________
subplot(2,2,4);
zplane(b4,1);
ylabel('partea imaginara');
xlabel('partea reala');
title('Diagrama zerourilor pentru r=0.9');