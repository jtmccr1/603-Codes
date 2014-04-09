function dydt = coln(t,otu,params)


OTU1_growth = a1*otu(1)*(1-(otu(1)/K);
OTU2_growth = a2*otu(2)*(1-(otu(2)/K);
OTU3_growth = a3*otu(3)*(1-(otu(3)/K);
OTU4_growth = a4*otu(4)*(1-(otu(4)/K);
OTU5_growth = a5*otu(5)*(1-(otu(5)/K);
OTU6_growth = a6*otu(6)*(1-(otu(6)/K);
OTU7_growth = a7*otu(7)*(1-(otu(7)/K);


OTU1_interactions = otu(1)*(b12*otu(2)+b13*otu(3)+b14*otu(4)+b15*otu(5)+b16*otu(6)+b17*otu(7));
OTU2_interactions = out(2)*(b21*otu(1)+b23*otu(3)+b24*otu(4)+b25*otu(5)+b26*otu(6)+b27*otu(7));
OTU3_interactions = otu(3)*(b31*otu(1)+b32*otu(2)+b34*otu(4)+b35*otu(5)+b36*otu(6)+b37*otu(7));
OTU4_interactions = otu(4)*(b41*otu(1)+b42*otu(2)+b43*otu(3)+b45*otu(5)+b46*otu(6)+b47*otu(7));
OTU5_interactions = otu(5)*(b51*otu(1)+b52*otu(2)+b53*otu(3)+b54*otu(4)+b56*otu(6)+b57*otu(7));
OTU6_interactions = otu(6)*(b61*otu(1)+b62*otu(2)+b63*otu(3)+b64*otu(4)+b65*otu(5)+b67*otu(7));
OTU7_interactions = otu(7)*(b71*otu(1)+b72*otu(2)+b73*otu(3)+b74*otu(4)+b75*otu(5)+b76*otu(6));





dydt(1) = OTU1_growth + OTU1_interactions;
dydt(2) = OTU2_growth + OTU2_interactions;
dydt(3) = OTU3_growth + OTU3_interactions;
dydt(4) = OTU4_growth + OTU4_interactions;
dydt(5) = OTU5_growth + OTU5_interactions;
dydt(6) = OTU6_growth + OTU6_interactions;
dydt(7) = OTU7_growth + OTU7_interactions;
