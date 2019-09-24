t = (-1:0.01:2); 
p = @(t) 1.0.*((t>=0)&(t<1));

subplot(311);
plot(t,p(t));
xlabel('t'); 
ylabel('p(t) = u(t)-u(t-1)');
axis([-1 2 -.1 1.1]);

r = @(t) t.*p(t);

subplot(312);
plot(t,r(t));
xlabel('t');
ylabel('r(t)');

n = @(t) r(t)+r(-t+2);

subplot(313);
plot(t,n(t));
xlabel('t');
ylabel('n(t)');

sgtitle('Problem B.1 and B.2');

n_1 = @(t) n(0.5.*t);

figure();
subplot(211);
plot(t,n_1(t));
xlabel('t');
ylabel('n_1(t)');

n_2 = @(t) n_1(t + (1/2));

subplot(212);
plot(t,n_2(t));
xlabel('t');
ylabel('n_2(t)');

sgtitle('Problem B.3');

n_3 = @(t) n(t + 0.25);

figure();
subplot(211);
plot(t,n_3(t));
xlabel('t');
ylabel('n_3(t)');

n_4 = @(t) n_3(0.25.*t);

subplot(212);
plot(t,n_4(t));
xlabel('t');
ylabel('n_4(t)');

sgtitle('Problem B.4');

%PROBLEM B.5. They are the same