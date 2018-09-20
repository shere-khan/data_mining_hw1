# QDA
qda.fit = lda(mpg01~cylinders+displacement+horsepower+weight, train)

qda.predict = predict(qda.fit, test)
# lda.predict = predict(lda.txt.fit, Auto.test)

mean(qda.predict$class != test$mpg01)
# mean(lda.predict$class != mpg01.test)
