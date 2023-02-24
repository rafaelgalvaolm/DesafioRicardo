CREATE TABLE ClienteT (
    Num_CliCPFCNPJ VARCHAR(14) PRIMARY KEY NOT NULL,
	Nom_Cli VARCHAR(50) NOT NULL
);

INSERT INTO ClienteT
SELECT DISTINCT Num_CliCPFCNPJ, Nom_Cli FROM Parcelas;

CREATE TABLE StatusContratoT (
    Cod_StatusContVend TINYINT PRIMARY KEY NOT NULL,
	Nom_StatusContVend VARCHAR(50) NOT NULL
);

INSERT INTO StatusContratoT
SELECT DISTINCT Cod_StatusContVend, Nom_StatusContVend FROM Parcelas;

CREATE TABLE LoteT (
    Num_ChavLot INT PRIMARY KEY NOT NULL,
	Cod_Lot TINYINT NOT NULL,
    Num_Empr SMALLINT NOT NULL,
    Cod_Quadra VARCHAR(2)
);

INSERT INTO LoteT
SELECT DISTINCT Num_ChavLot, Cod_Lot, Num_Empr, Cod_Quadra FROM Parcelas;


CREATE TABLE ContratoT (
    Num_Contr INT PRIMARY KEY NOT NULL,
	Num_CliCPFCNPJ VARCHAR(14) NOT NULL,
	Cod_StatusContVend TINYINT NOT NULL,
	Num_ChavLot INT NOT NULL,
	Dat_Venda DATETIME NOT NULL,
	Vlr_LoteBruto DECIMAL(15, 2)
    CONSTRAINT fk_Num_CliCPFCNPJ FOREIGN KEY (Num_CliCPFCNPJ) 
    REFERENCES ClienteT (Num_CliCPFCNPJ),
    CONSTRAINT fK_Cod_StatusContVend FOREIGN KEY (Cod_StatusContVend)
    REFERENCES StatusContratoT (Cod_StatusContVend),
    CONSTRAINT fK_Num_ChavLot FOREIGN KEY (Num_ChavLot)
    REFERENCES LoteT (Num_ChavLot)
);

INSERT INTO ContratoT
SELECT DISTINCT Num_Contr, Num_CliCPFCNPJ, Cod_StatusContVend, Num_ChavLot, Dat_Venda, Vlr_LoteBruto FROM Parcelas;

CREATE TABLE TipoParcelaT (
    Cod_TipParc SMALLINT PRIMARY KEY NOT NULL,
	Nom_TipParc VARCHAR(70) NOT NULL,
	Num_PriorExtrato TINYINT NOT NULL,
);

INSERT INTO TipoParcelaT
SELECT DISTINCT Cod_TipParc, Nom_TipParc, Num_PriorExtrato FROM Parcelas;

CREATE TABLE BaixaParcelaT (
    Cod_TipBaiPar TINYINT NOT NULL,
	Nom_TipBaiPar VARCHAR(50) NOT NULL
);

INSERT INTO BaixaParcelaT
SELECT DISTINCT Cod_TipBaiPar, Nom_TipBaiPar FROM Parcelas;

select * from ContratoT ct
inner join Cliente c
on ct.Num_CliCPFCNPJ = c.Num_CliCPFCNPJ