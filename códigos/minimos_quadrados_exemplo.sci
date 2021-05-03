//Exemplo de regressão linear em dados simulados

//Fixando seeds para reprodutibilidade
rand("seed",0)
grand('setsd',0)

//Geração dos dados
x = 10*rand(100,1) //x é vetor de 100 pontos aleatório uniforme(0,10)
eps = grand(100,1,'nor',0,2)
y = 7*x+2+eps //y = 7x+2+e, onde eps é vetor de 100 pts ~ Normal(0,2)

//Scatter Plot dos dados
scatter(x,y)

//Estimação dos coeficientes:
X = [ones(100,1) x]
alpha = X'*X\X'*y
disp("Coeficientes Reais:",[2;7])
disp("Coeficientes Estimados:",alpha)

//Plotando a reta estimada
y_pred = X*alpha
plot(x,y_pred,'red')
