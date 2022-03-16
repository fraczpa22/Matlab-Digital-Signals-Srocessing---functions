function [h_M,h,f]=FIR_FDP(fp,fr,fs)
fo = (fp+fr)/2;
alfa = 3.1;
R= ceil(alfa * fs/(fr-fp));
K = R+1;

okno = Hanning(K);
okno = okno(:)';

hx = zeros(1, K);

for n = 1:K
    hx(n) = 2 * fo/fs * sinc(2*fo/fs*((n-1)-R/2));
end
n=0:K-1;
h = hx.*okno;
M = 1024;
f = (0:M-1) * fs/M;
h_M = [h, zeros(1, M-K)];
end
