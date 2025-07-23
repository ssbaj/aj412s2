\name{geocode_road}
\alias{geocode_road}
\title{Converting Road address to Geocode}
\usage{
geocode_road()
}
\description{
Converting Road address to Geocode
}
\examples{

  library(httr); library(jsonlite); library(stringr)  
  my_apikey <- 'Your Vworld Apikey'  
 # my_vworld <- 'SHIMBIRO455-A612BFF9-049A-ELCA888-3B10-BED9-B79A19STUPID1038C6'  

#도로명 주소를 addr_road에 입력 ----   
  addr_road <- '경기도 수원시 월드컵로 206'   
  geocode_road(my_vworld, addr_road)  

# 주소록 파일을 사용해 geocode를 가져오는 방법 ----   
 df<-openxlsx(주소록파일.xlsx)

 df$lat<-NA 
 df$lng<-NA

 n<-nrow(df)
 for(i in 1:n){
  addr_road<-df$주소[i]
  df$lat[i]<-geocode_road(my_vworld, addr_road)[1]
  df$lng[i]<-geocode_road(my_vworld, addr_road)[2]
  }

}
