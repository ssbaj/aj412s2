#' mycols() Function
#' 
#' This function calculating colors
#' \033[1;36m# Examples ---------- \033[0m

mycols<-function(aa1, bb2, cc3){
  if (base::missing(aa1)) {
    cat("  \033[1;36m# To make colosrs ...  \033[0m ", '\n')
    cat("  \033[1;36m# mycols(red비율, green비율, blue비율)  \033[0m ", '\n')
    cat("  \033[1;32m  mycols(0.3, 0.1, 0.3)  \033[0m ", '\n')
    cat("  ## ------------------------------------- ", '\n')
    cat("  \033[1;33m  x <- 1:10  \033[0m ", '\n')
    cat("  \033[1;33m  y1 <- rnorm(10)  \033[0m ", '\n')
    cat("  \033[1;33m  y2 <- rnorm(10) + 5  \033[0m ", '\n')
    cat("  \033[1;31m# 데이터 프레임 생성 ------------- \033[0m ", '\n')
    cat("  \033[1;33m  df <- data.frame(x = c(x, x), y = c(y1, y2), group = rep(c('A', 'B'), each = 10))  \033[0m ", '\n')
    cat("  \033[1;31m#  긴 형식으로 변환  \033[0m ", '\n')
    cat("  \033[1;33m  df_long <- df  \033[0m ", '\n')
    cat("  \033[1;31m#  그래프 그리기  \033[0m ", '\n')
    cat("  \033[1;33m  ggplot(df_long) +  \033[0m ", '\n')
    cat("  \033[1;33m  geom_line( aes(x = x, y = y, color = group) ) +  \033[0m ", '\n')
    return( cat("  \033[1;33m  scale_color_manual(values = c('blue', 'red'))  \033[0m ", '\n') )  }
  mycols2 <- rgb(aa1, bb2, cc3, seq(0,1,length=10) )
  barplot(rep(1,10), space=0, axes=F, col=mycols2)
  return(mycols2)
}
