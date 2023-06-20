#!/bin/bash
curl -o /usr/local/bin/mc https://dl.min.io/client/mc/release/linux-amd64/mc
chmod +x /usr/local/bin/mc
mc alias set minio http://minio:9000 ${MINIO_ACCESS_KEY} ${MINIO_SECRET_KEY}

# TODO: Check  if the bucket already exists
# Create Bucket
mc mb minio/de-streaming-test