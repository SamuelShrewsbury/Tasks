setwd('C:\\Users\\13048\\Desktop\\Evolution\\Tasks\\Task_09')
library(diversitree)
transition_0to1<-0.1
transition_1to0<-0.1
speciation_0<-0.2
extinction_0<-0.1
speciation_1<-0.2
extinction_1<-0.1
maxN<-1e3
maxT<-50
Pars<-c(speciation_0,speciation_1,extinction_0,extinction_1,transition_0to1,transition_1to0)
simTree<-tree.bisse(Pars,max.taxa=maxN,max.t=maxT)
str(simTree)
?tree.bisse
stateTable<-table(simTree$tip.state)
stateTable/sum(stateTable)
#My state 0 is 0.49 while my state 1 is 0.51. This suggests that the that trait will slowly evolve instead of going extinct.
#Other than just rates, the ability to inherit or learn from parents is important for a trait being passed on and present.
#When state 1 speciation rate increases, it is more likely that the trait will be passed on to other generations or species. 
#Net diversification is of state 1 increases when speciation rate is high.