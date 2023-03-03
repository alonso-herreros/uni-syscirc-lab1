%% 3. Working with discrete time signals in MATLAB

n = -49:50; % Vector of time-points
x = sin(n); % Vector with the values of the signal
stem(n,x); % Represent
xlabel('n'); % Horizontal Axis
ylabel('x[n]=sin[n]'); % Vertical Axis