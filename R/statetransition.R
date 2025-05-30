# --- 상태전환 매트릭스 만들기
statetransition <- function(Adata){

	if (base::missing(Adata)) {
	cat("  \033[1;32m********************************** \033[0m",'\n')
	cat("  \033[1;32m* NOTE: 소득분위 변화 테이블 \033[0m",'\n')
	cat("  \033[1;32m********************************** \033[0m",'\n')
	cat("  \033[1;31m#------------------------------------ \033[0m",'\n')
	cat("    A0는 피조사자의 이름 ",'\n')
	cat("    A1은 2001년의 소득분위를 나타내는 column ",'\n')
	cat("    A2는 2002년의 소득분위를 나타내는 column ",'\n')
	cat("  \033[1;31m#------------------------------------ \033[0m",'\n')
	cat("    A0<-c('김준한','강명구','윤창근','김흥식','박성빈','김서용') ",'\n')
	cat("    A1<-c(1,2,1,3,1,4) ",'\n')
	cat("    A2<-c(1,2,2,3,3,3) ",'\n')
	cat("    df<-as.data.frame(cbind(A0,A1,A2)) ",'\n')
        cat("    df<-as.data.frame(cbind(A0,A1,A2)) ",'\n')
	cat("  \033[1;31m#테이블 완성시 값이 0인 컬럼은 제외되니 주의 ---- \033[0m",'\n')
	cat("    tmp <- table(df$A1, df$A2) ",'\n')
        cat("    cc <- rep(0, nrow(tmp)) ",'\n')
        cat("    tmp <- data.frame(cbind(tmp, cc)) ",'\n')
	cat("    tmp2 <- prop.table(as.matrix(tmp), margin=1)  ",'\n')
	cat("  \033[1;31m* 예: 2기간 후의 상태 ------------ \033[0m ",'\n')
	cat("    Mpower(tmp2, 2) ",'\n')
	return(cat("     "))  }
	
	cat("  \033[1;32m#----------------------------------- \033[0m",'\n')
	cat("  \033[1;32m* 소득분위 변화 테이블 만들기 \033[0m",'\n')
	cat("  \033[1;31m#------------------------------------ \033[0m",'\n')
	cat("    A0는 피조사자의 이름 ",'\n')
	cat("    A1은 2001년의 소득분위를 나타내는 column ",'\n')
	cat("    A2는 2002년의 소득분위를 나타내는 column ",'\n')
	cat("  \033[1;31m#------------------------------------ \033[0m",'\n')
	cat("    A0<-c('김준한','강명구','윤창근','김흥식','박성빈','김서용') ",'\n')
	cat("    A1<-c(1,2,1,3,1,4) ",'\n')
	cat("    A2<-c(1,2,2,3,3,3) ",'\n')
	cat("    df<-as.data.frame(cbind(A0,A1,A2)) ",'\n')
	cat("  \033[1;31m#테이블 완성시 값이 0인 컬럼은 제외되니 주의 ---- \033[0m",'\n')
	cat("    tmp <- table(df$A1, df$A2) ",'\n')
        cat("    cc <- rep(0, nrow(tmp)) ",'\n')
        cat("    tmp <- data.frame(cbind(tmp, cc)) ",'\n')
	cat("    tmp2 <- prop.table(as.matrix(tmp), margin=1)  ",'\n')
	cat("  \033[1;31m* 예: 2기간 후의 상태 ------------ \033[0m ",'\n')
	cat("    Mpower(tmp2, 2) ",'\n')

}
