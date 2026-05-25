function plot_Rossler()

[t,Salida] = ode45(@rossler,[0:0.01:500],[1 0 1]);
plot3(Salida(:,1),Salida(:,2),Salida(:,3))

function salida = rossler(t,Y)

x = Y(1); y = Y(2); z = Y(3);

a = 0.1; b = 0.36; c = 5.7;

salida(1) = -y - z;
salida(2) = x + a*y;
salida(3) = b + z*(x-c);
salida = salida';


