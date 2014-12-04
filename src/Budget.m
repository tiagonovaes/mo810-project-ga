function X=Budget(lista, herois, viloes)

% Confirmar o se o PG medio eh a media dos atributos
RatioPG = mean(Atributos(lista, herois))/mean(Atributos(lista, viloes));
RatioPop = Popularidade(lista, herois)/Popularidade(lista, viloes);

VTCost = 0;
for v = 1:length(viloes)
  pgm = mean(Atributos(lista, viloes(v)));
  pop = Popularidade(lista, viloes(v));
  VTCost += pgm * pop;
endfor

Budget1 = RatioPG * RatioPop * VTCost;

X = Budget1;