#!/bin/bash
set -e

echo "🔧 Running maintenance tasks..."

echo "📦 Updating prek hooks..."
prek autoupdate
prek autoupdate --config prek-extra.toml

echo "🚀 Updating pinned GitHub Actions..."
pinact run --update

echo "✅ Maintenance tasks completed!"
