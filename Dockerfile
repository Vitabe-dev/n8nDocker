FROM node:18-alpine

# Instala dependências essenciais
RUN apk add --no-cache \
  bash \
  curl \
  python3 \
  make \
  g++ \
  openssh \
  && npm install --location=global n8n

# Cria diretório de trabalho
WORKDIR /data

# Expõe a porta usada pelo N8N
ENV PORT=5678
EXPOSE 5678

# Comando para iniciar o N8N
CMD ["n8n", "start"]
