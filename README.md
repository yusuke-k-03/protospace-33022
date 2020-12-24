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

# テーブル設計

## usersテーブル

| Colum        | Type     | Options  |
| -------------|----------|----------|
| email        | string   | not null |
| password     | string   | not null |
| name         | string   | not null |
| profile      | text     | not null |
| occupation   | text     | not null |
| position     | text     | not null |

- has_many :prototype
- has_many :comment


## prototypesテーブル

| Colum          | Type           | Options  |
| ---------------|----------------|----------|
| title          | string         | not null |
| catch_copy     | text           | not null |
| concept        | text           | not null |
| user           | references     |          |

- has_many :comment
- belongs_to :user


## commentsテーブル

| Colum        | Type         | Options  |
| -------------|--------------|----------|
| text         | text         | not null |
| user         | references   | not null |
| prototype    | references   | not null |

### Association

- belongs_to :user
- belongs_to :prototype

