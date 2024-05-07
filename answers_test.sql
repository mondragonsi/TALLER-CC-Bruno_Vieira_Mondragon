USE BVM
GO


-- Creating the table for sales people
CREATE TABLE t_sales_person (
    sales_person_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INT
);

-- Creating the table for aggregate sales
CREATE TABLE t_aggregate_sales (
    sales_id INT PRIMARY KEY,
    month INT,
    amount DECIMAL(10, 2),
    sales_person_id INT,
    FOREIGN KEY (sales_person_id) REFERENCES t_sales_person(sales_person_id)
);


-- Inserting data into t_sales_person
INSERT INTO t_sales_person (sales_person_id, name, position, salary) VALUES
(1, 'Steve', 'Senior', 80000),
(2, 'Bill', 'Intermediate', 60000),
(3, 'Alan', 'Intermediate', 62000),
(4, 'Gordon', 'Junior', 30000),
(5, 'Robert', 'Junior', 25000);

-- Inserting data into t_aggregate_sales
INSERT INTO t_aggregate_sales (sales_id, month, amount, sales_person_id) VALUES
(1, 202312, 1000, 1),
(2, 202312, 5000, 2),
(3, 202312, 2000, 3),
(4, 202312, 100, 4),
(5, 202312, 2500, 5),
(6, 202401, 6500, 1),
(7, 202401, 8000, 2),
(8, 202401, 10000, 5),
(9, 202401, 100, 4),
(10, 202401, 300, 3);


