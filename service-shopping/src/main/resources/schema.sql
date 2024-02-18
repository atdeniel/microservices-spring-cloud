CREATE TABLE invoices (
      id BIGINT AUTO_INCREMENT PRIMARY KEY,
      number_invoice VARCHAR(255),
      description TEXT,
      customer_id BIGINT,
      create_at DATE,
      state VARCHAR(255)
);

CREATE TABLE invoce_items (
     id BIGINT AUTO_INCREMENT PRIMARY KEY,
     quantity DOUBLE CHECK (quantity > 0),
     price DOUBLE,
     product_id BIGINT
);