%% CALCULATE ALL RHO'S ASSUMING Y = 6 IS REFLECTOR

function [rho12, rho1_2, rho12_] = rho_calc(a, b, c, lambda)
    rho12_ = exp(-lambda * (a + b)) * (1 - exp(-lambda * b));
    rho1_2 = exp(-lambda * (b + c)) * (1 - exp(-lambda * a));
    rho12 = exp(-lambda * (a + b + c));
end
