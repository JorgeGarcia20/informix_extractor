{ DATABASE punto_ventas  delimiter | }

grant dba to "alber";











{ TABLE clientes row size = 424 number of columns = 6 index size = 9 }

{ unload file name = clien00121.unl number of rows = 0 }

create table clientes 
  (
    id_cliente integer,
    nombre varchar(50),
    apellido_paterno varchar(50),
    apellido_materno varchar(50),
    direccion varchar(255),
    telefono varchar(10),
    primary key (id_cliente) 
  );

revoke all on clientes from "public";

{ TABLE categorias row size = 260 number of columns = 2 index size = 9 }

{ unload file name = categ00122.unl number of rows = 0 }

create table categorias 
  (
    id_categoria integer,
    descripcion varchar(255),
    primary key (id_categoria) 
  );

revoke all on categorias from "public";

{ TABLE proveedores row size = 527 number of columns = 4 index size = 9 }

{ unload file name = prove00123.unl number of rows = 0 }

create table proveedores 
  (
    id_proveedor integer,
    nombre varchar(255),
    direccion varchar(255),
    telefono varchar(10),
    primary key (id_proveedor) 
  );

revoke all on proveedores from "public";

{ TABLE productos row size = 275 number of columns = 5 index size = 27 }

{ unload file name = produ00124.unl number of rows = 0 }

create table productos 
  (
    id_producto integer,
    descripcion varchar(255),
    precio decimal(12,4),
    id_categoria integer,
    id_proveedor integer,
    primary key (id_producto) 
  );

revoke all on productos from "public";

{ TABLE ventas row size = 12 number of columns = 3 index size = 18 }

{ unload file name = venta00125.unl number of rows = 0 }

create table ventas 
  (
    id_venta integer,
    id_producto integer,
    cantidad integer,
    primary key (id_venta) 
  );

revoke all on ventas from "public";




grant select on clientes to "public";
grant update on clientes to "public";
grant insert on clientes to "public";
grant delete on clientes to "public";
grant index on clientes to "public";
grant select on categorias to "public";
grant update on categorias to "public";
grant insert on categorias to "public";
grant delete on categorias to "public";
grant index on categorias to "public";
grant select on proveedores to "public";
grant update on proveedores to "public";
grant insert on proveedores to "public";
grant delete on proveedores to "public";
grant index on proveedores to "public";
grant select on productos to "public";
grant update on productos to "public";
grant insert on productos to "public";
grant delete on productos to "public";
grant index on productos to "public";
grant select on ventas to "public";
grant update on ventas to "public";
grant insert on ventas to "public";
grant delete on ventas to "public";
grant index on ventas to "public";
















revoke usage on language SPL from public ;

grant usage on language SPL to public ;








alter table productos add constraint (foreign key (id_categoria) 
    references categorias );
alter table productos add constraint (foreign key (id_proveedor) 
    references proveedores );
alter table ventas add constraint (foreign key (id_producto) 
    references productos );







 



