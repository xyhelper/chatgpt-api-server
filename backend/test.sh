#!/bin/bash

# 设置请求的 URL
URL="http://127.0.0.1:8001/backend-api/conversation"

# 设置token
TOKEN="4c22dd31-23b3-4e72-8589-e88f47c087b9"

# 设置请求体数据
DATA='{
    "action": "next",
    "messages": [
        {
            "id": "08e897bc-c610-4ac4-ac30-7be96e17331e",
            "author": {
                "role": "user"
            },
            "content": {
                "content_type": "text",
                "parts": [
                    "hi\n"
                ]
            }
        }
    ],
    "parent_message_id": "1d46d519-c4a5-4676-a62f-a531dc1e81dd",
    "model": "gpt-4",
    "timezone_offset_min": -480
}'

# 发起 POST 请求，并指定请求体为 JSON 格式
curl -X POST \
     -H "Content-Type: application/json" \
     -H "Authorization: Bearer $TOKEN" \
     -d "$DATA" \
     "$URL"
