#!/bin/sh

# Yeh script root user bankar chalegi.
echo "Fixing permissions for data volume..."

# Volume folder ka maalik node user ko banao
chown -R node:node /home/node/.n8n

echo "Permissions fixed."

# Ab, 'node' user bankar n8n ko start karo,
# lekin saare environment variables ko saath lekar jao.
exec tini -- su-exec node sh -c 'exec n8n start'
