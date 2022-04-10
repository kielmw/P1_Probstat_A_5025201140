# Poin 3a
bayilhr = 6
rata2_bayilhr = 4.5
dpois(bayilhr, rata2_bayilhr)
# Poin 3b
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

# Poin 3d
bayilhr = 6
l <- bayilhr

nilai_rataan<- l
nilai_rataan
nilai_varian <- l
nilai_varian