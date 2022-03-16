function S = Moje_DFT(s)
    N=length(s);
 S= zeros(size(s));
    for k = 0:(N-1)
        for n = 0:(N-1)
            S(k+1)=S(k+1) + s(n+1)*exp(-j*2*pi/N*k*n);
        end
    end
end