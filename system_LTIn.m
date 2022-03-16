function Y = system_LTIn(a,b,N)


x=[1 zeros(1,N-1)];%impuls jednostkowy
Y=zeros(1,N);

for n=1:N;
    for m=1:length(b);
        if n>=m
            Y(n)=Y(n)+b(m)*x(n-m+1);
        end
    end
    for k=1:length(a)       
        if n>k
            Y(n)=Y(n)+Y(n-k)*a(k);
        end            
    end
end
end