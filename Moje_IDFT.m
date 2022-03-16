function s = Moje_IDFT(S)
    N=length(S);

 s= zeros(size(S));
    for k = 0:(N-1)
        for n = 0:(N-1)
            s(k+1)=s(k+1) + S(n+1)*exp(j*2*pi/N*k*n)/N;
        end
    end
end