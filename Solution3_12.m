t=4456968984;
for i=1:100
    if(rem((t*i+1)/31,1)==0)
        fprintf("%d\n",(t*i+1)/31)
    end
end
