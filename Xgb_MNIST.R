D <- read.csv('C:\\Users\\Kush\\Dropbox\\digits\\mnist_train.csv',header=FALSE)
y = D[,1]


Dtest <- read.csv('C:\\Users\\Kush\\Dropbox\\digits\\mnist_test.csv',header=FALSE)
ytest = Dtest[,1]



## Xgboost ##
library(xgboost)
X_train = read.csv("C:\\Users\\Kush\\Desktop\\Applied Project\\Layer_5.csv", header = FALSE)
X_test = read.csv("C:\\Users\\Kush\\Desktop\\Applied Project\\Layer_5_test.csv", header = FALSE)

X_train = as.matrix(sapply(X_train, as.numeric))
X_test = as.matrix(sapply(X_test, as.numeric))

xgb.basic.mod1 <- xgboost(data = X_train,label=y,
                          num_class=10,
                          max_depth = 7,
                          subsample = 0.5,
                          nrounds=80,
                          early_stopping_rounds = 3,
                          eta = 0.2,
                          params=list(objective="multi:softmax"))

xgb.basic.pred <- predict(xgb.basic.mod1, X_test)
mean(xgb.basic.pred != ytest)