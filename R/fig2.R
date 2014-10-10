library(ggplot2)
data=data.frame(x=rexp(100))
plot=qplot(x, data=data, geom="histogram") 
ggsave(plot,file="../Figs/fig2.pdf")
