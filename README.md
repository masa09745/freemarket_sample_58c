# README

## 開発環境

- Ruby 2.5.1p57
- Rails 5.2.3

## Free market DB 設計

### accounts table

- アカウント ID

- ニックネーム
- パスワード
- メールアドレス
- 認証用携帯番号

### users table

- ユーザー ID

- プロフィール　※テーブル分ける？
- 生年月日
- 郵便番号　※任意
- 都道府県　※任意
- 市区町村　※任意
- 番地　※任意
- 建物名　※任意

- 住所 ID

### addresses table

- 住所 ID

- 名字（漢字）※全角
- 名前（漢字）※全角
- 名字（カナ）※全角
- 名前（カナ）※全角
- 郵便番号
- 都道府県
- 市区町村
- 番地
- 建物名　※任意
- 電話　※任意

- アカウント ID

### payments table

- 支払い ID

- カード番号
- 有効期限（月）
- 有効期限（年）
- セキュリティコード

- アカウント ID

### rates table 　※不要？

- 評価 ID

- 評価
- 評価コメント

- アカウント ID
- 商品 ID

### show_catalogs table 　※不要？

- 出品 ID

- 出品中
- 取引中
- 売却済

- アカウント ID
- 商品 ID

### orders table

- 注文 ID

- 注文日時
- 配達希望日

- アカウント ID
- 住所 ID

### items table

- 商品 ID

- 商品名　※40 字以内
- 価格
- 商品の状態
- 配送料の負担
- 発送元の地域
- 配送の方法
- 発送日までの日数
- 商品の説明　※1000 字以内
- 出品画像

- カテゴリー ID
- ブランド ID 　※任意
- コメント ID
- アカウント ID

### orders_items table

- 注文 ID
- 商品 ID

- 数量

### comments table

- コメント ID

- コメント内容

- アカウント ID
- 商品 ID

### category_lists table

- カテゴリーリスト ID

- カテゴリーリスト名

- カテゴリーアイテム 1 ID
- カテゴリーアイテム 2 ID

### category_items1 table

- カテゴリーアイテム 1 ID

- カテゴリーアイテム名 1

- カテゴリーアイテム 2 ID

### category_items2 table

- カテゴリーアイテム 2 ID

- カテゴリーアイテム名 2

### brand_lists table

- ブランドリスト ID

- ブランドリスト名

- ブランド ID

### brand_names table

- ブランド ID

- ブランド名

### groups table

| Column     | Type   | Options                                |
| ---------- | ------ | -------------------------------------- |
| group_name | string | index: true, null: false, unique: true |

#### Association

- has_many :users, through: members
- has_many :messages
- has_many :members

### users table

| Column   | Type   | Options                                |
| -------- | ------ | -------------------------------------- |
| name     | string | index: true, null: false, unique: true |
| email    | string | null: false, unique: true              |
| password | string | null: false                            |

#### Association

- has_many :groups, through: members
- has_many :messages
- has_many :members

### members table

| Column   | Type    | Options                        |
| -------- | ------- | ------------------------------ |
| user_id  | integer | null: false, foreign_key: true |
| group_id | integer | null: false, foreign_key: true |

#### Association

- belongs_to :group
- belongs_to :user

### messages table

| Column   | Type    | Options                        |
| -------- | ------- | ------------------------------ |
| text     | text    | null: false                    |
| image    | string  | null: true                     |
| user_id  | integer | null: false, foreign_key: true |
| group_id | integer | null: false, foreign_key: true |

#### Association

- belongs_to :group
- belongs_to :user
