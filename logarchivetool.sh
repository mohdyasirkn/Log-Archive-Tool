#!/bin/bash
if [ -z "$1" ]; then
	echo "Usage: $0 <log-directory>"
	exit 1
fi

LOG_DIR=$1
if [ ! -d "$LOG_DIR" ]; then
	echo "Error: Directory $LOG_DIR does not exist"
	exit 1
fi

ARCHIVE_DIR="$HOME/logs_archive"
mkdir -p "$ARCHIVE_DIR"

TIME_STAMP=$(date +"%Y%m%d_%H%M%S")

ARCHIVE_FILE="logs_archive_$TIME_STAMP.tar.gz"
ARCHIVE_PATH="$ARCHIVE_DIR/$ARCHIVE_FILE"

tar -czvf "$ARCHIVE_PATH" --ignore-failed-read -C "$LOG_DIR" .

if [ $? -eq 0 ]; then
	echo "Logs successfully archived to $ARCHIVE_PATH"
else
	echo "Error: Failed to archive logs."
	exit 1
fi

LOG_FILE="$ARCHIVE_DIR/archive_log.txt"
echo "[$(date +'%Y-%m-%d %H:%M:%S')] Archived $LOG_DIR to $ARCHIVE_PATH" >> "$LOG_FILE"
