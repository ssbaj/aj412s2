geocode_kakao <- function(REST_API_KEY, address) {

if (base::missing(REST_API_KEY)) {
    cat(" \033[1;34m# library(httr); library(jsonlite); library(stringr) ", '\n')
    cat(" \033[1;34m# my_kakao_rest <- '7af181-shimbi9645-9d01257-elan234-ecd75-stu843-e16354-pdi323-5f0675b9' ", '\n')
    cat(" \033[1;34m# 지번 또는, 도로명 주소를 addr_road에 대입 ---- \033[0m ", '\n')
    cat(" \033[1;34m# addr_road <- '경기도 수원시 월드컵로 206' \033[0m ", '\n')
    return(cat(" \033[1;34m# geocode_kakao(my_kakao_rest, addr_road) \033[0m ") ) }


response<-GET( url <- "https://dapi.kakao.com/v2/local/search/address.json", 
                 query = list(query=address[1]),
                 add_headers(Authorization = paste0("KakaoAK ", REST_API_KEY)))
  varsx<-(content(response, as="text", encoding = "UTF-8"))
  vars <- fromJSON(varsx)
  tmp<-data.frame(vars)
  lat_x<-tmp$documents.road_address$y
  long_y<-tmp$documents.road_address$x
  tmp2<-c(lat_x, long_y)
  return(tmp2)
  }
