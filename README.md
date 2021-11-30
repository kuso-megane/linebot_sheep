# 概要
- 羊のline bot

# 環境構築
## rails環境
1. ruby, railsをinstall (versionはGemfile参照)
1. コードをクローン
1. Gemfileと同階層で```bundle```
1. dbをmigration

## その他

### 環境変数管理
1. direnvを導入(動作確認済みは```version 2.29.0```)
1. shellのprofile, もしくはrcファイルに以下を記入
```
export EDITOR=お使いのエディタ
eval "$(direnv hook zsh)"
```
1. ```.envrc```と同階層で```direnv allow```を実行


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
- webhookのurlは```tcp://host/callback```