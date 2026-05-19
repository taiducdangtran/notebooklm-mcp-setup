#!/usr/bin/env bash
set -e

echo "========================================"
echo "  NotebookLM MCP Setup Script"
echo "========================================"

# Check Node.js
if ! command -v node &>/dev/null; then
  echo "ERROR: Node.js >= 18 is required. Install from https://nodejs.org"
  exit 1
fi

NODE_VER=$(node -e "process.exit(parseInt(process.version.slice(1)) < 18 ? 1 : 0)" 2>&1)
if [ $? -ne 0 ]; then
  echo "ERROR: Node.js >= 18 required. Current: $(node --version)"
  exit 1
fi

echo "Node.js version: $(node --version)  OK"

# Check Chrome
if command -v google-chrome &>/dev/null; then
  echo "Chrome: $(google-chrome --version)  OK"
elif command -v chromium-browser &>/dev/null; then
  echo "Chromium: $(chromium-browser --version)  OK"
else
  echo "WARNING: Chrome/Chromium not found. The MCP server includes a bundled Chromium fallback."
fi

# Install (cache) the package
echo ""
echo "Downloading notebooklm-mcp package..."
npx --yes notebooklm-mcp@latest --version 2>/dev/null | head -5 || true

echo ""
echo "========================================"
echo "  Setup complete!"
echo ""
echo "  Next step: run authentication"
echo "    npx notebooklm-mcp@latest"
echo "  Then call the 'setup_auth' MCP tool once"
echo "  to log into your Google account."
echo "========================================"
