function Ha = hamming(P, NumPop)

Objetivo= [0 1 0 0 1 0 0 1 0 0 1 0];
%vetor que armazena as distancia de hamming
for i = 1:NumPop
    T = Objetivo ~= P(i,:);
    H(i) = sum(T);
end

Ha = H;