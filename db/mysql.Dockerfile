# Use a imagem oficial do MySQL como base
FROM mysql

# Defina a senha do root
ENV MYSQL_ROOT_PASSWORD=123

# Expõe a porta padrão do MySQL
EXPOSE 3306

# Comando padrão para iniciar o MySQL
CMD ["mysqld"]