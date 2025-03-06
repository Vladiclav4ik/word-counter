#!/bin/bash

docker run --rm myapp-test
if [ $? -eq 0 ]; then
	echo "Container exited successfully"
else
	echo "Container failed"
	exit 1
fi
