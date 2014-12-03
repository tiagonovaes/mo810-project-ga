function X=Viabilidade(herois, viloes)

% Retorna 1 caso o time de herois seja mais forte que o de viloes
X = sum(herois > viloes) == size(herois, 2);