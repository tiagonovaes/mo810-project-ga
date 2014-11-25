function R=Variacao(NovaP, pm, NumPop, NumGenes)

for i=1:NumPop
    for j=1:NumGenes
        sort = rand;
        if (sort <= pm)
        	NovaP(i,j) = not(NovaP(i,j));
        end
    end
end

R = NovaP;