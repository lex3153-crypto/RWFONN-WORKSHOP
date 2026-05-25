function plot_DifferentialRobot()

[t,Salida] = ode45(@difrobot,[0:0.01:500],[0 0 0]);
plot(Salida(:,1),Salida(:,2))

function salida = difrobot(t,Y)

x = Y(1); y = Y(2); theta = Y(3);

D = 5.2;  R = D/2;
L = 12.3; 
wr = 5; wl = 2;

vc = (wr+wl)*R/2;
rho = (wr-wl)*R/L;


salida(1) = vc*cos(theta);
salida(2) = vc*sin(theta);
salida(3) = rho;
salida = salida';


