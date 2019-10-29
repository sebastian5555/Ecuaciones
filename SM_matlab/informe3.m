hold on
f =@(v)[v(1)-(0.5*v(1)*v(2)) , -0.75*v(2) + (0.25*v(1)*v(2))];
a = 0;
b = 50;
n = 200;
h = (b-a)/n;

x0 = 3;
y0 = 4;
z0 = [x0,y0];

zf = Depredador_presa(f, a, b, z0, n);
t = a:h:b;

xf = zeros(1, n+1);
yf = zeros(1, n+1);
for i=1:length(t)
    zf = Depredador_presa(f, a, t(i), z0, n);
    xf(i) = zf(1);
    yf(i) = zf(2);
end
plot(t, xf, 'g')
hold on
plot(t, yf, 'r')
hold off