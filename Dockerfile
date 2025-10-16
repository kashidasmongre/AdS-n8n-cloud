# n8n ki official image se shuru karo
FROM n8nio/n8n:latest

# Root user bano taaki permissions badal sakein
USER root

# Hamari problem ka solution: .n8n folder ka maalik node user ko bana do
RUN chown -R node:node /home/node/.n8n

# Suraksha ke liye wapas normal node user ban jao
USER node
