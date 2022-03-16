function y = okno_Barletta(t)

    y = zeros(1, length(t));
    for n= 1:length(t)
       if n<=length(t)/2
           y(n) = 2*n/(length(t)-1);
       elseif n>=length(t)/2
           y(n)=2-(2*n/(length(t)-1));
       end
    end
end
