mkcsv <- function(dataset, file_path, encoding = "EUC-KR") {

  if (base::missing(dataset)) {
	cat("\033[1;34m# mkcsv(데이터셋, 'file명.csv' ) \033[0m ", '\n')
	cat("\033[1;34m#       csv파일 저장 디폴트: EUC-KR \033[0m ", '\n')
	cat("\033[1;34m# mkcsv(데이터셋, 'file명.csv', encoding = 'CP949') \033[0m ", '\n')
	return(cat("# mkcsv(데이터셋, 'file명.csv', encoding = 'UTF-8') \033[0m ", '\n'))
	}
  
  # 지원되는 인코딩 목록
  supported_encodings <- c("EUC-KR", "CP949", "UTF-8")

  # 인코딩 유효성 검사
  if (!(encoding %in% supported_encodings)) {
    warning(paste0("지원되지 않는 인코딩입니다: '", encoding, "'. 기본값인 'EUC-KR'로 저장합니다."))
    encoding <- "EUC-KR"
  }

  # CSV 파일 저장
  tryCatch({
    write.csv(dataset, file = file_path, row.names = FALSE, fileEncoding = encoding)
    message(paste0(" 데이터셋이 '", file_path, "'에 '", encoding, "' 인코딩으로 성공적으로 저장되었습니다."))
  }, error = function(e) {
    stop(paste0("파일 저장 중 오류가 발생했습니다: ", e$message))
  })
}
