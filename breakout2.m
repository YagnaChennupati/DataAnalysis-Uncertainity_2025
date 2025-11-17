clear all;
close all;
clc;

%% Discrete Signal Definition
nt=41;
td=linspace(0,2*pi,nt);
fd=sin(td);

%% Reconstructed signal definition (polynomial)
% find coeffiecient
p = polyfit(td,fd,6);
% evaluate the fitted polynomial
t_recon = linspace(min(td),max(td)*1.5,1001);
f_recon = polyval(p,t_recon);

%% Visualisation
figure(1)
plot(td,fd,'or--',Linewidth=2)
hold on
plot(t_recon,f_recon,'-k', Linewidth=2)