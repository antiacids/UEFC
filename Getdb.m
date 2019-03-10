function db = Getdb(N,AR,S)

% YOU SHOULD NOT NEED TO CHANGE THIS FILE FOR THIS PROBLEM

% Calculate the tip d/b from UEFC parameters and S, AR, N
UEFC = GetUEFC;

lambda = UEFC.lambda;
tau = UEFC.tau;
epsilon = UEFC.epsilon;
Wfuse = UEFC.Wfuse;
Wpay = UEFC.Wpay;

db = 0.018*N*(Wfuse+Wpay)/(UEFC.Efoam*tau*(tau^2+epsilon^2))* ...
         (1+lambda)^3*(1+2*lambda)*AR^3/S;


