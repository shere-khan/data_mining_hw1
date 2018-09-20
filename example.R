attach(Auto)
mpg01 = rep(0, length(mpg))
mpg01[mpg > median(mpg)] = 1
Auto = data.frame(Auto, mpg01)
train = (year%%2 == 0)  # if the year is even
test = !train
Auto.train = Auto[train, ]
Auto.test = Auto[test, ]
mpg01.test = mpg01[test]


# mpg01<-ifelse(Auto$mpg>median(Auto$mpg), 1, 0)
# d <- data.frame(Auto, mpg01)

# set.seed(3)
# smp_size <- floor(0.8 * nrow(d))
# train_ind <- sample(seq_len(nrow(d)), size = smp_size)

# train <- d[train_ind, ]
# test <- d[-train_ind, ]
