CREATE TABLE [dbo].[CardDatabase]
(
  [ID] INT NOT NULL 
  PRIMARY KEY (CardID)
  FOREIGN KEY (CardID) REFERENCES MainDB(CardID)
    CardID int,
    Year date,
    Fname varchar(255),
    LName varchar(255),
    Product varchar(255),
    Manufacturer varchar(255),
    Parallel varchar(255),
    Autograph boolean,
    PrintNumber varchar(255),
    CardStatus int,
    GradedStatus boolean,
    Grade decimal(4),
    GradeCompany varchar(3),



  
)
