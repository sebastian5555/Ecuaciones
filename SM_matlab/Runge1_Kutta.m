function y = Runge1_Kutta(f,a,b,y0,n)

t(1) = a;
t = zeros(1,n+1);
y = zeros(1,n+1);
y(1) = y0;
h = (b-a)/n;
for i=1:n
    A1 = t(i)+ (1/2)*h;
    k1 = f(t(i),y(i));
    k2 = f(A1 , y(i)+ ((h/2)*k1));
    k3 = f(A1 , y(i)+ ((h/2)*k2));
    k4 = f(t(i) + h , y(i) + ((h)*k3));
    y(i+1) = y(i) + (1/6)*(k1+2*k2+2*k3+k4)*(h);
    t(i+1) = t(i)+h;

    end
end