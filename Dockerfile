FROM n8nio/n8n

# Define a porta onde o N8N vai escutar internamente
ENV PORT=5678

# Expõe essa porta para que o Railway possa mapeá-la para o mundo externo
EXPOSE 5678

# Comando padrão para iniciar o N8N
CMD ["n8n"]
