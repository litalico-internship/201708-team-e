# Varietie

## Models
  - user
  - review
  - experience
  - user_group

## Tables

### Users

|name|email|encrypted_password|detail|avatar\_file\_name|
|:--:|:---:|:--:|:------:|:-----:|
|string|string |string|text|string|

### Reviews

|user_id|text|rate|
|:------:|:---:|:------:|
|references |text|integer |

### Experiences

|title|date|place|content|image|
|:--:|:--:|:--:|:--:|:--:|
|string|date|string|text|text|

### User_Groups

|experience_id|user_id|is_host|
|:------:|:-----:|:--:|
|references|references|boolean|

## Association
### User
  - has\_many :reviews
  - has\_many :user\_groups
  - has\_many :experiences

### Review
  - belongs\_to :user

### Experience
  - has\_many :user\_groups
  - has\_many :users

### User_Group
  - belongs\_to :user
  - belongs\_to :experience

## Team
Paddy
