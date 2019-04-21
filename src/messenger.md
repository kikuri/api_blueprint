FORMAT: 1A
 
# Group MESSENGER
 
## エンドポイント 
[https://k2n42grp0c.execute-api.ap-northeast-1.amazonaws.com/dev]
 
 
+ Request (application/json)
 
    + Headers
 
            Accept: application/json

    + X-api-key

    		mm41mEIZXI3plaJjb4Mb6hq3mTyAblD4JVzqpxT0

### DB内容

* Facebookの会員情報テーブル(FB_TEST)
* Facebookのテキスト情報テーブル(FB_TEST_text)
* Facebookの音楽情報テーブル(FB_TEST_music)
* Facebookのお気に入り情報テーブル(FB_TEST_like)

### カラム

* 会員情報テーブル
	* userid(FBの会員id)
	* username
	* gender(性別)
	* profile_pic(プロフィール写真)
	* locale

 クエリ [/post_request_userdata]

* テキストテーブル
	* userid(FBの会員id)
	* text
	* context
	* story_flag
	* time

 クエリ [/post_request_textdata]

* 音楽情報テーブル
	* userid(FBの会員id)
	* artist_name
	* song_name
	* artist_id
	* song_id
	* time

 クエリ [/post_request_musicdata]

* お気に入り情報テーブル
	* userid(FBの会員id)
	* artist_name
	* song_name
	* artist_id
	* song_id
	* time

 クエリ [/post_request_likedata]



## 会員情報取得 [/get_userdata/<userid>]

### 情報取得 [GET]

#### 処理概要

* 会員情報を1つ取得
* headerにx-api-keyを付与

		{
		  "userid": "???",
		  "username": "KENZO",
		  "gender": "???",
		  "profile_pic": "???",
		  "locale": "???"
		}

## テキスト情報取得 [/get_textdata/<userid>]

### 情報取得 [GET]

#### 処理概要

* テキスト情報を最後の1つ取得
* headerにx-api-keyを付与

		{
		  "userid": "???",
		  "text": "???",
		  "context": "???",
		  "story_flag": "???",
		  "time": "???"
		}

## 音楽情報取得 [/get_musicdata/<userid>]

### 情報取得 [GET]

#### 処理概要

* 音楽情報を最後の1つ取得
* headerにx-api-keyを付与

		{
		  "artist_name": "葉加瀬太郎",
		  "pcounter": 6,
		  "song_id": "1135364",
		  "song_name": "情熱大陸",
		  "time": "2017:01/24/17:10:27:17",
		  "userid": "13413532"
		}


## お気に入り情報取得 [/get_likedata/<userid>]

### 情報取得 [GET]

#### 処理概要

* お気に入り情報を最後の1つ取得
* headerにx-api-keyを付与

		{
		  "userid": "???",
		  "artist_name": "???",
		  "song_name": "???",
		  "artist_id": "???",
		  "song_id": "???",
		  "time": "???"
		}


## 会員情報挿入 [/post_request_userdata]

### 情報挿入 [POST]

#### 処理概要

* 会員情報を1つ挿入
* エンドポイントに/post_request_userdataを追記しpostするuserid,username,gender,profile_picを記述
* headerにx-api-keyを付与

https://k2n42grp0c.execute-api.ap-northeast-1.amazonaws.com/dev/post_request_userdata
‘{“userid” : “???”, “username”:”???”, “gender” : “???”, “profile_pic” : “???”,”locale”:”???”}’ 

## テキスト情報挿入 [/post_request_textdata]

### 情報挿入 [POST]

#### 処理概要

* テキスト情報を1つ挿入
* エンドポイントに/post_request_textdataを追記
* headerにx-api-keyを付与

https://k2n42grp0c.execute-api.ap-northeast-1.amazonaws.com/dev/post_request_textdata
‘{“userid” : “???”, “text” : “???”,”context”:”???”,”story_flag”:”???”}’ 

## 音楽情報挿入 [/post_request_musicdata]

### 情報挿入 [POST]

#### 処理概要

* 音楽情報を1つ挿入
* エンドポイントに/post_request_musicdataを追記
* headerにx-api-keyを付与

https://k2n42grp0c.execute-api.ap-northeast-1.amazonaws.com/dev/post_request_musicdata
‘{“userid” : “???”, “artist_name” : “???”, “song_name” : “???”, “song_id” : ”???”,”artist_id”:”???”}’ 


## お気に入り情報挿入 [/post_request_likedata]

### 情報挿入 [POST]

#### 処理概要

* お気に入り情報を1つ挿入
* エンドポイントに/post_request_likedataを追記
* headerにx-api-keyを付与

https://k2n42grp0c.execute-api.ap-northeast-1.amazonaws.com/dev/post_request_likedata
‘{“userid” : “???”, “artist_name” : “???”, “song_name” : “???”, “song_id” : ”???”,”artist_id”:”???”}’ 

## 再生数の上位５つ取得 [/scan_musicdata/<userid>]

### 情報取得 [GET]

#### 処理概要

* 再生数の上位５つ取得
* headerにx-api-keyを付与

## お気に入りの上位５つ取得 [/scan_likedata/<userid>]

### 情報取得 [GET]

#### 処理概要

* お気に入りの上位５つ取得
* headerにx-api-keyを付与

## よく聴くアーティストの上位５つ取得 [/scan_artistdata/<userid>]

### 情報取得 [GET]

#### 処理概要

* よく聴くアーティストの上位５つ取得
* headerにx-api-keyを付与

## ランダムで５つユーザーとユーザーの聴いている曲取得 [/scan_randomuserdata/<username>]

### 情報取得 [GET]

#### 処理概要

* ランダムで５つユーザーとユーザーの聴いている曲取得
* headerにx-api-keyを付与
* groupは返って来ない
* 以下はpictureUrlも返す仕様になっているが、ユーザーに情報がない時の例


## 他の人がお気に入りに登録してある曲を５つランダムで取得 [/scan_randomlike/<userid>]

### 情報取得 [GET]

#### 処理概要

* 他の人がお気に入りに登録してある曲を５つランダムで取得
* headerにx-api-keyを付与
* groupは返って来ない



## 全てのユーザーのデータ取得 [/scan_alluserdata]

### 情報取得 [GET]

#### 処理概要

* 全てのユーザーのデータ取得
* headerにx-api-keyを付与

curl -i https://k2n42grp0c.execute-api.ap-northeast-1.amazonaws.com/dev/scan_alluserdata -H x-api-key:J1ac3WBLjd6MKHEhRruF63sTAk2xHJPr2cvbU6Lf

