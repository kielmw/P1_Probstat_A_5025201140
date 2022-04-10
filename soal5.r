# a
lamda = 3
dexp(x = seq(1, 10, by = 0.1) , rate = lamda)
# b
set.seed(1)
hist(rexp(n = 10, rate = lamda))
set.seed(1)
hist(rexp(n = 100, rate = lamda))
set.seed(1)
hist(rexp(n = 1000, rate = lamda))
set.seed(1)
hist(rexp(n = 10000, rate = lamda))
# c
n = 100
mean(rexp(n = n, rate = lamda))
var(rexp(n = n, rate = lamda))