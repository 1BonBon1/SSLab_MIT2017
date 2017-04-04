num=[1 5];
den=conv([1 0],[1 1]);
sys=tf(num,den)
figure(1)
rlocus(sys)
[k,p]=rlocfind(num,den)