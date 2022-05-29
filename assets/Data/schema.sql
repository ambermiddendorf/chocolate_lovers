DROP DATABASE IF EXISTS chocolate_db;
CREATE DATABASE chocolate_db;

--USE chocolate_db;

-- Creating table for regions
CREATE TABLE regions(
	country VARCHAR(50) NOT NULL,
	region VARCHAR(50) NOT NULL,
	PRIMARY KEY (country)
);
-- Creating table for chocolate_lovers
CREATE TABLE chocolate (
    chocolate_id INT NOT NULL,
    company_location VARCHAR(50) NOT NULL,
	country_of_bean_origin VARCHAR(50) NOT NULL,
	cocoa_percent FLOAT NOT NULL,
	counts_of_ingredients INT NOT NULL,
	cocoa_butter INT NOT NULL,
	vanilla INT NOT NULL,
	lecithin INT NOT NULL,
	salt INT NOT NULL,
	sugar INT NOT NULL,
	sweetener_without_sugar INT NOT NULL,
	rating INT NOT NULL,
    PRIMARY KEY (chocolate_id),
	FOREIGN KEY (company_location) REFERENCES regions (country),
	FOREIGN KEY (country_of_bean_origin) REFERENCES regions (country)
);
-- Creating table for tastes
CREATE TABLE tastes (
	chocolate_id INT NOT NULL,
	word VARCHAR(50) NOT NULL,
	FOREIGN KEY (chocolate_id) REFERENCES chocolate (chocolate_id)
);  