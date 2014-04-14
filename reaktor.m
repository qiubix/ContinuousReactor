function dy = reaktor(t, y)
dy(1) = F_in*C_Ain - F*C_A - V*k_0*exp(-E/R*T)*C_A
dy(2) = F_in*ro*c_p*T_in - F*ro*c_p*T + V*h*k_0*exp(-E/R*T)*C_A - a*F_c^(b+1)*(T-T_Cin) / (F_C + a*F_c^b / 2*ro_c*c_pc)
