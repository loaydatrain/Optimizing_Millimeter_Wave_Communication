%% MAXIMIZING LINK_CAPACITY

f = @link_capacity;
[p,fval] = fminbnd(f,0,1);
disp('Value of p for which link capacity is: ');
disp(p);
disp('Corresponding value of the function: ');
disp(-1*fval);