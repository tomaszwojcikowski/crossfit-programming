#!/usr/bin/env bash

SETUP_DIR="/home/tomasz-wojcikowski/personal/crossfit"
UNIT_SRC="$SETUP_DIR/systemd/sync_workouts.service"
TIMER_SRC="$SETUP_DIR/systemd/sync_workouts.timer"
SYNC_SCRIPT="$SETUP_DIR/sync_workouts.sh"
TARGET_DIR="$HOME/.config/systemd/user"

set -euo pipefail

echo "Installing systemd user unit and timer to: $TARGET_DIR"
mkdir -p "$TARGET_DIR"

cp -v "$UNIT_SRC" "$TARGET_DIR/"
cp -v "$TIMER_SRC" "$TARGET_DIR/"

chmod +x "$SYNC_SCRIPT" || true

echo "Reloading systemd user daemon..."
if systemctl --user daemon-reload; then
    echo "Enabling and starting timer..."
    if systemctl --user enable --now sync_workouts.timer; then
        echo "Timer enabled and started. Status:"
        systemctl --user status --no-pager sync_workouts.timer || true
    else
        echo "Failed to enable/start timer. You can enable it manually with:"
        echo "  systemctl --user enable --now sync_workouts.timer"
    fi
else
    echo "Warning: systemctl --user daemon-reload failed. If your system doesn't use systemd user, enable the timer manually or use cron." >&2
fi

cat <<EOF
Installed. By default the timer is set to run daily at 02:00.
To change schedule, edit: $TARGET_DIR/sync_workouts.timer (OnCalendar value)
To uninstall: run
  systemctl --user disable --now sync_workouts.timer
  rm -f $TARGET_DIR/sync_workouts.timer $TARGET_DIR/sync_workouts.service
EOF
