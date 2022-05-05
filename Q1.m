%Question 1
s=tf('s');
G1=tf([25],[1]) % Gain 1
G2=tf([1],[1 3]) % Gain 2
G4=series(G1,G2)  %series gain of G1 and G2 
G5=feedback(G4,[3/25]) %Feedback
G6=tf([1],[1 0])       
G7=series(G5,G6)     % Series of two gains
G8=feedback(G7,[1])
num=[25]
den=[1 6 25]
[A,B,C,D]=tf2ss(num,den)