i_max=2e6;%Thenumberofevaluationpoints.

%%%%%%%%naivemethod%%%%%%%%

display('Naivemethod:')

tic;%Startthetimerforthenaivemethod.

%Callthefunctionthatappliesthenaivemethod

for i=1:i_max

	native_polynomial_calc(i/i_max);

end

toc;%Stopthetimerandprinttheelapsedtime.


%%%%%%%%Horner'smethod%%%%%%%%
display('Horner smethod:')

tic;%StartthetimerfortheHorner'smethod.

%CallthefunctionthatappliestheHorner'smethod

for i=1:i_max

	Honer_polynomial_calc(i/i_max);

end

toc;%Stopthetimerandprinttheelapsedtime.



