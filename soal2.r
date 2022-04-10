n = 20
p = 0.2
#No 2 A
x = 4
probability = dbinom(x, n, prob = p, log = FALSE)
probability
#No 2 B
hist(rbinom(x, n, prob = p), xlab = "X", ylab = "Frekuensi", main = "Histogram bilangan binomial")
#No 2 C
mean = n * (prob = p)
variance = n * (prob = p) * (1 - (prob = p))
mean
variance 