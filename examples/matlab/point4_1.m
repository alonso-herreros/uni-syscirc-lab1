%% 4.1. Temporal inversion

% Input signal x[n]
x = [0:0.1:1 ones(1,5)]; % Vector with the values of the signal
nx = 1:16; % Vector of time points.
% We represent the signal
figure
subplot(2,1,1)
stem(nx,x);
axis([-25 25 -0.2 1.2]); % We set an adequate zoom in both axis
xlabel('n'); % Horizontal axis
ylabel('x[n]'); % Vertical axis
% Temporal inversion
y = x(end:-1:1); % Inversion of the vector of signal values
ny = -nx(end:-1:1); % We have to perform the temporal inversionover the vector of time points too!
% We represent the signal y[n]
subplot(2,1,2)
stem(ny,y);
axis([-25 25 -0.2 1.2]);
xlabel('n');
ylabel('y[n]=x[-n]');