setwd('C:\\Users\\13048\\Desktop\\Evolution\\Tasks\\Task_02')
Data1<-read.csv('htpp://jonsmitchell.com/data/beren.csv',stringsAsFactors=F)
Data1<-read.csv('http://jonsmitchell.com/data/beren.csv',stringsAsFactor=F)
Data2<-read.csv('http://jonsmitchell.com/data/cyrus.csv',stringsAsFactor=F)
write.csv(Data1, 'rawdata.csv', quote=F)
head(Data1)
GlargleBrgle<-Data1
head(GlargleBrgle)
length(Data1)
nrow(Data1)
ncol(Data1)
colnames(Data1)
head(Data1)
Data1[1,]
Data1[2,]
Data1[1:3,]
Data1[1:3,4]
Data1[1:5,1:3]
Feeds<-which(Data1[,9]=='bottle')
berenMilk<-Data1[Feeds,]
head(berenMilk)
Feeds<-which(Data1[,'event']=='bottle')
Feeds<-which(Data1$event=='bottle')
dayID<-apply(Data1,1,function(x) paste(x[1:3],collapse='-'))
dateID<-sapply(dayID,as.Date,format="%Y-%m-%d",origin="2019-04-18")
Data1$age<-dateID-dateID[which(Data1$event=='birth')]
head(Data1)
beren2<-Data1
beren3<-beren2[order(beren2$age),]
write.csv(beren3,'beren_new.csv',quote=F,row.names=FALSE)
Feeds<-which(beren3$event =="bottle")
avgMilk<-mean(beren3$value[Feeds])
avgFeed<-tapply(beren3$value[Feeds],beren3$age[Feeds],mean)
varFeed<-tapply(beren3$value[Feeds],beren3$age[Feeds],var)
totalFeed<-tapply(beren3$value[Feeds],beren3$age[Feeds],sum)
numFeeds<-tapply(beren3$value[Feeds],beren3$age[Feeds],length)
cor(beren3$value[Feeds],beren3$age[Feeds])
cor.test(beren3$value[Feeds],beren3$age[Feeds])
berenCor<-cor.test(beren3$value[Feeds],beren3$age[Feeds])
summary(berenCor)
berenANOVA<-aov(beren3$value[Feeds]~beren3$caregiver[Feeds])
boxplot(beren3$value[Feeds]~beren3$caregiver[Feeds],xlab="who gave the bottle",ylab="amount of milk consumed (oz)")
par(las=1,mar=c(5,5,1,1),mgp=c(2,0.5,0),tck=-0.01)
plot(as.numeric(names(totalFeed)),totalFeed,type="b",pch=16,xlab="age in days",ylab="ounces of milk")
abline(h=mean(totalFeed),lty=2,col='red')
pdf("r02b-totalMilkByDay.pdf",height=4,width=4)
par(las=1,mar=c(5,5,1,1),mgp=c(2,0.5,0),tck=-0.01)
plot(as.numeric(names(totalFeed)),totalFeed,type="b",pch=16,xlab="age in days",ylab="ounces of milk")
abline(h=mean(totalFeed),lty=2,col='red')
dev.off()
source("http://jonsmitchell.com/code/plotFxn02b.R")
head(Data1)
Mass<-which(Data1[,9]=='trait_mass')
berenMass<-Data1[Mass,]
head(berenMass)
Mass<-which(Data1[,'event']=='trait_mass')
head(berenMass)
Data1[1:3]
dayID<-apply(Data1,1,function(x)paste(x[1:3],collapse='-'))
dateID<-sapply(dayID,as.Date,format="%Y-%m-%d",origin="2019-04-18")
head(Data1)
Data1$age<-dateID-dateID[which(Data1$event=='birth')]
head(Data1)
head(berenMass)
beren2<-Data1
beren3<-beren2[order(beren2$age),]
Mass<-which(beren3$event=="trait_mass")
avgMass<-mean(beren3$value[Mass])
avgMass
avgMass<-tapply(beren3$value[Mass],beren3$age[Mass],mean)
avgMass
varMass<-tapply(beren3$value[Mass],beren3$age[Mass],var)
totalMass<-tapply(beren3$value[Mass],beren3$age[Mass],sum)
numMass<-tapply(beren3$value[Mass],beren3$age[Mass],length)
cor(beren3$value[Mass],beren3$age[Mass])
cor.test(beren3$value[Mass],beren3$age[Mass])
berenCor<-cor.test(beren3$value[Mass],beren3$age[Mass])
summary(berenCor)
berenANOVA<-aov(beren3$value[Mass]~beren3$age[Mass])
boxplot(beren3$value[Mass]~beren3$age[Mass],xlab="Age (days)",ylab="mass (kg)")
par(las=1,mar=c(5,5,1,1),mgp=c(2,0.5,0),tck=-0.01)
plot(as.numeric(names(totalMass)),totalMass,type="p",ylim=c(0,20),col="red",pch=16,xlab="Age in Days",ylab="Mass in Kg")
points(cyrus3$value[cMass]/1000~cyrus3$age[cMass],type="p",pch=17,col="blue",xlab="Age in Days",ylab="mass in Kg")
title("Beren and Cyrus Age vs Mass",xlab="Age in Days",ylab="Mass in Kg")
legend(1100, 5.5, legend=c("Beren", "Cyrus"),
       col=c("red", "blue"), lty=1:1, cex=0.8,
       title="Kids", text.font=4, bg="orange")
?col
?legend
abline(h=mean(totalMass),lty=2,col="red")
head(Data2)
Mass<-which(Data2[,9]=='trait_mass')
cyrusMass<-Data2[Mass,]
head(cyrusMass)
Mass<-which(Data2[,'event']=="trait_mass")
dayID<-apply(Data2,1,function(x)paste(x[1:3],collapse='-'))
dateID<-sapply(dayID,as.Date,format="%Y-%m-%d",origin="2022-04-12")
head(Data2)
Data2$age<-dateID-dateID[which(Data2$event=='birth')]
head(Data2)
head(cyrusMass)
head(Data2)
cyrus2<-Data2
cyrus3<-cyrus2[order(cyrus2$age),]
write.csv(cyrus3,'cyrus_new.csv',quote=F,row.names=FALSE)
cMass<-which(cyrus3$event=="trait_mass")
avgcMass<-mean(cyrus3$value[cMass])
avgcMass<-tapply(cyrus3$value[cMass],cyrus3$age[cMass],mean)
varcMass<-tapply(cyrus3$value[cMass],cyrus3$age[cMass],var)
totalcMass<-tapply(cyrus3$value[cMass],cyrus3$age[cMass],sum)
numcMass<-tapply(cyrus3$value[cMass],cyrus3$age[cMass],length)
cor(cyrus3$value[cMass],cyrus3$age[cMass])
cor.test(cyrus3$value[cMass],cyrus3$age[cMass])
cyrusCor<-cor.test(cyrus3$value[cMass],cyrus3$age[cMass])
summary(cyrusCor)
cyrusANOVA<-aov(cyrus3$value[Mass]~cyrus3$age[Mass])
boxplot(cyrus3$value[Mass]~cyrus3$age[Mass],xlab="Age (days)",ylab="mass(g)")
plot(as.numeric(names(totalMass)),totalMass,type="b",pch=16,xlab="age in days",ylab="mass in grams")
head(cyrus3)
par(las=1,mar=c(5,5,1,1),mgp=c(2,0.5,0),tck=-0.01)
title("Cyrus Age vs Mass",xlab="age in days",ylab="mass in grams")
abline(h=mean(totalMass),lty=2,col='blue')
plot(as.numeric(names(totalMass)),totalMass,type="b",pch=16,xlab="age in days",ylab="mass (g)")
abline(h=mean(totalMass),lty=2,col='blue')

