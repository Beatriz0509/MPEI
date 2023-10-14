% Defina os valores de X e suas probabilidades
valores_X_1 = [90,9,1];
probabilidades_1 = [90/100, 9/100,1/100];

% Defina os valores de X e suas probabilidades
valores_X = [5,50,100];
probabilidades = [90/100, 9/100,1/100];

% Crie o gráfico da PMF
subplot(2, 1, 1); % Crie um subplot (2 linhas, 1 coluna) e selecione o primeiro
% Crie o gráfico da PMF
bar(valores_X, probabilidades);
xlabel('Valores de X (Valor da nota)');
ylabel('Probabilidade');
title('Função Massa de Probabilidade de X ');
ylim([0, 1]);
grid on;

% Calcule a função de distribuição acumulada (CDF)
cdf = cumsum(probabilidades);

% Crie o gráfico da CDF usando stairs
subplot(2, 1, 2); % Selecione o segundo subplot
stairs(valores_X, cdf);
xlabel('Valores de X (Valor da nota)');
ylabel('Probabilidade Acumulada');
title('Função de Distribuição Acumulada de X');
ylim([0, 1.5]);
grid on;





