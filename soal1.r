#1a
p = 0.20
n = 3
dgeom(x = n, prob = p)
# 1b
mean(rgeom(n = 10000, prob = p) == 3)
#1c
#hasil dari a dan b tidak terpaut jauh , nilai ditentukan variable x
#1d
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
#1e
#nilai rataan
miu = 1/peluang
paste ("Nilai rataan adalah ",miu)
#nilai Varian
nil_var = (1-p) / p^2
paste ("Nilai Varian adalah ",nil_var)