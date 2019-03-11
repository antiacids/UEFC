function [UEFC] = GetUEFC()

% EXCEPT FOR CHANGING THE CONSTANTS AS YOU LOOK AT DIFFERENT
% THICKNESSES, TAPER, YOU SHOULD NOT NEED TO CHANGE THIS FILE.

UEFC.tau = 0.12; % thickness-to-chord ratio
UEFC.epsilon = 0.03; % camber-to-chord ratio
UEFC.lambda = 0.5; % taper ratio
UEFC.e0 = 0.95; % Span efficiency for straight level flight
UEFC.rho = 1.225; % air density kg/m^3
UEFC.g = 9.81; % gravity, m/s^2
UEFC.R = 12.5; % radius of loop in meters
UEFC.rhofoam = 32.0; % kg/m^3
UEFC.Efoam = 19.3E6; % Pa
UEFC.dbmax = 0.12; % tip displacement bending constraint
UEFC.Wpay = 5.0; % N
%UEFC.Wpay = 0;
UEFC.Wfuse = 2.7; % N
UEFC.Tmax = 0.9; % N
UEFC.CDAfuse = 0.004; % m^2

