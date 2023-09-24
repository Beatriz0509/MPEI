% 7.a)
prob1 = nchoosek(5, 3)*0.3^3*(1-0.3)^(5-3); % a probabilidade de 3 pec¸as da amostra serem defeituosas
disp(prob1*100);

% 7.b) 
p = 0.3; 
n = 5;   
num_experiencias = 1e5;
num_caras_maximo = 2;
prob2 = 1 - estimar_probabilidade(p, n, num_caras_maximo, num_experiencias);
disp(prob2*100);

function probabilidade = estimar_probabilidade(p, numero_lancamentos, numero_caras, numero_experiencias)
    lancamentos = rand(numero_lancamentos,numero_experiencias) > p;
    sucessos= sum(lancamentos)== numero_caras;
    probabilidade = sum(sucessos)/ numero_experiencias;
end
