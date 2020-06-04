%joint probability
p_11=0.11; p_12=0.08; p_13=0.04; p_14=0.03;
p_21=0.02; p_22=0.16; p_23=0.02; p_24=0.09;
p_31=0.02; p_32=0.03; p_33=0.06; p_34=0.01;
p_41=0.05; p_42=0.12; p_43=0.01; p_44=0.15;

%probability of x
px_1=p_11+p_12+p_13+p_14;
px_2=p_21+p_22+p_23+p_24;
px_3=p_31+p_32+p_33+p_34;
px_4=p_41+p_42+p_43+p_44;

%probability of y
py_1=p_11+p_21+p_31+p_41;
py_2=p_12+p_22+p_32+p_42;
py_3=p_13+p_23+p_33+p_43;
py_4=p_14+p_24+p_34+p_44;

%joint entropy H(X,Y)=-P(xj,yk)log2(P(xj,yk))
H_XY=-p_11*log2(p_11)-p_12*log2(p_12)-p_13*log2(p_13)-p_14*log2(p_14)...
    -p_21*log2(p_21)-p_22*log2(p_22)-p_23*log2(p_23)-p_24*log2(p_24)...
    -p_31*log2(p_31)-p_32*log2(p_32)-p_33*log2(p_33)-p_34*log2(p_34)...
    -p_41*log2(p_41)-p_42*log2(p_42)-p_43*log2(p_43)-p_44*log2(p_44);

%entropy H(X)=-P(xj)log2(P(xj)
H_X=-px_1*log2(px_1)-px_2*log2(px_2)-px_3*log2(px_3)-px_4*log2(px_4);

%entropy H(X|Y)=-P(xj,yk)log2(P(xj,yk)/P(yk))
H_X_Y=-p_11*log2(p_11/py_1)-p_12*log2(p_12/py_2)-p_13*log2(p_13/py_3)-p_14*log2(p_14/py_4)...
    -p_21*log2(p_21/py_1)-p_22*log2(p_22/py_2)-p_23*log2(p_23/py_3)-p_24*log2(p_24/py_4)...
    -p_31*log2(p_31/py_1)-p_32*log2(p_32/py_2)-p_33*log2(p_33/py_3)-p_34*log2(p_34/py_4)...
    -p_41*log2(p_41/py_1)-p_42*log2(p_42/py_2)-p_43*log2(p_43/py_3)-p_44*log2(p_44/py_4);

%entropy I(X;Y)=H(X)-H(X|Y)
I_XY=H_X-H_X_Y;
% H_Y=-py_1*log2(py_1)-py_2*log2(py_2)-py_3*log2(py_3)-py_4*log2(py_4);
% I_XY=H_X+H_Y-H_XY

%entropy H(X,4); Nathan
I_X4=-p_14*log2(p_14)-p_24*log2(p_24)-p_34*log2(p_34)-p_44*log2(p_44);

%entropy H(X,2); Julia
I_X2=-p_12*log2(p_12)-p_22*log2(p_22)-p_32*log2(p_32)-p_42*log2(p_42)







