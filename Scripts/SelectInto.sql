SELECT Num_CliCPFCNPJ, 
       Nom_Cli 
    INTO Cliente
    FROM Parcelas; 
    

SELECT Num_ChavLot,
       Cod_Lot, 
       Vlr_LoteBruto,
       Num_Empr,
       Cod_Quadra
    INTO Lote
    FROM Parcelas;

SELECT Cod_TipBaiPar,
       Nom_TipBaiPar
    INTO BaixaParcela
    FROM Parcelas;

SELECT Cod_tipParc, 
       Nom_TipParc,
       Num_PriorExtrato
    INTO TipoParcela
    FROM Parcelas;

SELECT Num_Contr,
       Dat_Venda
    INTO Contrato 
    FROM Parcelas;

SELECT Num_ChavParc,
       Dat_Venc, 
       Vlr_Parc,
       Dat_Baixa,
       Dat_Ger,
       Vlr_Pago,
       Num_Protocolo
    INTO Parcela
    FROM Parcelas;

SELECT Cod_StatusContVend,
       Nom_StatusContVend
    INTO Status 
    FROM Parcelas;