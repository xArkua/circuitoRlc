[t,y]=ode45(@CircuitoOde,[0 0.002], [0 0]);
figure(1)
plot(t, y(:,1));
grid on
title("");
xlabel("");
ylabel("");
