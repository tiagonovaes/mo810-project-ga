function X=Atributos(filename, id=0)

% Le um arquivo CSV
X = dlmread(filename,";");
% Busca os 6 atributos de cada
X = X(2:size(X,1),4:9);

% Calcula atributos individuais ou do time de acordo com o 'id'
if (id > 0)
  X = mean(X(id,:), 1);
endif