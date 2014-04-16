#!/usr/bin/env python

import numpy as np
import matplotlib.pyplot as plt
from scipy.integrate import odeint
from scipy import integrate

#The Model
#=======================================================
def eq(par,initial_cond,start_t,end_t,incr):
    #-time-grid-----------------------------------
    t  = np.linspace(start_t, end_t,incr)
    #differential-eq-system---------------------
    def funct(y,t):
        OTU1i = y[0]
        OTU2i = y[1]
        OTU3i = y[2]
        OTU4i = y[3]
        OTU5i = y[4]
        OTU6i = y[5]
        OTU7i = y[6] 

        OTU1_growth = a1*OTU1i*(1-(OTU1i/K);
        OTU2_growth = a2*OTU2i*(1-(OTU2i/K);
        OTU3_growth = a3*OTU3i*(1-(OTU3i/K);
        OTU4_growth = a4*OTU4i*(1-(OTU4i/K);
        OTU5_growth = a5*OTU5i*(1-(OTU5i/K);
        OTU6_growth = a6*OTU6i*(1-(OTU6i/K);
        OTU7_growth = a7*OTU7i*(1-(OTU7i/K);


        OTU1_interactions = OTU1i*(b12*OTU2i+b13*OTU3i+b14*OTU4i+b15*OTU5i+b16*OTU6i+b17*OTU7i);
        OTU2_interactions = OTU2i*(b21*OTU1i+b23*OTU3i+b24*OTU4i+b25*OTU5i+b26*OTU6i+b27*OTU7i);
        OTU3_interactions = OTU3i*(b31*OTU1i+b32*OTU2i+b34*OTU4i+b35*OTU5i+b36*OTU6i+b37*OTU7i);
        OTU4_interactions = OTU4i*(b41*OTU1i+b42*OTU2i+b43*OTU3i+b45*OTU5i+b46*OTU6i+b47*OTU7i);
        OTU5_interactions = OTU5i*(b51*OTU1i+b52*OTU2i+b53*OTU3i+b54*OTU4i+b56*OTU6i+b57*OTU7i);
        OTU6_interactions = OTU6i*(b61*OTU1i+b62*OTU2i+b63*OTU3i+b64*OTU4i+b65*OTU5i+b67*OTU7i);
        OTU7_interactions = OTU7i*(b71*OTU1i+b72*OTU2i+b73*OTU3i+b74*OTU4i+b75*OTU5i+b76*OTU6i);





OTU1 = OTU1_growth + OTU1_interactions;
OTU2 = OTU2_growth + OTU2_interactions;
OTU3 = OTU3_growth + OTU3_interactions;
OTU4 = OTU4_growth + OTU4_interactions;
OTU5 = OTU5_growth + OTU5_interactions;
OTU6 = OTU6_growth + OTU6_interactions;
OTU7 = OTU7_growth + OTU7_interactions;