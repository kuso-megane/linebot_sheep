#!/bin/sh

ports=`echo $PORTS`
uri="http://localhost:${ports}/callback"




curl -X POST \
-H "Content-Type: application/json" \
-H "x-line-signature: test_signature" \
-d '{
    "destination":"xxxxxxxxxx",
    "events": [
    {
      "replyToken": "nHuyWiB7yP5Zw52FIkcQobQuGDXCTA",
      "type": "message",
      "mode": "active",
      "timestamp": 1462629479859,
      "source": {
        "type": "user",
        "userId": "U4af4980629..."
      },
      "message": {
        "id": "325708",
        "type": "text",
        "text": "@example Hello, world! (love)",
        "emojis": [
          {
            "index": 14,
            "length": 6,
            "productId": "5ac1bfd5040ab15980c9b435",
            "emojiId": "001"
          }
        ],
        "mention": {
          "mentionees": [
            {
              "index": 0,
              "length": 8,
              "userId": "U850014438e..."
            }
          ]
        }
      }
    }
  ]}' \
$uri



