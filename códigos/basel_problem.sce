function [n] = basel(eps)
    // O problema de Basel afirm que o somatório de n=1 à infinito de 1/n^2
    // converge para (pi^2)/6 ... Este código retorna quantos termos precisam
    // ser somados para atingir uma precisão epsilon dada de entrada
	n = 1
    s = 1/n^2
    limit = (%pi^2)/6
	while abs(limit-s) > eps
        n = n + 1
        s = s +1/n^2
    end
    
endfunction

