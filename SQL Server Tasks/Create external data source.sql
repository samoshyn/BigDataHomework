CREATE DATABASE SCOPED CREDENTIAL AzureStorageKey
WITH IDENTITY = 'ADLS_Any_String', Secret = 'jgcEshTHpqL2emPYheVWtCOvAxPmzgimyBXTdfaJ7GN3vN+a8vf/MmVhqmA0CLOcaaNLI4gx79gm/RCiWUfa4w==';
GO

CREATE EXTERNAL DATA SOURCE samoshyn_blob 
with (  
      TYPE = HADOOP,
      LOCATION ='wasbs://container01@samoshyn01.blob.core.windows.net',  
      CREDENTIAL = AzureStorageKey
);  
GO