# Logistic Regression
glm.fit=glm(mpg01~cylinders+displacement+horsepower+weight, data=train, family=binomial)

glm.probs = predict(glm.fit, newdata=test, type="response")
glm.pred = rep(0, length(glm.probs))
glm.pred[glm.probs > 0.5] = 1

mean(glm.pred != test$mpg01)
