function y = Honer_polynomial_calc(x)
    % Honer version of the polynomial.
    % f(x) = 6x^5 + 5x^4 + 4x^3 + 3x^2 + 2x
    % f(x) = x.*(2 + x.*(3 + x.*(4 + x.*(5+  6.*x))))
    y = x.*(2 + x.*(3 + x.*(4 + x.*(5+  6.*x))));
end
