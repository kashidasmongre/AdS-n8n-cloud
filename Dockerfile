# n8n ki official image se shuru karo
FROM n8nio/n8n:latest

# --- FIX YAHAN HAI ---
# Root user bano taaki humein saari permissions mil jaayein
USER root

# Apni custom script ko container ke andar copy karo
COPY entrypoint.sh /usr/local/bin/

# Script ko chalane ki permission do (ab yeh command root user bankar chalegi)
RUN chmod +x /usr/local/bin/entrypoint.sh

# Is script ko container ka entrypoint bana do
ENTRYPOINT ["entrypoint.sh"]
