function y = okno_Parzena(t)
    y = zeros(1, length(t));
    n = -(length(t)-1)/2:(length(t)-1)/2;
    for k=1:length(n)   
       if  (length(t)-1)/4  <= abs(n(k))<= (length(t)-1)/2 
       %    y(k)=2.*((1-(((abs(n(k))).*2)./length(t))).^3);           
       elseif  0<=abs(n(k))<=(length(t)-1)/4  
           y(k)=1-6.*(((abs(n(k))).*2)/length(t).^2) + 6*(((abs(n(k))).*2)./length(t).^3);    
       end
    end
end