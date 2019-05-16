# DB設計

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true, index: true|
|mail|string|null: false|

### Association

- has_many :messages
- has_many :members(group_users)
- has_many :groups, through: :members(group_users)

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|image|string|-|
|group-id|integer|null: false|
|user-id|integer|null: false|

### Association

- belongs_to :user
- belongs_to :group

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|

### Association

- has_many :messages
- has_many :members(group_users)
- has_many :users, through: :members(group_users)

## members(group_users)テーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association

- belongs_to :group
- belongs_to :user
