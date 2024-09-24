CREATE TABLE category (
	category_id VARCHAR(10) PRIMARY KEY,
	category VARCHAR(20) NOT NULL
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) PRIMARY KEY,
	subcategory VARCHAR(30) NOT NULL
);

CREATE TABLE contacts (
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR(60) NOT NULL
);

CREATE TABLE campaign (
	cf_id INT PRIMARY KEY,
	contact_id INT,
	company_name VARCHAR(50),
	description VARCHAR(100),
	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR(15),
	backers_count INT,
	country VARCHAR(5),
	currency VARCHAR(5),
	launched_date DATE,
	end_date DATE,
	category_id VARCHAR(10),
	subcategory_id VARCHAR(10),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
)

SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;