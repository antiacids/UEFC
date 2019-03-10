function Wwing = GetWingWeight(AR, S)

% Calculate the wing weight from UEFC parameters and S and AR
UEFC = GetUEFC;

tau = UEFC.tau;
lambda = UEFC.lambda;
g = UEFC.g;
rhofoam = UEFC.rhofoam;
c_r = (2/(1+lambda))*S^(0.5)*AR^(-0.5);
b = (AR^0.5)*(S^0.5);
Wwing = rhofoam*g*0.2*tau*(c_r^2)*b*((1-lambda^3)/(1-lambda));

