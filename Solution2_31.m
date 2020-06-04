clc; clear; close all;
p=11;
for h=1:1:(p-1)
    if(rem(h^(p-1),p)==1)
        fprintf("%d\n",h)
    end
end
