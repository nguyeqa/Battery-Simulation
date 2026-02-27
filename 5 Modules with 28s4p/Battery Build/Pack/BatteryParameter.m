%%Battery parameters


%%ModuleType1
ModuleType1.SOC_vec=[0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]; % Vector of state-of-charge values, SOC
ModuleType1.V0_vec=[2.5 3.23 3.38 3.52 3.62 3.71 3.82 3.9 4.01 4.08 4.2];% Vector of state-of-charge values, SOC
ModuleType1.V_range = [0, inf]; % Terminal voltage operating range [Min Max], V
ModuleType1.R0_vec = [0.0170 0.0170 0.0118 0.0110 0.0105 0.0116 0.0119 0.0120 0.0127 0.0127 0.0127]; %Terminal resistance, R0(SOC)
ModuleType1.AH = 3; % Cell capacity, AH, A*hr

%% Calculate the voltage at each SOC using a linear interpolation
ModuleType1.Voltage = interp1(ModuleType1.SOC_vec, ModuleType1.V0_vec, ModuleType1.SOC_vec, 'linear');
% Calculate the terminal resistance at each SOC using linear interpolation
ModuleType1.TerminalResistance = interp1(ModuleType1.SOC_vec, ModuleType1.R0_vec, ModuleType1.SOC_vec, 'linear');
