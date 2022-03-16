function y = fukncja_sinc(t)
    y = zeros(1, length(t));
    for k=1:length(y);
        if t(k) == 0
            y(k)=1
        else
            y(k)=sin(t(k))/(t(k));
        end
    end    
end