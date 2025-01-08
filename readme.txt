＜Dockerの基本操作＞
docker version
docker images
docker ps
docker rm
docker rmi
docker stop
docker start

----------------------------------------
<DockerでRstudioを使う>

#Dockerが使える状態か確認
docker version

#Dcker練習 R_VSCode_RStudioの.devcontainerのディレクトリへ移動
cd "あなたのパス\.devcontainer"

#イメージとコンテナを立ち上げる.10-20分くらいかかるかも
docker compose up -d

#イメージとコンテナが起動したか確認
docker images
docker ps

#ブラウザにて以下のアドレスにアクセス.ユーザー:rstudio パスワード:rpassword
http://localhost:8787/

#ワーキングスペースを変えブラウザをリロード
setwd("/workspace")



<DockerとVSCodeでRを使う>
#RStudioサーバーを止め消す
docker stop my_rstudio_dev_container
docker rm my_rstudio_dev_container

#コンテナーで再度開く
#必要そうな拡張機能をダウンロードする

----------------------------------------
<DockerとVSCodeでPythonを使う>
#コンテナーで再度開く