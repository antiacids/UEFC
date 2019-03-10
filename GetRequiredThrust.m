function T = GetRequiredThrust(N, AR, S)

% Calculate the required thrust from UEFC parameters and N, AR, S
UEFC = GetUEFC;

rho = UEFC.rho;
g = UEFC.g;
R = UEFC.R;

W = GetWeight(AR, S);

% Need to calculate CL (relate this to N, W, q, S)
V_squared = R*g*sqrt(N^2-1);
q = 0.5*rho*V_squared;
CL = (N*W)/(q*S);

% Calculate CD
CD = GetCD(CL, AR, S);

% Calculate required thrust from CD, q, S
T = CD*q*S;



