mkcsv <- function(dataset, file_path, encoding = "EUC-KR") {

  if (base::missing(dataset)) {
    cat("\033[1;32m# mkcsv(데이터셋, 새로운파일명.csv ) \033[0m\n")
    cat("\033[1;32m# csv파일 저장 디폴트: EUC-KR \033[0m\n")
    cat("\033[1;32m# mkcsv(데이터셋, 새로운파일.csv, encoding = 'CP949') \033[0m\n")
    return(cat("\033[1;32m# mkcsv(데이터셋, 새로운파일명.csv, encoding = 'UTF-8') \033[0m\n"))
  }

  # 🔹 file_path가 따옴표 없이 들어오면 문자로 변환
  file_path <- deparse(substitute(file_path))

  # 확장자 자동 보정
  if (!grepl("\\.csv$", file_path, ignore.case = TRUE)) {
    file_path <- paste0(file_path, ".csv")
  }

  # 지원되는 인코딩 목록
  supported_encodings <- c("EUC-KR", "CP949", "UTF-8")

  if (!(encoding %in% supported_encodings)) {
    warning(paste0(
      "지원되지 않는 인코딩입니다: '", encoding,
      "'. 기본값 'EUC-KR'로 저장합니다."
    ))
    encoding <- "EUC-KR"
  }

  # CSV 저장
  tryCatch({
    write.csv(dataset,
              file = file_path,
              row.names = FALSE,
              fileEncoding = encoding)
    message("CSV 저장 완료: '", file_path, "'")
  }, error = function(e) {
    stop(paste0("파일 저장 중 오류 발생: ", e$message))
  })
}
