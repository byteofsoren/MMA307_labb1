function plot_error(f)
    % Plots the error of dx 

    f = @(x) sin(x);
    h = 1./10.^(1:5);
    x = 1;
    yE = cos(x);
    for i = 1:5
        y(i, 1) = deriv(f, x, 1, h(i));
        y(i, 2) = deriv(f, x, 2, h(i));
        log_err1(i) = log(abs(yE - y(i, 1)));
        log_err2(i) = log(abs(yE - y(i, 2)));
        log_h(i) = log(h(i));
    end
    p1 = 1; p2=2;
    for px = 1:4
        delta_x(px) = log_h(px) - log_h(px+1);
        delta_y(px) = log_err2(px) - log_err2(px+1);
        p(px) = delta_y/delta_x;
    end
    disp('p(1)='); disp(p(1));
    m = log_err2(1) - p(1) .* log_h(1)
    disp('p=');
    disp(transpose(p));
    disp('medium p');
    disp(sum(p)/4)
    disp('log_h');
    disp(transpose(log_h));
    axis([-12 -2 -30 -5]);
    hold on;
    grid on;
    plot(log_h, log_err1, 'LineWidth', 3)
    plot(log_h, log_err2, 'LineWidth', 3)
    plot(log_h, p(1)*(log_h)+m,'--', 'LineWidth' , 3)
    legend('cos(x)','D(sin(x))','P value', 'Location','northwest');
    title('Error of derivitive');
end
