function S = Moje_DFT(s)
    N=length(s);
%    w=exp((-j*2*pi)/N);
%    for i= 1:(N)
%        if i == (N+1)/2
%            k(1)=0
%        elseif 1>(N+1)/2
%            k(i)=-(N-2*(i-1))/2;
%        else   
%            k(i)=-(N-(i-1))/2;
%       end
%   end
%    S= zeros(size(k));
%    for n= 1:N    
%        S=S+delta_t.*s(n).*(w.^k.*n);
%    end

 S= zeros(size(s));
    for k = 0:(N-1)
        for n = 0:(N-1)
            %S(k+1)=S(k+1) + s(n+1)*w.^(k.*n); % << błędy na fazie robi !!
            S(k+1)=S(k+1) + s(n+1)*exp(-j*2*pi/N*k*n);
        end
    end
end