                                            %  TASK 01
%differential equation
% d^2 y + 12 dy +32 y=32 u(t)
% Method 1
s=tf('s');

%TF=32/(s^2 +12*s+32);
num=[100];
den=[1 1 0];
Gs=tf(num,den)

wn=(sqrt(100)) % natural frequencey
Z=(1/(2*wn))  %Damping ratio
Tp=(pi/(wn*(sqrt(1-(Z^2))))) %peak time 
POS=(exp(-Z*pi/(sqrt(1-Z^2))))*100 % percent overshoot
Ts=4/(Z*wn)   % settling time

% Method 2
step(TF) % graph of step response
stepinfo(TF) % calculate Tr,Ts,Ts,Tos,Tp etc
damp(TF)      %calculate Zeta, wn, pole and time constant


                        %TASK 02
% G(s)= 25/(s^2 + 8*s +25)
Gs=25/(s^2 +8*s +25)
C_Gs=feedback(Gs,[1])
% Method 1
wn=(sqrt(25)) % natural frequencey
Z=(8/(2*wn))  %Damping ratio
Tp=(pi/(wn*(sqrt(1-(Z^2))))) %peak time 
POS=(exp(-Z*pi/(sqrt(1-Z^2))))*100 % percent overshoot
Ts=4/(Z*wn)   % settling time

% Method 2
step(C_Gs) % graph of step response
stepinfo(C_Gs) % calculate Tr,Ts,Ts,Tos,Tp etc
damp(C_Gs)      %calculate Zeta, wn, pole and time constant
