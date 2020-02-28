%% Subpunctul_a____________________________________________________________
clear all
close all
clc
% r se plimba intre 0 si 1 (origine si raza cercului unitate)
% r - mic => polii si zerourile o sa fie mai apropiati de origine
% r - mare => polii si zerourile o sa fie mai apropiati de cercul unitate


teta          = pi/3;                   % valoare fixata
w             = -pi:0.01:pi;

% r = 0.25_________________________________________________________________
r1            = 0.25;
b1            = [1 -r1*exp(1i*teta)];    % coeficientii numaratorului lui H 
                                        % conform formulei 3.7
[H, w]       = freqz(b1, 1);

figure(1)
subplot(3,1,1)
plot(w/pi, abs(H))
title('Caracteristica in frecventa a unui filtru de tip FIR')
ylabel('Amplitudine')
hold on

subplot(3,1,2)
plot(w/pi, 20*log10(abs(H)));
ylabel('Amplitudine(dB)')
xlabel('w')
hold on

subplot(3,1,3)
plot(w/pi, angle(H));
hold on

% r = 0.5__________________________________________________________________
r2            = 0.5;
b2            = [1 -r2*exp(1i*teta)];    % coeficientii numaratorului lui H 
                                        % conform formulei 3.7
[H, w]       = freqz(b2, 1);

subplot(3,1,1)
plot(w/pi, abs(H))
title('Caracteristica in frecventa a unui filtru de tip FIR')
ylabel('Amplitudine')
hold on

subplot(3,1,2)
plot(w/pi, 20*log10(abs(H)));
ylabel('Amplitudine(dB)')
xlabel('w')
hold on

subplot(3,1,3)
plot(w/pi, angle(H));
hold on

% r = 0.7__________________________________________________________________
r3            = 0.7;
b3            = [1 -r3*exp(1i*teta)];    % coeficientii numaratorului lui H 
                                        % conform formulei 3.7
[H, w]       = freqz(b3, 1);

subplot(3,1,1)
plot(w/pi, abs(H))
title('Caracteristica in frecventa a unui filtru de tip FIR')
ylabel('Amplitudine')
hold on

subplot(3,1,2)
plot(w/pi, 20*log10(abs(H)));
ylabel('Amplitudine(dB)')
xlabel('w')
hold on

subplot(3,1,3)
plot(w/pi, angle(H));
hold on

% r = 0.9__________________________________________________________________
r4            = 0.9;
b4            = [1 -r4*exp(1i*teta)];    % coeficientii numaratorului lui H 
                                        % conform formulei 3.7
[H, w]       = freqz(b4, 1);

subplot(3,1,1)
plot(w/pi, abs(H))
title('Caracteristica in frecventa a unui filtru de tip FIR')
ylabel('Amplitudine')
hold on
legend('r = 0.25','r = 0.5','r = 0.7','r = 0.9')

subplot(3,1,2)
plot(w/pi, 20*log10(abs(H)));
ylabel('Amplitudine(dB)')
xlabel('w')
hold on

subplot(3,1,3)
plot(w/pi, angle(H));
ylabel('Faza')
hold on

% Diagrama zerourilor______________________________________________________

figure(2)
% r = 0.25_________________________________________________________________
subplot(2,2,1)
zplane(b1, 1)
xlabel('Re')                % partea reala
ylabel('Im')                % partea imaginara
title('Diagrama zerourilor pentru r = 0.25')

% r = 0.5__________________________________________________________________
subplot(2,2,2)
zplane(b2, 1)
xlabel('Re')                % partea reala
ylabel('Im')                % partea imaginara
title('Diagrama zerourilor pentru r = 0.5')

% r = 0.7_________________________________________________________________
subplot(2,2,3)
zplane(b3, 1)
xlabel('Re')                % partea reala
ylabel('Im')                % partea imaginara
title('Diagrama zerourilor pentru r = 0.7')

% r = 0.9__________________________________________________________________
subplot(2,2,4)
zplane(b4, 1)
xlabel('Re')                % partea reala
ylabel('Im')                % partea imaginara
title('Diagrama zerourilor pentru r = 0.9')

%% Subpunctul_b____________________________________________________________
clear all
close all
clc

teta          = pi/8;                   % valoare fixata
w             = -pi:0.01:pi;

% r = 0.25_________________________________________________________________
r1            = 0.25;
b1            = [1 -r1*exp(1i*teta)];    % coeficientii numaratorului lui H 
                                        % conform formulei 3.7
[H, w]       = freqz(b1, 1);

figure(1)
subplot(3,1,1)
plot(w/pi, abs(H))
title('Caracteristica in frecventa a unui filtru de tip FIR')
ylabel('Amplitudine')
hold on

subplot(3,1,2)
plot(w/pi, 20*log10(abs(H)));
ylabel('Amplitudine(dB)')
xlabel('w')
hold on

subplot(3,1,3)
plot(w/pi, angle(H));
hold on

% r = 0.5__________________________________________________________________
r2            = 0.5;
b2            = [1 -r2*exp(1i*teta)];    % coeficientii numaratorului lui H 
                                        % conform formulei 3.7
[H, w]       = freqz(b2, 1);

subplot(3,1,1)
plot(w/pi, abs(H))
title('Caracteristica in frecventa a unui filtru de tip FIR')
ylabel('Amplitudine')
hold on

subplot(3,1,2)
plot(w/pi, 20*log10(abs(H)));
ylabel('Amplitudine(dB)')
xlabel('w')
hold on

subplot(3,1,3)
plot(w/pi, angle(H));
hold on

% r = 0.3__________________________________________________________________
r3            = 0.7;
b3            = [1 -r3*exp(1i*teta)];    % coeficientii numaratorului lui H 
                                        % conform formulei 3.7
[H, w]       = freqz(b3, 1);

subplot(3,1,1)
plot(w/pi, abs(H))
title('Caracteristica in frecventa a unui filtru de tip FIR')
ylabel('Amplitudine')
hold on

subplot(3,1,2)
plot(w/pi, 20*log10(abs(H)));
ylabel('Amplitudine(dB)')
xlabel('w')
hold on

subplot(3,1,3)
plot(w/pi, angle(H));
hold on

% r = 0.5__________________________________________________________________
r4            = 0.9;
b4            = [1 -r4*exp(1i*teta)];    % coeficientii numaratorului lui H 
                                        % conform formulei 3.7
[H, w]       = freqz(b4, 1);

subplot(3,1,1)
plot(w/pi, abs(H))
title('Caracteristica in frecventa a unui filtru de tip FIR')
ylabel('Amplitudine')
hold on
legend('r = 0.25','r = 0.5','r = 0.7','r = 0.9')

subplot(3,1,2)
plot(w/pi, 20*log10(abs(H)));
ylabel('Amplitudine(dB)')
xlabel('w')
hold on

subplot(3,1,3)
plot(w/pi, angle(H));
ylabel('Faza')
hold on

% Diagrama zerourilor______________________________________________________

figure(2)
% r = 0.25_________________________________________________________________
subplot(2,2,1)
zplane(b1, 1)
xlabel('Re')                % partea reala
ylabel('Im')                % partea imaginara
title('Diagrama zerourilor pentru r = 0.25')

% r = 0.5__________________________________________________________________
subplot(2,2,2)
zplane(b2, 1)
xlabel('Re')                % partea reala
ylabel('Im')                % partea imaginara
title('Diagrama zerourilor pentru r = 0.5')

% r = 0.7_________________________________________________________________
subplot(2,2,3)
zplane(b3, 1)
xlabel('Re')                % partea reala
ylabel('Im')                % partea imaginara
title('Diagrama zerourilor pentru r = 0.7')

% r = 0.9__________________________________________________________________
subplot(2,2,4)
zplane(b4, 1)
xlabel('Re')                % partea reala
ylabel('Im')                % partea imaginara
title('Diagrama zerourilor pentru r = 0.9')
