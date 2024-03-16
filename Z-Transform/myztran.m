% part (a)
a=[1,-0.8,0.39,-0.062,0.005];
b=[0.09,0,-0.18,0,0.09];
subplot(3,3,1);
zplane(b,a);
title('Part(a)');
xlabel( 'Re' );
ylabel( 'Im' );
grid on;
% part(b)
[rr,pp,kk]=residuez(b,a);
n=[0:1:20];
hn1=2.78.*(0.5).^n.*cos((53.1.*n+67.1).*pi/180)-32.78.*(0.14).^n.*cos((45.*n+54.6).*pi/180);
hn1(1)=hn1(1)+18;
subplot(3,3,2);
stem(n,hn1,".");
title('Part(b)');
xlabel( 'n' );
ylabel( 'h[n]' );
grid on;
% part(c)
[h,w]=freqz(b,a);
h_mag=20*log10(abs(h));
subplot(3,3,3);
plot(w,h_mag);
title('Part(c)');
xlabel( 'w(in interval[0,\pi])' );
ylabel( 'Magnitude Response(dB)' );
grid on;

subplot(3,3,4);
plot(w,180/pi*angle(h));
title('Part(c)');
xlabel( 'w(in interval[0,\pi])' );
ylabel( 'Phase Response(degrees)' );
grid on;
% part(d)
z_1=[1,1,-1,-1];
p_1=[0.3+0.4i,0.3-0.4i,0.1+0.1i,0.1-0.1i];
k_1=1;
sos=zp2sos(z_1,p_1,k_1);
% part(e)
b1=0.3.*[1,2,1];
a1=[1,-0.2,0.02];
b2=0.3.*[1,-2,1];
a2=[1,-0.6,0.25];
[h1,w1]=freqz(b1,a1);
h1_mag=20*log10(abs(h1));
subplot(3,3,5);
plot(w1,h1_mag);
title('Part(e)');
xlabel( 'w(in interval[0,\pi])' );
ylabel( 'Magnitude Response(dB)' );
grid on;

[h2,w2]=freqz(b2,a2);
h2_mag=20*log10(abs(h2));
subplot(3,3,6);
plot(w2,h2_mag);
title('Part(e)');
xlabel( 'w(in interval[0,\pi])' );
ylabel( 'Magnitude Response(dB)' );
grid on;

h1_h2_mag=h1_mag+h2_mag;
subplot(3,3,7);
plot(w2,h1_h2_mag);
title('Part(e)');
xlabel( 'w(in interval[0,\pi])' );
ylabel( 'Magnitude Response(dB)' );
grid on;
%part(f)
delta=zeros(1,21);
delta(1)=1;
y=filter(b,a,delta);
subplot(3,3,8);
stem(n,y,".");
title('Part(f)');
xlabel( 'n' );
ylabel( 'y[n]' );
grid on;