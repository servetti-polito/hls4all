#! /bin/bash
rm [0-9]*.webm
at now +1 minute -f hls4all_purge.sh
