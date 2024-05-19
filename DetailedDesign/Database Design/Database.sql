CREATE TABLE Customer (
  CustomerID INT PRIMARY KEY,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  PhoneNumber VARCHAR(20) NOT NULL,
  BankName VARCHAR(30) NOT NULL,
  BANKID VARCHAR(20) NOT NULL,
);

CREATE TABLE Product_Type (
  ProductTypeID INT PRIMARY KEY,
  TypeName VARCHAR(50) NOT NULL,
  TypeDescription VARCHAR(200) NOT NULL,
);

CREATE TABLE Product (
  ProductID INT PRIMARY KEY,
  ProductName VARCHAR(100) NOT NULL,
  ProdDescription VARCHAR(200),
  Price DECIMAL(10,2) NOT NULL,
  QtyLeft INT NOT NULL,
  ProductTypeID INT FOREIGN KEY REFERENCES Product_Type(ProductTypeID)
);

CREATE TABLE Order (
  OrderID INT PRIMARY KEY,
  CustomerID INT FOREIGN KEY REFERENCES Customer(CustomerID),
  OrderDate DATETIME NOT NULL,
  ShippedDate DATETIME NOT NULL,
  ShippingAddress VARCHAR(200) NOT NULL,
  TotalAmount DECIMAL(10,2) NOT NULL
);

CREATE TABLE Order_Product (
  OrderID INT FOREIGN KEY REFERENCES [Order](OrderID),
  ProductID INT FOREIGN KEY REFERENCES Product(ProductID),
  Quantity INT NOT NULL,
  PRIMARY KEY (OrderID, ProductID)
);

CREATE TABLE Transaction (
  TransactionID INT PRIMARY KEY,
  CustomerID INT FOREIGN KEY REFERENCES Customer(CustomerID),
  OrderID INT FOREIGN KEY REFERENCES [Order](OrderID),
  TransactionDate DATETIME NOT NULL,
  Amount DECIMAL(10,2) NOT NULL,
  TransactionStatus INT,
);