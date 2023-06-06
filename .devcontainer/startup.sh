# Run an initial setup script for the MariaDB database
if [ -f .devcontainer/setup-mariadb.sql ]; then
  sleep 10
  mysql -h 127.0.0.1 -uroot -pmariadb < .devcontainer/setup-mariadb.sql
fi