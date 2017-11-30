CREATE TABLE Persoana (
    PersoanaId int NOT NULL,
    Nume varchar(50) NOT NULL,
    Porecla varchar(50),
    Domiciuliu varchar(150),
    Data_de_nastere date,
    
    
    PRIMARY KEY (PersoanaId)
   
);

CREATE TABLE Orders (
    OrderID int NOT NULL  PRIMARY KEY,
     PersoanaID int NOT NULL,
     Telefon varchar(50),
     TelefonSecundar varchar(50),
     E_Mail varchar(50),
    FOREIGN KEY (PersoanaID) REFERENCES Persoana(PersoanaID)
);
