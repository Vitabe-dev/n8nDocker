FROM node:18-alpine

RUN apk add --no-cache bash curl python3 make g++ openssh \
  && npm install --location=global n8n

WORKDIR /home/node

COPY ./data ./data  # <- Adicione esta linha se tiver arquivos de importação

ENV PORT=5678
EXPOSE 5678

CMD ["n8n"]
