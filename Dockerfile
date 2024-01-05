# Use the official MySQL image from Docker Hub
FROM mysql:latest

# Environment variables for MySQL root user and password
ENV MYSQL_ROOT_PASSWORD=admin

# Copy SQL file containing the query to alter user authentication method
COPY setup.sql /docker-entrypoint-initdb.d/setup.sql

# Expose the default MySQL port
EXPOSE 3306

# Set the default database to be created when the container starts
ENV MYSQL_DATABASE=employeems

# Specify the command to be run when the container starts
CMD ["--default-authentication-plugin=mysql_native_password"]
