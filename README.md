# 始め方
## ai_camera/appディレクトリ作成
ai_camera/appディレクトリを作成し、ai_cameraディレクトリ内に入る
```
mkdir -p ai_camera/app
cd ai_camera
```
## docker-compose.ymlファイル作成

下記を実行
```
vi docker-compose.yml
```

`i`押下でInsertモードに切り替わるので

下記をコピペ
```
version: '3.8'

services:
  app:
    build: app
    volumes: 
      - type: bind
        source: ./app
        target: /workspace
      - type: bind
        source: ~/.ssh
        target:  /root/.ssh
      - /workspace/opencv
    ports:
      - 18080:18080
    working_dir: /workspace
    command: sh
    tty: true
```
` Ctr+q `押下した後` Sift+z `を2回押すことでファイル保存
## 開発環境をローカルにコピー
ai_cameraディレクトリにいると思うので、下記コマンドでappディレクトリに入る
```
cd app
```
git初期化
```
git init
```
git clone
```
git clone [TBD]
```
## コンテナ起動
appディレクトリにいると思うので、ai_cameraディレクトリに移動
```
cd ..
```
コンテナ起動して中に入る
```
docker compose up -d
docker compose exec app ash
```
## プログラム実行
下記コマンド実行
```
python camface.py
```