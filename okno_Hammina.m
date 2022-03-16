function y = okno_Hammina(t)

    y = zeros(1, length(t));
    for n= 1:length(t)
           y(n) = 0.54-0.46*cos(2*pi*(n/(length(t)-1)));
    end
end