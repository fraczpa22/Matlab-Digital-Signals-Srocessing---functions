%System Rekursywny/nierekursywny
% Paweł Frączkiewicz

clc;clear;close all;
b=[2,-1];%Dla X
a=[-(1/2),(1/2)];%Dla Y -jeśli system niereursywny - pusta tablica- jak nie pokolei co po prawej jest
N=10;

Y= system_LTIn(a,b,N)

stem(Y)
