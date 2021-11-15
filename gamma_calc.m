%% FUNCTION TO CALCULATE GAMMA: PARAMETERS ARE USELESS AT THE MOMENT
function gamma = gamma_calc(p_tot, alpha, k, l, noise_power)
    gamma = k * p_tot * (l^(-alpha));
    gamma = gamma / noise_power;
end
