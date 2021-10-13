USE carshop;

CREATE TABLE IF NOT EXISTS brands (
  id INT(4) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  brand Varchar(50)
) engine=InnoDB;

CREATE TABLE IF NOT EXISTS cars (
  id INT(4) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  car_name VARCHAR(30),
  car_year INT(4),
  car_model INT(4),
  brand_id INT(4) UNSIGNED NOT NULL,
  FOREIGN KEY (brand_id) REFERENCES brands(id)
) engine=InnoDB;

CREATE TABLE IF NOT EXISTS sales (
  id INT(4) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  car_id INT(4) UNSIGNED NOT NULL,
  sale_date DATE,
  buyer VARCHAR(255),
  sale_value DECIMAL(9,2),
  FOREIGN KEY (car_id) REFERENCES cars(id)
) engine=InnoDB;