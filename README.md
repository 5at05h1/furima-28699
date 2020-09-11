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
| birthday | string | null: false |



## items テーブル

| Column    | Type       | Options     |
| --------- | ---------- | ----------- |
| item_name | string     | null: false |
| category  | string     | null: false |
| price     | integer    | null: false |
| delivery  | integer    | null: false |
| comment   | text       | null: false |
| status    | string     | null: false |
| shipping  | string     | null: false |
| date      | datetime   | null: false |
| user      | references | null: false, foreign_key: true |


### Association

- has_one :purchases

## purchases テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| item    | references | null: false, foreign_key: true |
| address | string     | null: false |
| credit  | integer    | null: false |
| phone   | integer    | null: false |


### Association

- belongs_to :items