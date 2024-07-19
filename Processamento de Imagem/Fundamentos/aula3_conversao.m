% DOUBLE PARA UINT8
f = [-0.5, 0.5; 0.75, 1.5];
%{ 
se entrada < 0, saida = 0; 
se entrada > 1, saida = 1;
caso contrário, saida = round(entrada * 255).
%}
g = im2uint8(f); % [0, 128; 191, 255]

% UINT8 PARA DOUBLE
h = uint8([25, 50; 128, 200]);
% saida = entrada / 255
i = im2double(h); % [0.0980, 0,1961; 0.4706, 0.7843]

% UINT16 PARA DOUBLE
j = uint16([25, 50; 128, 200]);
% saida = entrada / 65535
k = im2double(j); % [0.0003, 0.0007; 0.0020, 0.0031]

%{
FUNÇÃO DA TOOLBOX DE PROCESSAMENTO DE IMAGEM
imagem para double no intervalo [0, 1] onde:
0 = preto;
1 = branco;
%}
l = mat2gray(f);
m = mat2gray(h);
n = mat2gray(j);
