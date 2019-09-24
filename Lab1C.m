f = @(t) exp(-(2.*t)).*(cos(4.*pi.*t));
u = @(t) 1.0.*(t>=0);
g = @(t) f((2.*t)+1).*u((2.*t)+1);
t = (-2:0.01:2);
subplot(311);
plot(t,g(t)); 
xlabel('t'); 
ylabel('g(2t+1)'); 
grid;


x = [0:0.01:4];
s = @(x) g(x+1);
subplot(312);
plot(x,s(x)); 
xlabel('x'); 
ylabel('g(x+1)'); 
grid;

s_alpha = @(t) exp(-2).*exp(-alphat).*cos(4.*pi.*t).*u(t);
alpha = [1 3 5 7];
x = [0:0.01:4];
