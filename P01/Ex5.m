disp(estimar_probabilidade(0.5, 15, 6, 1e5)*100);
disp(estimar_probabilidade(0.5, 20, 6, 1e5)*100);
disp(estimar_probabilidade(0.5, 40, 6, 1e5)*100);
disp(estimar_probabilidade(0.5, 100, 6, 1e5)*100);


% Criar gráfico
p = 0.5;

numero_lancamentos = [15, 20, 40, 100];

numeros_caras = 6;

numeros_experiencias = [1e5, 1e5, 1e5, 1e5];

probabilidades = zeros(size(numero_lancamentos));

for i = 1:length(numero_lancamentos)
    probabilidades(i) = estimar_probabilidade(p, numero_lancamentos(i), numeros_caras, numeros_experiencias(i));
end

bar(numero_lancamentos, probabilidades * 100);
xlabel('Número de Lançamentos');
ylabel('Probabilidade (%)');
title('Probabilidades 6 Caras');

function probabilidade = estimar_probabilidade(p, numero_lancamentos, numero_caras, numero_experiencias)
    lancamentos = rand(numero_lancamentos,numero_experiencias) > p;
    sucessos= sum(lancamentos)== numero_caras;
    probabilidade = sum(sucessos)/ numero_experiencias;
end

