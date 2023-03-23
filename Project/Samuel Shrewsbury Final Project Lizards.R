setwd("C:\\Users\\13048\\Desktop\\Evolution\\Tasks\\Project")
Lizarddata<-read.csv("C:\\Users\\13048\\Desktop\\Evolution\\Tasks\\Project\\lizardsR.csv")
head(Lizarddata)
length(Lizarddata)
nrow(Lizarddata)
ncol(Lizarddata)
colnames(Lizarddata)
Lizarddata[1,]
Lizarddata[1:3,]
wait<-which(Lizarddata[,4]=='sit and wait')
sitandwait<-Lizarddata[wait,]
head(sitandwait)
forage<-which(Lizarddata[,4]=='widely foraging')
widelyforaging<-Lizarddata[forage,]
head(widelyforaging)
both<-which(Lizarddata[,4]=='mixed')
mixed<-Lizarddata[both,]
head(mixed)
boxplot(Lizarddata[,3]~Lizarddata[,4],xlab="Foraging Method",ylab="Offspring Mass (g)")
ANOVA <- aov(Mass~Forage.mode, data=Lizarddata)
summary(ANOVA)
#Hypothesis-The widely foraging lizards will have a greater offspring mass than the other two foraging types.