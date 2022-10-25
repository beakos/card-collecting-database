-- Database Option 2.0
-- Add other according attributes
-- Works with sqlite
-- Run commands inside Winterr_Cards.db

---Query 1--
-- Consitis of:
    -- ID for database
    -- ID of the card if aplicable
    -- Name of the card
    -- Type of Sports card
    -- Year of the card: can use e.g. 2018 or 2018-19 or 2018-19 and 2020-2023
    -- Brand name of the card
    -- Notes about card i.e.
    -- Amount of each card owned
    -- Marks Holo/special card

-- Multi-Line Query
CREATE TABLE otherCards(
    ocID VARCHAR2(5) NOT NULL PRIMARY KEY, 
    ocaID VARCHAR2(50), 
    ocName VARCHAR2(255) NOT NULL, 
    ocYear VARCHAR2(20),  
    ocBrand VARCHAR(75), 
    ocNotes VARCHAR2(255), 
    ocQuanitiy NUMBER NOT NULL CHECK (length(ocQuanitiy) <=3), 
    ocHolographic CHAR(1) CHECK('y' OR 'Y' OR 'n' OR 'N'));

-- Single Line Query
CREATE TABLE otherCards(ocID VARCHAR2(5) NOT NULL PRIMARY KEY, ocaID VARCHAR2(50), ocName VARCHAR2(255) NOT NULL, ocYear VARCHAR2(20),  ocBrand VARCHAR(75), ocNotes VARCHAR2(255), ocQuanitiy NUMBER NOT NULL CHECK (length(ocQuanitiy) <=3), ocHolographic CHAR CHECK('y' OR 'Y' OR 'n' OR 'N'));

INSERT INTO otherCards VALUES(00000, 000111, "John Smith", 2022, "Panini", "good condition", 2, "Y");

INSERT INTO otherCards
VALUES();

CREATE TABLE Class (
    ClassID char(5) PRIMARY KEY 
    CHECK (ClassID LIKE 'CT[1-9][A-Z]' OR 'AT[1-9][1-9][A-Z]'),
    ClassQuantity int NOT NULL CHECK (ClassQuantity > 0)
);

INSERT INTO Class
VALUES ('CT2D', 50);


CREATE TABLE Class (
  ClassID char(5) PRIMARY KEY 
  CHECK (ClassID LIKE 'CT[1-9][A-Z]' OR ClassID LIKE 'AT[1-9][1-9][A-Z]'),
    ClassQuantity int NOT NULL CHECK (ClassQuantity > 0)
);

INSERT INTO Class
VALUES ('CT2D', 50);

--Query 2--
-- Consitis of:
    -- ID for database
    -- ID of the card if aplicable
    -- Name of the card
    -- Type of Sports card
    -- Year of the card: can use e.g. 2018 or 2018-19 or 2018-19 and 2020-2023
    -- Brand name of the card
    -- Notes about card i.e.
    -- Amount of each card owned
    -- Marks Holo/special card

-- Multi Line Query
CREATE TABLE sportsCards(
    scID VARCHAR2(5) NOT NULL PRIMARY KEY,
    scaID VARCHAR2(50),
    scName VARCHAR2(255) NOT NULL,
    scCategory VARCHAR2(20),
    scYear VARCHAR2(20),
    scNotes VARCHAR2(255),
    scQuanitiy NUMBER NOT NULL,
    scHolographic CHAR(1) CHECK ('y' OR 'Y' OR 'n' OR 'N'));

-- Single Line Query
CREATE TABLE sportsCards(scID VARCHAR2(5) NOT NULL PRIMARY KEY, scaID VARCHAR2(50), scName VARCHAR2(255) NOT NULL, scCategory VARCHAR2(20), scYear VARCHAR2(20), scNotes VARCHAR2(255), scQuanitiy NUMBER NOT NULL, scHolographic CHAR(1) CHECK ('y' OR 'Y' OR 'n' OR 'N'));

INSERT INTO sportsCards
VALUES();

CREATE TABLE tcg(
    tcgCard_ID VARCHAR2(5) NOT NULL,          -- ID for database
    tcgCard_Actual-ID VARCHAR2(50),           -- ID of the card if aplicable
    tcgCard_Name VARCHAR2(255) NOT NULL,      -- Name of the card
    tcgCard_Year VARCHAR2(20),                -- Year of the card: can use e.g. 2018 or 2018-19 or 2018-19 and 2020-2023
    tcgCard_Brand VARCHAR(75),                -- Brand name of the card
    tcgCard_Notes VARCHAR2(255),              -- Notes about card i.e.
    tcgCard_Quanitiy NUMBER NOT NULL,         -- Amount of each card owned
    tcgCard_Holographic CHAR(1) CHECK (sportsCard_Holographic IN ('y', 'Y', 'n', 'N')),

    PRIMARY KEY (tcgCard_ID),
)
INSERT INTO tcg
VALUES();

COMMIT;