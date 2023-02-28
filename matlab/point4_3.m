%% 4.3. Time scale operations (II)

x1 = [0:0.1:1 ones(1,5)];
x = [x1 x1]
nx = 1:32;
figure
subplot(2,1,1)
stem(nx,x);
axis([-1 66 -0.2 1.2]);
xlabel('n');
ylabel('x[n]');
% Length of the signal y[n]
Ny = length(x)*2;
% We include the zeros
for k=1:1:Ny
if rem(k,2) == 0 %If remainder of k/2 is equal to zero
y(k) = x(k/2);
else
y(k) = 0;
end
end
% Vector of time points for y[n]
ny = 1:Ny
subplot(2,1,2)
stem(ny,y);
axis([-1 66 -0.2 1.2]);
xlabel('n');
ylabel('y[n]=x[n/2]');