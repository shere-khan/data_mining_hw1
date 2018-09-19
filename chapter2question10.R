library(MASS)
# library(plyr)
# library(dplyr)
# require(lattice)
# require(ggplot2)

# apply(Boston, 2, sd)
# apply(Boston, 2, range)
# summary(Boston)
# mean(Boston$zn)
# cor(Boston)
# pairs(Boston)

# Boston %>%
  # select(rm, zn) %>%
  # filter(rm > 8)

set.seed(1)
x = rnorm(100)
y = 2*x + rnorm(100)

lm.fit = lm(y~x+0)
lm.fit2 = lm(x~y+0)

lm.fit_int = lm(y~x)
lm.fit_int2 = lm(x~y)
