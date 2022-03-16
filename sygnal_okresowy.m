function y = sygnal_okresowy(t,n)
    y = zeros(1, length(t));
    for k=1:length(y);
        y(k)=sin(2*pi*t(k)-n);
    end    
end