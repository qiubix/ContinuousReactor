function dy = reaktor(t, y)

% stale
ro = ro_c = 10^6;
c_p = c_pc = 1;
k_0 = 10^10;
E_R = 8330.1;
h = 130*10^6;
a = 0.516*10^6;
b = 0.5;

% funkcja
dy(1) = F_in*C_Ain - F*C_A - V*k_0*exp(-E_R/T)*C_A;
dy(2) = F_in*ro*c_p*T_in - F*ro*c_p*T + V*h*k_0*exp(-E_R/T)*C_A - a*F_c^(b+1)*(T-T_Cin) / (F_C + a*F_c^b / 2*ro_c*c_pc);
end
