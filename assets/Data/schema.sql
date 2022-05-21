DROP DATABASE IF EXISTS chocolate_db;
CREATE DATABASE chocolate_db;

--USE chocolate_db;

CREATE TABLE chocolate ( 
    id INT  NOT NULL,
    company_location VARCHAR(250) NOT NULL ,
    country_of_bean_origin  VARCHAR(50) NOT NULL,
    cocoa_percent int NOT NULL,
    counts_of_ingredients int NOT NULL,
    cocoa_butter boolean NOT NULL,
    vanilla boolean NOT NULL,
    lecithin boolean NOT NULL,
    salt boolean NOT NULL,
    sugar boolean NOT NULL,
    sweetener_without_sugar boolean NOT NULL ,
    PRIMARY KEY (id)
);

CREATE TABLE region (
    id  INT AUTO_INCREMENT NOT NULL,
    chocolate_id INT NOT NULL,
    country VARCHAR(50)NOT NULL,
    region VARCHAR(50)NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (chocolate_id) REFERENCES chocolate (id)
);

CREATE TABLE tastes (
    index INT  AUTO_INCREMENT NOT NULL,
    chocolate_id INT NOT NULL,
    word VARCHAR(250) NOT NULL,
    PRIMARY KEY (index),
    FOREIGN KEY (chocolate_id) REFERENCES chocolate (id)
);