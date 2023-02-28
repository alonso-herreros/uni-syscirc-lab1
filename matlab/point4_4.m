% 4.4. Temporal shift

x = [0:0.1:1 ones(1,5)];
nx = 1:16;
figure
subplot(2,1,1)
stem(nx,x);
axis([-1 30 -0.2 1.2]);
% We shift the signal 10 time units to the right
ny = nx + 10;
y = x; % The values of y[n] are the same!
subplot(2,1,2)
stem(ny,y);
axis([-1 30 -0.2 1.2]);