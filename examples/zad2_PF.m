%zad 2
%Pawel Fraczkiewicz
%8.06.2021r.
clc;clear;close all;

%%%Dane%%%
fo=3000;
fs=5400;% za mała czestotliwość sp  mniejsza od fs>=2*f0
to=0;
delta_t=1/fs;
N=30;
tend=N*delta_t;
tdodat=to:delta_t*0.1:tend-delta_t*0.1;%czas "rzeczywist"

y=sin(2*pi*tdodat*fo-(pi/2)); %sygnał wejsciowy/probkowany

t=to:delta_t:tend-delta_t;% odstepy czasu próbkowanego

y1=sin(2*pi*t*fo-(pi/2));

y2=grzebien_diracka(t);

x=y2.*y1;%sygnal sprobkowany

s=tw_shanona(t,fs,x,tdodat);

figure(1)
    plot(tdodat,y,'b-');hold on;%sygnał wejsciowy
            xlim([10*delta_t, 20*delta_t]);
            xlabel("t[s]")
    stem(t,x,'rx')%sygnał spróbkowany
    plot(tdodat,s,'r')%sygnal odtworzony





%Koniec