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

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |
| nickname | string | null: false |
| birthday | date   | null: false |

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
| date      | datetime   | null: false |
| user      | references | null: false, foreign_key: true |

### Association

- has_one :purchase
- belongs_to :users


## purchases テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| item    | references | null: false, foreign_key: true |

### Association

- belongs_to :users
- belongs_to :items
- has_many :shippings


## shippings テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| item    | references | null: false, foreign_key: true |
| address | string     | null: false |
| phone   | integer    | null: false |

### Association

- belongs_to :purchases