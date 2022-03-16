function y = square_funk(t)
    y = zeros(size(t));
    for k = 1:length(t)
            if t(k) < -0.5 | t(k) > 0.5
                y(k) = 0;
            else
                y(k)=1;
            end                   
    end
    dt = t(2) - t(1)
    y(t>-0.5-dt & t<-0.5 + dt)=0.5;
    y(t>0.5-dt & t<0.5 + dt)=0.5;   
end