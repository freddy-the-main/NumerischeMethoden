D=2;
C=3;
m=4;
a0=C/m;
a1=D/m;
b0=1;
b1=0;
b2=0;

t=linspace(0,10,1001);
t=t';
dt=t(2)-t(1);


u=t*0+1;
u(t<1)=0;

v=u*0;


up=gradient(u)./gradient(t);
upp=gradient(up)./gradient(t);

uL=[nan;u(1:end-1)];
up=(u-uL)/dt;
up(1)=0;
upL=[nan;up(1:end-1)];
upp=(u-upL)/dt;
upp(1)=0;


%% Iteration
for i=2:length(t)
    v(i)= v(i-1)+vp(i-1)*dt;
    vp(i)=v(i-1)+vpp(i-1)*dt;
    vpp=b0*u(i)+b1*up(i)+b2*upp(i)-a0*v(i)-a0*vp(i)
end