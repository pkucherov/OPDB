USE perpetuumsa
GO

---InsurancePrices for Syndicates ---------
PRINT N'INSERTing new InsurancePrices for all syndicate bots'
--Vektor
INSERT INTO [dbo].[insuranceprices]
           ([definition],[fee],[payout])
     VALUES
           (5504, 25000, 125000)
--helix
INSERT INTO [dbo].[insuranceprices]
           ([definition],[fee],[payout])
     VALUES
           (5508, 100000, 500000)

--locust
INSERT INTO [dbo].[insuranceprices]
           ([definition],[fee],[payout])
     VALUES
           (5512, 85000, 425000)

--echelon
INSERT INTO [dbo].[insuranceprices]
           ([definition],[fee],[payout])
     VALUES
           (5516, 300000, 1500000)

--echelon
INSERT INTO [dbo].[insuranceprices]
           ([definition],[fee],[payout])
     VALUES
           (5520, 300000, 1500000)

--legatus
INSERT INTO [dbo].[insuranceprices]
           ([definition],[fee],[payout])
     VALUES
           (5524, 2500000, 12500000)


--ikarus
INSERT INTO [dbo].[insuranceprices]
           ([definition],[fee],[payout])
     VALUES
           (5528, 25000, 125000)

--cronus
INSERT INTO [dbo].[insuranceprices]
           ([definition],[fee],[payout])
     VALUES
           (5532, 45000, 225000)

--hermes
INSERT INTO [dbo].[insuranceprices]
           ([definition],[fee],[payout])
     VALUES
           (5536, 45000, 225000)

--daidalos
INSERT INTO [dbo].[insuranceprices]
           ([definition],[fee],[payout])
     VALUES
           (5540, 160000, 800000)

--metis
INSERT INTO [dbo].[insuranceprices]
           ([definition],[fee],[payout])
     VALUES
           (5544, 2500000, 12500000)

GO
