ALTER TABLE Cliente 
    ADD Id INT 
	PRIMARY KEY IDENTITY(1,1);

ALTER TABLE Status 
    ADD Id INT 
    PRIMARY KEY IDENTITY(1,1);

ALTER TABLE BaixaParcela
    ADD Id INT 
	PRIMARY KEY IDENTITY(1,1);

ALTER TABLE TipoParcela 
    ADD Id INT
	PRIMARY KEY IDENTITY(1,1);

ALTER TABLE Lote 
    ADD Id INT 
    PRIMARY KEY IDENTITY(1,1);

ALTER TABLE Contrato 
    ADD Id INT 
    PRIMARY KEY IDENTITY(1,1);

ALTER TABLE Parcela 
    ADD Id INT 
	PRIMARY KEY IDENTITY(1,1);

------------------------------
ALTER TABLE Contrato
ADD Id_Lote INT
CONSTRAINT Fk_Id_Lote FOREIGN KEY (Id_Lote)
REFERENCES Lote (Id)
------------------------------

ALTER TABLE Contrato
ADD Id_Status INT
CONSTRAINT Fk_Id_Status FOREIGN KEY (Id_Status)
REFERENCES Status (Id)

--------------------------------------
ALTER TABLE Contrato
ADD Id_Cliente INT
CONSTRAINT Fk_Id_Cliente FOREIGN KEY (Id_Cliente)
REFERENCES Cliente (Id)

------------------------------------------
ALTER TABLE Parcela
ADD Id_TipoParcela INT
CONSTRAINT Fk_Id_TipoParcela FOREIGN KEY (Id_TipoParcela)
REFERENCES TipoParcela (Id)

----------------------------------------------------
ALTER TABLE Parcela
ADD Id_BaixaParcela INT
CONSTRAINT Fk_Id_BaixaParcela FOREIGN KEY (Id_BaixaParcela)
REFERENCES BaixaParcela (Id)
------------------------------------------------------------
ALTER TABLE Parcela
ADD Id_Contrato INT
CONSTRAINT Fk_Id_Contrato FOREIGN KEY (Id_Contrato)
REFERENCES Contrato (Id)