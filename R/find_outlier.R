find_outlier<-function(Result){
    if (base::missing(Result)) {
        return(cat("  find_outlier(회귀분석 결과 "))
    }

cat(" \033[1;36m# car패키지의 outlierTest() --------------- \033[0m", '\n'   )
print( car::outlierTest(Result) )

cat("    ", '\n')

cat(" \033[1;36m# car패키지의 influencePlot() --------------- \033[0m ", '\n'   )
print( car::influencePlot(Result) )

cat("    ", '\n')

cat(" \033[1;36m# 우측의 Plot을 참고하세요 \033[0m ", '\n'   )

cat("    ", '\n')

}