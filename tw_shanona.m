function s = tw_shanona(t,fs,X,tdodat)
   s = zeros(size(tdodat));
        for n = 1:length(t)
           s=s+X(n).*sinc(fs.*(tdodat-(n-1)./fs-tdodat(1)));
        end
end