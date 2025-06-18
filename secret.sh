#!/bin/bash

key="$1"
value="$2"

if [[ -z "$key" || -z "$value" ]]; then
  echo "Usage: $0 <key> <value>"
  exit 1
fi

# 반드시 쌍따옴표로 감싸야 -n 같은 입력을 안전하게 처리함
encoded=$(echo -n "$value" | base64)

cat << EOF
apiVersion: v1
kind: Secret
metadata:
  name: my-api-secret
type: Opaque
data:
  $key: $encoded
EOF
