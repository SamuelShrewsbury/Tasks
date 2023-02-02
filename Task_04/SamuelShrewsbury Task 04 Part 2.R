setwd('C:\\Users\\13048\\Desktop\\Evolution\\Tasks\\Task_04')
results<-read.csv("http://jonsmitchell.com/data/biol112labresults.csv",stringsAsFactors=F)
counts<-results[,c("yellow","red","green","blue","black","tan")]
backgrounds<-c("White","Red","Yellow","Green","Blue","Black")
backgroundCol<-c("white","#d53e4f","#fee08b","#abdda4","#3288bd","black")
calcChi(counts[1,])
