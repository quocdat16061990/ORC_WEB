#!/usr/bin/env bash
set -euo pipefail

LOG_FILE=~/ORC_WEB/deploy.log   # ✅ đúng thư mục dự án
ts() { date '+%Y-%m-%d %H:%M:%S'; }
log() { echo "[$(ts)] $*" | tee -a "$LOG_FILE"; }

log "==============================================="
log "🚀 Bắt đầu deployment..."
log "📥 Pulling latest code from GitHub..."

cd ~/ORC_WEB
git fetch --all -p        2>&1 | tee -a "$LOG_FILE"
git reset --hard origin/main 2>&1 | tee -a "$LOG_FILE"

log "🔧 Running deployment steps..."
# Thêm các bước deploy của Sếp ở đây (build/up docker, migrate, v.v.)
# dsaddsasad
log "✅ Deployment hoàn tất!"
log "==============================================="
