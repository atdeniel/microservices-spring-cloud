DROP TABLE IF EXISTS regions;

CREATE TABLE regions (
                         id BIGINT AUTO_INCREMENT PRIMARY KEY,
                         name VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
                          id BIGINT AUTO_INCREMENT PRIMARY KEY,
                          number_id VARCHAR(8) NOT NULL UNIQUE,
                          first_name VARCHAR(255) NOT NULL,
                          last_name VARCHAR(255) NOT NULL,
                          email VARCHAR(255) NOT NULL UNIQUE,
                          photo_url VARCHAR(255),
                          region_id BIGINT,
                          state VARCHAR(255)
);


