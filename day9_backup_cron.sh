#!/bin/bash
# Automated backup script for cron

src_dir="/mnt/c/Users/satya/Documents/ShellScripting/shell-practice"
backup_dir="/mnt/c/Users/satya/Desktop/backups"

# Check if source directory exists
if [ ! -d "$src_dir" ]; then
    echo "Source directory does not exist: $src_dir"
    exit 1
fi

# Create backup directory if it doesn't exist
mkdir -p "$backup_dir"

# Create a timestamp
timestamp=$(date +"%Y%m%d_%H%M%S")

# Generate archive name
archive_name="backup_$(basename "$src_dir")_$timestamp.tar.gz"

# Create the archive
tar -czf "$backup_dir/$archive_name" "$src_dir"

echo "✅ Backup created at: $backup_dir/$archive_name"
0 23 * * * /mnt/c/Users/satya/Documents/ShellScripting/shell-practice/backup_cron.sh >>/mnt/c/Users/satya/Documents/ShellScripting/shell-practice/cron_backup.log 2>&1
