#!/bin/bash

key="$1"
encoded="$(echo -n $key | base64)"

cat << EOF
apiVersion: v1
kind: Secret
metadata:
  name: my-api-secret
type: Opaque
data:
  $key: $encoded
EOF

cat << EOF


$encoded
EOF