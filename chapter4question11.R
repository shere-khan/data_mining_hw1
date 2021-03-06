library(ISLR)

set.seed(93)

mpg01 <- ifelse(Auto$mpg > median(Auto$mpg), 1, 0)
d <- data.frame(Auto[, c(1, 2, 3, 4, 5)], mpg01)

# train_ind <- sample(seq_len(nrow(d)), size = smp_size)
train_ind <- sample(1:nrow(d), size = 0.8 * nrow(d))
test_ind <- setdiff(1:nrow(d), train_ind)

train <- d[train_ind, ]
test <- d[test_ind, ]
