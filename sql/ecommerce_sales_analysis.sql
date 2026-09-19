CREATE TABLE ecommerce_sales (
    invoice_no VARCHAR(20),
    stock_code VARCHAR(30),
    description TEXT,
    quantity INTEGER,
    invoice_date TIMESTAMP,
    unit_price NUMERIC(12,2),
    customer_id INTEGER,
    country VARCHAR(100),
    revenue NUMERIC(14,2),
    year INTEGER,
    month INTEGER,
    month_name VARCHAR(20),
    day INTEGER,
    day_name VARCHAR(20),
    hour INTEGER,
    year_month VARCHAR(7),
    week INTEGER,
    quarter VARCHAR(5),
    day_of_week INTEGER,
    revenue_rounded NUMERIC(14,2)
);


-- RFM table
CREATE TABLE customer_rfm (
    customer_id INTEGER,
    recency INTEGER,
    frequency INTEGER,
    monetary NUMERIC(14,2),
    r_score INTEGER,
    f_score INTEGER,
    m_score INTEGER,
    rfm_score INTEGER,
    rfm_code VARCHAR(3),
    segment VARCHAR(50)
);

SELECT *
FROM ecommerce_sales
LIMIT 5;

SELECT *
FROM customer_rfm
LIMIT 5;


SELECT COUNT(*)
FROM ecommerce_sales;

SELECT *
FROM ecommerce_sales
LIMIT 10;


SELECT
    MIN(invoice_date) AS first_transaction,
    MAX(invoice_date) AS last_transaction,
    SUM(revenue) AS total_revenue,
    COUNT(DISTINCT invoice_no) AS total_orders
FROM ecommerce_sales;

SELECT COUNT(*)
FROM customer_rfm;


SELECT *
FROM customer_rfm
LIMIT 10;

SELECT
    segment,
    COUNT(*) AS customers
FROM customer_rfm
GROUP BY segment
ORDER BY customers DESC;


CREATE INDEX idx_ecommerce_sales_invoice
ON ecommerce_sales(invoice_no);

CREATE INDEX idx_ecommerce_sales_customer
ON ecommerce_sales(customer_id);

CREATE INDEX idx_ecommerce_sales_date
ON ecommerce_sales(invoice_date);

CREATE INDEX idx_customer_rfm_customer
ON customer_rfm(customer_id);


SELECT
    COUNT(*) AS total_sales_records,
    COUNT(DISTINCT invoice_no) AS total_orders,
    COUNT(DISTINCT customer_id) AS identified_customers,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(
        SUM(revenue) / COUNT(DISTINCT invoice_no),
        2
    ) AS average_order_value
FROM ecommerce_sales;



SELECT
    year_month,
    ROUND(SUM(revenue), 2) AS revenue
FROM ecommerce_sales
GROUP BY year_month
ORDER BY year_month;



SELECT
    stock_code,
    description,
    SUM(quantity) AS total_quantity,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales
GROUP BY stock_code, description
ORDER BY total_revenue DESC
LIMIT 10;



SELECT
    stock_code,
    description,
    SUM(quantity) AS total_quantity,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales
GROUP BY stock_code, description
ORDER BY total_revenue DESC
LIMIT 10;


SELECT
    country,
    COUNT(DISTINCT invoice_no) AS orders,
    COUNT(DISTINCT customer_id) AS customers,
    ROUND(SUM(revenue), 2) AS revenue
FROM ecommerce_sales
GROUP BY country
ORDER BY revenue DESC
LIMIT 10;



