clear; clc; close all;

speed = readtable('avgVel.txt');
figure()
plot(speed.Var1, speed.Var2, 'b');
hold on; 
f=fit(speed.Var1, speed.Var2, 'poly3');
p = plot(f); 
p.LineWidth = 2;
hold off; 
xlabel('Episodes');
ylabel('Average Speed')
legend('regression fit data', 'average speed per episode');
title('Penalties: Constant=-0.01, Brake=-0.001, LaneSwitch=-0.000001');

%%
brakeCount = readtable('brakeCount.txt');
figure()
plot(brakeCount.Var1, brakeCount.Var2, 'b');
hold on; 
f=fit(brakeCount.Var1, brakeCount.Var2, 'poly3');
p = plot(f); 
p.LineWidth = 2; 
hold off; 
xlabel('Episodes');
ylabel('Hard Braking Count')
legend('regression fit data', 'hard breaking per episode');
title('Penalties: Constant=-0.01, Brake=-0.001, LaneSwitch=-0.000001');

%%
rewards = readtable('rewards.txt');
figure()
plot(rewards.Var1, rewards.Var2, 'b');
hold on; 
f=fit(rewards.Var1, rewards.Var2, 'poly2');
p = plot(f); 
p.LineWidth = 2; 
hold off; 
xlabel('Episodes');
ylabel('Reward')
legend('regression fit data', 'reward per episode');
title('Penalties: Constant=-0.01, Brake=-0.001, LaneSwitch=-0.000001');