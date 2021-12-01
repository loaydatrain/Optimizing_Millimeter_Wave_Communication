%% MAIN FUNCTION FOR FIG 3

function f = main(height)
    
    p_tot = 10;
    alpha = 2;
    k = 100;
    noise_power = 0.1;
    beta = 0.9;
    
    if(height == 6)
        l = sqrt(136);
    elseif(height == 15)
        l = sqrt(325);
    end

    gam1 = gamma_calc(p_tot, alpha, k, l, noise_power);
    gam2 = gamma_calc(p_tot, alpha, k, l, noise_power) * beta;

    % APPROXIMATED VALUES
    if(height == 6)
        a = 11.35;
        b = 13.24;
        c = 0.96;
    elseif (height == 15)
        a = 11.66;
        b = 21.24;
        c = 0.7;
    end
    lambda = 0.1;
    [rho12, rho1_2, rho12_] = rho_calc(a, b, c, lambda);

    p = [0:0.01:1];
    f_direct = rho12_*log(gam1*p + 1) ;
    f_reflected = rho1_2*log(-gam2*p + gam2 + 1);
    f_both = rho12*log((gam1-gam2)*p + gam2 + 1);
    f_total = f_direct + f_reflected + f_both;
    
    figure();
    plot(p, f_direct, 'g', 'DisplayName', "Direct");
    hold on;
    plot(p, f_reflected, 'b--', 'DisplayName', "Reflected");
    hold on;
    plot(p, f_both, 'r+', 'DisplayName', "Both");
    hold on;
    plot(p, f_total, 'k+', 'DisplayName', "Total");
    xlabel("p")
    ylabel("Expected Link Capacity")
    legend("show")
end
