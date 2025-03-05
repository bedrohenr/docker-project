CREATE DATABASE dockerdb;

USE dockerdb;

CREATE TABLE produtos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

INSERT INTO produtos (name) VALUES 
    ("Camisa Vasco 2025"), 
    ("Caneca Vasco da Gama 500ml"), 
    ("Bone Vasco da Gama");