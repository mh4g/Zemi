# 必要なパッケージとそのバージョンをリスト化
package_versions <- list(
  ggplot2 = "3.3.5",
  dplyr   = "1.0.10",
  tidyr   = "1.2.1"
)

# 必要なパッケージをインストールする関数
install_with_version <- function(pkg, version) {
  if (!requireNamespace("devtools", quietly = TRUE)) {
    install.packages("devtools", repos = "http://cran.rstudio.com/", ask = FALSE)
  }
  devtools::install_version(
    pkg,
    version = version, 
    repos = "http://cran.rstudio.com/", 
    upgrade = "never",
    ask = FALSE)
}

# リストをループしてインストール
for (pkg in names(package_versions)) {
  install_with_version(pkg, package_versions[[pkg]])
}
