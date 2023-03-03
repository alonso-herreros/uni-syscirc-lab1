%% 5.2. Power

nx = 0:1:48;
x = cos(nx * 2 * pi/13);
figure
subplot(2,1,1)
stem(nx(1:13), x(1:13)); % We represent 13 samples (one period)
axis([-1 50 -1.2 1.2]);
xlabel('n');
ylabel('1 periodo');
subplot(2,1,2)
stem(nx(1:end), x(1:end)); % We represent four periods of x
axis([-1 50 -1.2 1.2]);
xlabel('n');
ylabel('4 periodos');
Power_one_period = mean(abs(x(1:13)).^2)
Power_three_periods = mean(abs(x(8:43)).^2)
Power = mean(abs(x).^2) 