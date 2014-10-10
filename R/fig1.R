############## Begin R Script ##############
library(ggplot2)
data=data.frame(x=runif(100))
plot=qplot(x, data=data, geom="histogram")
ggsave(plot,file="../Figs/fig1.pdf")
############## End R Script ##############
