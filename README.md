# README

## 開発環境

- Ruby 2.5.1p57
- Rails 5.2.3

## Free market DB 設計

- id, created_at, updated_at 等、必須カラムは省略。

### users table

| Column          | Type     | Options                                |
| --------------- | -------- | -------------------------------------- |
| nickname        | string   | null: false                            |
| email           | string   | null: false, unique: true, index: true |
| password        | string   | null: false                            |
| mobile          | string   | null: true                             |
| last_name       | string   | null: false                            |
| first_name      | string   | null: false                            |
| last_name_kana  | string   | null: false                            |
| first_name_kana | string   | null: false                            |
| birth_year      | integer  | null: false                            |
| birth_month     | integer  | null: false                            |
| birth_day       | integer  | null: false                            |
| postal_code     | integer  | null: true                             |
| prefecture      | integer  | null: true                             |
| city            | string   | null: true                             |
| address         | string   | null: true                             |
| building_name   | string   | null: true                             |
| profile_content | text     | null: true                             |
| deleted_at      | datetime | null: true                             |

#### Association

- belongs_to :deliver_address
- has_many :orders
- has_many :freemarkets
- has_many :cards

### deliver_addresses table

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| user_id         | references | null: false, foreign_key: true |
| last_name       | string     | null: false                    |
| first_name      | string     | null: false                    |
| last_name_kana  | string     | null: false                    |
| first_name_kana | string     | null: false                    |
| postal_code     | integer    | null: false                    |
| prefecture      | integer    | null: false                    |
| city            | string     | null: false                    |
| street_address  | string     | null: false                    |
| building_name   | string     | null: true                     |
| phone           | string     | null: true                     |

#### Association

- belongs_to :user
- belongs_to :order

#### Description

- 都道府県データは"active_hash"という gem 利用前提の設計。id を格納。

### orders table

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| user_id            | references | null: false, foreign_key: true |
| freemarket_id      | references | null: false, foreign_key: true |
| deliver_address_id | references | null: false, foreign_key: true |

#### Association

- belongs_to :user
- belongs_to :freemarket
- belongs_to :deliver_address

### freemarkets table

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| user_id     | references | null: false, foreign_key: true |
| item        | string     | null: false                    |
| price       | integer    | null: false                    |
| condition   | string     | null: false                    |
| ship_charge | string     | null: false                    |
| ship_from   | string     | null: false                    |
| ship_method | string     | null: false                    |
| ship_day    | string     | null: false                    |
| description | text       | null: false                    |
| category_id | references | null: false, foreign_key: true |
| size_id     | references | null: false, foreign_key: true |
| brand_id    | references | null: false, foreign_key: true |

#### Association

- belongs_to :user
- belongs_to :category
- belongs_to :size
- belongs_to :brand
- has_many :orders
- has_many :item_images, dependent: :destroy

### item_images table

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| image_url     | string     | null: false                    |
| freemarket_id | references | null: false, foreign_key: true |

#### Association

- belongs_to :freemarket

### categories table

| Column        | Type   | Options                        |
| ------------- | ------ | ------------------------------ |
| category_name | string | null: false, unique: true      |
| ancestry      | string | null: true, multiple_key: true |

#### Association

- has_many :sizes, through: categories_sizes
- has_many :categories_sizes
- has_many :freemarkets
- has_ancestry

#### Description

- カテゴリを多階層に分けて管理する"ancestry"という gem 利用前提の設計。（経路列挙モデル）
- 階層化したいカテゴリは db/seed.rb に記述する。

### sizes table

| Column    | Type   | Options                   |
| --------- | ------ | ------------------------- |
| item_size | string | null: false, unique: true |

#### Association

- has_many :categories, through: categories_sizes
- has_many :categories_sizes
- has_many :freemarkets

### categories_sizes table

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| category_id | references | null: false, foreign_key: true |
| size_id     | references | null: false, foreign_key: true |

#### Association

- belongs_to :category
- belongs_to :size

### brands table

| Column     | Type   | Options                   |
| ---------- | ------ | ------------------------- |
| brand_name | string | null: false, unique: true |

#### Association

- has_many :freemarkets

### cards table

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| user_id     | references | null: false, foreign_key: true |
| customer_id | string     | null: false                    |
| card_id     | string     | null: false                    |

#### Association

- belongs_to :user

### show_catalogs table

- 実装段階で検討。出品状況の情報。
- oders テーブルのカラムとする可能性有。

### reviews table

- 実装段階で検討。実装必須機能ではない。
