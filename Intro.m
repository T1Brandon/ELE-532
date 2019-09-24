a = 1.3;
b = 0.2;
c = 30;
x = [-10:0.01:10];
p = @(x) a*x.^2+b*x+c; %analgous function
plot(x,p(x));
xlabel('x');
ylabel('y');
title('My first scipt');

line = @(x) x;
figure();
subplot(211);
plot(x,line(x));
subplot(212);
plot(x,p(x));

figure(1);
plot(x,p(x));
hold on;   %allows for graphs to be in the same figure, w/o the first graph would be replaced
plot(x,line(x));
hold off;