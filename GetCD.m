function [CD] = GetCD(CL, AR, S)

UEFC = GetUEFC;

% Determine profile drag (function of CL)
cd0 = 0.02;
cd1 = -0.004;
cd2 = 0.02;
cd8 = 1.0;
CL0 = 0.8;

CDp = cd0 + cd1*(CL-CL0) + cd2*(CL-CL0).^2 + cd8*(CL-CL0).^8;

% Determine fuselage drag
CDAfuse = UEFC.CDAfuse;
CDfuse = CDAfuse/S;

% Calculate induced drag coefficient
e = UEFC.e0;
CDi = (CL^2)/(pi*AR*e);

% You need to include a drag coefficient increment for the payload (burrito)
% somewhere here
CDpay = (0.8*pi*0.08^2)/(4*S);
%CDpay = 0;
% Total drag
CD = CDfuse + CDp + CDi + CDpay;
