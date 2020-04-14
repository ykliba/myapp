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
|text|


