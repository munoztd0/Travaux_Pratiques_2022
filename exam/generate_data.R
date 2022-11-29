library(data.table)
library(ggplot2)
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

dt <- data.table(patientID = 1:50,group = c(rep("placebo",26),rep("levetiracetam",24)))
dt[group == "placebo",atleatonseizure := sample(c(0,1),.N,replace = T,prob = c(1-0.43,0.43)) ]
dt[group == "levetiracetam",atleatonseizure := sample(c(0,1),.N,replace = T,prob = c(1-0.16,0.16)) ]
dt[group == "placebo",SIC := rnorm(.N,70,17) ]
dt[group == "levetiracetam",SIC := rf(.N,100,20)*52 ]

fwrite(dt,file = "exam_data.csv",sep = ";")




dt %>%
  ggplot(aes(group,SIC))+
  geom_boxplot()

dt %>%
  ggplot(aes(group,fill = as.factor(atleatonseizure)))+
  geom_bar()


dt %>%
  ggplot(aes(SIC))+
  geom_histogram()+
  facet_wrap(~group)


p <- (0.1 + 0.35)/2
p1 <- 0.35
p2 <- 0.1

2*p*(1-p)*7.84/((p1-p2)^2)


chisq.test(dt$atleatonseizure,dt$group)

t.test(SIC~group,data = dt)





