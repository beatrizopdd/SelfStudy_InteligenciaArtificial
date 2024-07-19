% vetor linha 
v_linha = [1 3 5 7 9];
elem_a = v_linha(1);
elem_b = v_linha(1, 2);

% transposição de vetor linha para vetor coluna
v_coluna = v_linha.';
elem_c = v_coluna(3, 1);
elem_d = v_coluna(4, 1);

% acesso a blocos 
% vetor(i:f) = vai de i a f contando de 1 em 1
bloco_a = v_linha(1:3);
bloco_b = v_linha(2:4);
bloco_c = v_linha(3:end);

% vetor(i:a:f) = vai i a f contando de a em a
bloco_d = v_linha(1:1:end);
bloco_e = v_linha(1:2:end);
bloco_f = v_linha(end:-1:1);
bloco_g = v_linha(end:-2:1);

% linspace(i, f, q) = q elementos distantes (f-i)/(q-1) um do outro
vetor_a = linspace(1, 10, 2);
vetor_b = linspace(1, 10, 10);
vetor_c = linspace(1, 10, 4);