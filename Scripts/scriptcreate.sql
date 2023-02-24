CREATE TABLE TipoParcela ( 
    Id SMALLINT PRIMARY KEY IDENTITY(1,1), 
    Nom_TipParc VARCHAR(70) NOT NULL, 
    Num_PriorExtrato TINYINT NOT NULL
); 

CREATE TABLE BaixaParcela ( 
    Id INT PRIMARY KEY IDENTITY(1,1), 
    Nom_TipBaiPar VARCHAR(50),
); 

CREATE TABLE Parcela ( 
    Id INT PRIMARY KEY IDENTITY(1,1), 
    Id_TipoParcela SMALLINT, 
    Id_BaixaParcela INT, 
    Id_Contrato INT, 
    Data_Venc DATETIME NOT NULL, 
    Vlr_Parc DECIMAL(15,2) NOT NULL,
    Dat_Baixa DATETIME, 
    Dat_Ger DATETIME, 
    Vlr_Pago DECIMAL(15,2) NOT NULL, 
    Num_Protocolo VARCHAR(15),
    Num_RLCCad DECIMAL(15,0),
    CONSTRAINT FK_IdTipoParcela_Parcela FOREIGN KEY (Id_TipoParcela) 
        REFERENCES TipoParcela (Id),
    CONSTRAINT FK_IdBaixa_Parcela FOREIGN KEY (Id_BaixaParcela)
        REFERENCES IdBaixaParcela (Id),
    CONSTRAINT FK_IdContrato FOREIGN KEY (Id_Contrato)
        REFERENCES Contrato (Id),
); 



