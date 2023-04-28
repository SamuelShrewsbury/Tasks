setwd('C:\\Users\\13048\\Desktop\\Evolution\\Tasks\\Project')
ttestdata<-read.csv("C:\\Users\\13048\\Documents\\Evolution Files\\R Lizards mean sd list.csv")
mixed<-ttestdata[,3]
sitandwait<-ttestdata[,5]
widelyforaging<-ttestdata[,7]
t.test(mixed,sitandwait)
t.test(mixed,widelyforaging)
t.test(sitandwait,widelyforaging)
