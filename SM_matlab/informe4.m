%f =@(v)[v(1)-((1/2)*v(1)*v(2)) , -v(2) + ((1/3)*v(1)*v(2))];
%f =@(v)[3*v(1)-((3/2)*v(1)*v(2)) , -v(2) + ((1/3)*v(1)*v(2))];
%f =@(v)[(1/3)*v(1)-((1/6)*v(1)*v(2)) , -v(2) + ((1/3)*v(1)*v(2))];
f =@(v)[v(1)-((1/2)*v(1)*v(2)) , -(1/3)*v(2) + ((1/9)*v(1)*v(2))];
clc
a = 0;
b = 30;
n = 200;
h = (b-a)/n;

x0 = 5;
y0 = 2;
z0 = [x0,y0];

zf = Depredador_presa(f, a, b, z0, n);
t = a:h:b;
%t(130)
%t(75)
%t(78)
%t(103)
t(75)

xf = zeros(1, n+1);
yf = zeros(1, n+1);
for i=1:length(t)
    zf = Depredador_presa(f, a, t(i), z0, n);
    xf(i) = zf(1);
    yf(i) = zf(2);
end
xf
yf(75)
%plot(xf, yf)