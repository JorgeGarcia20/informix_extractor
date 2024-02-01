CREATE TABLE IF NOT EXISTS clientes(
    id_cliente INT,
    nombre VARCHAR(50),
    apellido_paterno VARCHAR(50),
    apellido_materno VARCHAR(50),
    direccion VARCHAR(255),
    telefono VARCHAR(10),
    PRIMARY KEY(id_cliente)
);

CREATE TABLE IF NOT EXISTS facturas(
    id_factura INT,
    fecha DATETIME YEAR TO SECOND,
    id_cliente INT,
    PRIMARY KEY(id_factura),
    FOREIGN KEY(id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE IF NOT EXISTS categorias(
    id_categoria INT,
    descripcion VARCHAR(255),
    PRIMARY KEY(id_categoria)
);

CREATE TABLE IF NOT EXISTS proveedores(
    id_proveedor INT,
    nombre VARCHAR(255),
    direccion VARCHAR(255),
    telefono VARCHAR(10),
    PRIMARY KEY(id_proveedor)
);

CREATE TABLE IF NOT EXISTS productos(
    id_producto INT,
    descripcion VARCHAR(255),
    precio DECIMAL(12,4),
    id_categoria INT,
    id_proveedor INT,
    PRIMARY KEY(id_producto),
    FOREIGN KEY(id_categoria) REFERENCES categorias(id_categoria),
    FOREIGN KEY(id_proveedor) REFERENCES proveedores(id_proveedor)
);

CREATE TABLE IF NOT EXISTS ventas(
    id_venta INT,
    id_factura INT,
    id_producto INT,
    cantidad INT,
    PRIMARY KEY(id_venta),
    FOREIGN KEY(id_producto) REFERENCES productos(id_producto),
    FOREIGN KEY(id_factura) REFERENCES facturas(id_factura)
);
