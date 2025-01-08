# 必要なRパッケージをインストールするスクリプト
packages <- c(
  "ggplot2",
  "dplyr",
  "tidyr"
)

install.packages(packages, repos = "http://cran.rstudio.com/")
