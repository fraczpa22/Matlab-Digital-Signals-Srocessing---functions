function y = imp_troj_funk(t)

    y = zeros(1, length(t));
    for k = 1:length(t)
       if abs(t(k)) < 1
           y(k) = 1-abs(t(k));
       else
           y(k)=0;
       end
    end
end
