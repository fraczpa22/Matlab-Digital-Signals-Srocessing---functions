function wynik = splot_liniowy(h,x)
wynik = zeros(length(h)+length(x)-1,1);
for a = 1:length(h)
    for b =1:length(x)
        wynik(a+b-1)= wynik(a+b-1)+h(a)*x(b);
    end
end
