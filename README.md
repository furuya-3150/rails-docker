# リポジトリクローン
```
git clone https://github.com/furuya-3150/rails-docker
```

# 環境変数ファイルの作成 (.envの中の値は管理者に確認)
railsのルートディレクトリに.envを追加
```
touch .env
cp .env.example.local .env
```

# PostgreSQLのパスワードを環境変数に設定（パスワードは管理者に確認）
zshの場合`~/.zshrc`に下記を追加し`source ~/.zshrc`
```
export POSTGRES_PASSWORD=xxxxx
```

# Dockerイメージのビルド
railsのルートディレクトリで下記実行
```
docker compose build
```
# コンテナ起動
railsのルートディレクトリで下記実行
```
docker compose up
```

# データベース・テーブル作成
`docker compose exec web bash`でコンテナに入り、データベースを作成・マイグレーション実行
```
rails db:create
rails db:migrate
```

下記のローカル環境にアクセスできれば OK<br>
http://localhost:3000/<br>
