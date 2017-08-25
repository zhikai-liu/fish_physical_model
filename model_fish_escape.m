Uf_0= 20;
Uf=zeros(200,1);
t0=10;
t1=20;
delta_t=20;
D=0.1;
v=0.01;
t_step=0.001;
%Uf(1)=0.001;
for t=1:length(Uf)-1
    if t>delta_t
        ft=exp(1-t/delta_t);
    else
        %ft=exp(t/t0-delta_t/t0);
        ft=1-exp(delta_t/t0-t/t0);
        %ft=1;
    end
    Uf(t+1)=Uf(t)+(Uf_0*ft/delta_t/1e-3-0.8*Uf(t)^2/4.45/D-24*v*Uf(t)/4.45/D^2)*t_step;
end
figure;
subplot(2,1,1)
plot(Uf)
subplot(2,1,2)
plot(diff(Uf))