/*
* Tabla usuario
* Tabla repartidor
* Tabla servicio Reparto
* Tabla Detalles Servicio Reparto
* Tabla ubicaciones
*/
create database appreparto_bd;

create table usuario_tb (
id_tbUsuario int primary key auto_increment not null
nombreUsuario_tbUsuario varchar(20) not null,
password_tbUsuario varchar(10) not null,
nombre_tbUsuario varchar(30) not null,
apellido_tbUsuario varchar(30) not null,
numTelefonico_tbUsuario int not null,
correo_tbUsuario varchar(30) not null,
telefono_tbUsuario int not null,
sexo_tbUsuario varchar(30) not null
/* FK -> solicitudPedido -> id_Pedido */
);

create table repartidor_tb (
id_tbRepartidor int primary key auto_increment not null
nombreUsuario_tbRepartidor varchar(20) not null,
apellido_tbRepartidor varchar(30) not null,
numTelefonico_tbRepartidor int not null,
modeloMotocicleta_tbRepartido int not null,
correo_tbRepartidor varchar(30),
placa_tbRepartidor varchar(30),
licencia_tbRepartidor varchar(30),
edad_tbRepartidor int,
sexo_tbRepartidor varchar(30)
);


create table servicioReparto_tb (
id_Pedido int primary key auto_increment not null
fecha_Pedido varchar(30),
horaInicio_Pedido varchar(30),
horaFin_Pedido varchar(30),
Botoninicio_Pedido boolean,
Botonfin_Pedido boolean
);

create table DetallesServicioReparto_tb(
id_DetallesPedido int primary key auto_increment not null

/*FK-> id_Pedido*/
);

create table ubicaciones_tb(
id_tbUbicaciones int primary key auto_increment not null
);

