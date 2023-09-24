disp(estimar_probabilidade(0.5, 15, 6, 1e5)*100);
disp(estimar_probabilidade(0.5, 20, 6, 1e5)*100);
disp(estimar_probabilidade(0.5, 40, 6, 1e5)*100);
disp(estimar_probabilidade(0.5, 100, 6, 1e5)*100);


% Crie os gráficos usando stem
% Probabilidade de cara
p = 0.5;

% Números de lançamentos para os quais você deseja calcular as probabilidades
numero_lancamentos = [15, 20, 40, 100];

% Números de caras desejadas
numeros_caras = 6;

% Números de experiências
numeros_experiencias = [1e5, 1e5, 1e5, 1e5];

% Inicialize um vetor para armazenar as probabilidades
probabilidades = zeros(size(numero_lancamentos));

% Calcule as probabilidades para cada número de lançamentos
for i = 1:length(numero_lancamentos)
    probabilidades(i) = estimar_probabilidade(p, numero_lancamentos(i), numeros_caras, numeros_experiencias(i));
end

% Crie um único gráfico de barras empilhadas
bar(numero_lancamentos, probabilidades * 100);
xlabel('Número de Lançamentos');
ylabel('Probabilidade (%)');
title('Probabilidades 6 Caras');

function probabilidade = estimar_probabilidade(p, numero_lancamentos, numero_caras, numero_experiencias)
    lancamentos = rand(numero_lancamentos,numero_experiencias) > p;
    sucessos= sum(lancamentos)== numero_caras;
    probabilidade = sum(sucessos)/ numero_experiencias;
end

