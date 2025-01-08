＜Dockerの基本操作の学習＞
#Dockerのバージョン確認
docker version

#pullでイメージをダウンロード
docker pull python:3.9-alpine

#イメージを確認
docker images

#コンテナを確認
docker ps

#runでイメージからコンテナを生成
docker run -d --name test-python python:3.9-alpine sleep infinity
docker ps

#execでコンテナに入る
docker exec -it test-python sh
python --version

#コンテナ内でpython起動
python
print("Hello from inside the container!")
exit()

#コンテナから抜ける
exit

#コンテナを停止
docker stop test-python
docker ps

#停止中のコンテナも表示
docker ps -a

#コンテナを再起動
docker start test-python

#コンテナの削除(停止してから)
docker stop test-python
docker rm test-python
docker ps -a

#イメージの削除
docker rmi python:3.9-alpine
docker images

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