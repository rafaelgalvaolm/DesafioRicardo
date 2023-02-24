SELECT Num_CliCPFCNPJ, 
       Nom.cli 
    INTO Cliente
    FROM Parcelas; 
    
SELECT Num_Empr 
    INTO Empreendimento 
    FROM Parcelas;

SELECT Cod_Quadra
    INTO Quadra
    FROM Parcelas;

SELECT Num_ChavLot,
       Cod_Lot, 
       Vlr_ LoteBruto;

SELECT Cod_TipoBaiPar,
       Nom_TipoBaiPar
    INTO Baixa
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

