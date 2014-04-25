% punkt pracy
C_A = 1.79;
T = 331;

czas = [0 10];
punkt_startowy = [C_A, T];
[Tout, Yout] = ode45(@reaktor, czas, punkt_startowy);
plot(Tout(:,1), Yout(:,1))
