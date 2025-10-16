#!/bin/sh

# Yeh script root user bankar chalegi.
echo "Fixing permissions for data volume..."

# Volume folder ka maalik node user ko banao
chown -R node:node /home/node/.n8n

echo "Permissions fixed."

# Ab, suraksha ke liye 'node' user bankar n8n ko start karo.
# 'tini' aur 'su-exec' is kaam ko sahi se karte hain.
exec tini -- su-exec node n8n start
