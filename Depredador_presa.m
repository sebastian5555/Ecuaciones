function ft = Depredador_presa(f, a, b ,z0, n)
ft = z0;
h = (b-a)/n;
for i=1:n
    k1 = f(ft);
    k2 = f(ft+(0.5*h*k1));
    k3 = f(ft+(0.5)*h*k2);
    k4 = f(ft+(h*k3));
    ft = ft + (1/6)*h*(k1+2*k2+2*k3+k4);
end
end
