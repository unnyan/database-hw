
-- ???????? ???? ??????
--CREATE DATABASE pharmacy_db;
--\c pharmacy_db;

-- ???????: CATEGORIES
CREATE TABLE CATEGORIES (
    category_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE
);

-- ???????: MEDICATIONS
CREATE TABLE MEDICATIONS (
    medication_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    dosage_form TEXT,
    dosage TEXT,
    expiration_date DATE,
    stock_quantity INTEGER DEFAULT 0,
    current_price NUMERIC(10, 2)
);

-- ???????-??????: MEDICATION_CATEGORIES (?????? ?? ??????) 
CREATE TABLE MEDICATION_CATEGORIES (
    id SERIAL PRIMARY KEY,
    medication_id INTEGER REFERENCES MEDICATIONS(medication_id) ON DELETE CASCADE,
    category_id INTEGER REFERENCES CATEGORIES(category_id) ON DELETE CASCADE,
    UNIQUE(medication_id, category_id)
);

-- ???????: SUPPLIERS
CREATE TABLE SUPPLIERS (
    supplier_id SERIAL PRIMARY KEY,
    organization_name TEXT NOT NULL,
    contact_person TEXT,
    phone TEXT,
    address TEXT,
    country TEXT
);


-- ???????: SUPPLIER_MEDICATIONS
CREATE TABLE SUPPLIER_MEDICATIONS (
    id SERIAL PRIMARY KEY,
    supplier_id INTEGER REFERENCES SUPPLIERS(supplier_id) ON DELETE CASCADE,
    medication_id INTEGER REFERENCES MEDICATIONS(medication_id) ON DELETE CASCADE,
    purchase_price NUMERIC(10,2),
    contract_date DATE,
    UNIQUE(supplier_id, medication_id)
);


-- ???????: DELIVERIES
CREATE TABLE DELIVERIES (
    delivery_id SERIAL PRIMARY KEY,
    supplier_medication_id INTEGER REFERENCES SUPPLIER_MEDICATIONS(id) ON DELETE SET NULL,
    delivery_date DATE NOT NULL,
    quantity INTEGER NOT NULL,
    purchase_price NUMERIC(10,2)
);


-- ???????: CUSTOMERS
CREATE TABLE CUSTOMERS (
    customer_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    birth_date DATE,
    phone TEXT,
    benefit_status BOOLEAN
);

-- ???????: SALES
CREATE TABLE SALES (
    sale_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES CUSTOMERS(customer_id) ON DELETE SET NULL,
    sale_date DATE NOT NULL
);

-- ???????: SALE_MEDICATIONS
CREATE TABLE SALE_MEDICATIONS (
    id SERIAL PRIMARY KEY,
    sale_id INTEGER REFERENCES SALES(sale_id) ON DELETE CASCADE,
    medication_id INTEGER REFERENCES MEDICATIONS(medication_id) ON DELETE CASCADE,
    quantity INTEGER NOT NULL,
    price_at_sale NUMERIC(10,2),
    total_amount NUMERIC(10,2)
);

-- ???????: PRICE_HISTORY
CREATE TABLE PRICE_HISTORY (
    id SERIAL PRIMARY KEY,
    medication_id INTEGER REFERENCES MEDICATIONS(medication_id) ON DELETE CASCADE,
    old_price NUMERIC(10,2),
    new_price NUMERIC(10,2),
    effective_date DATE NOT NULL
);

SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public';

