# アプリ名
individual-app

# 概要
食べ歩きの記録を投稿できるアプリ

# 制作背景(意図)
①前職の時に料理の知識向上のためによく食べ歩きを行っていました。
その際に記録はノートに記載していました。
「その行動をわかりやすく簡略化できるのではないか」と思いました。

②記録を共有することで知識の向上と違う価値観も取り入れることができるのではないかと考えました。

そこで、学んできたことを生かして上記の２点をまとめたアプリを作成したいと思いました。

# 工夫したポイント
アプリ：URL:http://46.51.229.224/
ログインID：test@gmail.com
パスワード：testtest
開発環境：Ruby/Ruby on Rails/MySQL/Github/AWS/Visual Studio Code
内容：食べ歩きの記録を投稿できるアプリ
企画背景：
①前職の時に料理の知識向上のためによく食べ歩きを行っていました。
その際に記録はノートに記載していました。
「その行動をわかりやすく簡略化できるのではないか」と思いました。

②記録を共有することで知識の向上と違う価値観も取り入れることができるのではないかと考えました。

そこで、学んできたことを生かして上記の２点をまとめたアプリを作成したいと思いました。

工夫した点：（技術面）

コンセプトを大事に自分なりに考えて作成する。

記録の簡略化

①ノートに取っていた時に不便に感じていたことは画像と一緒にかけないことでした。
なので、画像とレビューページは同じページに記載するようにしました。
画像：https://gyazo.com/0063d506c993c145109641809b989bed

②レストランごとで分けて、後で見返しやすくするようにしました。
そこで画像が小さくなるので拡大できるようにしました。
GIF：https://gyazo.com/b505537b56e137cbd899183f2dc7991b

③感想を記載できるところは人によって書き方や感じ方が違うと思うので、自由に記載できるようにしました。

記録を共有

①参考にしたい投稿をまとめておくことが便利だと思ったのでブックマーク機能を追加しました。
ブックマーク一覧ページ画像：https://gyazo.com/b24e4d2041224ec6443aaca087e86663

②自分の見たい投稿を検索できるようにしました。

画像が目立つようにする

①できるだけシンプルなviewにする
トップページ画像：https://gyazo.com/41cbf4fccc4fb338855c99075e64b4b1

②アプリ作成を進めていくとボタンが増えてしまったのでハンバーガーメニューでまとめ、画像の邪魔にならないようにする。
メニューの画像：https://gyazo.com/85951f1d36495dd825ae1fb9f9916afd

# 苦労した点

当初設計していたものと形が変わってしまったことです。
制作していくうちにコンセプトを考えれば「ここはこうしたほうがいい」「この機能を付けたい」と設計とは形が異なり
その都度修正を加えて行かなくてはならなくなりました。
そのため無駄な時間が多くかかってしまったことが苦労しました。
なのでアプリ制作をする際は設計はもっと深掘りしてから作成しようと思いました。

# 使用技術(開発環境)
・Ruby
・Ruby on Rails
・MySQL
・Github
・AWS
・Visual Studio Code
# 課題
・viewのデザインの仕方
アプリ制作を行っていく中で綺麗かつわかりやすく表示させたかったのだが
曖昧な状態でなんとなくで配置を行っていました。
そして微妙なviewになってしまていると感じました。
なので最低限のポイントは抑えれるようにデザインの学習も行わないといけないと感じました。


# 今後実装したい機能
・レスポンシブデザイン
食べ歩きの写真は携帯で撮影することが多いと思っています。
なのでレスポンシブデザインをて学習し、携帯でもわかりやすく表示も綺麗に行えるようにしたいです。

# データベース設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
### Association
- has_many :posts
- has_many :bookmarks

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|place|string|null|
|word|string|null|
|title|string|null|
|genre|string|null|
|review|text|null|
### Association
- belongs_to :user
- has_many :bookmarks
- has_many :users, through: :bookmarks
- has_many :images, dependent: :destroy

## bookmarksテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|post_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :post

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|post_id||references|null:false,foreign_key: true|
|image|string|null: false, foreign_key: true|
### Association
- belongs_to :post