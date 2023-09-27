function probabilidade = estimar_probabilidade(p, numero_lancamentos, numero_caras, numero_experiencias)
    lancamentos = rand(numero_lancamentos,numero_experiencias) > p;
    sucessos= sum(lancamentos)== numero_caras;
    probabilidade = sum(sucessos)/ numero_experiencias;
end