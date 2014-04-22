function dy = reaktor(t, y)

% stale
ro = ro_c = 10^6;
c_p = c_pc = 1;
k_0 = 10^10;
E_R = 8330.1;
h = 130*10^6;
a = 0.516*10^6;
b = 0.5;

% zaklocenia: T_in, T_Cin
z = [T_in, T_Cin];

% sterowanie: C_Ain, F_C
u = [C_Ain, F_C];

% wielkosci regulowane: C_A, T
dy = zeros(1,2);

% funkcja
dy(1) = F_in*u(1)/V - F*y(1)/V - k_0*exp(-E_R/T)*y(1);
dy(2) = F_in*z(1)/V - F*y(2)/V + h*k_0*exp(-E_R/y(2))*y(1)/(ro*c_p) - a*u(2)^(b+1)*(y(2)-z(2)) / ((u(2) + a*u(2)^b / 2*ro_c*c_pc)*(V*ro*c_p));
end
