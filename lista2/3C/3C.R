library(ggplot2)

dados<-read.csv("3CDados.csv")

ggplot(dados, aes(y = dfa, x = Carbono)) +
  geom_bar(stat = "identity")