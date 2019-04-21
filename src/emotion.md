FORMAT: 1A
 
# Group EMOTION-ANALYTICS
 
## エンドポイント 
[http://13.114.196.187:8000]
 
 
+ Request (application/json)
 
    + API
 
            [/api/v1/judge/?sentences=]

 	+ Headers
 
            Accept: application/json

    + Transfer-Encoding

    		chunked

   	+ Connection

			keep-alive

	+ X-Frame-Options

			SAMEORIGIN




## 楽曲情報取得 [/api/v1/judge/(:sentences)]

### 情報取得 [GET]

#### 処理概要

* 楽曲情報を取得

		{
		  "sentence": "悲しい",
		  "judge_word": [
		    "悲しい"
		  ],
		  "emotion_dict": {
		    "happy": 0,
		    "relax": 0,
		    "love": 0,
		    "sad": 3,
		    "excited": 0,
		    "angry": 0
		  },
		  "emotion": "sad"
		}%

curl -i -X GET -H "Content-Type:application/json" '13.114.196.187:8000/api/v1/judge/?sentences=悲しい'              
