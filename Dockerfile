# Usa a imagem oficial do PHP
FROM php:8.3-cli

# Define o diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Cria um script simples "Hello World"
COPY hello.php .

# Define o comando padrão ao iniciar o container
CMD ["php", "hello.php"]
