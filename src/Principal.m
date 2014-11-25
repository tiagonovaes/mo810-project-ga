clear all;
%-------------------------------------------------------------------------- 
%Questão 1 - Algoritmo genético 
% Codificação Binária
%--------------------------------------------------------------------------

%Numero de individuos da populaçao
NumPop= 8;
NumGenes=12;

%Inicializaçao da Populaçao
P = zeros(NumPop,NumGenes);

for i = 1:NumPop
    for j = 1:NumGenes
        if rand <= 0.5
            P(i,j) = 0;
        else
            P(i,j) = 1;
        end
    end
end

%chama a funçao de avaliaçao
F=Avaliacao(P, NumPop);

%chama a funçao de selecao
NovaP= Selecao(P,F, NumPop,NumGenes);
t= 1;
N=12;
melhorIndividuo = 0;

 while(melhorIndividuo ~= N)
 %while(t <= 180)
     
    retornoReproducao = Reproducao(NovaP, 0.5, NumPop, NumGenes);
    retornoVariacao = Variacao(retornoReproducao, 0.02, NumPop, NumGenes); 
    teste = hamming(retornoVariacao, NumPop);
    retornoAvaliacao = Avaliacao(retornoVariacao,NumPop);
    NovaP= Selecao(retornoVariacao,retornoAvaliacao,NumPop,NumGenes);
    
      

    %Calculo da media do fitness da populacao
    mediaFitness(t)=mean(retornoAvaliacao);
    mediahamming(t)= mean(teste);
    
    melhorIndividuo = max(retornoAvaliacao);
    melhorIndividuo_1(t) = max(retornoAvaliacao);
    hammingMelhorIndividuo(t)=min(teste);
    
      
     t= t+1;
    
end
 
 figure(1); plot(mediahamming, 'r-'); hold on;
    plot(hammingMelhorIndividuo); 
    
    hold on;
    
    figure(2); plot(mediaFitness, 'r--'); hold on;
    plot(melhorIndividuo_1);
 

 
 

    





















