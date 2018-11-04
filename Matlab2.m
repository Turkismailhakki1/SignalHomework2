%% 1. soru a þýkký
clear all ; close all ;

fs = 10000;
t = 0:1/fs:1.5;
x = sawtooth(2*pi*100*t);
subplot(2,1,1)
plot(t,x)
axis([0 0.5 -1.0 1.5])
xlabel('Time (sec)')
ylabel('Amplitude') 
title('Sawtooth Periodic Wave')

%% 1.soru b þýkký
clear all ; close all
fs = 1000000;
t = 0:1/fs:1.5;
x2 = square(2*pi*20*t);
subplot(2,1,1)
plot(t,x2)
axis([0 0.2 -1.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Square Periodic Wave')
%% 1.soru c þýkký
clear all ; close all;
fs = 100000;
t = -1:1/fs:1;
x = tripuls(t,38e-3);
subplot(2,1,1)
plot(t,x)
axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Triangular Aperiodic Pulse')
%% 1. soru d þýkký
clear all ; close all ;
fs = 10000;
t = -1:1/fs:1;
x = rectpuls(t,20e-4);
subplot(2,1,1)
plot(t,x)
axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Rectangular Aperiodic Pulse')
%% 1.soru e þýkký
clear all ; close all ;
tc = gauspuls('cutoff',50e3,0.05,[],-60); 
t = -tc : 1e-6 : tc; 
y1 = gauspuls(t,50e3,0.05); 
subplot(2,1,1)
plot(t,y1)
xlabel('Time (ms)')
ylabel('Amplitude')
title('Gaussian Pulse')
%% 1.soru f þýkký
fs = 50E9;                    % sample freq
D = [2.5 10 17.5]' * 1e-9;     % pulse delay times
t = 0 : 1/fs : 2500/fs;        % signal evaluation time
w = 1e-9;                      % width of each pulse
yp = pulstran(t,D,@rectpuls,w);


subplot(2,1,1)
plot(t*1e9,yp);
axis([0 25 -0.2 1.2])
xlabel('Time (ns)')
ylabel('Amplitude')
title('Rectangular Train')
%% 1.soru g þýkký
clear all ; close all; 
subplot(2,1,1)
plot(T*1e3,Y)
xlabel('Time (ms)')
ylabel('Amplitude')
title('Gaussian Pulse Train')
%% 2.soru 

t = (-1:0.01:1)';

impulse = t==0;
unitstep = t>=0;
ramp = t.*unitstep;

subplot(6,1,1)

plot(t,[impulse ])
xlabel('CT') ; ylabel('CT');
title(' Unit Impulse ')

subplot (6,1,2)

plot(t,[unitstep])
xlabel('CT') ; ylabel('CT');
title(' Unit Step ')

subplot (6,1,3)

plot(t,[ramp])
xlabel('CT') ; ylabel('CT');
title(' Unit Ramp ')

subplot (6,1,4)

stem(t,[impulse])
xlabel('DT') ; ylabel('DT');
title(' Unit Impulse ')

subplot (6,1,5)

stem(t,[unitstep])
xlabel('DT') ; ylabel('DT');
title(' Unit Step ')

subplot (6,1,6)

stem(t,[ramp])
xlabel('DT') ; ylabel('DT');
title(' Unit Ramp ')
%% 3.soru

clc
clear all; close all;

fs=1000 %fs=1 khz
f=20 %20 Hz
t=0:1/fs:5
y1=sin(2*pi*f*t)
subplot(2,1,1)
plot(t,y1,'LineWidth',2)
y2=cos(2*pi*f*t)
subplot(2,1,2)
plot(t,y2,'LineWidth',2)
grid on

n=-50:1:50
y=sin(2*pi*n/36)
stem(n,y)

m=-50:1:50
y=cos(2*pi*m/36)
stem(m,y)

%% 4.soru

clc
clear all
close all


t=-5:1:5;
result=t.*(t.^2+3)
g_even=(g(t)+g(-t))/2
g_odd=(g(t)-g(-t))/2
subplot(2,1,1)
plot(t,g_odd)
title('Odd')
subplot(2,1,2)
plot(t,g_even)
title('Even')
%% 5.soru
clc
clear all
close all

n=-1000:1000
y=(0.9.^abs(n)).*sin(2*pi*n/4)
sum(abs(y.^2))
%% 6.soru
clc
clear all ; close all ;

fs=2000 %fs= 2 khz
f=1000 %1 kHz
t=0:1/fs:5
y1=sin(2*pi*f*t)
subplot(2,1,1)
plot(t,y1,'LineWidth',2)
fs1=50000
t_samp1=0:1/10:5
y2=cos(2*pi*f*t_samp1)
subplot(2,1,2)
stem(t_samp1,y2)
%% 7.soru

clc
clear all ; close all ;

n = 2:10;
x = 4+cos(2*pi*n/24);
x0 = downsample(x,2,0);
x1 = downsample(x,2,1);

y0 = upsample(x0,2,0);
y1 = upsample(x1,2,1);

subplot(3,1,1)
stem(x,'Marker','none')
ylim([3 5.5])
title('Original Signal')

subplot(3,1,2)
stem(y0,'Marker','none')
ylim([3 5.5])
ylabel('Phase 0')

subplot(3,1,3)
stem(y1,'Marker','none')
ylim([3 5.5])
ylabel('Phase 1')

