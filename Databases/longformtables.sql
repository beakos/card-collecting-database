-- Other Cards Table
CREATE TABLE otherCards(
    ocID VARCHAR2(5) NOT NULL PRIMARY KEY,
    ocaID VARCHAR2(50),
    ocName VARCHAR2(255) NOT NULL,
    ocYear VARCHAR2(20),
    ocBrand VARCHAR(75),
    ocNotes VARCHAR2(255),
    ocQuanitiy NUMBER NOT NULL CHECK (length(ocQuanitiy) <=3),
    ocHolographic CHAR(1) CHECK(ocHolographic LIKE'y' OR ocHolographic LIKE 'Y' OR ocHolographic LIKE 'n' OR ocHolographic LIKE 'N'));

-- Sports Card Table
CREATE TABLE sportsCards(
    scID VARCHAR2(5) NOT NULL PRIMARY KEY,
    scaID VARCHAR2(50),
    scName VARCHAR2(255) NOT NULL,
    scCategory VARCHAR2(20),
    scYear VARCHAR2(20),
    scNotes VARCHAR2(255),
    scQuanitiy NUMBER NOT NULL CHECK (length(scQuanitiy) <=3),
    scHolographic CHAR(1) CHECK(scHolographic LIKE'y' OR scHolographic LIKE 'Y' OR scHolographic LIKE 'n' OR scHolographic LIKE 'N'));

-- TCG Cards Table
CREATE TABLE tcgCards(
    tcgID VARCHAR2(5) NOT NULL PRIMARY KEY,
    tcgaID VARCHAR2(50),
    tcgName VARCHAR2(255) NOT NULL,
    tcgYear VARCHAR2(20),
    tcgBrand VARCHAR(75),
    tcgNotes VARCHAR2(255),
    tcgQuanitiy NUMBER NOT NULL CHECK (length(tcgQuanitiy) <=3),
    tcgHolographic CHAR(1) CHECK(tcgHolographic LIKE'y' OR tcgHolographic LIKE 'Y' OR tcgHolographic LIKE 'n' OR tcgHolographic LIKE 'N'));

-- test commit