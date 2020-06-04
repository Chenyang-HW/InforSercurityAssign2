clc; close all;
syms x;
syms y;
X=7;
Y=1;
p=11;
x=1:(p-1);
y=1:(p-1);

% g=2;
% g=6;
% g=7;

for x=1:1:(p-1)
    for y=1:1:(p-1)
        if(X==rem(g^x,p) && Y==rem(g^y,p) && rem(Y^x,p)==rem(X^y,p))
            fprintf("%d,%d\n",x,y);
        end
    end
end
