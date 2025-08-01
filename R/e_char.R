e_char<-function(explaining=0){

if(explaining==0) {
cat("\033[1;34m**************************************************************** \033[0m ", '\n')
cat("\033[1;34m# 문자열 벡터에서 문자 찾기  \033[0m ", '\n')
cat("  ABC문자열 <- '경기도 수원시 원천동 (대한멘션)' ", '\n')
cat("  unlist(gregexpr('동', ABC문자열)) ", '\n')
cat("\033[1;34m# 특수문자는 문자 앞에 \\\\를 붙여야 찾을 수 있습니다   \033[0m ", '\n')
cat("  unlist(gregexpr('\\\\(', ABC문자열 ) )   ", '\n')
cat("  # ABC문자열에서 (대한멘션)을 삭제하고 나머지만 남길 경우  ", '\n')
cat("  result <- substr(ABC문자열, 1, 12)  ", '\n')
cat("   ", '\n')
cat("\033[1;34m**************************************************************** \033[0m ", '\n')
cat("\033[1;34m## 기초자치단체가 시/군/구 중 어디에 속하는지를 area3에 표시함  \033[0m ", '\n')
cat("   ", '\n')
cat("  for(i in 1:n){ ", '\n')
cat("  N1char<-nchar(grdp$area2[i]) ", '\n')
cat("   ", '\n')
cat("  for(i in 1:n){ ", '\n')
cat("  N1char<-nchar(grdp$area2[i]) ", '\n')
cat("  grdp$area3[i] <- substring(grdp$area2[i], N1char) } ", '\n')
cat("   ", '\n')
cat("\033[1;34m## 세입/세출자료와 GRDP자료를 merging하기 위해 기초자치단체명에서  \033[0m ", '\n')
cat("\033[1;34m## 마지막 단어인 시/군/구를 제외한 후 area4에 저장  \033[0m ", '\n')
cat("   ", '\n')
cat("  grdp$area4 <- NA ", '\n')
cat("  for(i in 1:n){ ", '\n')
cat("  N2char<- ( nchar(grdp$area2[i]) - 1 ) ", '\n')
cat("  grdp$area4[i] <- substring(grdp$area2[i], 1, N2char) } ", '\n')
cat("   ", '\n')

} }

