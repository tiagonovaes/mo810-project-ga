function X=ListaAtributos(filename)

% Le um arquivo CSV e retorna lista de atributos
X = dlmread(filename,";");
X = X(2:size(X,1),4:10);