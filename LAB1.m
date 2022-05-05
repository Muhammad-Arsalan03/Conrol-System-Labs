%%
%LAB Task 1%
    %G(s)= (-s+2)/ (s^4+3s^2+4s-9) 
num = [-1 2];
den = [1 3 4 -9];
G = tf(num,den)
    % H(s)=(s^2 +4s-9)/(s^4 +8s^2-4s)
num=[1 4 -9];
den=[1 0 8 -4 0];
H=tf(num,den)

    % G(s)= (s-5)(s-10)/(s-2)(s-2+-4i))
s=tf('s');
G=((s-5)*(s-10))/((s-2)*(s-2+4i)*(s-2-4i))


%%
%% Lab Task 2:
    %G1= 2/(s^2 +3*s+2)
num=[2];
den=[1 3 2];
G1=tf(num,den)
p1=pole(G1)
z1=zero(G1)
step(G1)

    % G2=(s^2+3s+2)/(s+2)^3
s=tf('s')
G2=(s^2+3*s+2)/(s+2)^3
p2=pole(G2)
z2=zero(G2)
step(G2)

    %G3=1/(s^2+s+1)
s=tf('s')
G3=1/(s^2+s+1)
p3=pole(G3)
z3=zero(G3)
step(G3)

%Lab TASK 3
xt=dsolve('D2y+4*Dy+4*y=2*exp(-t)*1','y(0)=3','Dy(0)=0')