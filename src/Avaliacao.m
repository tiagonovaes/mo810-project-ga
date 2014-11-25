function F=Avaliacao(P, NumPop)

% Avaliaçao inicial da populaçao
%Calculado a distancia de hamming entre os 

Objetivo= [0 1 0 0 1 0 0 1 0 0 1 0];
%vetor que armazena as distancia de hamming
for i = 1:NumPop
    T = Objetivo ~= P(i,:);
    H(i) = sum(T);
end

%vetor que armazena o fitness
% Ele é dado pela diferença entre 12 e a distancia de hamming
for i = 1:NumPop    
    Fitness(i) = 12-H(i);
end 

F = Fitness;