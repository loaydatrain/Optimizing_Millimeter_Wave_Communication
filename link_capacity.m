%% MAIN FUNCTION FOR FIG 4

function f_total = link_capacity(p)

    p_tot = 10;
    alpha = 2;
    k = 100;
    noise_power = 0.1;
    beta = 0.9;
    
    l = sqrt(325);
    
    gam1 = k * p_tot * (l^(-alpha));
    gam1 = gam1 / noise_power;
    gam2 = gam1 * beta;

    % APPROXIMATED VALUES
    a = 11.66;
    b = 23.62;
    c = 0.7;
    
    lambda = 0.1;
    rho12_ = exp(-lambda * (a + b)) * (1 - exp(-lambda * b));
    rho1_2 = exp(-lambda * (b + c)) * (1 - exp(-lambda * a));
    rho12 = exp(-lambda * (a + b + c));

    f_direct = rho12_*log(gam1*p + 1) ;
    f_reflected = rho1_2*log(-gam2*p + gam2 + 1);
    f_both = rho12*log((gam1-gam2)*p + gam2 + 1);
    f_total = f_direct + f_reflected + f_both;
    f_total = -1*f_total;
end