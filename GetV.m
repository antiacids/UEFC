function [V] = GetV(N, AR, S)

% Calculate speed from N, g, R

UEFC = GetUEFC;
g = UEFC.g;
R = UEFC.R;

V = sqrt(R*g*sqrt(N^2-1));













