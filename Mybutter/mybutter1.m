n=1:1:100;
x=cos(0.1*pi*(n-1));
figure(1);
plot(n,x);
title('Part I-a');
xlabel( 'n' );
ylabel( 'x[n]' );
grid on;

fc1=0.05;
fs1=20;
[b1,a1]=butter(3,fc1,'low');
[h1,w1]=freqz(b1,a1);
H_1=20*log10(abs(h1));
figure(2);
subplot(3,3,1);
plot(w1,H_1);
title('Part I-b');
xlabel( 'w(in interval[0,\pi])' );
ylabel( 'Magnitude Response(dB)' );
grid on;

figure(2);
subplot(3,3,2);
plot(w1,180/pi*angle(h1));
title('Part I-b');
xlabel( 'w(in interval[0,\pi])' );
ylabel( 'Phase Response(degrees)' );
grid on;

y1=filter(b1,a1,x);
subplot(3,3,3);
plot(n,y1);
title('Part I-b');
xlabel( 'n' );
ylabel( 'y[n]' );
grid on;

fc2=0.05;
fs2=20;
[b2,a2]=butter(7,fc2,'low');
[h2,w2]=freqz(b2,a2);
H_2=20*log10(abs(h2));
figure(2);
subplot(3,3,4);
plot(w2,H_2);
title('Part I-c');
xlabel( 'w(in interval[0,\pi])' );
ylabel( 'Magnitude Response(dB)' );
grid on;

figure(2);
subplot(3,3,5);
plot(w2,180/pi*angle(h2));
title('Part I-c');
xlabel( 'w(in interval[0,\pi])' );
ylabel( 'Phase Response(degrees)' );
grid on;

y2=filter(b2,a2,x);
subplot(3,3,6);
plot(n,y2);
title('Part I-c');
xlabel( 'n' );
ylabel( 'y[n]' );
grid on;

fc3=0.5;
fs3=20;
[b3,a3]=butter(3,fc3,'low');
[h3,w3]=freqz(b3,a3);
H_3=20*log10(abs(h3));
figure(2);
subplot(3,3,7);
plot(w3,H_3);
title('Part I-d');
xlabel( 'w(in interval[0,\pi])' );
ylabel( 'Magnitude Response(dB)' );
grid on;

figure(2);
subplot(3,3,8);
plot(w3,180/pi*angle(h3));
title('Part I-d');
xlabel( 'w(in interval[0,\pi])' );
ylabel( 'Phase Response(degrees)' );
grid on;

y3=filter(b3,a3,x);
subplot(3,3,9);
plot(n,y3);
title('Part I-d');
xlabel( 'n' );
ylabel( 'y[n]' );
grid on;