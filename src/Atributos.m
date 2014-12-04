function X=Atributos(lista, id)

% Calcula atributos individuais ou do time de acordo com o 'id'
if (id > 0)
  X = mean(lista(id,:), 1);
else
  X = [0 0 0 0 0 0];
endif