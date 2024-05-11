CREATE DATABASE Academy;
GO


USE Academy;
GO

CREATE TABLE Faculties (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Departments (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL UNIQUE,
    Financing MONEY NOT NULL CHECK (Financing >= 0)
);

CREATE TABLE Groups (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(10) NOT NULL UNIQUE,
    Rating INT NOT NULL CHECK (Rating >= 0 AND Rating <= 5),
    Year INT NOT NULL CHECK (Year >= 1 AND Year <= 5)
);

CREATE TABLE Teachers (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(MAX) NOT NULL,
    Surname NVARCHAR(MAX) NOT NULL,
    EmploymentDate DATE NOT NULL CHECK (EmploymentDate >= '1990-01-01'),
    Premium MONEY NOT NULL DEFAULT 0 CHECK (Premium >= 0),
    Salary MONEY NOT NULL CHECK (Salary > 0)
);