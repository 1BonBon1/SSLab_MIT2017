clc;
clear;
num=conv(5, [1 4]);
den=conv(conv([1 0],[1 1]),conv([1 2],[1 5]));
func= tf(num,den);
kp=dcgain(func);
ess1=1/(1+kp)
s1=tf([1 0],1);
kv=dcgain(func*s1)
ess2=1/kv
ka=dcgain(func*s1*s1)
ess3=1/ka
s2=tf(1, [1 0]);
sys=feedback(func,1);
figure(1);
step(sys);
figure(2);
step(sys*s2);
figure(3);
step(sys*s2*s2);