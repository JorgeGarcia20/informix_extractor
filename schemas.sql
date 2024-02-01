grant dba to "alber";









{ TABLE "alber".clientes row size = 424 number of columns = 6 index size = 9 }

create table "alber".clientes 
  (
    id_cliente integer,
    nombre varchar(50),
    apellido_paterno varchar(50),
    apellido_materno varchar(50),
    direccion varchar(255),
    telefono varchar(10),
    primary key (id_cliente) 
  );

revoke all on "alber".clientes from "public" as "alber";

{ TABLE "alber".categorias row size = 260 number of columns = 2 index size = 9 }

create table "alber".categorias 
  (
    id_categoria integer,
    descripcion varchar(255),
    primary key (id_categoria) 
  );

revoke all on "alber".categorias from "public" as "alber";

{ TABLE "alber".proveedores row size = 527 number of columns = 4 index size = 9 }

create table "alber".proveedores 
  (
    id_proveedor integer,
    nombre varchar(255),
    direccion varchar(255),
    telefono varchar(10),
    primary key (id_proveedor) 
  );

revoke all on "alber".proveedores from "public" as "alber";

{ TABLE "alber".productos row size = 275 number of columns = 5 index size = 27 }

create table "alber".productos 
  (
    id_producto integer,
    descripcion varchar(255),
    precio decimal(12,4),
    id_categoria integer,
    id_proveedor integer,
    primary key (id_producto) 
  );

revoke all on "alber".productos from "public" as "alber";

{ TABLE "alber".ventas row size = 12 number of columns = 3 index size = 18 }

create table "alber".ventas 
  (
    id_venta integer,
    id_producto integer,
    cantidad integer,
    primary key (id_venta) 
  );

revoke all on "alber".ventas from "public" as "alber";


grant select on "alber".clientes to "public" as "alber";
grant update on "alber".clientes to "public" as "alber";
grant insert on "alber".clientes to "public" as "alber";
grant delete on "alber".clientes to "public" as "alber";
grant index on "alber".clientes to "public" as "alber";
grant select on "alber".categorias to "public" as "alber";
grant update on "alber".categorias to "public" as "alber";
grant insert on "alber".categorias to "public" as "alber";
grant delete on "alber".categorias to "public" as "alber";
grant index on "alber".categorias to "public" as "alber";
grant select on "alber".proveedores to "public" as "alber";
grant update on "alber".proveedores to "public" as "alber";
grant insert on "alber".proveedores to "public" as "alber";
grant delete on "alber".proveedores to "public" as "alber";
grant index on "alber".proveedores to "public" as "alber";
grant select on "alber".productos to "public" as "alber";
grant update on "alber".productos to "public" as "alber";
grant insert on "alber".productos to "public" as "alber";
grant delete on "alber".productos to "public" as "alber";
grant index on "alber".productos to "public" as "alber";
grant select on "alber".ventas to "public" as "alber";
grant update on "alber".ventas to "public" as "alber";
grant insert on "alber".ventas to "public" as "alber";
grant delete on "alber".ventas to "public" as "alber";
grant index on "alber".ventas to "public" as "alber";


revoke usage on language SPL from public ;

grant usage on language SPL to public ;




alter table "alber".productos add constraint (foreign key (id_categoria) 
    references "alber".categorias );
alter table "alber".productos add constraint (foreign key (id_proveedor) 
    references "alber".proveedores );
alter table "alber".ventas add constraint (foreign key (id_producto) 
    references "alber".productos );


