num=1300;
den=conv(conv([1,0],[1,2]),[1,50]);
s0=tf(num,den)
margin(s0)