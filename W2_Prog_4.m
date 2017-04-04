A=[0 1 0;0 0 1;-160 -56 -14]
B=[0;1;-14];
C=[1 0 0];
D=[0];
[NUM,DEN]=ss2tf(A,B,C,D)
S1=tf(NUM,DEN)
SYS=ss(A,B,C,D)
pzmap(SYS)