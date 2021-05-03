train = csvRead("diabetes_train.csv");
test = csvRead("diabetes_test.csv");

//Separando X e y nos dados de treino
X = [ones(size(train,1),1) train(:,1:10)]
y = train(:,11)

alpha = X'*X\X'*y
// equivalente a: alpha = inv(X'*X)*X'*y

//Fazendo a previsão nos dados de teste
X_test = [ones(size(test,1),1) test(:,1:10)]
y_test = test(:,11)
y_pred = X_test*alpha

//Medindo performance pelo R^2
RSS = sum((y_test-y_pred)^2)
TSS = sum((y_test-mean(y_test))^2)
disp("R^2=",1-RSS/TSS)
