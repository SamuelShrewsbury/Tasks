setwd('C:\\Users\\13048\\Desktop\\Evolution\\Tasks\\Task_08')

#Questions 1 through 3
library(phytools)
trees<-list()
births<-vector()
Fractions<-vector()
random<-vector()
random2<-vector()
treelist<-vector()
for (i in 1:100){
  births[i]<-runif(1)
  Fractions[i]<-runif(1)
  trees[[i]]<-pbtree(n=100,b=births[i],d=births[i]*Fractions[i])
  random[[i]]<-births[i]
  random2[[i]]<-(Fractions[i])
  treelist[[i]]<-mean(trees[[i]]$edge.length)
}
plot(trees[[i]])

#Question 4
div_rate<-sapply(trees,function(x) length(x$tip.label))
log_tips<-log(sapply(trees,function(x) length(x$tip.label)))
library(ggplot2)
ggplot(data = data.frame(div_rate,log_tips),aes(x=log_tips,y=div_rate))+
  geom_point()+
  geom_line()+
  xlab("Log number of tips")+
  ylab("Net diversification")+
  ggtitle("Net diversification vs Log number of tips")
#Net diversification increases as the log number of tips increase as seen by the exponenetial line.

#Question 5
speciation_rate<-sapply(births,function(x)x)
avg_branchlength<-sapply(trees,function(x) mean(x$edge.length,na.rm=TRUE))
ggplot(data = data.frame(speciation_rate,avg_branchlength),aes(x=speciation_rate,y=avg_branchlength))+
         geom_point()+
         xlab("Speciation rate")+
         ylab("Average branch length")+
         ggtitle("Speciation rate vs. Average branch length")
#The average branch length decreases as speciation rate moves closer to one.

#Question 6
cor(speciation_rate,avg_branchlength)
#The correlation between speciation rate and average branch length is moderately negative at -0.532.

#Question 7
largest_tree<-trees[[which.max(sapply(trees,length))]]
Tree<-largest_tree
plot(tree)
rates<-vector()
traits<-list()
for(i in 1:100){
  rates[i]<-runif(1)
  traits[[i]]<-fastBM(tree=Tree,sig2=rates[i])
}

#Question 8
mean_traits<-sapply(traits,mean)
cor(mean_traits,rates)
plot(rates,mean_traits,xlan="rates",ylab="mean trait",title("Rate vs Mean Trait"))
#The correlation between mean trait and rates is -0.036 which is a negative weak correlation.
#From the graph, it looks as if the mean trait varies to a larger degree as the rate increases.

#Question 9
var_traits<-sapply(traits,var)
cor(var_traits,rates)
plot(rates,var_traits,xlab="rates",ylab="variation of traits",title("Rate vs Variation of Traits"))
#The correlation between rates and variation of traits is 0.668 which is a strong positive correlation.

#Question 10
cor(traits[[1]],traits[[2]])
traitMat<-cbind(traits[[1]],traits[[4]])
plot(traitMat)
#The correlation is 0.127 which is a weak but positive correlation between the two traits.

#Extra Credit
phylomorphospace(Tree,traitMat,xlab="Trait 1",ylab="Trait 2")

