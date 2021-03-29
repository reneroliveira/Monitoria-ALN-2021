disp("Exercício 1 - Item A")
    A = [10 -1 0;-1 10 -2;0 -2 10]
    b = [9;7;6]
    x0 = [0;0;0]
    
    L=tril(A,-1);D=diag(diag(A));U=triu(A,1);
    
    invD = diag(1./diag(D))
    MJ = -invD*(L+U)
    cj = invD*b
    disp("||MJ||_inf = ",norm(MJ,%inf))
    
    x1 = MJ*x0+cj
    x2 = MJ*x1+cj
    disp("x2=",x2)

disp("Exercício 1 - Item B")
    A = [4 1 -1;-1 3 1;2 2 5]
    b = [5;-4;1]
    x0 = [0;0;0]
    
    L=tril(A,-1);D=diag(diag(A));U=triu(A,1);
    
    invD = diag(1./diag(D))
    MJ = -invD*(L+U)
    cj = invD*b
    disp("||MJ||_inf = ",norm(MJ,%inf))
    
    x1 = MJ*x0+cj
    x2 = MJ*x1+cj
    disp("x2=",x2)
    
disp("Exercício 2 - Item A")
    A = [10 -1 0;-1 10 -2;0 -2 10]
    b = [9;7;6]
    x0 = [0;0;0]
    
    L=tril(A,-1);D=diag(diag(A));U=triu(A,1);
    R = L+D
    MG = -inv(R)*U
    disp("||MG||_inf = ",norm(MG,%inf))
    x1 = R\(-U*x0+b)
    x2 = R\(-U*x1+b)
    disp(x2)
    
disp("Exercício 2 - Item B")
    A = [4 1 -1;-1 3 1;2 2 5]
    b = [5;-4;1]
    x0 = [0;0;0]
    
    L=tril(A,-1);D=diag(diag(A));U=triu(A,1);
    R = L+D
    MG = -inv(R)*U
    disp("||MG||_inf = ",norm(MG,%inf))
    x1 = R\(-U*x0+b)
    x2 = R\(-U*x1+b)
    disp(x2)

disp("Exercício 3 - Item A")
    A=[2 -1 1;2 2 2;-1 -1 2]
    L=tril(A,-1);D=diag(diag(A));U=triu(A,1);
    invD = diag(1./diag(D))
    MJ = -invD*(L+U)
    disp("rho(MJ)=",max(abs(spec(MJ))))
    disp("||MJ||_inf = ",norm(MJ,%inf))
    
disp("Exercício 3 - Item B")
    MG = -inv(L+D)*U
    disp("rho(MG)=",max(abs(spec(MG))))
    disp("||MG||_inf = ",norm(MG,%inf))
