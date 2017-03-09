% Eric Mauro 
% Speech Processing
% Vowel Synthesis

clc; clear all; close all;
F0 = 60; % Pitch Frequency
n = 4000; % Number of Samples
glot = 1; % Glottal ON or Square Wave
p = 0.5; % Pause between sounds

% /a/
%[y,Fs]=vowel(glot,n,F0,660,1720,2410);
[y,Fs,t]=vowel(glot,n,F0,712,1229,2324);
sound(y,Fs)
f = Fs*(0:(n/2))/n; % Sampled frequencies
Y = fft(y,n); % FFT of y
Y_2 = abs(Y/n); % 2-sided FFT
Y_1 = Y_2(1:n/2+1); % 1-sided FFT
Y_1(2:end-1) = 2*Y_1(2:end-1);
figure(1)
subplot(2,1,1)
plot(t(1:length(y)),y)
ylabel('y(t)'); 
xlabel('Time'); 
title('/a/');
subplot(2,1,2)
plot(f,abs(Y_1))
ylabel('|Y|'); 
xlabel('Frequency (Hz)'); 
title('Frequency Response');
pause(p)

% /e/
%[y,Fs]=vowel(glot,n,F0,530,1840,2480);
[y,Fs,t]=vowel(glot,n,F0,424,2177,2710);
sound(y,Fs)
f = Fs*(0:(n/2))/n; % Sampled frequencies
Y = fft(y,n); % FFT of y
Y_2 = abs(Y/n); % 2-sided FFT
Y_1 = Y_2(1:n/2+1); % 1-sided FFT
Y_1(2:end-1) = 2*Y_1(2:end-1);
figure(2)
subplot(2,1,1)
plot(t(1:length(y)),y)
ylabel('y(t)'); 
xlabel('Time'); 
title('/e/');
subplot(2,1,2)
plot(f,abs(Y_1))
ylabel('|Y|'); 
xlabel('Frequency (Hz)'); 
title('Frequency Response');
pause(p)

% /i/
%[y,Fs]=vowel(glot,n,F0,390,1990,2550);
[y,Fs,t]=vowel(glot,n,F0,457,2022,2713);
sound(y,Fs)
f = Fs*(0:(n/2))/n; % Sampled frequencies
Y = fft(y,n); % FFT of y
Y_2 = abs(Y/n); % 2-sided FFT
Y_1 = Y_2(1:n/2+1); % 1-sided FFT
Y_1(2:end-1) = 2*Y_1(2:end-1);
figure(3)
subplot(2,1,1)
plot(t(1:length(y)),y)
ylabel('y(t)'); 
xlabel('Time'); 
title('/i/');
subplot(2,1,2)
plot(f,abs(Y_1))
ylabel('|Y|'); 
xlabel('Frequency (Hz)'); 
title('Frequency Response');
pause(p)

% /o/
%[y,Fs]=vowel(glot,n,F0,565,882,2385);
[y,Fs,t]=vowel(glot,n,F0,535,1061,2540);
sound(y,Fs)
f = Fs*(0:(n/2))/n; % Sampled frequencies
Y = fft(y,n); % FFT of y
Y_2 = abs(Y/n); % 2-sided FFT
Y_1 = Y_2(1:n/2+1); % 1-sided FFT
Y_1(2:end-1) = 2*Y_1(2:end-1);
figure(4)
subplot(2,1,1)
plot(t(1:length(y)),y)
ylabel('y(t)'); 
xlabel('Time'); 
title('/o/');
subplot(2,1,2)
plot(f,abs(Y_1))
ylabel('|Y|'); 
xlabel('Frequency (Hz)'); 
title('Frequency Response');
pause(p)

% /u/
%[y,Fs]=vowel(glot,n,F0,300,870,2240);
[y,Fs,t]=vowel(glot,n,F0,264,952,2534);
sound(y,Fs)
f = Fs*(0:(n/2))/n; % Sampled frequencies
Y = fft(y,n); % FFT of y
Y_2 = abs(Y/n); % 2-sided FFT
Y_1 = Y_2(1:n/2+1); % 1-sided FFT
Y_1(2:end-1) = 2*Y_1(2:end-1);
figure(5)
subplot(2,1,1)
plot(t(1:length(y)),y)
ylabel('y(t)'); 
xlabel('Time'); 
title('/u/');
subplot(2,1,2)
plot(f,abs(Y_1))
ylabel('|Y|'); 
xlabel('Frequency (Hz)'); 
title('Frequency Response');
pause(p)