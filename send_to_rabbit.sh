#!/bin/bash

i="0"

while [[ "$i" -lt 100 ]]; do
    echo "this is from shell $i" | rabbitmqadmin publish exchange=amq.default routing_key=hello_queue
    i=$[$i+1]
done