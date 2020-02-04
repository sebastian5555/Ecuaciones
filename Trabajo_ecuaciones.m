%%Punto 1
A = [1,-1,0 ; -1,2,-1 ; 0,-1,1];
d = eig(A);
dd = d.^20;
E = diag(dd);
[V,D] = eig(A);
D_20 = D^20
%% Ahi observamos que E = D_20
A_20 = A^20;
VEV = V*E*(V^-1);
%% Ahi observamos que A_20 = VEV
clear all
%% Punto 2
A2 = [3,9.5,-2,-10.5 ; -10,-42.5,10,44.5 ; 6,23.5,-5,-24.5 ; -10,-43,10,45];
d2 = eig(A2);
dd2 = d2.^20;
E2 = diag(dd2);
[V2,D2] = eig(A2);
D2_20 = D2^20;
%% Ahi observamos que E2 = D2_20
A2_20 = A2^20
VEV2 = V2*E2*(V2^-1)
%% Ahi observamos que A2_20 = VEV2
clear all
%% Punto 4

x = [0 :0.001: 3];
y = (-3/2) + sqrt(sin(2*x) + (1/4));
plot(x,y,'r');
hold on
max_y = max(y);
clear all

%% Punto 5

x2 = [-1.2 :0.001: 1.4];
y2 = tan(x2.^2 + x2);
plot(x2,y2);
hold on
min_y = min(y2)

