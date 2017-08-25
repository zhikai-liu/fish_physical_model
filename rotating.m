f = @(t,x) odefcn(t,x);
tspan = [0, 15];
xinit = [0, 0.01];
[t,y] = ode45(f,tspan,xinit);
figure;
plot(t,y(:,1),t,y(:,2),t,0.5*sin(y(:,1))-0.2*y(:,2));
figure;
a = sin(y(:,1));
plot(t,a,t(2:end),diff(a));

function dxdt = odefcn(t,x)
dxdt = zeros(2,1);
dxdt(1) = x(2);
dxdt(2) = 5*sin(x(1))-2*x(2);
end
