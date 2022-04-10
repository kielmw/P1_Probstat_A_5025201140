#4
x=2
v=10
dchisq(x, v, ncp = 0, log = FALSE)
#B
n=100
set.seed(1)
hist(rchisq(n,v),
     main="Histogram poison kelahiran bayi",
     col="Hijau",)
#C
miu = v
miu
varians = 2*v
varians