#! /bin/bash
mc alias set minio http://minio:9000 ${MINIO_ACCESS_KEY} ${MINIO_SECRET_KEY}
mc mb minio/de-streaming-test
nohup bash eventsim.sh -c "examples/example-config.json" --from 365 --nusers 1000 --growth-rate 0.01 ./output > eventsim.stoud &
fluentd -c ./fluent.conf