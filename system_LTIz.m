function Y = system_LTIz(X_z,Y_z,N)

b=Y_z/X_z(1);
a=-X_z/X_z(1);
a(1)=-a(1);

x=[1 zeros(1,N-1)];%impuls jednostkowy
Y=zeros(1,N);

for n=1:N;
    for m=1:length(b);
        if n>=m
            Y(n)=Y(n)+b(m)*x(n-m+1);
        end
    end
    for k=1:length(a)-1       
        if n>k
            Y(n)=Y(n)+Y(n-k)*a(k+1);
        end            
    end
end
end