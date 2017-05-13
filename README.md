#  README

#Wantedlyデータベース設計
==========================
* ユーザー管理
* 企業管理
* 求人詳細管理
* 応募管理 (中間テーブル(ユーザー&企業))
* 雇用形態管理
* 職種管理
* 地域管理
* 特徴管理


##テーブル

###users

|column|type|option|
|:--:|:--:|:--:|
|name|string|null: false|
|e-mail|string|null: false, unique: true|
|password|string|null: false|

###companies

|column|type|option|
|:--:|:--:|:--:|
|name|string|null: false, index: true|
|e-mail|string|null: false, unique: true|
|address|text|null: false|
|founder_name|text||
|est_date|date||
|sum_member|integer||
|Industry|text||

###offers

|column|type|option|
|:--:|:--:|:--:|
|company_id|references :company, foreign_key: true||
|title|string|null: false|
|image|string||
|what|text||
|why|text||
|how|text||

###applies (中間テーブル)

|column|type|option|
|:--:|:--:|:--:|
|user_id|references :user, foreign_key: true||
|company_id|references :company, foreign_key: true||

###job_types

|column|type|option|
|:--:|:--:|:--:|
|offer_id|references :offer, foreign_key: true||
|type|string|null: false|

###job_categories

|column|type|option|
|:--:|:--:|:--:|
|offer_id|references :offer, foreign_key: true||
|category|string|null: false|

###regions

|column|type|option|
|:--:|:--:|:--:|
|offer_id|references :offer, foreign_key: true||
|region|string|null: false|

###characteristics

|column|type|option|
|:--:|:--:|:--:|
|offer_id|references :offer, foreign_key: true||
|characteristic|string||

##アソシエーション

###users  
has_many :applies    

###companies  
has_many :applies  
has_many :offers  
has_many :campany_members    

###applies  
belongs_to :user  
belongs_to :company    

###offers  
belongs_to: company  
has_many :job_types  
has_many :job_categories  
has_many :regions
has_many :characteristics

###company_members  
belongs_to :company    

###job_types  
belongs_to :offer    

###job_categories  
belongs_to :offer    

###regions  
bolengs_to :offer

###characteristics  
bolengs_to :offer
