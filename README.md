# MsTk Blog Backend

## 機能

- お問い合わせ 内容登録

## 技術構成

- Ruby
- Ruby on Rails
- MySQL
- ESLint
- Prettier

## バージョン

#### Ruby
* ruby 3.1.2

#### rails
* Rails 7.0.8.1

#### rbenv
* rbenv 1.2.0

## 開発方法

```
# 開発サーバーを起動
(FEをポート3000で起動するため、3009で指定)

$ rails s -p 3009


# MySQL起動

$ mysql.server start


# MySQLにログイン

$ mysql -u root -h 127.0.0.1


# DBマイグレーション

$ rake db:migrate
```