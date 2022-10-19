CREATE TABLE otherCards(
    otherCard_ID VARCHAR2(5) NOT NULL,          -- ID for database
    otherCard_Actual-ID VARCHAR2(50),           -- ID of the card if aplicable
    otherCard_Name VARCHAR2(255) NOT NULL,      -- Name of the card
    otherCard_Year VARCHAR2(20),                -- Year of the card: can use e.g. 2018 or 2018-19 or 2018-19 and 2020-2023
    otherCard_Brand VARCHAR(75),                -- Brand name of the card
    otherCard_Notes VARCHAR2(255),              -- Notes about card i.e.
    otherCard_Quanitiy NUMBER NOT NULL,         -- Amount of each card owned
    otherCard_Holographic CHAR(1) CHECK (sportsCard_Holographic IN ('y', 'Y', 'n', 'N')),

    PRIMARY KEY (otherCard_ID),
)
INSERT INTO otherCards
VALUES();

CREATE TABLE sportsCards(
    sportsCard_ID VARCHAR2(5) NOT NULL,          -- ID for database
    sportsCard_Actual-ID VARCHAR2(50),           -- ID of the card if aplicable
    sportsCard_Name VARCHAR2(255) NOT NULL,      -- Name of the card
    sportsCard_Sports-Category VARCHAR2(20),     -- Type of Sports card
    sportsCard_Year VARCHAR2(20),                -- Year of the card: can use e.g. 2018 or 2018-19 or 2018-19 and 2020-2023
    sportsCard_Brand VARCHAR(75),                -- Brand name of the card
    sportsCard_Notes VARCHAR2(255),              -- Notes about card i.e.
    sportsCard_Quanitiy NUMBER NOT NULL,         -- Amount of each card owned
    sportsCard_Holographic CHAR(1) CHECK (sportsCard_Holographic IN ('y', 'Y', 'n', 'N')), -- Marks Holo/special card

    PRIMARY KEY (sportsCard_ID),
)
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