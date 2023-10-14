% Número de experimentos
num_experimentos = 100000;

% Inicializar contadores para cada evento
cont_A = 0;
cont_B = 0;
cont_C = 0;
cont_D = 0;

% Simulação dos lançamentos do dado
for i = 1:num_experimentos
    % Lançamento do dado 2 vezes
    dado1 = randi([1, 6]);
    dado2 = randi([1, 6]);

    % Evento A: A soma dos dois valores é igual a 9
    if dado1 + dado2 == 9
        cont_A = cont_A + 1;
    end

    % Evento B: O segundo valor é par
    if mod(dado2, 2) == 0
        cont_B = cont_B + 1;
    end

    % Evento C: Pelo menos um dos valores é igual a 5
    if dado1 == 5 || dado2 == 5
        cont_C = cont_C + 1;
    end

    % Evento D: Nenhum dos valores é igual a 1
    if dado1 ~= 1 && dado2 ~= 1
        cont_D = cont_D + 1;
    end
end

% Estimar as probabilidades
prob_A = cont_A / num_experimentos;
prob_B = cont_B / num_experimentos;
prob_C = cont_C / num_experimentos;
prob_D = cont_D / num_experimentos;

% Exibir os resultados
fprintf('Probabilidade de A: %.4f\n', prob_A*100);
fprintf('Probabilidade de B: %.4f\n', prob_B*100);
fprintf('Probabilidade de C: %.4f\n', prob_C*100);
fprintf('Probabilidade de D: %.4f\n', prob_D*100);

% Inicializar contadores para cada evento
cont_A_intersecao_B = 0;
cont_C_intersecao_D = 0;

% Simulação dos lançamentos do dado
for i = 1:num_experimentos
    % Lançamento do dado 2 vezes
    dado1 = randi([1, 6]);
    dado2 = randi([1, 6]);

    % Interseção de A e B: Soma de 9 e segundo valor par
    if dado1 + dado2 == 9 && mod(dado2, 2) == 0
        cont_A_intersecao_B = cont_A_intersecao_B + 1;
    end

    % Interseção de C e D: Pelo menos um dos valores é 5 e nenhum é 1
    if (dado1 == 5 || dado2 == 5) && ~(dado1 == 1 || dado2 == 1)
        cont_C_intersecao_D = cont_C_intersecao_D + 1;
    end
end

% Calcular probabilidades
prob_A_intersecao_B = cont_A_intersecao_B / num_experimentos;
prob_C_intersecao_D = cont_C_intersecao_D / num_experimentos;

% Verificar independência
independencia_b = (prob_A_intersecao_B - prob_A * prob_B) < 0.001;
independencia_c = (prob_C_intersecao_D - prob_C * prob_D) < 0.001;


% Exibir os resultados
fprintf('Probabilidade de A interseção B: %.4f\n', prob_A_intersecao_B);
fprintf('Os eventos A e B são independentes? %d\n', independencia_b);
fprintf('Probabilidade de C interseção D: %.4f\n', prob_C_intersecao_D);
fprintf('Os eventos C e D são independentes? %d\n', independencia_c);
