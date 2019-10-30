clc
clear all
%constantes a,b,c
const_1 = 0.2;
const_2 = 0.2;
const_3 = 5.3;
%v(1) x
%v(2) y 
%v(3) z
C0 = [1,1,1];
f = @(v) [-1*v(2) - v(3), v(1) + const_1*v(2), const_2 + v(1)*v(3) - const_3*v(3) ]
%intervalo
a= 0;
b= 100;
n = 10000;
[t,xf,yf,zf] = Runge_Kutta_vec(f,a,b,C0,n);
figure
plot3(xf,yf,zf);
%grafica x(t) 
%plot(xf)