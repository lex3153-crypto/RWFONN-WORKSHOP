function [t,Salida]=plot_UDSI()

[t,Salida] = ode45(@lorenz,[0:0.01:500],[-0.2 0 0.2]);
plot3(Salida(:,1),Salida(:,2),Salida(:,3))

function salida = lorenz(t,Y)

x = Y(1); y = Y(2); z = Y(3);

a1 = -1.5; a2 = -1; a3= -1;

b = 0;

if x>0.3
    b = 0.9;
end



salida(1) = y;
salida(2) = z;
salida(3) = a1*x+ a2*y + a3*z + b;
salida = salida';
