% Parâmetros
n_dardos = 20;   % Número de dardos
m_alvos = 100;   % Número de alvos

% Simulação
num_simulacoes = 10000;  % Número de simulações para estimar a probabilidade

% Inicialize o contador para o número de vezes que nenhum alvo foi atingido mais de uma vez
contador = 0;

for i = 1:num_simulacoes
    % Inicialize um vetor para representar quantas vezes cada alvo foi atingido
    contagem_alvos = zeros(1, m_alvos);
    
    % Simule o lançamento de n dardos
    for j = 1:n_dardos
        % Escolha aleatoriamente um alvo para o dardo
        alvo_atingido = randi(m_alvos);
        
        % Atualize a contagem para o alvo atingido
        contagem_alvos(alvo_atingido) = contagem_alvos(alvo_atingido) + 1;
    end
    
    % Verifique se nenhum alvo foi atingido mais de uma vez
    if all(contagem_alvos <= 1)
        contador = contador + 1;
    end
end

% Calcule a probabilidade
probabilidade = contador / num_simulacoes;

% Exiba o resultado
fprintf('Probabilidade de nenhum alvo ter sido atingido mais de uma vez: %.4f\n', probabilidade*100); % 2.2.a


% Parâmetros
n_dardos = 20;   % Número de dardos
m_alvos = 100;   % Número de alvos

% Simulação
num_simulacoes = 10000;  % Número de simulações para estimar a probabilidade

% Inicialize o contador para o número de vezes que nenhum alvo foi atingido mais de uma vez
contador = 0;

for i = 1:num_simulacoes
    % Inicialize um vetor para representar quantas vezes cada alvo foi atingido
    contagem_alvos = zeros(1, m_alvos);
    
    % Simule o lançamento de n dardos
    for j = 1:n_dardos
        % Escolha aleatoriamente um alvo para o dardo
        alvo_atingido = randi(m_alvos);
        
        % Atualize a contagem para o alvo atingido
        contagem_alvos(alvo_atingido) = contagem_alvos(alvo_atingido) + 1;
    end
    
    % Verifique se pelo menos 1 alvo ter sido atingido 2 ou mais vezes
    if any(contagem_alvos >= 2)
        contador = contador + 1;
    end
end

% Calcule a probabilidade
probabilidade = contador / num_simulacoes;

% Exiba o resultado
fprintf('Probabilidade de pelo menos 1 alvo ter sido atingido 2 ou mais vezes: %.4f\n', probabilidade*100); % 2.2.b


% Parâmetros
m_values = [1000, 100000];
n_values = 10:10:100;
num_simulacoes = 1000;

% Inicialize a figura
figure;

% Loop sobre os valores de m
for i = 1:length(m_values)
    m_alvos = m_values(i);
    
    % Inicialize vetores para armazenar as probabilidades
    probabilidades = zeros(size(n_values));
    
    % Loop sobre os valores de n
    for j = 1:length(n_values)
        n_dardos = n_values(j);
        contador = 0;
        
        % Simule o experimento 'num_simulacoes' vezes
        for k = 1:num_simulacoes
            contagem_alvos = zeros(1, m_alvos);
            
            % Simule o lançamento de n dardos
            for l = 1:n_dardos
                alvo_atingido = randi(m_alvos);
                contagem_alvos(alvo_atingido) = contagem_alvos(alvo_atingido) + 1;
            end
            
            % Verifique se pelo menos um alvo foi atingido mais de uma vez
            if any(contagem_alvos > 1)
                contador = contador + 1;
            end
        end
        
        % Calcule a probabilidade média
        probabilidades(j) = contador / num_simulacoes;
    end
    
    % Subplot
    subplot(length(m_values), 1, i);
    
    % Plote o gráfico
    plot(n_values, probabilidades, '-o', 'LineWidth', 2);
    title(['Probabilidade de pelo menos um alvo atingido mais de uma vez (m = ' num2str(m_alvos) ')']);
    xlabel('Número de Dardos (n)');
    ylabel('Probabilidade');
    grid on;
end

% Ajuste o layout da figura
sgtitle('Comparação da Probabilidade para Diferentes Números de Alvos (m)'); % 2.2.c

% Parâmetros
n_dardos = 100;
m_values = [200, 500, 1000, 2000, 5000, 10000, 20000, 50000, 100000];
num_simulacoes = 1000;

% Inicialize a figura
figure;

% Inicialize vetor para armazenar as probabilidades
probabilidades = zeros(size(m_values));

% Loop sobre os valores de m
for i = 1:length(m_values)
    m_alvos = m_values(i);
    contador = 0;

    % Simule o experimento 'num_simulacoes' vezes
    for k = 1:num_simulacoes
        contagem_alvos = zeros(1, m_alvos);

        % Simule o lançamento de n dardos
        for l = 1:n_dardos
            alvo_atingido = randi(m_alvos);
            contagem_alvos(alvo_atingido) = contagem_alvos(alvo_atingido) + 1;
        end

        % Verifique se pelo menos um alvo foi atingido mais de uma vez
        if any(contagem_alvos > 1)
            contador = contador + 1;
        end
    end

    % Calcule a probabilidade média
    probabilidades(i) = contador / num_simulacoes;
end

% Plote o gráfico
plot(m_values, probabilidades, '-o', 'LineWidth', 2);
title('Probabilidade de pelo menos um alvo atingido mais de uma vez (n = 100)');
xlabel('Número de Alvos (m)');
ylabel('Probabilidade');
grid on;

