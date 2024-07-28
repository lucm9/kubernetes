FROM mysql:5.7

# Expose the MySQL port
EXPOSE 3306

# Copy the initialization script and data
COPY import.sh /docker-entrypoint-initdb.d/
COPY mydatabase.sql /docker-entrypoint-initdb.d/
