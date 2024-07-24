%% Definition System
a0=1;
a1=1;
b0=1;
b1=1;
b2=0;
%% Definition Zeitschritte
t=linspace(0,10,1001);
t=t';
dt=t(2)-t(1);
%%Definition Erregung
u=t*0+1;
u(t<1)=0; %Sprungerregung
%% Deklarationen und Anfangswerte 
v=u*0;
vp=u*0;
vpp=u*0;
v(1)=0;  
vp(1)=0;
vpp(1)=0;
%% Ableitungen u
up=gradient(u)./gradient(t);
upp=gradient(up)./gradient(t);
%% Iterationen
for i=2:length(t)
    v(i)=v(i-1)+vp(i-1)*dt;
    vp(i)=vp(i-1)+vpp(i-1)*dt;
    vpp(i)=b0*u(i)+b1*up(i)+b2*upp(i)-a0*v(i)-a1*vp(i);
end
%% Darstellung
hold off
plot(t,v,'r')
hold on
plot(t,u,'b')
hold off
%%Vergleich Simulink
vsimulink=out.ScopeData.signals(2).values;
usimulink=out.ScopeData.signals(1).values;
testv=vsimulink-v;
testu=usimulink-u;
nnz(testv)
nnz(testu)
