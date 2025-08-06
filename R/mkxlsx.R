mkxlsx <- function(dataset, file_path) {
  
  if (base::missing(dataset)) {
    cat("\033[1;32m# 데이터셋을 엑셀xlsx 파일로 저장하기 ----- \033[0m ", '\n')
    cat("\033[1;32m# mkxlsx(데이터셋, 'file명.xlsx' ) \033[0m ", '\n')
    return(cat("  ", '\n'))
  }
  
  if (!requireNamespace("writexl", quietly = TRUE)) {
    install.packages("writexl")
  }
  
  # writexl 패키지 로드 (메시지 숨김)
  suppressPackageStartupMessages(library(writexl))
  
  # xlsx 파일 저장
  tryCatch({
    write_xlsx(dataset, path = file_path)
  }, error = function(e) {
    stop(paste0("파일 저장 중 오류가 발생함: ", e$message))
  })
}

