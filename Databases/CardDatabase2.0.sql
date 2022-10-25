-- Database Option 2.0
-- Add other according attributes
-- Works with sqlite
-- Run commands inside Winterr_Cards.db

---Query 1--
-- Consitis of:
    -- ID for database
    -- aID of the card if aplicable
    -- Name of the card
    -- Type of Sports card
    -- Year of the card: can use e.g. 2018 or 2018-19 or 2018-19 and 2020-2023
    -- Brand name of the card
    -- Notes about card i.e.
    -- Amount of each card owned
    -- Marks Holo/special card

-- Multi-Line Query - Create
CREATE TABLE otherCards(
    ocID VARCHAR2(5) NOT NULL PRIMARY KEY, 
    ocaID VARCHAR2(50), 
    ocName VARCHAR2(255) NOT NULL, 
    ocYear VARCHAR2(20),  
    ocBrand VARCHAR(75), 
    ocNotes VARCHAR2(255), 
    ocQuanitiy NUMBER NOT NULL CHECK (length(ocQuanitiy) <=3), 
    ocHolographic CHAR(1) CHECK(ocHolographic LIKE'y' OR ocHolographic LIKE 'Y' OR ocHolographic LIKE 'n' OR ocHolographic LIKE 'N'));

-- Single Line Query - Create + Insert
CREATE TABLE otherCards(ocID VARCHAR2(5) NOT NULL PRIMARY KEY, ocaID VARCHAR2(50), ocName VARCHAR2(255) NOT NULL, ocYear VARCHAR2(20), ocBrand VARCHAR(75), ocNotes VARCHAR2(255), ocQuanitiy NUMBER NOT NULL CHECK (length(ocQuanitiy) <=3), ocHolographic CHAR(1) CHECK(ocHolographic LIKE 'y' OR ocHolographic LIKE 'Y' OR ocHolographic LIKE 'n' OR ocHolographic LIKE 'N'));

INSERT INTO otherCards VALUES(00000, 000111, "John Smith", 2022, "Panini", "good condition", 2, "Y");

--Query 2--
-- Consitis of:
    -- ID for database
    -- aID of the card if aplicable
    -- Name of the card
    -- Type of Sports card
    -- Year of the card: can use e.g. 2018 or 2018-19 or 2018-19 and 2020-2023
    -- Brand name of the card
    -- Notes about card i.e.
    -- Amount of each card owned
    -- Marks Holo/special card

-- Multi Line Query - Create
CREATE TABLE sportsCards(
    scID VARCHAR2(5) NOT NULL PRIMARY KEY,
    scaID VARCHAR2(50),
    scName VARCHAR2(255) NOT NULL,
    scCategory VARCHAR2(20),
    scYear VARCHAR2(20),
    scNotes VARCHAR2(255),
    scQuanitiy NUMBER NOT NULL CHECK (length(scQuanitiy) <=3), 
    scHolographic CHAR(1) CHECK(scHolographic LIKE'y' OR scHolographic LIKE 'Y' OR scHolographic LIKE 'n' OR scHolographic LIKE 'N'));

-- Single Line Query - Create + Insert
CREATE TABLE sportsCards(scID VARCHAR2(5) NOT NULL PRIMARY KEY, scaID VARCHAR2(50), scName VARCHAR2(255) NOT NULL, scCategory VARCHAR2(20), scYear VARCHAR2(20), scNotes VARCHAR2(255), scQuanitiy NUMBER NOT NULL CHECK (length(scQuanitiy) <=3), scHolographic CHAR(1) CHECK(scHolographic LIKE'y' OR scHolographic LIKE 'Y' OR scHolographic LIKE 'n' OR scHolographic LIKE 'N'));

INSERT INTO sportsCards VALUES();

--Query 3--
-- Consits of:
    -- ID for database
    -- aID of the card if aplicable
    -- Name of the card
    -- Type of Sports card
    -- Year of the card: can use e.g. 2018 or 2018-19 or 2018-19 and 2020-2023
    -- Brand name of the card
    -- Notes about card i.e.
    -- Amount of each card owned
    -- Marks Holo/special card

-- Multi Line Query
CREATE TABLE tcgCards(
    tcgID VARCHAR2(5) NOT NULL PRIMARY KEY,
    tcgaID VARCHAR2(50),
    tcgName VARCHAR2(255) NOT NULL,
    tcgYear VARCHAR2(20),
    tcgBrand VARCHAR(75),
    tcgNotes VARCHAR2(255),
    tcgQuanitiy NUMBER NOT NULL CHECK (length(tcgQuanitiy) <=3),
    tcgHolographic CHAR(1) CHECK(tcgHolographic LIKE'y' OR tcgHolographic LIKE 'Y' OR tcgHolographic LIKE 'n' OR tcgHolographic LIKE 'N'));

-- Single Line Query - Create + Insert
CREATE TABLE tcgCards(tcgID VARCHAR2(5) NOT NULL PRIMARY KEY, tcgaID VARCHAR2(50), tcgName VARCHAR2(255) NOT NULL, tcgYear VARCHAR2(20), tcgBrand VARCHAR(75), tcgNotes VARCHAR2(255), tcgQuanitiy NUMBER NOT NULL CHECK (length(tcgQuanitiy) <=3), tcgHolographic CHAR(1) CHECK(tcgHolographic LIKE'y' OR tcgHolographic LIKE 'Y' OR tcgHolographic LIKE 'n' OR tcgHolographic LIKE 'N'));

INSERT INTO tcgCards VALUES();