UNLOAD TO './data/punto_ventas_tablas.csv' DELIMITER ','
SELECT TRIM(t.tabname) AS TableName,
    c.colno AS ColumnOrder,
    TRIM(c.colname) AS ColumnName,
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
        ELSE TO_CHAR(coltype) END AS Datatype, 
    c.collength AS DatatypeLength,
    CASE WHEN NVL(
    (
    SELECT MAX(i.idxname)
    FROM "informix".sysconstraints cn INNER JOIN "informix".sysindexes i 
        ON cn.idxname = i.idxname
        AND cn.tabid = i.tabid
    WHERE cn.constrtype = 'P'
        AND cn.tabid = t.tabid
        AND
        (c.colno = i.part1
            OR c.colno = i.part2
            OR c.colno = i.part3
            OR c.colno = i.part4
            OR c.colno = i.part5
            OR c.colno = i.part6
            OR c.colno = i.part7
            OR c.colno = i.part8
            OR c.colno = i.part9
            OR c.colno = i.part10
            OR c.colno = i.part11
            OR c.colno = i.part12
            OR c.colno = i.part13
            OR c.colno = i.part14
            OR c.colno = i.part15
            OR c.colno = i.part16
        )
),'') = '' THEN 0 ELSE 1 END    AS PK
FROM "informix".systables  AS t  JOIN "informix".syscolumns AS c 
    ON t.tabid = c.tabid
WHERE t.tabtype = 'T'
    AND t.tabid >= 100
    --AND t.tabname = 'resource'
ORDER BY t.tabname, c.colno;