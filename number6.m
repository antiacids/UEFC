function result=number6(AR,S,V)
    UEFC = GetUEFC;    
    R=UEFC.R;
    g=9.8;
    rho=UEFC.rho;% air density kg/m^3
    g=UEFC.g;
    N=((V^2/(R*g))^2+1)^.5;
    W=GetWeight(AR, S);
    V_squared = R*g*sqrt(N^2-1);
    q = 0.5*rho*V_squared;
    CL = (N*W)/(q*S);
    CD=GetCD(CL, AR, S);
    T=GetRequiredThrust(N, AR, S);
    db=Getdb(N,AR,S);   
    result=[N,W,CL,CD,T,db];

end