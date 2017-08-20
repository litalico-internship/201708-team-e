# Varietie

## Models
  - user
  - review
  - experience
  - user_group

## Tables

### Users

|name|email|detail|avatar\_file\_name|
|:--:|:---:|:------:|:-----:|
|string|string |text|string|

### Reviews

|user_id|text|rate|
|:------:|:---:|:------:|
|references |text|integer |

### Experiences

|title|date|place|content|image|
|:--:|:--:|:--:|:--:|:--:|
|string|date|string|text|text|

### User_Groups

|group_id|user_id|is_host|
|:------:|:-----:|:--:|
|references|references|boolean|

## Asociation
### User
  - has\_many :reviews, dependent: :destroy
  - has\_many :user\_groups
  - has\_many :users, through: :user\_groups

### Review
  - belongs\_to :user

### Experience
  - has\_many :user\_groups
  - has\_many :users, through: :user\_groups

### User_Group
  - belongs\_to :user
  - belongs\_to :experience

## Author
[daijiromaeyama](https://github.com/daijiromaeyama)
