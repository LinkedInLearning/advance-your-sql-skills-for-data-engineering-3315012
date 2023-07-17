# Run an initial setup script for the MariaDB database
if [ -f .devcontainer/setup-mariadb.sql ]; then
  sleep 5
  mysql -h 127.0.0.1 -uroot -pmariadb < .devcontainer/setup-mariadb.sql
fi

# mkdir -p /home/vscode/.dbt
# touch /home/vscode/.dbt/profiles.yml

# echo """
