K=[1:1:10];           %define range of k from i to 2000
for n=1:length(K);
    dent=[1 3 3 2 K(n)];  
    poles=roots(dent); 
    r=real(poles); 
    if max(r)>=0,  
        poles
        K=K(n)
        break 
    end 
end
pause 



%%
K=[0:0.1:10]; % 0 < K < 20
for i=1:length(K); % for loop
q=[1 3 3 2 K(i)];
p(:,i)=roots(q);
end
figure(1)
plot(real(p),imag(p),'x'),
grid
xlabel('Real axis')
ylabel('lmaginary axis') 
                %%
                %%Task 01
                
                
s=tf('s');
G= 1/(s^3+18*s^2+77*s)
K1=1000;
step(feedback(K1*G,1),10)
hold on
K2= 1400;
step(feedback(K2*G,1),10)
legend('K=1000','K=1400')


%%
                            %Task 02
s=tf('s');
K2=2;
k1=6/K2;
G= 1/(s^4+3*s^3+3*s^2+2*s)
K1=1;
step(feedback(K1*G,1),30)
hold on
K2= 1.5;
step(feedback(K2*G,1),30)
hold on 
K3= 2;
step(feedback(K3*G,1),30)
legend('K=1(STABLE)','K=1.5(MARGINALLY STABLE)','K=2 (UNSTABLE )')   

%%
                            %Task 02
s=tf('s');
K2=10;
k1=10;
G= 1/(s^2+(K1*K2-1)*s+(K1*K2-6))
step(G,50)
hold on
K2=2;
k1=1;
G= 1/(s^2+(K1*K2-1)*s+(K1*K2-6))
step(G,50)
legend('K=1(STABLE)','K=1.5(MARGINALLY STABLE)','K=2 (UNSTABLE )')   