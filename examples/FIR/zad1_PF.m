%zad 1 kolokwium nr1
%Pawel Fraczkiewicz
%8.06.2021r.
clc;clear;close all;

%%%Dane%%%
fp = 1200;
fr = 1500;
Rr = 63;
fs = 8000;

%%%%Filtr_dolnopasmowy%%%%
        [h_M, h,f] =FIR_FDP(fp,fr,fs);
        
figure(1); clf;
    stem(h)%h[n]
    ylabel("|h(n)|")
    
%%%%DFT%%%%%%%
        H = Moje_DFT(h_M);


figure(2);clf;%charakterystyka liniowa
    subplot(3,1,1)
        plot(f, abs(H), 'r-');
        ylabel("|h(f)|")
        xlim([0, fs/2]);
        title("charakterystyka -skala liniowa")
    subplot(3,1,2)
        semilogy(f,abs(H), 'r-');
        ylabel("|h(f)| - [dB]")
        xlim([0, fs/2]);
        title("charakterystyka -skala decybelowa")
    subplot(3,1,3)
        plot(f, rad2deg(angle(H)), 'r.-');
        ylabel("Faza")
        xlim([0, fs/2]);
        title("charakterystyka fazowa")
        
        
%%%%%%Test Filtra%%%%%     
dt=1/fs;
t=0:dt:500*dt-dt;
x=4*sin(2.*pi.*100.*t)+0.4*sin(2.*pi.*1800.*t)-0.6*sin(2.*pi.*2000.*t);%sygnal testowy 
y=splot_liniowy(h,x);

figure(3); clf;% sprawdzenie działania na sygnale testowym
    subplot(2,1,1)
        plot(x);
        xlabel("t[s]")
        title("sygnał wejściowy")
    subplot(2,1,2)
        plot(y)
        title("sygnał wyjściowy-przefiltrowany")









%Koniec