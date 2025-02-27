-- CreateTable
CREATE TABLE
    Customer (
        id BIGINT NOT NULL AUTO_INCREMENT,
        name VARCHAR(255) NOT NULL,
        email VARCHAR(255) NOT NULL UNIQUE,
        PRIMARY KEY (id)
    );

-- CreateTable
CREATE TABLE
    Product (
        id BIGINT NOT NULL AUTO_INCREMENT,
        title VARCHAR(255) NOT NULL,
        PRIMARY KEY (id)
    );

-- CreateTable
CREATE TABLE
    Purchase (
        id BIGINT NOT NULL AUTO_INCREMENT,
        customerId BIGINT NOT NULL,
        productId BIGINT NOT NULL,
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY (id),
        FOREIGN KEY (customerId) REFERENCES Customer (id) ON DELETE RESTRICT ON UPDATE CASCADE,
        FOREIGN KEY (productId) REFERENCES Product (id) ON DELETE RESTRICT ON UPDATE CASCADE
    );