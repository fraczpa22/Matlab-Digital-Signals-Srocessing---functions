%System Rekursywny/nierekursywny
clc;clear;close all;

%%%%%%Liczy postać H(z)

Y_z=[2,-1];%licznik
X_z=[1,1/2,-1/2];%mianownik
N=10;
Y=system_LTIz(X_z,Y_z,N)

stem(Y)


