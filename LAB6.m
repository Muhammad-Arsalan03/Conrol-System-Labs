%% LAB 06
%%
                    % TASK 01
s = tf('s'); 
G = (50*(s+1))/(s^2*(s+3)*(s+5)*(s+10)); 
T = feedback (G,1)
t = 0:0.1:25; 
figure(1)
step(T)
title('UNIT STEP RESPONSE')
grid on
t=0:1:250;
u=t;
[y, t, x]=lsim(T,u,t);
figure(2)
plot(t,y,t,u,'m')
title('UNIT RAMP RESPONSE')
grid on
axis([239.9,240.1,239.9,240.1]);
t=0:0.01:5;
u=t.^2;
[y, t, x]=lsim(T,u,t);
figure(3)
plot(t,y,t,u,'m')
title('UNIT PARABOLIC RESONSE')
grid on 


%%
                        %task 02
s=tf('s');
G=((2)/((s)*(s+1)));
T=feedback(G,1);
t=0:0.01:5;
u=(1/2)*t.^2;
[y, t, x]=lsim(T,u,t);
plot(t,y,t,u,'m')
title('r(t)=1/2*t^2 RESPONSE OF SYSTEM')
axis([0,5,0,5]);
grid on


%%
%%Task03
for B = 0 : 1 : 10
num = [1];
den = [1 B 0];
G = tf(num,den)
T=feedback(G,1);
step(T)
hold on
end
title('UNIT STEP RESPONSE FOR DIFFERENT B')
axis([0,20,0,2.5]);
grid on
for t = 0 : 1 : 5
t=x;
plot(t,x,'r')
hold on
end






for k = 0 : 1 : 10
num = [k];
den = [1 2 0];
G = tf(num,den)
sysCL=feedback(G,1);
step(sysCL)
hold on
end
title('UNIT STEP RESPONSE FOR DIFFFERNT k')
axis([0,10,0,2]);
grid on
for t = 0 : 1 : 5
t=x;
plot(t,x,'r')
hold on
end




K = 2 
G=zpk([],[0 -1],1);
T=feedback(K*G,1);
t=0:0.01:5;
u=t;
[y, t, x]=lsim(T,u,t);
plot(t,y,t,u,'m')
hold on
K = 200 
G=zpk([],[0 -1],1);
T=feedback(K*G,1);
t=0:0.01:5;
u=t;
[y, t, x]=lsim(T,u,t);
plot(t,y)
hold on
K = 2000 
G=zpk([],[0 -1],1);
T=feedback(K*G,1);
t=0:0.01:5;
u=t;
[y, t, x]=lsim(T,u,t);
plot(t,y)
legend('k=2','input','K=200','K=2000')
title('Unit Ramp Response ')
