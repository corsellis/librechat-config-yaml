#!/bin/bash

# Script to update Gemini Search MCP URL in LibreChat configuration
# Usage: ./update-gemini-url.sh YOUR-RAILWAY-URL

if [ $# -eq 0 ]; then
    echo "Usage: ./update-gemini-url.sh YOUR-RAILWAY-URL"
    echo "Example: ./update-gemini-url.sh gemini-search-mcp-production-abc123"
    exit 1
fi

RAILWAY_URL=$1
CONFIG_FILE="librechat.yaml"

# Remove .up.railway.app if user included it
RAILWAY_URL=${RAILWAY_URL%.up.railway.app}

echo "Updating LibreChat configuration with Railway URL: $RAILWAY_URL.up.railway.app"

# Update the URL in the config file
sed -i '' "s|https://gemini-search-mcp-production.up.railway.app/mcp|https://$RAILWAY_URL.up.railway.app/mcp|g" $CONFIG_FILE

echo "✅ Updated LibreChat configuration!"
echo "   MCP endpoint: https://$RAILWAY_URL.up.railway.app/mcp"
echo ""
echo "Next steps:"
echo "1. Push this config to your LibreChat deployment"
echo "2. Restart LibreChat"
echo "3. Test with /GS command in chat"
