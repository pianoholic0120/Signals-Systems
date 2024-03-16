n1=[1:1:20];
n2=[21:1:39];
n3=[1:1:11];
n4=[12:1:39];
N1=[n1,n2];
N2=[n3,n4];
N3=[1:1:77];
Nb=[1:1:49];

n5=[1:1:3];
n6=[4:1:5];
N4=[n5,n6];
N5=[1:1:5];
N6=[1:1:9];
Na=[1:1:7];

f1=n1;
f2=40-n2;
f3=n3*0+1;
f4=n4*0;
F1=[f1,f2];
F2=[f3,f4];
F3=conv(transpose(F1),transpose(F2));

f5=3.^(n5)*1;
f6=0*n6;
F4=[f5,f6];
F5=2.^(N5)*1;
F6=conv(transpose(F4),transpose(F5));

B1n=[F1,zeros(1,10);0,F1,zeros(1,9);0,0,F1,zeros(1,8);0,0,0,F1,zeros(1,7); ...
    zeros(1,4),F1,zeros(1,6);zeros(1,5),F1,zeros(1,5);zeros(1,6),F1,zeros(1,4); ...
    zeros(1,7),F1,0,0,0;zeros(1,8),F1,0,0;zeros(1,9),F1,0;zeros(1,10),F1];
B1p=transpose(B1n);
B2p=transpose(f3);
Bp=B1p*B2p;
Bn=transpose(Bp);

A1n=[f5,0,0,0,0;0,f5,0,0,0;0,0,f5,0,0;0,0,0,f5,0;0,0,0,0,f5];
A1p=transpose(A1n);
A2p=transpose(F5);
Ap=A1p*A2p;
An=transpose(Ap);

subplot(2,4,1)
stem(N1,F1,'.')
subplot(2,4,2)
stem(N2,F2,'.')
subplot(2,4,3)
stem(N3,F3,'.')
subplot(2,4,4)
stem(Nb,Bn,'.')
subplot(2,4,5)
stem(N4,F4,'.')
subplot(2,4,6)
stem(N5,F5,'.')
subplot(2,4,7)
stem(N6,F6,'.')
subplot(2,4,8)
stem(Na,An,'.')