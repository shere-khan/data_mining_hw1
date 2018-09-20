
mpg01 <- ifelse(Auto$mpg > median(Auto$mpg), 1, 0)
d <- data.frame(Auto[, c(1, 2, 3, 4, 5)], mpg01)

# train_ind <- sample(seq_len(nrow(d)), size = smp_size)
train_ind <- sample(1:nrow(d), size = 0.8 * nrow(d))
test_ind <- setdiff(1:nrow(d), train_ind)

X_train <- d[train_ind, -6]
Y_train <- d[train_ind, "mpg01"]

X_test <- d[test_ind, -6]
Y_test <- d[test_ind, "mpg01"]

knn.pred = knn(X_train, X_test, Y_train, k = 10)
mean(knn.pred != test$mpg01)