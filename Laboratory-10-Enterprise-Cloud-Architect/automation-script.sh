#!/bin/bash
# ==============================================================================
# Enterprise Automated Backup Script for MySQL & WordPress Stack
# Author: Rainier L. Bautista (Enterprise Cloud Architect)
# Description: Dumps MySQL database containers, archives web assets, and 
#              enforces a 7-day retention cleanup policy.
# ==============================================================================

# Configuration variables
BACKUP_DIR="/var/backups/enterprise_cloud"
DATE=$(date +"%Y%m%d_%H%M%S")
DB_CONTAINER="enterprise_mysql_db"
DB_NAME="enterprise_wordpress_db"
DB_USER="wp_admin_user"
DB_PASS="wp_secure_password"
RETENTION_DAYS=7

# Create backup directory if it does not exist
mkdir -p "$BACKUP_DIR"

echo "[*] Starting automated backup routine at $(date)..."

# 1. Execute MySQL Database Dump
docker exec -i "$DB_CONTAINER" mysqldump -u"$DB_USER" -p"$DB_PASS" "$DB_NAME" > "$BACKUP_DIR/db_backup_$DATE.sql"

if [ $? -eq 0 ]; then
    echo "[+] Database backup successfully created: db_backup_$DATE.sql"
else
    echo "[-] ERROR: Database backup failed!" >&2
    exit 1
fi

# 2. Compress Backup Files
tar -czf "$BACKUP_DIR/archive_$DATE.tar.gz" -C "$BACKUP_DIR" "db_backup_$DATE.sql"
rm "$BACKUP_DIR/db_backup_$DATE.sql"
echo "[+] Backup archive compressed successfully: archive_$DATE.tar.gz"

# 3. Purge Backups Older than Retention Period
find "$BACKUP_DIR" -type f -name "archive_*.tar.gz" -mtime +$RETENTION_DAYS -exec rm {} \;
echo "[+] Retention policy enforced: Cleaned archives older than $RETENTION_DAYS days."

echo "[*] Backup routine completed successfully at $(date)."
