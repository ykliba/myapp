myapp

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :reviews
- has_many :events
- has_many :gears
- has_many :reviews_comments
- has_many :events_comments
- has_many :gears_comments

## reviewsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|artist_name|string|null: false|
|content|text|  |
|image|string|  |
### Association
- has_many :reviews_comments
- belongs_to :users

## eventsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|place|string|null: false|
|content|text|  |
|image|string|  |
### Association
- has_many :events_comments
- belongs_to :users

## gearsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|image|string|  |
|content|text|  |
### Asssociation
- has_many :gears_comments
- belongs_to :users

## reviews_commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|  |
|review_id|integer|  |
|content|text|null: false|
### Association
- belongs_to :users
- belongs_to :reviews

## events_commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|  |
|event_id|integer|  |
|content|text|null: false|
### Association
- belongs_to :users
- belongs_to :events

## gears_commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|  |
|gear_id|integer|  |
|content|text|null: false|
### Association
- belongs_to :users
- belongs_to :gears


