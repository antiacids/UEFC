
% Get various fixed parameters
UEFC = GetUEFC;

% Loop over AR and S and determine max speed

nAR = 100;
ARvals = linspace(3,  14, nAR);

nS = 100;
Svals  = linspace(0.01, 0.2, nS);

Vmin = 1e6;
Vmax = 0;
for iAR = 1:nAR,
    for iS = 1:nS,
        ARtmp = ARvals(iAR);
        Stmp = Svals(iS);
        [Vtmp, Ntmp] = opt_V(ARtmp, Stmp);  
        AR(iAR,iS) = ARtmp;
        S(iAR,iS) = Stmp;
        V(iAR,iS) = Vtmp;
        N(iAR,iS) = Ntmp;
        if ((Vtmp > 0) & (Vtmp < Vmin)),
            Vmin = Vtmp;
        end
        if (Vtmp > Vmax),
           Vmax = Vtmp;
        end
    end
    fprintf('Completed %3.1f%% of AR,S scan\n',iAR/nAR*100);
end

%%
figure(1); close all;
[C_V,h_V] = contour(AR,S,V,linspace(Vmin,Vmax,16));
xlabel('AR'); ylabel('S (sq. m)');title('Flight speed (m/s)');
clabel(C_V,h_V);


figure(2);
Nmax = max(max(N));
[C_N,h_N] = contour(AR,S,N,linspace(1,Nmax,16));
xlabel('AR'); ylabel('S (sq. m)');title('N');
clabel(C_N,h_N);

