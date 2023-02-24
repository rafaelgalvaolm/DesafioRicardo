ALTER TABLE Cliente 
    ADD CONSTRAINT Id INT
    PRIMARY KEY IDENTITY(1,1) (Id);

ALTER TABLE StatusContratos 
    ADD CONSTRAINT Id TINYINT 
    PRIMARY KEY IDENTITY(1,1) (Id);

ALTER TABLE BaixaParcela
    ADD CONSTRAINT Id
    TINYINT PRIMARY KEY IDENTITY(1,1) (Id);

ALTER TABLE TipoParcela 
    ADD CONSTRAINT Id
    SMALLINT PRIMARY KEY IDENTITY(1,1)(Id);

ALTER TABLE Lote 
    ADD CONSTRAINT Id INT 
    PRIMARY KEY IDENTITY(1,1) (Id);

ALTER TABLE Contrato 
    ADD CONSTRAINT Id INT 
    PRIMARY KEY IDENTITY(1,1) (Id), 
    ADD Id_Cliente INT FK_IdCliente_Contrato 
    FOREIGN KEY (IdCliente) REFERENCES Cliente (Id),
    ADD Id_StatusContrato TINYINT FK_Id_StatusContrato_Contrato 
    FOREIGN KEY (Id_StatusContrato)
    REFERENCES StatusContrato (Id);

ALTER TABLE Parcela 
    ADD CONSTRAINT Id INT 
    PRIMARY KEY IDENTITY(1,1) (Id),
    ADD Id_TipoParcela SMALLINT FK_Id_TipoParcela_Parcela
    FOREIGN KEY (Id_TipoParcela) REFERENCES TipoParcela (Id),
    ADD Id_BaixaParcela TINYINT FK_Id_BaixaParcela
    FOREIGN KEY (Id_BaixaParcela) REFERENCES BaixaParcela (Id);
    ADD Id_Contrato INT FK_Id_Contrato_Parcela
    FOREIGN KEY (Id_Contrato) REFERENCES Contrato (Id);