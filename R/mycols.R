#' mycols() Function
#' 
#' This function calculate colors
#' 

mycols<-function(aa1, bb2, cc3){
  mycols2 <- rgb(aa1, bb2, cc3, seq(0,1,length=10) )
  barplot(rep(1,10), space=0, axes=F, col=mycols)
  return(mycols)
}
