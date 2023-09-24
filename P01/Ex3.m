N= 1e5; %numero de experiencias
p = 0.5; %probabilidade de cara
k = 15; %numero de caras
n = 15; %numero de lancamentos
lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)==k;
probSimulacao= sum(sucessos)/N;
disp(probSimulacao*100);