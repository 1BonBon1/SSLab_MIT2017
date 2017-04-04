num1=100;
den1=conv([1 0],[1 10]);
sys1=tf(num1,den1)
num2=1;
den2=[1 5];
sys2=tf(num2,den2)
sys3=sys2-1;
sys4=feedback(sys1,sys3);
sys5=feedback(sys4,1)
kp=dcgain(sys4)
ess1=(1/(1+kp))
step(sys5)