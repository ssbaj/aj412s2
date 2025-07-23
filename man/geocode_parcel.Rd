\name{geocode_parcel}
\alias{geocode_parcel}
\title{Converting PARCEL address to Geocode}
\usage{
geocode_parcel()
}
\description{
Converting PARCEL address to Geocode
}
\examples{

 library(httr); library(jsonlite); library(stringr)  
 my_vworld <- 'Your Vworld ApiKey'  

 # 도로명 주소를 addr_parcel에 입력 ----   
 addr_parcel <- '경기도 수원시 영통구 원천동 산19'   
 geocode_parcel(my_vworld, addr_parcel)  

 # 주소록 파일을 사용해 geocode를 가져오는 방법 ----   
 df<-openxlsx(주소록파일.xlsx)

 df$lat<-NA 
 df$lng<-NA

 n<-nrow(df)
 for(i in 1:n){
  addr_parcel<-df$주소[i]
  df$lat[i]<-geocode_parcel(my_vworld, addr_parcel)[1]
  df$lng[i]<-geocode_parcel(my_vworld, addr_parcel)[2]
 }


}
