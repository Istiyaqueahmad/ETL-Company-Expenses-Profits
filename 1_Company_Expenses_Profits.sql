 -- Select database 
  USE [Companies Spends Profits]

 --Delete table if existed and create it again
 IF OBJECT_ID('[dbo].[work_Companies]', 'U') IS NOT NULL 
 DROP TABLE [dbo].[work_Companies]
   CREATE TABLE work_Companies (
       [Row_Number] INT
      ,[R&D] FLOAT
      ,[Administration] FLOAT
      ,[Advertising] FLOAT
      ,[City] VARCHAR(100)
      ,[Profit] FLOAT
  )
 
 -- Copy data from the raw table to working table
 INSERT INTO work_Companies
      (
       [Row_Number] 
      ,[R&D] 
      ,[Administration]
      ,[Advertising] 
      ,[City] 
      ,[Profit] 
	  )
SELECT 
       [Raw_Number] 
      ,[R&D] 
      ,[Administration]
      ,[Advertising] 
      ,[City] 
      ,[Profit] 
FROM [dbo].[raw_companies]