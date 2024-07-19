%{ 
- uma imagem é representada por uma matriz com M linhas e N colunas
- a origem da imagem é dada pelas coordenadas (r, c) = (1, 1), onde: 
  r pertence a [1, M] e c pertence a [1, N]
- cada f(r, c) é um elemento da imagem ou picture element ou pixel
- uma matrix 1xN é um vetor linha 
- uma matrix Mx1 é um vetor coluna
- uma matriz 1x1 é um escalar
%}

% array 1X3 = [altura, largura, 3]
imagem = imread('img\cachorro.jpg');

% o 3 existe pois a imagem é RGBA = vermelho, verde, azul e alfa 
%[r, c, tres] = size(imagem);
r = size(imagem, 1);
c = size(imagem, 2);
tres = size(imagem, 3);

% informações adicionais sobre o array imagem impressas na Command Window
whos imagem;

% abre a imagem
%imshow(imagem);

% abre a imagem e traz ferramentas como régua e inspetor de pixels
%imtool(imagem);

imwrite(imagem, "img\novo_cachorro.tif");
%imshow("img\novo_cachorro.tif");

% informações da imagem que podem ser acessadas futuramente
informacao = imfinfo("img\cachorro.jpg");
imfinfo("img\novo_cachorro.tif")

bytes = informacao.Width * informacao.Height * informacao.BitDepth / 8;
bytes_comprimidos = informacao.FileSize;
compressao_ratio = bytes / bytes_comprimidos; 
