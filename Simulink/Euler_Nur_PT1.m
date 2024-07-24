%% Definition System
a0=1;
b0=1;
%% Definition Zeitschritte
t=linspace(0,10,1000);
dt=t(2)-t(1);
%%Definition Erregung
u=t*0;
u(10:end)=1; %Sprungerregung
%% Deklarationen und Anfangswerte 
v=u*0;
vp=u*0;
v(1)=0;  
vp(1)=0;

%% Iterationen
for i=2:length(t)
    v(i)=v(i-1)+vp(i-1)*dt;
    vp(i)=b0*u(i)-a0*v(i);  
end
%% Darstellung
hold off
plot(t,v,'r')
hold on
plot(t,u,'b')
hold off
