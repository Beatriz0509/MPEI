sair_pelo_menos_6_caras = 1 - estimar_probabilidade(0.5, 15, 5, 1e5);


disp(['A probabilidade de obter pelo menos 6 caras em 15 lancamentos é ', num2str((sair_pelo_menos_6_caras)*100), '%' ])

function probabilidade = estimar_probabilidade(p, numero_lancamentos, numero_caras, numero_experiencias)
    lancamentos = rand(numero_lancamentos,numero_experiencias) > p;
    sucessos= sum(lancamentos)== numero_caras;
    probabilidade = sum(sucessos)/ numero_experiencias;
end


