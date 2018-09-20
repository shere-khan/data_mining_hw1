library(ISLR)

# mpg01<-ifelse(Auto$mpg>median(Auto$mpg), 1, 0)
# d <- data.frame(Auto, mpg01)

# set.seed(3)
# smp_size <- floor(0.8 * nrow(d))
# train_ind <- sample(seq_len(nrow(d)), size = smp_size)

# train <- d[train_ind, ]
# test <- d[-train_ind, ]

attach(Auto)
mpg01 = rep(0, length(mpg))
mpg01[mpg > median(mpg)] = 1
Auto = data.frame(Auto, mpg01)
train = (year%%2 == 0)  # if the year is even
test = !train
Auto.train = Auto[train, ]
Auto.test = Auto[test, ]
mpg01.test = mpg01[test]

# LDA
lda.fit=lda(mpg01~cylinders+displacement+horsepower+weight, data=Auto, subset=train)
# lda.fit

# lda.predict = predict(lda.fit, test)
lda.predict = predict(lda.fit, Auto.test)
# lda.predict

# table(lda.predict, test$mpg01)
# mean(lda.predict$class != test$mpg01)
mean(lda.predict$class != mpg01.test)

#QDA
qda.fit=qda(mpg01~cylinders+displacement+horsepower+weight, data=Auto, subset=train)
# qda.fit

# qda.predict = predict(qda.fit, test)
qda.predict = predict(qda.fit, Auto.test)
qda.predict

# table(qda.predict, test$mpg01)

# mean(qda.predict$class != test$mpg01)
mean(qda.predict$class != mpg01.test)

# Logistic Regression
# glm.fit=glm(mpg01~cylinders+displacement+horsepower+weight, data=train, family=binomial)
# glm.fit

# glm.predict = predict(glm.fit, newdata=test, type="response")
# glm.predict

# table(glm.predict, test$mpg01)
