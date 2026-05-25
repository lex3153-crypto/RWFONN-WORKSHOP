% Resultados preliminares de:
% "On the identification of Differential-Drive Mobile Robot via Recurrent Wavelet First-Order Neural Network: Part I and II"
% D. A. Magallón-García, J.L Echenausía-Monroy, L. J. Ontanon-Garcia, J. Pena Ramírez, R.C. Martínez Montejano, R.E. Lozoya Ponce, D. Lopez Mancilla
% Descarga en https://drive.google.com/uc?export=download&id=1WRcvdL7moIWKnW8jzuBTbkX3t3DVhcRG
%%
% Elaborado por L.J. Ontañón García
%%

% Borrar e inicializar Command window
clear all
close all
clc

%%  Condiciones iniciales 

x0m = [300,0,0];        % C.I. Robot
x0s = [0.1,.1,.10];      % C.I. Neurona
w0  = [0,0,0];          % C.I. Filtrado error


%% Integración numérica del modelo

[T,Y] = ode45(@EcuacionesSistemas, [0:0.01:800], [x0m, x0s, w0]);


xm = Y(:,1);        %Solución de estados del robot
ym = Y(:,2);
zm = Y(:,3);
xs = Y(:,4);        %Solución de estados de la neurona
ys = Y(:,5);
zs = Y(:,6);
w1 = Y(:,7);        %Solución de estados del filtrado error
w2 = Y(:,8);
w3 = Y(:,9);


%% Graficación de resultados

% plano de fase (x,y)
figure
plot(xm,ym)
title('Plano de fase del robot')
hold on
plot(x0m(1),x0m(2),'go','MarkerSize',10)
xlabel('\it x')
ylabel('\it y')
legend('DR','Start DR')

% plano de fase (x,y)
figure
plot(xm,ym)
hold on
plot(xs,ys)            
title('Plano de fase robot y RWFONN')
plot(x0m(1),x0m(2),'ko','MarkerSize',10)
plot(x0s(1),x0s(2),'k*','MarkerSize',10)
xlabel('\it x, z_1')
ylabel('\it y, z_2')
legend('DR','RWFONN','Start DR','Start RWFONN')


% Error euclidiano
error = sqrt((xm-xs).^2+(ym-ys).^2+(zm-zs).^2);
figure
plot(T, error)
title('Error euclidiano')
xlabel('\it t')
ylabel('\it dist')


% Proyeccion de estados x
figure
plot(T,xm)
hold on
plot(T,xs)
title('Estados x')
plot(T(1),x0m(1),'ko','MarkerSize',10)
plot(T(1),x0s(1),'k*','MarkerSize',10)
ylabel('\it x, y_1')
xlabel('\it t')
legend('DR','RWFONN','Start DR','Start RWFONN')

% Proyeccion de estados y
figure
plot(T,ym)
hold on
plot(T,ys)
title('Estados y')
plot(T(1),x0m(2),'ko','MarkerSize',10)
plot(T(1),x0s(2),'k*','MarkerSize',10)
ylabel('\it y, y_2')
xlabel('\it t')
legend('DR','RWFONN','Start DR','Start RWFONN')

% Proyeccion de estados theta
figure
plot(T,zm)
hold on
plot(T,zs)
title('Estados theta')
plot(T(1),x0m(3),'ko','MarkerSize',10)
plot(T(1),x0s(3),'k*','MarkerSize',10)
ylabel('\it z, y_3')
xlabel('\it t')
legend('DR','RWFONN','Start DR','Start RWFONN')
