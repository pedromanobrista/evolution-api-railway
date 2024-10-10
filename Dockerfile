# Usa a imagem do Node.js como base
FROM node:16-alpine

# Cria o diretório de trabalho no container
WORKDIR /app

# Copia o package.json e o package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instala as dependências do Node.js
RUN npm install

# Copia todo o código da aplicação para o diretório de trabalho
COPY . .

# Constrói a aplicação
RUN npm run build

# Expõe a porta que o serviço irá rodar
EXPOSE 3000

# Comando para rodar a aplicação
CMD ["npm", "start"]
