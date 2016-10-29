 {parameter(L,"Length",50,50,100)}
 {parameter(B,"Width",2.5,2.5,5)}
 {parameter(H,"Height",5,5,10)}
 {P = 100}
 {E = 2e11}
 {M = P*L}
 {c = H/2}
 {I = (B*H^3)/12}
 {MAX_STRESS = (M*c)/I}
 {MAX_DISP = (P*L^3)/(3*E*I)}
 {VOLUME =  B*H*L}
 {MAX_STRESS}
 {MAX_DISP}
 {VOLUME}
 