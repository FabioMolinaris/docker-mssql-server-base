RESTORE FILELISTONLY FROM DISK = '/var/opt/mssql/backup/220512.bak';

RESTORE DATABASE FigliDiBonetto 
    FROM DISK='/var/opt/mssql/backup/220512.bak'
    WITH MOVE 'FigliDiBonetto' TO '/var/opt/mssql/data/FigliDiBonetto.mdf', 
    MOVE 'FigliDiBonetto_log' TO '/var/opt/mssql/data/FigliDiBonetto_log.ldf';
GO

USE [FigliDiBonetto]
GO