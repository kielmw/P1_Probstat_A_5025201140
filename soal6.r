# Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8.
  N <- 100
  Mean <- 50
  Std_dev_i <- 8
  
# Soal 6A: Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot
#          data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
  norm_dist_i <- rnorm(N,Mean,Std_dev_i)
  x1 <- floor(mean(norm_dist_i))
  x2 <- ceiling(mean(norm_dist_i))
  z_score <- ((norm_dist_i - mean(norm_dist_i))/ (sd(norm_dist_i)))
  plot(z_score, type = 'p', col='blue') 

# Soal 6B: Generate Histogram dari Distribusi Normal dengan breaks 50
  hist(norm_dist_i,50,main = "5025201140_Ezekiel Mashal Wicaksono_Probstat_D_DNhistogram ")

# Soal 6C: Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.
  std_dev_ii <- sd(norm_dist_i)
  variance <- std_dev_ii * std_dev_ii
  variance 