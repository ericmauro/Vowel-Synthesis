function [y,Fs,t] = vowel(glot,n,F0,F1,F2,F3)
% Synthesize vowel sound based on resonant frequencies
F = [F1 F2 F3];
B = [110 140 200];
Fs = 16000; % Sampling frequency
dt = 1/Fs; % Sampling Period
t = 0:dt:n/Fs; % Sampled time

% Excitation signal
if glot == 0
    x = (square(2*pi*F0*t,70)+1)/2;
else
    x = [];
        for i=1:floor((n/Fs)/(1/F0))
            A = 1;
            x = [x A*rosenberg(0.62, 0.65, F0, Fs)];
        end
end

for m = 1:3
    w(m) = 2*pi*F(m)/Fs; % Normalized frequency
    r(m) = exp(-pi*B(m)/Fs);
    a1(m) = -2*r(m)*cos(w(m));
    a2(m) = r(m)^2;
    den(m,:) = [1 -a1(m) a2(m)];
    y = filter(1,den(m,:),x);
    x = y;
end
end
