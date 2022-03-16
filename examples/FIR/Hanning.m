function W = Hanning(N)
    for n=0:N-1
        W(n+1)=0.5-0.5*cos(2*pi*n/(N-1));
    end
end