geocode_kakao <- function(REST_API_KEY, address) {

if (base::missing(REST_API_KEY)) {
    cat(" \033[1;34m# library(httr); library(jsonlite); library(stringr) ", '\n')
    cat(" \033[1;34m# 국토정보플랫폼: https://map.ngii.go.kr/ ", '\n')
    cat(" \033[1;34m# 환경공간정보서비스: https://egis.me.go.kr/ ", '\n')
    cat(" \033[1;34m# 실거래가공개시스템: https://rt.molit.go.kr/ ", '\n')
    cat(" \033[1;34m# 브이월드: https://www.vworld.kr/ ", '\n')
    cat(" \033[1;34m# KB통계: https://kbland.kr/webview.html#/main/statistics?channel=kbland&tab=0 ", '\n')
    cat(" \033[1;34m# TS자료: 월 -> 분기: r<-aggregate(ir, nfrequency=4)/3  ", '\n')
    cat(" \033[1;34m# TS자료: 연 -> 분기: library(tempdisagg) ", '\n')
    cat(" \033[1;34m#                     td1<-td(cs~1, to='quarterly', converstion='last', method='denton-cholette') ", '\n')
    cat(" \033[1;34m# ----------------------------------------------------- ", '\n')
    cat(" \033[1;34m# library(httr); library(jsonlite); library(stringr) ", '\n')
    cat(" \033[1;34m# my_kakao_rest <- '7af181-shimbi9645-9d01257-elan234-ecd75-stu843-e16354-pdi323-5f0675b9-no' ", '\n')
    cat(" \033[1;34m# 지번 주소 또는, 도로명 주소를 addr에 대입 \033[0m ", '\n')
    cat(" \033[1;34m# addr <- '경기도 수원시 영통구 원천동 원천동 산5-1' \033[0m ", '\n')
    return(cat(" \033[1;34m# geocode_kakao(my_kakao_rest, addr) \033[0m ") ) }

response<-GET( url <- "https://dapi.kakao.com/v2/local/search/address.json", 
                 query = list(query=address[1]),
                 add_headers(Authorization = paste0("KakaoAK ", REST_API_KEY)))
  varsx<-(content(response, as="text", encoding = "UTF-8"))
  vars <- fromJSON(varsx)
  tmp<-data.frame(vars)
  lat_x<-tmp$documents.x
  long_y<-tmp$documents.y

  tmp2<-c(lat_x, long_y)
  return(tmp2)
  }
