function y = skok_jednostkowy(t)
    y = zeros(1, length(t));
    for k=1:length(y);
        if t(k)>0;
            y(k)=1;            
        elseif t(k)==0;
            y(k)=1/2;        
        else 
            y(k) = 0;
        end
    end    
end