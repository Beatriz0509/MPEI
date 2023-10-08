% estimar_probabilidade(p, numero_lancamentos, numero_caras, numero_experiencias)

sair_pelo_menos_1_rapaz = 1 - estimar_probabilidade(0.5, 2, 0, 1e5); % ex1_a
disp(num2str(sair_pelo_menos_1_rapaz*100))

sair_pelo_menos_1_rapaz_(1) = nchoosek(2, 0)*0.5^0*(1-0.5)^(2-0); % ex1_b
disp(num2str(sair_pelo_menos_1_rapaz(1)*100))

ex1_c_simulada = estimar_probabilidade(0.5, 3, 1, 1e5); % ex1_c
disp(num2str(ex1_c_simulada*100))

ex1_c = calcularProbabilidadeTeorica(0.5,1,3); % ex1_c
disp(num2str(ex1_c*100))

ex1_d_simulada = estimar_probabilidade(0.5, 2, 1, 1e5); % ex1_d
disp(num2str(ex1_d_simulada*100))


ex1_e_simulada = estimar_probabilidade(0.5, 4, 1, 1e5); % ex1_e
disp(num2str(ex1_e_simulada*100))

ex1_f_simulada = 1 - estimar_probabilidade(0.5, 5, 1, 1e5);
disp(num2str(ex1_f_simulada*100))

