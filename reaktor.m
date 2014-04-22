function dy = reaktor(t, y)

% stale
ro = 10^6;
ro_c = 10^6;
c_p = 1;
c_pc = 1;
k_0 = 10^10;
E_R = 8330.1;
h = 130*10^6;
a = 0.516*10^6;
b = 0.5;

% punkt pracy
V = 1;
F = 1;
F_in = 1;
C_Ain = 2;
F_C = 15;
T_in = 343;
T_Cin = 310;
C_A = 1.79;
T = 331;

% zaklocenia: T_in, T_Cin
z = [T_in, T_Cin];

% sterowanie: C_Ain, F_C
u = [C_Ain, F_C];

% wielkosci regulowane: C_A, T
dy = zeros(2,1);

% funkcja
dy(1) = F_in*u(1)/V - F*y(1)/V - k_0*exp(-E_R/T)*y(1);
dy(2) = F_in*z(1)/V - F*y(2)/V + h*k_0*exp(-E_R/y(2))*y(1)/(ro*c_p) - a*u(2)^(b+1)*(y(2)-z(2)) / ((u(2) + a*u(2)^b / 2*ro_c*c_pc)*(V*ro*c_p));
end
