% Este programa contiene las ecuaciones del sistema del robot diferencial(R^3),
% los estados de la neurona(R^3) y el filtrado del error(R^3)

function salida = EcuacionesSistemas(t, Y)

xm      = Y(1);  % X Robot
ym      = Y(2);  % Y Robot
thetam  = Y(3);  % Theta Robot
xs      = Y(4);   %NEurona
ys      = Y(5);
thetas  = Y(6);
w1      = Y(7);  % Filtrado del error
w2      = Y(8);
w3      = Y(9);

%% Parametros del sistema robot diferencial cm/s

D_eje = 12.5;   % Distancia del eje de transmisión
R = 5.6;        % Radio de las llantas


mu_der = 5;     % Velocidad de la llanta derecha
mu_izq = 4.5;   % Velocidad de la llanta izquierda

% if t <= 400
%     mu_der = 5;   %Velocidad de la llanta derecha
%     mu_izq = 4.5;   %Velocidad de la llanta izquierda
% else
%     mu_der = 4.5;   %Velocidad de la llanta derecha
%     mu_izq = 5;   %Velocidad de la llanta izquierda
% end    


% Modelo diferencial (R^3)
dxm = R*(mu_der+mu_izq)/2*cos(thetam);
dym = R*(mu_der+mu_izq)/2*sin(thetam);
dthetam= R*(mu_der-mu_izq)/D_eje;


%% Sistema RWFONN

% Parámetros de la neurona
alpha1 = 5;
alpha2 = 2;
alpha3 = alpha1;

beta1 = 5;    
beta2 = 2;
beta3 = beta1;

gamma1 = 45000;     
gamma2 = 155000;
gamma3 = 15000;

lambda1 = 0.0010;
lambda2 = lambda1;
lambda3 = lambda1;

delta1 = 15500;       
delta2 = 32500;
delta3 = delta1;

% Ecuaciones función de activación Morlet Wavelet

y1 = exp(-xm^2/gamma1)*cos(lambda1*xm);
y2 = exp(-ym^2/gamma2)*cos(lambda2*ym);
y3 = exp(-thetam^2/gamma3)*cos(lambda3*thetam);


% Error filtering (R^3)

dw1 = -delta1*y1*(xs-xm);
dw2 = -delta2*y2*(ys-ym);
dw3 = -delta3*y3*(thetas-thetam);

% % Modelo Robot Diferencial Magallon EDIESCA25 (R^3) Solución 1
%dxs     = -alpha1*xs     + beta1*w1*y1 + ys;
%dys     = -alpha2*ys     + beta2*w2*y2 + thetas;
%dthetas = -alpha3*thetas + beta3*w3*y3 + xm;

% Modelo Robot Diferencial Magallon EDIESCA25 (R^3) Solución 2
  dxs     = -alpha1*xs     + beta1*w1*y1 + beta1*w1*y3 + ys;
  dys     = -alpha2*ys     + beta2*w2*y2 + thetas;
  dthetas = -alpha3*thetas + beta3*w3*y3 + xm;



salida = [dxm, dym, dthetam, dxs, dys, dthetas, dw1, dw2, dw3]';


