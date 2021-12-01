clc;clear all;
x = [0.1 0.3 0.5 0.7];
y1 = [0.3 7.2e-03 6.6e-05 6.6e-05];
y2 = [0.337 2.3e-03 1.757e-05 1.356e-05]; 
figure();
plot(x,y1);
hold on;
plot (x, y2,'k');
xlabel('\lambda');
title('Optimal Power Allocation Ratio(p_1) of direct path wrt \lambda');
legend('Optimal p', 'Optimal capacity');

x = [0.2 0.6 1 5];
y1 = [0.3 0.25 0.2 6.6e-05];
y2 = [0.264 0.16 0.12 0.04];
figure();
plot(x,y1);
hold on;
plot (x, y2,'k');
xlabel('Noise Power');
title('Optimal Power Allocation Ratio(p_1) of direct path wrt noise power');
legend('Optimal p', 'Optimal capacity');


x = [0.5 1 2 3];
y1 = [0.3 0.3 0.3 0.12];
y2 = [0.827 0.661 0.337 0.082];
figure();
plot(x,y1);
hold on;
plot (x, y2,'k');
xlabel('\alpha');
title('Optimal Power Allocation Ratio(p_1) of direct path wrt \alpha');
legend('Optimal p', 'Optimal capacity');

x = [0.3 0.5 0.8 1];
y1 = [0.42 0.36 0.31 0.29];
y2 = [0.26 0.29 0.32 0.34];
figure();
plot(x,y1);
hold on;
plot (x, y2,'k');
xlabel('\beta');
title('Optimal Power Allocation Ratio(p_1) of direct path wrt \beta');
legend('Optimal p', 'Optimal capacity');
