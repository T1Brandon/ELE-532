x = [-2:2]
p = @(x) exp(-x).*cos(2*pi*x); 

t = [-2:0.01:2];
f = @(t) exp(-t).*cos(2*pi*t); 

tt = [-2:2]
h = @(tt) exp(-tt);

grid;

%figure();
subplot(311);
plot(t,f(t));
xlabel('t');
ylabel('f(t)');
subplot(312);
plot(x,p(x));
xlabel('t');
ylabel('f(t)');
subplot(313);
plot(tt,h(tt));
xlabel('t');
ylabel('f(t)');

%Problem A.3