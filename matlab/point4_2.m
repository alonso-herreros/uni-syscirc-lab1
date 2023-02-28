%% 4.2. Time scale operations (I)

% x[n]
x1 = [0:0.1:1 ones(1,5)];
x = [x1 x1 x1] % This command replicates the vector x1 three times
% Vector of time points
nx = 1:48;
% We represent the signal
figure
subplot(2,1,1)
stem(nx,x);
axis([-1 50 -0.2 1.2]);
xlabel('n'); % Horizontal axis
ylabel('x[n]'); % Vertical axis
% We compute the length of y[n]. Floor is a command
% to compute the lowest integer of the argument
Ny = floor(length(x)/3);
for k=1:1:Ny %For loop. y(k) = x(k*3) is repeated for k=1, 2, ..., Ny
y(k) = x(k*3);
end
% Vector of time points for y[n]
ny = 1:Ny
subplot(2,1,2)

stem(ny,y);
axis([-1 50 -0.2 1.2]);
xlabel('n');
ylabel('y[n]=x[3n]');