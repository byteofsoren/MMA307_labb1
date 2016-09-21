function y = deriv(f, x, k, h)
% Calculates the k derivitive of function f = f(x) at point x.
    y = 0;
    for i = 0:2*k
        if i ~= k
            y = y + f(x - (k - i).*h).*((-1).^(k+i).*(factorial(k)).^2)/((k-i).*factorial(i).*factorial(2.*k - i).*h);
        end
    end

end
