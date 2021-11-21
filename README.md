# 概要
- 羊のline bot

# 使用技術

- 以下versionなどはGemfile参照

## backend

- Ruby on Rails 


## gem

- railsのデフォルト
- line-bot-api(line bot SDK for Ruby) [https://github.com/line/line-bot-sdk-ruby](https://github.com/line/line-bot-sdk-ruby)


# deploy

- line bot SDK for Rubyの構造上、```LINE_CHANNEL_SECRET```と```LINE_CHANNEL_TOKEN```を本番環境の環境変数として設定することが必要。
- 前者はbotチャネルの秘密鍵、後者は、botチャネルのアクセストークン
