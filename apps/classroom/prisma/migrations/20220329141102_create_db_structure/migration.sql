-- CreateTable
CREATE TABLE
    Student (
        id BIGINT NOT NULL AUTO_INCREMENT,
        name VARCHAR(255) NOT NULL,
        email VARCHAR(255) NOT NULL UNIQUE,
        PRIMARY KEY (id)
    );

-- CreateTable
CREATE TABLE
    Course (
        id BIGINT NOT NULL AUTO_INCREMENT,
        title VARCHAR(255) NOT NULL,
        purchasesProductId BIGINT,
        PRIMARY KEY (id)
    );

-- CreateTable
CREATE TABLE
    Enrollment (
        id BIGINT NOT NULL AUTO_INCREMENT,
        studentId BIGINT NOT NULL,
        courseId BIGINT NOT NULL,
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY (id),
        FOREIGN KEY (studentId) REFERENCES Student (id) ON DELETE RESTRICT ON UPDATE CASCADE,
        FOREIGN KEY (courseId) REFERENCES Course (id) ON DELETE RESTRICT ON UPDATE CASCADE
    );