# n8n ki official image se shuru karo
FROM n8nio/n8n:latest

# --- AAKHRI SOLUTION YAHAN HAI ---
# Zaroori setting ko seedha image ke andar hi set kar do
# Isse n8n is niyam ko ignore nahi kar paayega
ENV N8N_RATE_LIMIT_ENABLED=false

# Root user bano taaki permissions badal sakein
USER root

# Zaroori folder banao aur turant uska maalik node user ko bana do
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# Suraksha ke liye wapas normal node user ban jao
USER node
