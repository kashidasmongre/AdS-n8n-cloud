# n8n ki official image se shuru karo
FROM n8nio/n8n:latest

# Apni custom script ko container ke andar copy karo
COPY entrypoint.sh /usr/local/bin/

# Script ko chalane ki permission do
RUN chmod +x /usr/local/bin/entrypoint.sh

# Is script ko container ka entrypoint bana do
ENTRYPOINT ["entrypoint.sh"]
