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

}
