% criar matriz %
A = [1 2 3; 4 5 6];

% vetor linha %
v = [ 1 2 3];

% vetor coluna %
v = [1;2;3];

% trocar de vetor linha para vetor coluna (') %
v = [1 2 3]';

% valor do elemento de uma linha i e coluna j A(i,j) %
A(1,3); 

% alterar valor de um elemtento A(i,j) %
A(1,3) = 7;

% extrair linha de uma matriz %
v = A(2,[1 2 3]); % extrair os indices 1, 2 e 3 da segunda linha %

% adicionar uma linha a matriz %
A = [A; [7 8 9]];

% adicionar uma coluna a matriz %
A = [A [7 8 9]];

% gerar sequencia de numeros %
a = 1:10;   % a = [1, 2, 3,..., 10] %

% notaçao geral para sequencias %
Numero_inicial: incremento : Numero_final;

% exemplo %
e = 1:2:10; % e = [1, 3, 5, 7, 9] %

% obter as colunas impares de uma matriz %
 B=A(1:3,1:2:3);

% nao se conhece exactamente o numero de linhas %
 B=A(:,1:2:3);

% obter a primeira linha da matriz %
A(1,:);

% a) Crie um vetor linha com uma sequencia de numeros pares com inıcio em 4 e a terminar no numero 100 %
v1 = 4:2:100 ;

% b) Crie um vetor linha com uma sequencia decrescente de numeros inteiros com inıcio em 5 e a terminar em -5 %
v2 = 5:-1:-5;

% c) Crie um vetor linha com uma sequencia de numeros reais igualmente espacados com 100 elementos pertencentes ao intervalo [0 ... 1] %
v3 = 0:(1/99):1;

% d) % 
B = rand(20, 30);
C= B(10:15,9:12);

% e) %
x = -pi:(pi/15):pi;

% f) %
plot(x, sin(4*pi*x)) % grafico corresponde a funcao sin%
















