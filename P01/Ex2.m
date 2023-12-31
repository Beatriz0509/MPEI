% 2a) %

%% Co´digo 1
% Gerar uma matriz com 3 linhas e 10000 colunas de numeros aleatorios
% entre 0.0 e 1.0 (ou seja, cada coluna representa uma experiencia):
experiencias = rand(3,10000);
% Gerar uma matriz com 3 linhas e 10000 colunas com o valor 1 se o valor
% da matriz anterior for superior a 0.5 (ou seja, se saiu cara) ou com o
% valor 0 caso contrario (ou seja, saiu coroa):
lancamentos = experiencias > 0.5; % 0.5 corresponde a 1 - prob. de caras
% Gerar um vetor linha com 10000 elementos com a soma dos valores de cada
% coluna da matriz anterior (ou seja, o numero de caras de cada experiencia):
resultados= sum(lancamentos);
% Gerar um vetor linha com 10000 elementos com o valor 1 quando o valor do
% vetor anterior e 2 (ou seja, se a experiencia deu 2 caras) ou 0 quando e´
% diferente de 2:
sucessos= resultados==2;
% Determinar o resultado final dividindo o numero de experiencias com 2
% caras pelo nu´mero total de experiencias:
probSimulacao= sum(sucessos)/10000;
disp(['A percentagem de sair cara em 2 dos 3 lançamentos é ',num2str(probSimulacao*100),'%']);

%% Codigo 1 - segunda versao
N= 1e5; %numero de experiencias
p = 0.5; %probabilidade de cara
k = 2; %numero de caras
n = 3; %numero de lancamentos
lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)==k;
disp(['A percentagem de sair cara em 2 dos 3 lançamentos é ',num2str(probSimulacao*100),'%']);




