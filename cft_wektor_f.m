function X=cft_wektor_f(x,t,f)

x=x(:)';
t=t(:)'; dt=t(2)-t(1);
f=f(:);
N=length(f); Nt=length(t);
X=zeros(N,1);
for n=1:Nt
    X=X+x(n)*exp(-j*2*pi*f*t(n))*dt;
end

% KONIEC FUNKCJI;