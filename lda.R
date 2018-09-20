# LDA
lda.fit = lda(mpg01~cylinders+displacement+horsepower+weight, train)

lda.predict = predict(lda.fit, test)
# lda.predict = predict(lda.txt.fit, Auto.test)

mean(lda.predict$class != test$mpg01)
# mean(lda.predict$class != mpg01.test)
