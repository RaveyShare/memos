#!/bin/bash

# Exit on error
set -e

echo "🚀 Starting Memos deployment..."

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "❌ Docker is not installed. Please install Docker first."
    exit 1
fi

echo "🏗️  Building and starting services..."
# Build locally using the Dockerfile.local and start the container
docker compose -f docker-compose.prod.yaml up -d --build

echo "✅ Deployment successful!"
echo "🌍 Access your Memos at: http://<YOUR_SERVER_IP>:5230"
