/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'DataWrehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name= 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET single_user WITH ROLLBACK IMMEDIATE;
  DROP database DataWarehouse;
END;
GO

-- Create Database 'DataWarehouse'
CREATE DATABASE DataWarehouse;
GO
  
USE DataWarehouse;

-- Creating Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
