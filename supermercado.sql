PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE clientes (
                DNI INTEGER PRIMARY KEY,
                nombreCliente VARCHAR(15),
                ApellidoCliente VARCHAR(20),
                emailCliente varchar(50),
                telefonoCliente varchar(10)
            );
INSERT INTO clientes VALUES(123,'David','Lattanzio','david@david.com','2135172');
INSERT INTO clientes VALUES(1234,'David','Castillo','david@castillo.com','2354234');
INSERT INTO clientes VALUES(1235,'David','akdfjlsa','adsfasd','12312312');
INSERT INTO clientes VALUES(123456,'Juan','Perez','juanpere@juan.com','374279');
CREATE TABLE pedidos (
                id_pedido INTEGER PRIMARY KEY,
                dniCliente INTEGER,
                fecha_pedido datetime,
                estado varchar(30),
                foreign key (dniCliente) REFERENCES Clientes(DNI)
            );
INSERT INTO pedidos VALUES(1,123,'2023-11-23','comprado');
INSERT INTO pedidos VALUES(2,1234,'2023-11-20','comprado');
INSERT INTO pedidos VALUES(3,123456,'2023-11-2','Comprado');
INSERT INTO pedidos VALUES(4,123456,'2023-11-24','Comprado');
INSERT INTO pedidos VALUES(5,123456,'2023-11-24','Comprado');
INSERT INTO pedidos VALUES(6,123456,'2023-11-25','Comprado');
CREATE TABLE categorias (
                id_categoria INTEGER PRIMARY KEY,
                nombre VARCHAR(50)
            );
INSERT INTO categorias VALUES(1,'Frutas');
INSERT INTO categorias VALUES(2,'Lacteos');
CREATE TABLE productos (
                id_producto INTEGER PRIMARY KEY,
                nombre VARCHAR(100),
                precio DECIMAL(10, 2),
                cantidad INTEGER,
                id_categoria INTEGER,
                FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
            );
INSERT INTO productos VALUES(1,'ManzanaDorada',100,5,1);
COMMIT;
