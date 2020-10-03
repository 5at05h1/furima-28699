# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## users テーブル

| Column       | Type   | Options     |
| ------------ | ------ | ----------- |
| surname      | string | null: false |
| name         | string | null: false |
| surname_kana | string | null: false |
| name_kana    | string | null: false |
| email        | string | null: false |
| password     | string | null: false |
| nickname     | string | null: false |
| birthday     | date   | null: false |

### Association

- has_many :items
- has_many :purchases


## items テーブル

| Column    | Type       | Options     |
| --------- | ---------- | ----------- |
| name      | string     | null: false |
| category  | integer    | null: false |
| price     | integer    | null: false |
| delivery  | integer    | null: false |
| comment   | text       | null: false |
| status    | integer    | null: false |
| shipping  | integer    | null: false |
| s_date    | integer    | null: false |
| user      | references | null: false, foreign_key: true |

### Association

- has_one :purchase
- belongs_to :user


## purchases テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| user     | references | null: false, foreign_key: true |
| item     | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- belongs_to :item
- has_one :orders


## orders テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| postal_code  | string     | null: false |
| prefectures  | integer    | null: false |
| municipality | string     | null: false |
| address      | string     | null: false |
| building     | string     |             |
| phone        | string     | null: false |
| purchase     | references | null: false, foreign_key: true |

### Association

- belongs_to :purchase