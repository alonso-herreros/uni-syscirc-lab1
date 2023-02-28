%% 5.1. Energy

x = [0:0.1:1 ones(1,5)];
nx = 1:16;
figure;
stem(nx,x);
axis([-1 20 -0.2 1.2]);
energy = sum(abs(x).^2)