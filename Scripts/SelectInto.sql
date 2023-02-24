SELECT DISTINCT 
       Num_CliCPFCNPJ, 
       Nom_Cli 
    INTO Cliente
    FROM Parcelas; 

  SELECT DISTINCT
       Cod_StatusContVend,
       Nom_StatusContVend
    INTO Status 
    FROM Parcelas;

SELECT DISTINCT
       Num_ChavLot,
       Cod_Lot, 
       Vlr_LoteBruto,
       Num_Empr,
       Cod_Quadra
    INTO Lote
    FROM Parcelas;

SELECT DISTINCT
       Cod_TipBaiPar,
       Nom_TipBaiPar
    INTO BaixaParcela
    FROM Parcelas;

SELECT DISTINCT
       Cod_tipParc, 
       Nom_TipParc,
       Num_PriorExtrato
    INTO TipoParcela
    FROM Parcelas;

SELECT 
       Num_Contr,
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

<<<<<<< HEAD
SELECT Cod_StatusContVend,
       Nom_StatusContVend
    INTO Status 
    FROM Parcelas;

=======
>>>>>>> 38f0b0dc685c0c006ae3cfddcd9f82a9f009e981
