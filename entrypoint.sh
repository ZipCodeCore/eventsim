#! /bin/bash
nohup ./eventsim.sh -c "examples/example-config.json" --from 365 --nusers 1000 --growth-rate 0.01 ./output > eventsim.stoud &
fluentd -c ./fluent.conf -vv