# README

## 開発環境

- Ruby 2.5.1p57
- Rails 5.2.3

## Free market DB 設計

- id, created_at, updated_at 等、必須カラムは省略。

### users table

| Column          | Type       | Options                                |
| --------------- | ---------- | -------------------------------------- |
| nickname        | string     | null: false                            |
| email           | string     | null: false, unique: true              |
| password        | string     | null: false                            |
| mobile          | integer    | null: false, unique: true, index: true |
| last_name       | string     | null: false                            |
| first_name      | string     | null: false                            |
| last_name_kana  | string     | null: false                            |
| first_name_kana | string     | null: false                            |
| birth_year      | string     | null: false                            |
| birth_month     | string     | null: false                            |
| birth_day       | string     | null: false                            |
| postal_code     | integer    | null: true                             |
| prefectures_id  | references | null: false, foreign_key: true         |
| city            | string     | null: true                             |
| address         | string     | null: true                             |
| building_name   | string     | null: true                             |
| profile_content | text       | null: true                             |
| deleted_at      | datetime   | null: true                             |

#### Association

- belongs_to :deliver_address
- belongs_to :prefectures
- has_many :orders
- has_many :freemarkets

### prefectures table

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| prefecture | string | null: false |

#### Association

- has_many :users
- has_many :deliver_address

### deliver_address table

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| users_id        | references | null: false, foreign_key: true |
| last_name       | string     | null: false                    |
| first_name      | string     | null: false                    |
| last_name_kana  | string     | null: false                    |
| first_name_kana | string     | null: false                    |
| postal_code     | integer    | null: false                    |
| prefecture      | string     | null: false                    |
| city            | string     | null: false                    |
| street_address  | string     | null: false                    |
| building_name   | string     | null: true                     |
| phone           | integer    | null: true                     |

#### Association

- belongs_to :users
- belongs_to :prefectures
- belongs_to :orders

### orders table

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| users_id           | references | null: false, foreign_key: true |
| freemarkets_id     | references | null: false, foreign_key: true |
| deliver_address_id | references | null: false, foreign_key: true |

#### Association

- belongs_to :users
- belongs_to :freemarkets
- belongs_to :deliver_address

### freemarkets table

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| users_id       | references | null: false, foreign_key: true |
| item           | string     | null: false                    |
| price          | integer    | null: false                    |
| condition      | string     | null: false                    |
| ship_charge    | string     | null: false                    |
| ship_from      | string     | null: false                    |
| ship_method    | string     | null: false                    |
| ship_day       | string     | null: false                    |
| description    | text       | null: false                    |
| item_images_id | references | null: false, foreign_key: true |
| categories_id  | references | null: false, foreign_key: true |
| brands_id      | references | null: false, foreign_key: true |

#### Association

- belongs_to :users
- belongs_to :categories
- belongs_to :sizes
- belongs_to :brands
- has_many :orders
- has_many :item_images

### item_images table

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| image_url      | string     | null: false                    |
| freemarkets_id | references | null: false, foreign_key: true |

#### Association

- belongs_to :freemarkets

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

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| categories_id | references | null: false, foreign_key: true |
| sizes_id      | references | null: false, foreign_key: true |

#### Association

- belongs_to :categories
- belongs_to :sizes

### brands table

| Column     | Type   | Options                   |
| ---------- | ------ | ------------------------- |
| brand_name | string | null: false, unique: true |

#### Association

- has_many :freemarkets

### cards table

- 実装段階で検討。
- users テーブルのカラム（token）とする可能性有。

### show_catalogs table

- 実装段階で検討。出品状況の情報。
- freemarkets テーブルのカラムとする可能性有。

### reviews table

- 実装段階で検討。実装必須機能ではない。
