#!/bin/bash

# Ask user to provide directory to back up
read -p "Enter full path of directory you want to back up: " src_dir

# Check if directory exists
if [ ! -d "$src_dir" ]; then
    echo "❌ Directory does not exist: $src_dir"
    exit 1
fi

# WSL-compatible backup directory
backup_dir="/mnt/c/Users/satya/Desktop/backups"

# Create backup directory if it doesn't exist
mkdir -p "$backup_dir"

# Generate timestamp
timestamp=$(date +"%Y%m%d_%H%M%S")

# Generate archive name
archive_name="backup_$(basename "$src_dir")_$timestamp.tar.gz"

# Full archive path
archive_path="$backup_dir/$archive_name"

# Create the backup
tar -czf "$archive_path" -C "$(dirname "$src_dir")" "$(basename "$src_dir")"

# Check result
if [ -f "$archive_path" ]; then
    echo "✅ Backup completed: $archive_path"
else
    echo "❌ Backup failed"
fi
