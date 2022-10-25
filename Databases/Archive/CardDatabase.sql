-- Database option 1.0
-- Attributes need cleaning
-- Vefify relationships between all tables
-- Verify all attributes types according to the attributes names

CREATE TABLE card (
    CardID int NOT NULL,
    Year date,
    Fname varchar(255),
    LName varchar(255) NOT NULL,
    Product varchar(255),
    Manufacturer varchar(255),
    Parallel varchar(255),
    Autograph boolean,
    PrintNumber varchar(255),
    CardStatus int,
    GradedStatus boolean,
    Grade decimal(4),
    GradeCompany varchar(3),

    PRIMARY KEY (CardID)
    FOREIGN KEY (CardID) REFERENCES MainDB(CardID)
);

CREATE TABLE other (
    CardID int NOT NULL,
    Year date,
    Fname varchar(255),
    LName varchar(255) NOT NULL,
    Product varchar(255),
    Manufacturer varchar(255),
    Parallel varchar(255),
    Autograph boolean,
    PrintNumber varchar(255),
    CardStatus int,
    GradedStatus boolean,
    Grade decimal(4),
    GradeCompany varchar(3),

    PRIMARY KEY (CardID)
    FOREIGN KEY (CardID) REFERENCES MainDB(CardID)
);

CREATE TABLE sport (
    CardID int NOT NULL,
    Year date,
    Fname varchar(255),
    LName varchar(255) NOT NULL,
    Product varchar(255),
    Manufacturer varchar(255),
    Parallel varchar(255),
    Autograph boolean,
    PrintNumber varchar(255),
    CardStatus int,
    GradedStatus boolean,
    Grade decimal(4),
    GradeCompany varchar(3),

    PRIMARY KEY (CardID)
    FOREIGN KEY (CardID) REFERENCES MainDB(CardID)
);

CREATE TABLE tcg (
    CardID int NOT NULL,
    Year date,
    Fname varchar(255),
    LName varchar(255) NOT NULL,
    Product varchar(255),
    Manufacturer varchar(255),
    Parallel varchar(255),
    Autograph boolean,
    PrintNumber varchar(255),
    CardStatus int,
    GradedStatus boolean,
    Grade decimal(4),
    GradeCompany varchar(3),

    PRIMARY KEY (CardID)
    FOREIGN KEY (CardID) REFERENCES MainDB(CardID)
);

CREATE TABLE pack (
  PackID VARCHAR2 NOT NULL,
  PackName VARCHAR2 NOT NULL,
  PackDate DATE,

  PRIMARY KEY (PackID)
  FOREIGN KEY (CardID)
);

CREATE TABLE manufacturer (
  ManID VARCHAR2,
  ManufacturerDate DATE,
)