function W = GetWeight(AR, S)

% YOU SHOULD NOT NEED TO CHANGE THIS FILE FOR THIS PROBLEM

UEFC = GetUEFC;

Wwing = GetWingWeight(AR, S);

W = UEFC.Wfuse + UEFC.Wpay + Wwing;






