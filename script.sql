/*
* Tabla usuario
* Tabla repartidor
* Tabla servicio Reparto
* Tabla Detalles Servicio Reparto
* Tabla ubicacion
*/
create database appreparto_bd;

create table usuario_tb (
id_Usuario int primary key auto_increment not null,
nombreUsuario_Usuario varchar(30) not null,
password_Usuario varchar(10) not null,
nombre_Usuario varchar(30) not null,
apellido_Usuario varchar(30) not null,
numTelefonico_Usuario varchar(10) not null,
correo_Usuario varchar(30) not null,
sexo_Usuario varchar(6) not null,
fechaNacimiento_Usuario date not null,
fotoPerfil_Usuario varchar(100),
mensajeEstado_Uusuario varchar(100)
);

create table repartidor_tb (
id_Repartidor int primary key auto_increment not null,
nombreUsuario_Repartidor varchar(20) not null,
password_Repartidor varchar(10) not null,
nombre_Repartidor varchar(30) not null,
apellido_Repartidor varchar(30) not null,
numTelefonico_Repartidor int not null,
correo_Repartidor varchar(30),
sexo_Repartidor varchar(6) not null,
fechaNacimiento_Repartidor date not null,
fotoPerfil_Repartidor varchar(100),
mensajeEstado_Repartidor varchar(100),
modeloMotocicleta_Repartido varchar(30) not null,
placa_Repartidor varchar(30) not null,
licencia_Repartidor varchar(30) not null
);


create table servicioReparto_tb (
id_ServicioReparto int primary key auto_increment not null,
fecha_ServicioReparto date not null,
horaInicio_ServicioReparto time not null,
horaFin_ServicioReparto time not null,
inicio_ServicioReparto boolean,
fin_ServicioReparto boolean
);
/* FK -> id_Usuario -> usuario_tb */
alter table servicioReparto_tb ADD foreign key (id_ServicioReparto) references usuario_tb (id_Usuario);
/* FK -> id_Repartidor -> repartidor_tb */
alter table servicioReparto_tb ADD foreign key (id_ServicioReparto) references repartidor_tb (id_Repartidor);


create table detallesServicioReparto_tb(
id_DetallesServicioReparto int primary key auto_increment not null,
ubicacionDestino_DetallesServicioReparto varchar(30),
ubicacionFinal_DetallesServicioReparto varchar(30),
mensajeDetalleDelPedido_DetallesServicioReparto varchar(100),
calificacionRepartidor int
);
/* FK -> id_ServicioReparto -> servicioReparto_tb */
alter table detallesServicioReparto_tb ADD foreign key (id_DetallesServicioReparto) references servicioReparto_tb (id_ServicioReparto);

create table ubicacion_tb(
id_Ubicacion int primary key auto_increment not null,
longitud_Ubicacion int,
latitud_Ubicacion int
);
