DROP TABLE IF EXISTS supplier_order;
DROP TABLE IF EXISTS item;
DROP TABLE IF EXISTS supplier;

CREATE TABLE supplier (
  id SERIAL PRIMARY KEY,
  supplier_name TEXT NOT NULL,
  phone TEXT,
  city TEXT
);

CREATE TABLE item (
  id SERIAL PRIMARY KEY,
  item_name TEXT NOT NULL,
  unit TEXT,
  unit_cost numeric,
  supplier INTEGER REFERENCES supplier(id) NOT NULL
);

CREATE TABLE supplier_order (
  id SERIAL PRIMARY KEY,
  order_date DATE DEFAULT now(),
  item INTEGER REFERENCES item(id) ON DELETE CASCADE NOT NULL,
  amount numeric,
  total_cost numeric,
  shipping_status TEXT
);