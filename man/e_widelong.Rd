\name{e_widelong}
\alias{e_widelong}
\title{Transforming Wide and Long format}
\usage{
e_widelong()
}
\description{
Transforming Wide and Long format
}
\examples{

library(aj412s2); library(tidyr); library(dplyr) 

면적명 <- c('녹지면적', '도시면적', '도로면적', '녹지면적', '도시면적', '도로면적')
행정명 <- c('가락1동', '가락1동', '가락1동','가락2동', '가락2동', '가락2동')
면적 <- c(10, 12, 30, 21, 53, 66)

df<-data.frame(cbind(면적명, 행정명, 면적))

# 데이터 변형 ----------
df_wide <- df %>%
  pivot_wider(
    id_cols = 행정명,
    names_from = 면적명,
    values_from = 면적
  )

df_long <- df_wide %>%
  pivot_longer(
    cols = c('녹지면적', '도시면적', '도로면적'),
    names_to = '면적명',
    values_to = '면적'
  )



}

