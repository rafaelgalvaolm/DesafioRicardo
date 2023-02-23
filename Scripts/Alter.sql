ALTER TABLE Cliente 
    ADD CONSTRAINT Nom_CliCPFCNPJ VARCHAR(14)
    PRIMARY KEY NOT NULL UNIQUE (Nom_CliCPFCNPJ);

ALTER TABLE Status 
    ADD CONSTRAINT Cod_StatusContVend TINYINT 
    PRIMARY KEY NOT NULL UNIQUE (Cod_StatusContVend);

ALTER TABLE Empreeendedorismo 
    ADD CONSTRAINT Num_Empr SMALLINT
    PRIMARY KEY NOT NULL UNIQUE (Num_Empr); 

ALTER TABLE Baixa
    ADD CONSTRAINT Cod_TipoBaiPar
    TINYINT PRIMARY KEY NOT NULL UNIQUE (Cod_TipoBaiPar);

ALTER TABLE TipoParcela 
    ADD CONSTRAINT Cod_TipoParc 
    SMALLINT PRIMARY KEY NOT NULL UNIQUE (Cod_TipoParc);

ALTER TABLE Quadra 
    ADD CONSTRAINT Cod_Quadra VARCHAR(2)
    PRIMARY KEY NOT NULL UNIQUE (Cod_Quadra),
    ADD Num_Empr SMALLINT NOT NULL 
    FK_Num_Empr FOREIGN KEY (Num_Empr)
    REFERENCES Empreendimento (Num_Empr); 

ALTER TABLE Lote 
    ADD CONSTRAINT Num_ChavLot INT 
    PRIMARY KEY NOT NULL UNIQUE (Num_ChavLot),
    ADD Cod_Quadra VARCHAR(2) NOT NULL
    FK_Cod_Quadra FOREIGN KEY (Cod_Quadra)
    REFERENCES Quadra (Cod_Quadra); 

ALTER TABLE Contrato 
    ADD CONSTRAINT Num_Contr INT 
    PRIMARY KEY NOT NULL UNIQUE (Num_Contr), 
    ADD Num_ChavLot INT NOT NULL 
    FK_Num_ChavLot FOREIGN KEY (Num_ChavLot)
    REFERENCES Lote (Num_ChavLot),
    ADD Num_CliCPFCNPJ VARCHAR(14) NOT NULL
    FK_NumCliCPFCNPJ FOREIGN KEY (Num_CliCPFCNPJ)
    REFERENCES Cliente (Num_CliCPFCNPJ),
    ADD Cod_StatusContVend TINYINT NOT NULL
    FK_Cod_StatusContVend FOREIGN KEY (Cod_StatusContVend)
    REFERENCES Status (Cod_StatusContVend);

ALTER TABLE Parcela 
    ADD CONSTRAINT Num_ChavParc INT 
    PRIMARY KEY NOT NULL UNIQUE (Num_ChavParc),
    ADD Num_ChavLot INT NOT NULL FK_Num_ChavLot_Parcela
    FOREIGN KEY (Num_ChavLot) REFERENCES Lote
    (Num_ChavLot),
    ADD Cod_TipParc SMALLINT NOT NULL FK_Cod_TipParc
    FOREIGN KEY (Cod_TipParc) REFERENCES TipoParcela (Cod_TipoParc),
    ADD Cod_TipBaiPar TINYINT NOT NULL FK_Cod_TipBaiPar
    FOREIGN KEY (Cod_TipParc) REFERENCES Baixa (Cod_TipBaiPar);





