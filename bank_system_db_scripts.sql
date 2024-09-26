CREATE DATABASE BankDB;
USE BankDB;
DROP TABLE Transactions;
SELECT * FROM Transactions;
show tables;

CREATE TABLE Users (
    userId VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100),
    pin VARCHAR(50)
);

CREATE TABLE Accounts (
    accountId VARCHAR(50) PRIMARY KEY,
    userId VARCHAR(50),
    balance DOUBLE,
    FOREIGN KEY (userId) REFERENCES Users(userId)
);

CREATE TABLE transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    account_id INT,
    transaction_type VARCHAR(50),
    amount DOUBLE,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);


CREATE TABLE admin (
    admin_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL
);
INSERT INTO admin (username, password) VALUES ('admin1', 'pass123');


INSERT INTO Users (userId, name, pin) VALUES ('user1', 'Bunty', '1111');
INSERT INTO Users (userId, name, pin) VALUES ('user2', 'Boss', '2222');

INSERT INTO Accounts (accountId, userId, balance) VALUES ('acc2', 'user2', 1000);

INSERT INTO Transactions (accountId, transactionType, amount) VALUES ('acc1', 'Deposit', 500.00);
INSERT INTO Transactions (accountId, transactionType, amount) VALUES ('acc1', 'Withdraw', 200.00);
INSERT INTO Transactions (accountId, transactionType, amount) VALUES ('acc1', 'Transfer', 100.00);
