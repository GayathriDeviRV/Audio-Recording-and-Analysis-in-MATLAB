Fs = 4000;
Channels = 1;
bits = 16;

r = audiorecorder(Fs, bits, Channels);
duration = 5;
disp('Recording Started');
recordblocking(r ,duration);
disp('recording stopped');

X = getaudiodata(r);

t = 0:1/Fs:(length(X)-1)/Fs;
subplot(2,1,1);
plot(t,X,'LineWidth',1.5);
xlabel('time(sec)');
ylabel('amplitude');
title('time domain plot of the recorded signal');

n=length(X);
y = dft(X);
f_0 = (-n/2:n/2-1).*(Fs/n);
y_0 = fftshift(y);
Ay_0 = abs(y_0);
subplot(2,1,2);
plot(f_0,Ay_0,'LineWidth',1.5);
xlabel('freq (hz)');
ylabel('amplitude');
title('freq domain plot of audio signal');

filename = 'audio2.wav';
audiowrite(filename,X,Fs);

function [y] = dft(x)
N = length(x);
y = zeros(1,N);
for k = 0:N-1
    for n = 0:N-1
        y(k+1) = y(k+1) + x(n+1) * exp(-1i*2*pi*k*n/N); 
    end
end
end