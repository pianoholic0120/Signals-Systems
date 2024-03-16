n=linspace(-100,100,1001);
n_1=linspace(-500,500,1001);
x=sinc(n);
subplot(3,2,1);
plot(n_1,x);
title('(a)');
xlabel( 'n' );
ylabel( 'x[n]' );
grid on;

s_1=linspace(-pi,pi,1001);
x_1=fft(x);
y=fftshift(x_1);
subplot(3,2,2);
plot(s_1,abs(y));
title('(b)');
xlabel( '𝜔' );
ylabel( ' 𝑋_{𝑘}(𝑒^{𝑗𝜔}) by fft' );
grid on;

y_1=zeros(1,1001);
for t=1:1001
    for k=1:1001
        y_1(t)=y_1(t)+x(k)*exp(-1i*s_1(t)*n_1(k));
    end
end
subplot(3,2,3);
plot(s_1,abs(y_1));
title('(c)');
xlabel( '𝜔' );
ylabel( ' 𝑋_{𝑘}(𝑒^{𝑗𝜔})' );
grid on;

w=zeros(1,1001);
for p=1:1001
    if abs(n(p))<=25
        w(p)=w(p)+(1/2)*(1+cos(pi*abs(n(p)/25)));
    end
end
subplot(3,2,4);
plot(n_1,w);
title('(d)');
xlabel( 'n' );
ylabel( 'w[n]' );
grid on;

u=zeros(1,1001);
for q=1:1001
    u(q)=u(q)+x(q)*w(q);
end
subplot(3,2,5);
plot(n_1,u);
title('(e)');
xlabel( 'n' );
ylabel( 'y[n]' );
grid on;

u_1=fft(u);
m=fftshift(u_1);
subplot(3,2,6);
plot(s_1,abs(m));
title('(f)');
xlabel( '𝜔' );
ylabel( ' 𝑋_{𝑘}(𝑒^{𝑗𝜔}) by fft' );
grid on;