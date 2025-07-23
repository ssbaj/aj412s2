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

#도로명 주소를 addr_road에 입력 ----   
  addr_road <- '경기도 수원시 월드컵로 206'   
  geocode_road(my_vworld, addr_road)  

}
