mkgmgc <- function(data, id_var, target_var) {

if (base::missing(data)) {
cat(" \033[1;36m# Examples ---------- \033[0m", '\n' )
cat(" \033[1;36m# Making grand mean, group centered value \033[0m", '\n' )
return( cat("\033[1;36m COMMAND: newdata<-mkgmgc(data, 'id', 'target_var') \033[0m", '\n') )
}

  if (!require(dplyr)) {
    cat('Automatically Installing dplyr package because','\n')
    cat('dplyr is necessary for this function','\n')
    cat('If an error occurs, connect to the network','\n')
    install.packages("dplyr")
  }
  
  suppressPackageStartupMessages(library("dplyr"))
  
  # 그룹별 평균 계산
  data <- data %>%
    group_by(!!sym(id_var)) %>%
    mutate(
      gm = mean(!!sym(target_var), na.rm = TRUE), # 그룹 평균
      gc = !!sym(target_var) - gm # 그룹 중심화된 값
    ) %>%
    ungroup()
  
  colnames(data)[3] <- paste0( colnames(data)[3] , '_', target_var , sep='')
  colnames(data)[4] <- paste0( colnames(data)[4] , '_', target_var , sep='')

  return(data)
}

