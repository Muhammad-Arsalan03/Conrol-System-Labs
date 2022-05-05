% 
s=tf('s')
Gc=(5*(s+1.4))/(s+7)
Gp=(1)/(s*(s++1)*(s+4))
Ge=series(Gc,Gp)
feed=feedback(Ge,[10])
num=[5 7]
den=[1 12 39 78 70]
[A,B,C,D]=tf2ss(num,den)
