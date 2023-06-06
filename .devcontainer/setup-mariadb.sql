-- Using the root user, grant access to the mariadb user.
GRANT ALL PRIVILEGES ON *.* TO 'mariadb'@'%' IDENTIFIED BY 'mariadb';

-- Create a table in the database
USE mariadb;
CREATE TABLE MyTable (
  ID INTEGER NOT NULL AUTO_INCREMENT,
  Item VARCHAR(255),
  PRIMARY KEY (ID)
);

-- Populate the table
INSERT INTO MyTable (Item) VALUES ('One'), ('Two'), ('Three');