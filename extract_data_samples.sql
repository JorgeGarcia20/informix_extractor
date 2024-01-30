-- Este query nos permitiria extrer un ejemplo de los datos que almacenan cada
-- una de las tablas en una base de datos particular.

-- Importante colocar en la sentencia SELECT el nombre de la tabla de la 
-- cual se estan extrayendo los datos para poder identificarla.

-- Importante colocar un limite ya que no se sabe la longitud filas existentes en cada tabla.


-- SELECT 'Table1';
-- SELECT * FROM table1 LIMIT 2;

-- SELECT 'Table2';
-- SELECT * FROM table2 LIMIT 2;

-- SELECT 'Table3';
-- SELECT * FROM table3 LIMIT 2;

-- SELECT 'Table4';
-- SELECT * FROM table4 LIMIT 2;

SELECT t.*, "Table1" table_name FROM table1 AS t LIMIT 2;
SELECT t.*, "Table2" table_name FROM table2 AS t LIMIT 2;
SELECT t.*, "Table3" table_name FROM table3 AS t LIMIT 2;
SELECT t.*, "Table4" table_name FROM table4 AS t LIMIT 2;