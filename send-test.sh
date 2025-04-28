#!/bin/bash
set -o xtrace
cargo build --bin dtnsend
while true; do
	echo "TESTPACKET at $(date --iso-8601=seconds)" | target/debug/dtnsend --port 4001 --receiver dtn://node2/incoming --lifetime 60
	#echo "TESTPACKET at $(date --iso-8601=seconds)" | target/debug/dtnsend --port $1 --receiver $2 --lifetime 60
	sleep 15s
done
