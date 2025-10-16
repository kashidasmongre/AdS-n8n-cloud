#!/bin/sh

# Volume folder ka maalik node user ko banao
chown -R node:node /home/node/.n8n

# Ab n8n ko start karo
# 'exec tini --' n8n ko theek se chalane ke liye zaroori hai
exec tini -- n8n start
