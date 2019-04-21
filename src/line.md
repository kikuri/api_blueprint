FORMAT: 1A
 
# Group LINE
 
## エンドポイント 
[https://p0mm6k7ykh.execute-api.ap-northeast-1.amazonaws.com/dev]
 
 
+ Request (application/json)
 
    + Headers
 
            Accept: application/json

    + X-api-key

    		uREHkqkm5g8Hnev8FcDlJ1BzM2olP0wz1IDVE0oU

### DB内容

* LINEの会員情報テーブル(Line_TEST)
* LINEのテキスト情報テーブル(Line_TEST_text)
* LINEの音楽情報テーブル(Line_TEST_music)
* LINEのお気に入り情報テーブル(Line_TEST_like)

### カラム

* 会員情報テーブル
	* mid(LINEの会員id)
	* nickname(LINEの登録名)
	* pictureUrl(プロフィール写真)

 クエリ [/post_request_userdata]

* テキストテーブル
	* mid(LINEの会員id)
	* text
	* context
	* story_flag
	* counter
	* time

 クエリ [/post_request_textdata]

* 音楽情報テーブル
	* mid(LINEの会員id)
	* artist_name
	* song_name
	* artist_id
	* song_id
	* time

 クエリ [/post_request_musicdata]

* お気に入り情報テーブル
	* mid(LINEの会員id)
	* artist_name
	* song_name
	* artist_id
	* song_id
	* time

 クエリ [/post_request_likedata]



## 会員情報取得 [/get_userdata/<mid>]

### 情報取得 [GET]

#### 処理概要

* 会員情報を1つ取得
* headerにx-api-keyを付与

		{
		  "mid": "Uf8787f878b913f22d102aff4c69c7c67",
		  "nickname": "KENZO"
		}

## テキスト情報取得 [/get_textdata/<mid>]

### 情報取得 [GET]

#### 処理概要

* テキスト情報を最後の1つ取得
* headerにx-api-keyを付与

		{
		  "mid": "Uf8787f878b913f22d102aff4c69c7c67",
		  "text": "おはよう",
		  "time": "2017:01/13/17:00:00:10"
		}

## 音楽情報取得 [/get_musicdata/<mid>]

### 情報取得 [GET]

#### 処理概要

* 音楽情報を最後の1つ取得
* headerにx-api-keyを付与

		{
		  "artist_id": 91160335,
		  "artist_name": "RADWIMPS",
		  "mid": "Uf8787f878b913f22d102aff4c69c7c67",
		  "pcounter": 4,
		  "song_id": 1141763442,
		  "song_name": "なんでもないや_(movie_ver_)",
		  "time": "2017:01/18/17:14:28:44"
		}

## お気に入り情報取得 [/get_likedata/<mid>]

### 情報取得 [GET]

#### 処理概要

* お気に入り情報を最後の1つ取得
* headerにx-api-keyを付与

		{
		  "artist_name": "西野_カナ",
		  "mid": "Uf8787f878b913f22d102aff4c69c7c67",
		  "pcounter": 7,
		  "song_id": null,
		  "song_name": "トリセツ",
		  "time": "2017:01/16/17:13:25:02"
		}


## 会員情報挿入 [/post_request_userdata]

### 情報挿入 [POST]

#### 処理概要

* 会員情報を1つ挿入
* エンドポイントに/post_request_userdataを追記しpostするmid,nicknameを記述
* headerにx-api-keyを付与

https://p0mm6k7ykh.execute-api.ap-northeast-1.amazonaws.com/dev/post_request_userdata
‘{“mid” : “???”, “nickname” : “???”, “pictureUrl”:”???”}’ 

## テキスト情報挿入 [/post_request_textdata]

### 情報挿入 [POST]

#### 処理概要

* テキスト情報を1つ挿入
* エンドポイントに/post_request_textdataを追記
* headerにx-api-keyを付与

https://p0mm6k7ykh.execute-api.ap-northeast-1.amazonaws.com/dev/post_request_textdata
‘{“mid” : “???”, “text” : “???”, “context”:”???”,”story_flag”:”???”}’ 

## 音楽情報挿入 [/post_request_musicdata]

### 情報挿入 [POST]

#### 処理概要

* 音楽情報を1つ挿入
* エンドポイントに/post_request_musicdataを追記
* headerにx-api-keyを付与

https://p0mm6k7ykh.execute-api.ap-northeast-1.amazonaws.com/dev/post_request_musicdata
‘{“mid” : “???”, “artist_name” : “???”, “song_name” : “???”, “song_id” : ”???”, “artist_id”:”???”}’

## お気に入り情報挿入 [/post_request_likedata]

### 情報挿入 [POST]

#### 処理概要

* お気に入り情報を1つ挿入
* エンドポイントに/post_request_likedataを追記
* headerにx-api-keyを付与

https://p0mm6k7ykh.execute-api.ap-northeast-1.amazonaws.com/dev/post_request_likedata
‘{“mid” : “???”, “artist_name” : “???”, “song_name” : “???”, “song_id” : ”???”, “artist_id”:”???”}’ 

## 再生数の上位５つ取得 [/scan_musicdata/<mid>]

### 情報取得 [GET]

#### 処理概要

* 再生数の上位５つ取得
* headerにx-api-keyを付与

## お気に入りの上位５つ取得 [/scan_likedata/<mid>]

### 情報取得 [GET]

#### 処理概要

* お気に入りの上位５つ取得
* headerにx-api-keyを付与

## よく聴くアーティストの上位５つ取得 [/scan_artistdata/<mid>]

### 情報取得 [GET]

#### 処理概要

* よく聴くアーティストの上位５つ取得
* headerにx-api-keyを付与

## ランダムで５つユーザーとユーザーの聴いている曲取得 [/scan_randomuserdata/<nickname>]

### 情報取得 [GET]

#### 処理概要

* ランダムで５つユーザーとユーザーの聴いている曲取得
* headerにx-api-keyを付与
* groupは返って来ない
* 以下はpictureUrlも返す仕様になっているが、ユーザーに情報がない時の例

		{
		  "results": [
		    {
		      "mid": "4175-30241",
		      "nickname": "497-123740",
		      "pictureUrl": "4309523@471"
		    },
		    {
		      "mid": "U42257e295b6cff33721e0a15efb9f399",
		      "nickname": "ゆり"
		    },
		    {
		      "mid": "Uf8787f878b913f22d102aff4c69c7c67",
		      "nickname": "KENZO",
		      "pictureUrl": "http://dl.profile.line-cdn.net/0m00d512ac7251e4649656d1d706169a4499090db24a2d"
		    },
		    {
		      "mid": "Udcb1a4093025fd5cb17ed6afbd01163c",
		      "nickname": "Keijiro Toyoda"
		    },
		    {
		      "mid": "4907-23417",
		      "nickname": "95741-20341",
		      "pictureUrl": "4u51-2y@413"
		    }
		  ]
		}

## 他の人がお気に入りに登録してある曲を５つランダムで取得 [/scan_randomlike/<mid>]

### 情報取得 [GET]

#### 処理概要

* 他の人がお気に入りに登録してある曲を５つランダムで取得
* headerにx-api-keyを付与
* groupは返って来ない

		{
		  "results": [
		    {
		      "artist_id": 1104839687,
		      "artist_name": "ちゃんみな",
		      "mid": "U91df639b36f6ca16a7e0639849e12272",
		      "pcounter": 0,
		      "song_id": 1142062743,
		      "song_name": "FXXKER",
		      "time": "2017:02/03/17:11:58:35",
		      "unixtime": 1486090715
		    },
		    {
		      "artist_id": 280215821,
		      "artist_name": "デミ・ロヴァート",
		      "mid": "U09890c1e99837e155dcf271cfd83b51a",
		      "pcounter": 0,
		      "song_id": 954491816,
		      "song_name": "ReallyDon'tCare(featCherLloyd)",
		      "time": "2017:02/04/17:16:18:45",
		      "unixtime": 1486192725
		    },
		    {
		      "artist_id": 150974880,
		      "artist_name": "Superfly",
		      "mid": "U382514d6fac41cfbc076f4c8d5aea668",
		      "pcounter": 0,
		      "song_id": 992816390,
		      "song_name": "Beautiful",
		      "time": "2017:02/15/17:09:25:45",
		      "unixtime": 1487118345
		    },
		    {
		      "artist_id": 269598403,
		      "artist_name": "星野源",
		      "mid": "U42456ae7dcec74c6d8e3947ba2d49e56",
		      "pcounter": 0,
		      "song_id": 1156375396,
		      "song_name": "恋",
		      "time": "2017:02/07/17:01:46:41",
		      "unixtime": 1486399601
		    },
		    {
		      "artist_id": 63346553,
		      "artist_name": "リアーナ",
		      "mid": "U2ea06543275cc0f7e1b560e189459700",
		      "pcounter": 0,
		      "song_id": 479237572,
		      "song_name": "Love_on_the_Brain",
		      "time": "2017:02/02/17:06:20:07",
		      "unixtime": 1485984007
		    }
		  ]
		}


## 全てのユーザーのデータ取得 [/scan_alluserdata]

### 情報取得 [GET]

#### 処理概要

* 全てのユーザーのデータ取得
* headerにx-api-keyを付与

curl -i https://p0mm6k7ykh.execute-api.ap-northeast-1.amazonaws.com/dev/scan_alluserdata -H x-api-key:vrPszLwVdm136Ihmnt22q77oKbDXuZlm9ikcpxnR

