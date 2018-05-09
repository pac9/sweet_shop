DROP TABLE products;
DROP TABLE suppliers;

CREATE TABLE suppliers(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255) not NULL,
  telephone_number VARCHAR(255)
);

CREATE TABLE products(
  id SERIAL4 PRIMARY KEY,
  product VARCHAR(255) not NULL,
  description VARCHAR(255),
  stock_quantity INT4,
  buying_cost INT4,
  selling_price INT4,
  supplier_id INT4 REFERENCES suppliers(id),
  comments VARCHAR(255)
);
