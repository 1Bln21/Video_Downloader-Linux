#!/usr/bin/env bash
# Starter-Script für Video Downloader
# Liegt im gleichen Ordner wie video_downloader_linux.py

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
exec python "$SCRIPT_DIR/video_downloader_linux.py"
