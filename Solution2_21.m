clc; close all;
syms x;
syms y;
X=7;
Y=1;
p=11;
x=1:100;
y=1:100;
for x=1:1:100
    for y=1:1:100
        if(rem(Y^x,p)==rem(X^y,p))
            fprintf("%d,%d\n",x,y);
        end
    end
end
