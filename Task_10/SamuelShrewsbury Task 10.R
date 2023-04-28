setwd('C:\\Users\\13048\\Desktop\\Evolution\\Tasks\\Task_10')
x<-rnorm(100,mean=0,sd=2)
head(x)
y<-x*5+2+runif(100,min=0,max=0.1)
head(y)
linearmodel<-lm(y~x)
plot(linearmodel)
slope<-vector("numeric",100)
intercept<-vector("numeric",100)
z<-vector("numeric",100)
for (i in 100){
  x<-rnorm(100,mean=0,sd=2)
  z[i]<-runif(1,min=0.5,max=2)
  y<-x*5+2+runif(100,min=0,max=0.1)
  linearmodel<-lm(y~x)
  intercept[i]<-coef(linearmodel)[1]*z[i]+2
  slope[i]<-coef(linearmodel)[2]*z[i]
}
plot(z,slope,xlab="Z Estimated Slope")
abline(lm(slope~z),col="red")
