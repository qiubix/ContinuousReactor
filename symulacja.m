% punkt pracy
V = 1;
F_in = 1;
C_Ain = 2;
F_C = 15;
T_in = 343;
T_Cin = 310;
C_A = 1.79;
T = 331;


czas = [0 10];
punkt_startowy = [x1, x2, x3];
[Tout, Yout] = ode45(@reaktor, czas, punkt_startowy);
