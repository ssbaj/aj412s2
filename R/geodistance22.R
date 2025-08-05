geodistance22<-function(CENTER, TARGET){
  if (base::missing(CENTER)) {
    cat(" \033[1;34m# llibrary(aj412s2); library(geosphere); library(dplyr) ", '\n')
    cat(" \033[1;34m# 위도(lat)와 경도(long)로 CENTER와 TARGET의 거리 측정 --- ", '\n')
    cat(" \033[1;34m# CENTER 데이터셋과 TARGET 데이터셋에 각각 lat와 long 변수가 있어야 함 \033[0m ", '\n')
    return(cat(" \033[1;34m# geodistance22(CENTER, TARGET) \033[0m ") ) }
  
  
if (!requireNamespace("geosphere", quietly = TRUE)) {
  install.packages("geosphere")
  }

library(aj412s2); library(geosphere); library(dplyr)

for(i in 1:nrow(CENTER)){
  for(j in 1:nrow(TARGET)){
    centerlonglat<-c(CENTER$long[i], CENTER$lat[i])
    targetlonglat<-c(TARGET$long[j], TARGET$lat[j])
    distance <- distVincentySphere(centerlonglat, targetlonglat)
    cat("Center index:", i, " <-> Target index:", j, " :", distance, '\n' )
  }
  }

}
