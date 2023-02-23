setwd("C:\\Users\\13048\\Desktop\\Evolution\\Tasks\\Project")
Armordata<-read.csv("C:\\Users\\13048\\Desktop\\Evolution\\Tasks\\Project\\Lizard Armor Data.csv")
Environmentdata<-read.csv("C:\\Users\\13048\\Desktop\\Evolution\\Tasks\\Project\\Lizard Environment Data.csv")
Riskdata<-read.csv("C:\\Users\\13048\\Desktop\\Evolution\\Tasks\\Project\\Lizard Predation Risk Data.csv")
Overlapdata<-read.csv("C:\\Users\\13048\\Desktop\\Evolution\\Tasks\\Project\\Lizard Predator Overlap Data.csv")
head(Armordata)
head(Environmentdata)
head(Riskdata)
head(Overlapdata)
# My hypothesis is that environment alone does not account for percent armor but that predation also impacts armor coverage.
#I plan on finding other species that also shave body armor and see if they vary in environment or predators and compare to ther species. 