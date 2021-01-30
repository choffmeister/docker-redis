#!/bin/sh

CMD="redis-server"
if [ ! -z $REDIS_PORT ]; then
    CMD="$CMD --port $REDIS_PORT"
fi
if [ ! -z $REDIS_PASS ]; then
    CMD="$CMD --requirepass $REDIS_PASS"
fi
$CMD
