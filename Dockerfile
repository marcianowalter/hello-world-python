# Use a imagem oficial do Python como base
FROM python:3

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o arquivo de requisitos
COPY requirements.txt ./

# Instale as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copie o restante do código da aplicação
COPY . .

# Exponha a porta que a aplicação irá rodar
EXPOSE 5000

# Comando para rodar a aplicação
CMD ["python", "app.py"]
