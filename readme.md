| NRP        | NAMA                       |
| ---------- | -------------------------- |
| 5025201140 | Ezekiel Mashal Wicaksono |

## Nomor 1
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.
### A
```r
p = 0.20
n = 3
dgeom(x = n, prob = p)
```
Menggunakan fungsi dgeom untuk menghitung peluang distribusi geometrik

### B
```r
mean(rgeom(n = 10000, prob = p) == 3)
```
Untuk menghitung dengan data yang random bisa menggunakan fungsi rgeom lalu hitung meannya dengan fungsi mean()

### C
hasil dari a dan b tidak terpaut jauh , nilai ditentukan variable x
### D 
```r
data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = p)) %>%
  mutate(Failures = ifelse(x == n, n, "other")) %>%
ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Histogram Distribusi Gemoetrik dengan peluang X = 3 akan gagal sebelum yang pertama sukses",
       subtitle = "Geometric(.2)",
       x = "Gagal sebelum sukses pertama (x)",
       y = "Peluang") 
```
### E
```r
miu = 1/peluang
paste ("Nilai rataan adalah ",miu)
nil_var = (1-p) / p^2
paste ("Nilai Varian adalah ",nil_var)
```
Menggunakan rumus biasa untuk menghasilkan mean dan varian

## Nomor 2
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
### A
Peluang terdapat 4 pasien yang sembuh.
```r
n = 20
p = 0.2
x = 4
probability = dbinom(x, n, prob = p, log = FALSE)
probability
```
Menggunakan fungsi dbinom untuk menghitung peluang distribusi binomial 

### B
```
hist(rbinom(x, n, prob = p), xlab = "X", ylab = "Frekuensi", main = "Histogram bilangan binomial")
```
### C
Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial.
```r
mean = n * (prob = p)
variance = n * (prob = p) * (1 - (prob = p))
mean
variance 
```
Menggunakan rumus biasa untuk menghasilkan mean dan varian

## Nomor 3
Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

### A
Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
```r
bayilhr = 6
rata2_bayilhr = 4.5
dpois(bayilhr, rata2_bayilhr)
```
Menggunakan fungsi dpois untuk menghitung peluang distribusi poisson

### B
```r
n = 365
rata2_bayilhr = 4.5
set.seed(2)
babies <- data.frame('data' = rpois(n, rata2_bayilhr))

babies %>% ggplot() +
  geom_histogram(aes(x = data, y = stat(count / sum(count)), fill = data == 6), binwidth = 1, color = 'black',) +
  scale_fill_manual(values = c("#6BCB77", "#FF6B6B")) +
  scale_x_continuous(breaks = 0:10) +
  labs(x = 'Jmlah kelahiran per periode', y = 'Proporsi', title = 'simulasi kelahiran dalam satu tahun (n = 365)') +
  theme_bw()
```
### C
dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan <br>
Poin a didapatkan nilai 0.1281201 dan poin b didapatkan nilai 0.1150685 <br>
Poin a merupakan hasil perhitungan eksak sedangkan poin b melalui proses simulasi. Ternyata hasil keduanya tidak berbeda jauh

### D 
```r
bayilhr = 6
l <- bayilhr

nilai_rataan<- l
nilai_rataan
nilai_varian <- l
nilai_varian
```
Menggunakan rumus biasa untuk menghasilkan mean dan varian

## Nomor 4
Diketahui nilai x = 2 dan v = 10. Tentukan:

### A
Fungsi Probabilitas dari Distribusi Chi-Square
```r
x=2
v=10
dchisq(x, v, ncp = 0, log = FALSE)
```
Menggunakan fungsi dchisq untuk menghitung peluang distribusi Chi-Square

### B
```r
n=100
set.seed(1)
hist(rchisq(n,v),
     main="Histogram poison kelahiran bayi",
     col="Hijau",)
```
### C
```r
miu = v
miu
varians = 2*v
varians
``` 
Menggunakan rumus biasa untuk menghasilkan mean dan varian

## Nomor 5
Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

### A
Fungsi Probabilitas dari Distribusi Exponensial
```r
lamda = 3
dexp(x = seq(1, 10, by = 0.1) , rate = lamda)
```
Menggunakan fungsi dexp untuk menghitung peluang distribusi exponensial. nilai x adalah nilai 1 - 10 dengan interval 0.1

### B
```r
set.seed(1)
hist(rexp(n = 10, rate = lamda))
set.seed(1)
hist(rexp(n = 100, rate = lamda))
set.seed(1)
hist(rexp(n = 1000, rate = lamda))
set.seed(1)
hist(rexp(n = 10000, rate = lamda))
```
### C
```r
n = 100
mean(rexp(n = n, rate = lamda))
var(rexp(n = n, rate = lamda))
```
Menggunakan fungsi mean untuk menghitung rata-rata dan fungsi var untuk menghitung varian

## Soal 6 Distribusi Normal
### 6.a. Mencari peluang distribusi normal dengan data acak dengan syarat P(X1 ≤ x ≤ X2) dengan menggunakan `rnorm`
```r
 norm_dist_i <- rnorm(N,Mean,Std_dev_i)
  x1 <- floor(mean(norm_dist_i))
  x2 <- ceiling(mean(norm_dist_i))
  z_score <- ((norm_dist_i - mean(norm_dist_i))/ (sd(norm_dist_i)))
  plot(z_score, type = 'p', col='blue') 
```
#### 6.b. Membuat histogram distribusi chi-square
```r
hist(norm_dist_i,50,main = "5025201140_Ezekiel Mashal Wicaksono_Probstat_D_DNhistogram ")
```
#### 6.c. Nilai varian dapat dicari dengan `σ² = var(x)`
```r
  std_dev_ii <- sd(norm_dist_i)
  variance <- std_dev_ii * std_dev_ii
  variance 
```