% set start and end times
t_start = 0;  
t_end = 10e-4;

% plot  PWM control voltage and carrier voltage
figure(1);
set(gcf,'Position', [100, 100, 500, 400]);
set(gcf,'color','w');
subplot(2,1,1);
plot(control.time, control.signals.values());
grid on;
title('Waveforms of the PWM Control Voltage and Carrier Voltage');
xlabel('Time (s)');
ylabel('Voltage (V)');
xlim([t_start t_end]);
legend('control voltage','carrier');
shg;

% plot  waveform of the switch control signal
figure(2);
set(gcf,'Position', [100, 100, 500, 400]);
set(gcf,'color','w');
subplot(2,1,1);
plot(switching.time, switching.signals.values(:));
grid on;
title('Switch Control Signal');
xlabel('Time (s)');
ylabel('Voltage (V)');
xlim([t_start t_end]);
ylim([0 1.2]);
shg;

% plot waveform of the output voltage vo and voltage voi
figure(3);
set(gcf,'Position', [100, 100, 500, 400]);
set(gcf,'color','w');
subplot(2,1,1);
plot(voandvoi.time, voandvoi.signals.values());
grid on;
title('output voltage vo and voltage voi');
xlabel('Time (s)');
ylabel('Voltage (V)');
xlim([0 0.009]);
legend('Voi','Vo');
shg;

% plot waveform of the output voltage vo and voltage voi (steadt state)
figure(4);
set(gcf,'Position', [100, 100, 500, 400]);
set(gcf,'color','w');
subplot(2,1,1);
plot(voandvoi.time, voandvoi.signals.values());
grid on;
title('output voltage vo and voltage voi (steady state)');
xlabel('Time (s)');
ylabel('Voltage (V)');
xlim([0.01 0.012]);
legend('Voi','Vo');
shg;

% plot waveform of inductor current, load (output) current and capacitor
% current);
figure(5);
set(gcf,'Position', [100, 100, 500, 400]);
set(gcf,'color','w');
subplot(2,1,1);
plot(iLiOiC.time, iLiOiC.signals.values());
grid on;
title('inductor current, load (output) current and capacitor current');
xlabel('Time (s)');
ylabel('Current (A)');
xlim([0 0.009]);
legend('iL','iO', 'iC');
shg;

% plot waveform of inductor current, load (output) current and capacitor
% current (Steady State)
figure(6);
set(gcf,'Position', [100, 100, 500, 400]);
set(gcf,'color','w');
subplot(2,1,1);
plot(iLiOiC.time, iLiOiC.signals.values());
grid on;
title('inductor current, load (output) current and capacitor current (Steady State)');
xlabel('Time (s)');
ylabel('Current (A)');
xlim([0.01 0.012]);
legend('iL','iO', 'iC');
shg;


% plot waveform of the input current ;
figure(7);
set(gcf,'Position', [100, 100, 500, 400]);
set(gcf,'color','w');
subplot(2,1,1);
plot(inputcurrent.time, inputcurrent.signals.values());
grid on;
title('Input Current');
xlabel('Time (s)');
ylabel('Current (A)');
xlim([0 0.009]);
shg;

% plot waveform of the input current  (Steady State)
figure(8);
set(gcf,'Position', [100, 100, 500, 400]);
set(gcf,'color','w');
subplot(2,1,1);
plot(inputcurrent.time, inputcurrent.signals.values());
grid on;
title('Input Current');
xlabel('Time (s)');
ylabel('Current (A)');
xlim([0.01 0.012]);
shg;


