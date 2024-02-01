# **Comandos informix**

### acceder a informix
`$ dbaccess`

### acceder a una base de datos
`$ dbaccess <database_name>`

### ejecutar un script de sql de manera externa
`$ dbaccess <database_name> <script.sql>`

### exportar el resultado de un script a un archivo de texto
`$ dbaccess <database_name> <script.sql> > <file.txt|.csv>`

### exportar la definicion de tablas y demas detalles de una base de datos
`$ dbexport <database_name> -nw`

### exportar schema de una tabla en particular de una base de datos
`$ dbschema -d <database_name> -t <table_name>`

### exportar los schemas de una base de datos en un archivo .sql
`$ dbschema -d <database_name> <file_name.sql>`
