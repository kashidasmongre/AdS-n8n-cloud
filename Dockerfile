# n8n ki official image se shuru karo
FROM n8nio/n8n:latest

# Root user bano taaki permissions badal sakein
USER root

# Zaroori folder banao aur turant uska maalik node user ko bana do
# Yeh build ke time par hi permission theek kar dega
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# Suraksha ke liye wapas normal node user ban jao
USER node
