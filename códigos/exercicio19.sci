//Exercícios 13 e 19 - Capítulo 4.5 Poole
A = [9 4 8; 4 15 -4;8 -4 9]
x0 = [1;1;1]
k=5

//Método da Potência Tradicional
x0 = x0/max(abs(x0))
x1 = A*x0
for i=2:k
    modulo_de_lambda = max(abs(x1))
    x1 = x1/max(abs(x1))
    x1 = A*x1
end
disp("|lambda| - Método potência Tradicional:")
disp(modulo_de_lambda)

//Iteração de Rayleigh
x0 = [1;1;1]
xk = x0/norm(x0)
for i=1:k
    lambda = (A*xk)'*xk
    xk = A*xk
    xk = xk/norm(xk)
end
disp("lambda - Método potência - Rayleigh:")
disp(lambda)
