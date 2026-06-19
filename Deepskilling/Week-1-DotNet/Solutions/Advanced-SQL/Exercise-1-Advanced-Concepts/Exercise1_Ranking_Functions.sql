CREATE TABLE Products
(
    ProductID INT,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);


INSERT INTO Products VALUES
(1,'Laptop','Electronics',90000),
(2,'Mobile','Electronics',50000),
(3,'Tablet','Electronics',30000),
(4,'Camera','Electronics',50000),

(5,'Shirt','Fashion',2000),
(6,'Shoes','Fashion',5000),
(7,'Jacket','Fashion',5000),

(8,'Chair','Furniture',7000),
(9,'Table','Furniture',12000),
(10,'Sofa','Furniture',50000);
-- ROW_NUMBER()
-- Gives unique rank even when prices are same

SELECT
    ProductName,
    Category,
    Price,
    ROW_NUMBER() OVER
    (
        PARTITION BY Category
        ORDER BY Price DESC
    ) AS RowNumberRank

FROM Products;
-- RANK()
-- Same price gets same rank, skips next rank

SELECT
    ProductName,
    Category,
    Price,
    RANK() OVER
    (
        PARTITION BY Category
        ORDER BY Price DESC
    ) AS RankValue

FROM Products;
-- DENSE_RANK()
-- Same price gets same rank, does not skip rank

SELECT
    ProductName,
    Category,
    Price,
    DENSE_RANK() OVER
    (
        PARTITION BY Category
        ORDER BY Price DESC
    ) AS DenseRankValue

FROM Products;