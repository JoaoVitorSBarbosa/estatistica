library(ggplot2)

dados<-read.csv("2BDados.csv")

ggplot(dados, aes(x = "", y = fa, fill = Niveis)) +
geom_bar(stat = "identity", color = "white") +
coord_polar("y", start = 0)+
geom_text(
    aes(y = fa/4+ c(0, cumsum(fa)[-length(fa)]), 
            label = c("1","7","9","6","2")), size=10)+
theme(legend.position="none") +
ggtitle("               Niveis de Automação em FA")+
theme_void()