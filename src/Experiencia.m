function X=Experiencia(filename)

% Le um arquivo CSV
L = dlmread(filename, ";");
% Busca a lista de experiencia
L = L(2:size(L,1), :);

% Cria matriz de adjacencias
X = zeros(size(L,1), size(L,1));
for i = 1:size(L,1)
  X(L(i,1),L(i,2)) = L(i,3);
endfor