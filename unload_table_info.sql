-- UNLOAD TO 'tablas_db.txt' DELIMITER ','
-- SELECT systables.tabid, tabname, colname, coltype, colno
-- FROM systables, syscolumns
-- WHERE syscolumns.tabid = systables.tabid AND systables.tabid > 99;

UNLOAD TO 'tablas_db.csv' DELIMITER ','
SELECT tabname, colname, 
CASE 
  WHEN MOD(coltype,256)=0 THEN 'CHAR' 
  WHEN MOD(coltype,256)=1 THEN 'SMALLINT' 
  WHEN MOD(coltype,256)=2 THEN 'INTEGER' 
  WHEN MOD(coltype,256)=3 THEN 'FLOAT' 
  WHEN MOD(coltype,256)=4 THEN 'SMALLFLOAT' 
  WHEN MOD(coltype,256)=5 THEN 'DECIMAL' 
  WHEN MOD(coltype,256)=6 THEN 'SERIAL' 
  WHEN MOD(coltype,256)=7 THEN 'DATE' 
  WHEN MOD(coltype,256)=8 THEN 'MONEY' 
  WHEN MOD(coltype,256)=9 THEN 'NULL' 
  WHEN MOD(coltype,256)=10 THEN 'DATETIME' 
  WHEN MOD(coltype,256)=11 THEN 'BYTE' 
  WHEN MOD(coltype,256)=12 THEN 'TEXT' 
  WHEN MOD(coltype,256)=13 THEN 'VARCHAR' 
  WHEN MOD(coltype,256)=14 THEN 'INTERVAL' 
  WHEN MOD(coltype,256)=15 THEN 'NCHAR' 
  WHEN MOD(coltype,256)=16 THEN 'NVARCHAR' 
  WHEN MOD(coltype,256)=17 THEN 'INT8' 
  WHEN MOD(coltype,256)=18 THEN 'SERIAL8' 
  WHEN MOD(coltype,256)=19 THEN 'SET' 
  WHEN MOD(coltype,256)=20 THEN 'MULTISET' 
  WHEN MOD(coltype,256)=21 THEN 'LIST' 
  WHEN MOD(coltype,256)=22 THEN 'ROW (unnamed)' 
  WHEN MOD(coltype,256)=23 THEN 'COLLECTION' 
  WHEN MOD(coltype,256)=40 THEN 'LVARCHAR fixed-length opaque types' 
  WHEN MOD(coltype,256)=41 THEN 'BLOB, BOOLEAN, CLOB variable-length opaque types' 
  WHEN MOD(coltype,256)=43 THEN 'LVARCHAR (client-side only)' 
  WHEN MOD(coltype,256)=45 THEN 'BOOLEAN' 
  WHEN MOD(coltype,256)=52 THEN 'BIGINT' 
  WHEN MOD(coltype,256)=53 THEN 'BIGSERIAL' 
  WHEN MOD(coltype,256)=2061 THEN 'IDSSECURITYLABEL'
  WHEN MOD(coltype,256)=4118 THEN 'ROW (named)' 
  ELSE TO_CHAR(coltype) END AS Type, colno
FROM systables, syscolumns
WHERE syscolumns.tabid = systables.tabid AND systables.tabid > 99;
