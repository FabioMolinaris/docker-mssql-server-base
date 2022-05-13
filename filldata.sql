/****** Object:  Database [FigliDiBonetto]    Script Date: 25/03/2022 13:30:42 ******/
CREATE DATABASE [FigliDiBonetto]
SELECT Name from sys.Databases
GO

USE [FigliDiBonetto]
GO

/****** Object:  Table [dbo].[CodaOrdini]    Script Date: 25/03/2022 10:38:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CodaOrdini](
	[sNomeOrdine] [varchar](32) NOT NULL,
	[iMetriQuadriDaProdurre] [int] NULL,
	[iMetriQuadriProdotti] [int] NULL,
	[iDensitaPalline] [int] NULL,
	[iPallinePerSacco] [int] NULL,
	[iPrioritaOrdine] [int] NULL,
	[dtInsetimentoOrdine] [datetime] NOT NULL,
 CONSTRAINT [PK_CodaOrdini] PRIMARY KEY CLUSTERED 
(
	[dtInsetimentoOrdine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [FigliDiBonetto]
GO

/****** Object:  Table [dbo].[StoricoOrdini]    Script Date: 25/03/2022 10:38:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[StoricoOrdini](
	[sNomeOrdine] [varchar](32) NULL,
	[iMetriQuadriOrdine] [int] NULL,
	[iDensitaPallineOrdine] [int] NULL,
	[iPallinePerSaccoOrdine] [int] NULL,
	[sRicettaInCorso] [varchar](32) NULL,
	[iMetriQuadriDaProdurre] [int] NULL,
	[iDensitaPalline] [int] NULL,
	[iPallinePerSacco] [int] NULL,
	[iPallineProdotte] [int] NULL,
	[iSacchiProdotti] [int] NULL,
	[iQtaPallinePerSacco] [int] NULL,
	[iPallineNelSacco] [int] NULL,
	[iSacchiRichiesti] [int] NULL,
	[iSacchiCompletati] [int] NULL,
	[iQtaPallineLotto] [int] NULL,
	[iQtaScartiLotto] [int] NULL,
	[iPallineTotaliProdotte] [int] NULL,
	[iPallineDaProdurre] [int] NULL,
	[iMetriQuadriProdotti] [int] NULL,
	[rTemperaturaResistenza1] [numeric](4, 1) NULL,
	[rTemperaturaResistenza2] [numeric](4, 1) NULL,
	[rTemperaturaResistenza3] [numeric](4, 1) NULL,
	[rTemperaturaResistenza4] [numeric](4, 1) NULL,
	[rTemperaturaResistenza5] [numeric](4, 1) NULL,
	[rTemperaturaResistenza6] [numeric](4, 1) NULL,
	[rTemperaturaResistenza7] [numeric](4, 1) NULL,
	[rTemperaturaResistenza8] [numeric](4, 1) NULL,
	[rTemperaturaResistenza9] [numeric](4, 1) NULL,
	[rTemperaturaResistenza10] [numeric](4, 1) NULL,
	[rAcquaUtilizzata] [numeric](5, 1) NULL,
	[dtInserimentoOrdine] [datetime] NULL,
	[dtStartOrdine] [datetime] NULL,
	[dtStopOrdine] [datetime] NULL,
	[dtTimeStamp] [datetime] NULL,
	[iAllarmeGEN] [int] NULL,
	[iAllarmeCAT] [int] NULL,
	[iAllarmeCI] [int] NULL,
	[iAllarmeR] [int] NULL,
	[iAllarmeSA] [int] NULL,
	[iAllarmeSC] [int] NULL
) ON [PRIMARY]
GO

USE [FigliDiBonetto]
GO

/****** Object:  View [dbo].[VistaCodaOrdini]    Script Date: 12/11/2021 16:21:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VistaCodaOrdini]
AS
SELECT        TOP (1000) sNomeOrdine, iMetriQuadriDaProdurre, iMetriQuadriProdotti, iDensitaPalline, iPallinePerSacco, iPrioritaOrdine, dtInsetimentoOrdine
FROM            dbo.CodaOrdini
ORDER BY iPrioritaOrdine, dtInsetimentoOrdine
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CodaOrdini"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 303
               Right = 408
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1545
         Output = 2160
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaCodaOrdini'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaCodaOrdini'
GO

USE [FigliDiBonetto]
GO

/****** Object:  View [dbo].[VistaStoricoOrdini]    Script Date: 12/11/2021 16:21:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VistaStoricoOrdini]
AS
SELECT        TOP (1000) sNomeOrdine, iMetriQuadriOrdine, iDensitaPallineOrdine, iPallinePerSaccoOrdine, sRicettaInCorso, iMetriQuadriDaProdurre, iDensitaPalline, iPallinePerSacco, iPallineProdotte, iSacchiProdotti, iQtaPallinePerSacco, 
                         iPallineNelSacco, iSacchiRichiesti, iSacchiCompletati, iQtaPallineLotto, iQtaScartiLotto, iPallineTotaliProdotte, iPallineDaProdurre, iMetriQuadriProdotti, rTemperaturaResistenza1, rTemperaturaResistenza2, 
                         rTemperaturaResistenza3, rTemperaturaResistenza4, rTemperaturaResistenza5, rTemperaturaResistenza6, rTemperaturaResistenza7, rTemperaturaResistenza8, rTemperaturaResistenza9, rTemperaturaResistenza10, 
                         rAcquaUtilizzata, dtInserimentoOrdine, dtStartOrdine, dtStopOrdine, dtTimeStamp, iAllarmeGEN, iAllarmeCAT, iAllarmeCI, iAllarmeR, iAllarmeSA, iAllarmeSC
FROM            dbo.StoricoOrdini
ORDER BY dtTimeStamp
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "StoricoOrdini"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 335
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 23
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2415
         Alias = 1335
         Table = 2040
         Output = 1905
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaStoricoOrdini'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaStoricoOrdini'
GO

