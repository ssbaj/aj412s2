geocode_road<-function(vworld_apikey, addr){

  if (base::missing(vworld_apikey)) {
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
    cat(" \033[1;34m# my_vworld <- 'SHIMBIRO455-A612BFF9-049A-ELCA888-3B10-BED9-B79A191038C6-yes' ", '\n')
    cat(" \033[1;34m# 도로명 주소를 addr_road에 입력 ---- \033[0m ", '\n')
    cat(" \033[1;34m# addr_road <- '경기도 수원시 월드컵로 206' \033[0m ", '\n')
    return(cat(" \033[1;34m# geocode_road(my_vworld, addr_road) \033[0m ") ) }
  
  # URL 인코딩 함수 (Python의 quote_plus 역할)
  # URL 인코딩 시 공백은 '+'로, 기타 특수문자는 %xx 형태로 인코딩
  url_encode_plus <- function(string) {
    encoded_string <- URLencode(string, reserved = TRUE)
    encoded_string <- str_replace_all(encoded_string, "%20", "+") # 공백을 '+'로 변경
    return(encoded_string)
  }
  
  
url <- paste0(
  "http://api.vworld.kr/req/address?service=address&request=getCoord&type=ROAD&refine=false&key=", vworld_apikey, "&address=", url_encode_plus(addr)
)

# API 요청 및 응답 처리
response <- GET(url)

# HTTP 상태 코드 확인

if (status_code(response) == 200) {
  # 응답 본문 추출 및 UTF-8 디코딩 (httr::content 함수가 자동으로 처리)
  response_body <- content(response, "text", encoding = "UTF-8")
  # JSON 데이터 파싱
  jsonData <- fromJSON(response_body)
  
  # 위도(lat)와 경도(lng) 추출
  # VWorld API 응답 구조에 따라 경로 지정
  lat <- as.numeric(jsonData$response$result$point$y)
  lng <- as.numeric(jsonData$response$result$point$x)
  latlng22<-c(lat, lng)
  return(latlng22)
} else {
  cat(i,' data-Error: ', 'error code:', status_code(response), '\n')
}

}

