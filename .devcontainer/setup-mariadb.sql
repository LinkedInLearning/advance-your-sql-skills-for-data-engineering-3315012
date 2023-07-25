

-- Intro DBT Setup
CREATE OR REPLACE DATABASE intro COMMENT 'intro';
-- GRANT ALL PRIVILEGES ON intro.* TO 'mariadb' @'%' IDENTIFIED BY 'mariadb';

-- Chapter 2: 911
CREATE OR REPLACE DATABASE chapter2 COMMENT 'Chapter 2';
-- GRANT ALL PRIVILEGES ON chapter2.* TO 'mariadb' @'%' IDENTIFIED BY 'mariadb';

-- Chapter 3: Crypto
CREATE OR REPLACE DATABASE chapter3 COMMENT 'Chapter 3';
-- GRANT ALL PRIVILEGES ON chapter3.* TO 'mariadb' @'%' IDENTIFIED BY 'mariadb';


-- Chapter 4: Construction
CREATE OR REPLACE DATABASE chapter4 COMMENT 'Chapter 4';
-- GRANT ALL PRIVILEGES ON chapter4.* TO 'mariadb' @'%' IDENTIFIED BY 'mariadb';


-- Chapter 5: Testing
CREATE OR REPLACE DATABASE chapter5 COMMENT 'Chapter 5';
-- GRANT ALL PRIVILEGES ON chapter5.* TO 'mariadb' @'%' IDENTIFIED BY 'mariadb';

-- Using the root user, grant access to the mariadb user.
GRANT ALL PRIVILEGES ON * TO 'mariadb' @'%' IDENTIFIED BY 'mariadb';

USE intro;
USE chapter2;
USE chapter3;
USE chapter4;
USE chapter5;





-- CREATE TABLE MyTable (
--   ID INTEGER NOT NULL AUTO_INCREMENT,
--   Item VARCHAR(255),
--   PRIMARY KEY (ID)
-- );

-- Populate the table
-- INSERT INTO
--   MyTable (Item)
-- VALUES
--   ('One'),
--   ('Two'),
--   ('Three');