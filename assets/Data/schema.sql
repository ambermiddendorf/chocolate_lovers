DROP DATABASE IF EXISTS chocolate_db;
CREATE DATABASE chocolate_db;

--USE chocolate_db;

CREATE TABLE chocolate( 
    id INT PRIMARY KEY NOT NULL,
    company_location VARCHAR(250) NOT NULL ,
    cocoa_percent int NOT NULL,
    counts_of_ingredients int NOT NULL,
    cocoa_butter boolean NOT NULL,
    vanilla boolean NOT NULL,
    lecithin boolean NOT NULL,
    salt boolean NOT NULL,
    sugar boolean NOT NULL,
    sweetener_without_sugar boolean NOT NULL,
    ratings int NOT NULL
);

CREATE TABLE location (
    id  SERIAL PRIMARY KEY,
    country_of_bean_origin  VARCHAR(50) NOT NULL,
    country VARCHAR(50)NOT NULL,
    region VARCHAR(50)NOT NULL,
    FOREIGN KEY (country) REFERENCES chocolate (country_of_bean_origin)
);

CREATE TABLE tastes (
    index SERIAL PRIMARY KEY,
    chocolate_id INT NOT NULL,
    word VARCHAR(250) NOT NULL,
    FOREIGN KEY (chocolate_id) REFERENCES chocolate (id)
);