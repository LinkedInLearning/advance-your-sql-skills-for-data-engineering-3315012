USE mariadb;
-- Using the root user, grant access to the mariadb user.
GRANT ALL PRIVILEGES ON * TO 'mariadb' @'%' IDENTIFIED BY 'mariadb';

-- Intro DBT Setup
CREATE OR REPLACE DATABASE intro COMMENT 'intro';

-- Chapter 2: 911
CREATE OR REPLACE DATABASE chapter2 COMMENT 'Chapter 2';

-- Chapter 3: Crypto
CREATE OR REPLACE DATABASE chapter3 COMMENT 'Chapter 3';

-- Chapter 4: Construction
CREATE OR REPLACE DATABASE chapter4 COMMENT 'Chapter 4';

-- Chapter 5: Testing
CREATE OR REPLACE DATABASE chapter5 COMMENT 'Chapter 5';


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