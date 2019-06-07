CREATE DATABASE ServicioReparto_bd;

/* Tabla Cliente */
CREATE TABLE Cliente(
ID_Cliente varchar(30) primary key not null,
UsernameC varchar(30),
PasswordC varchar(30),
CorreoC varchar(30),
NumTelefonicoC int,
PrimerNombreC varchar(30),
SegundoNombreC varchar(30),
ApellidoPaternoC varchar(30),
ApellidoMaternoC varchar(30),
FechaNaciC date,
CiudadC varchar(30),
CodPostalC int,
SexoC varchar(30),
FotoPerfilC varchar(30)
);

INSERT INTO Cliente (ID_Cliente, UsernameC, PasswordC, CorreoC, NumTelefonicoC, PrimerNombreC, SegundoNombreC, ApellidoPaternoC, ApellidoMaternoC, FechaNaciC, CiudadC, CodPostalC, SexoC, FotoPerfilC)
VALUES ('C01', 'carlosg', 'jsdhsh', 'carlosgonzales@gmail.com', 9830978678, 'Carlos', 'Miguel', 'Gonzales', 'Perdomo', '1985-04-18', 'Chetumal', '77011', 'Hombre', 'Carlosg.jpg');

INSERT INTO Cliente (ID_Cliente, UsernameC, PasswordC, CorreoC, NumTelefonicoC, PrimerNombreC, SegundoNombreC, ApellidoPaternoC, ApellidoMaternoC, FechaNaciC, CiudadC, CodPostalC, SexoC, FotoPerfilC)
VALUES ('C02', 'miguelc', 'djshdjdhg', 'Miguelc@gmail.com', 9837847623, 'Miguel', 'Alejandro', 'Torres', 'Cervantes', '1990-09-17', 'Bacalar', '77000', 'Hombre', 'Miguel.jpg');

INSERT INTO Cliente (ID_Cliente, UsernameC, PasswordC, CorreoC, NumTelefonicoC, PrimerNombreC, SegundoNombreC, ApellidoPaternoC, ApellidoMaternoC, FechaNaciC, CiudadC, CodPostalC, SexoC, FotoPerfilC)
VALUES ('C03', 'josemiguel', 'klakdasdsa', 'jmiguel@gmail.com', 9837283783, 'Jose', 'Miguel', 'Novelo', 'Reyes', '1988-03-23', 'Chetumal', '77012', 'Hombre', 'Josemiguel.jpg');

/* Tabla Repartidor */
CREATE TABLE Repartidor(
ID_Repartidor varchar(30) primary key not null,
UsernameR varchar(30),
PasswordR varchar(30),
CorreoR varchar(30),
NumTelefonicoR int,
PrimerNombreR varchar(30),
SegundoNombreR varchar(30),
ApellidoPaternoR varchar(30),
ApellidoMaternoR varchar(30),
FechaNaciR date,
CiudadR varchar(30),
CodPostalR int,
SexoR varchar(30),
FotoPerfilR varchar(30)
/* FK ID_VehiculoRepartidor */
Alter table Repartidor
Add ID_VehiculoRepartidor varchar(30),
constraint FK_Repartidor_VehiculoRepartidor
Foreign key(ID_VehiculoRepartidor)
References VehiculoRepartidor(ID_VehiculoRepartidor)
/* FK ID_EstadoRepartidor */
Alter table Repartidor
Add ID_EstadoRepartidor varchar(30),
constraint FK_Repartidor_EstadoRepartidor
Foreign key(ID_EstadoRepartidor)
References EstadoRepartidor(ID_EstadoRepartidor)
);

INSERT INTO Repartidor (ID_Repartidor, UsernameR, PasswordR, CorreoR, NumTelefonicoR, PrimerNombreR, SegundoNombreR, ApellidoPaternoR, ApellidoMaternoR, FechaNaciR, CiudadR, CodPostalR, SexoR, FotoPerfilR)
VALUES ('R01', 'robertom', 'jfhsjdhf', 'robertom@gmail.com', 983789875, 'Roberto', 'Oscar', 'Mendez', 'Lopez', '1993-05-23', 'Chetumal', '77014', 'Hombre', 'Roberto.jpg');

INSERT INTO Repartidor (ID_Repartidor, UsernameR, PasswordR, CorreoR, NumTelefonicoR, PrimerNombreR, SegundoNombreR, ApellidoPaternoR, ApellidoMaternoR, FechaNaciR, CiudadR, CodPostalR, SexoR, FotoPerfilR)
VALUES ('R02', 'alejandra', 'hgdjshdg', 'alejandratorres@gmail.com', 9837826378, 'Alejandra', 'Maria', 'Lopez', 'Torres', '1994-04-15', 'Calderitas', '77016', 'Mujer', 'Alejandra.jpg');

INSERT INTO Repartidor (ID_Repartidor, UsernameR, PasswordR, CorreoR, NumTelefonicoR, PrimerNombreR, SegundoNombreR, ApellidoPaternoR, ApellidoMaternoR, FechaNaciR, CiudadR, CodPostalR, SexoR, FotoPerfilR)
VALUES ('R03', 'manuelt', 'dskdskdsd', 'manuelt@gmail.com', 9839876735, 'Manuel', 'Alejandro', 'Tejero', 'Salazar', '1996-04-30', 'Chetumal', '77015', 'Hombre', 'Manuel.jpg');

/* Tabla VehiculoRepartidor */
CREATE TABLE VehiculoRepartidor(
ID_VehiculoRepartidor varchar(30) primary key not null,
Tipo varchar(30),
Marca varchar(30),
Modelo varchar(30),
Anio int,
Color varchar(30),
Placa varchar(30)
);

INSERT INTO VehiculoRepartidor (ID_VehiculoRepartidor, Tipo, Marca, Modelo, Anio, Color, Placa)
VALUES ('VH01', 'Motocicleta', 'Yamaha', 'Aerox', '2017', 'Rojo', 'JDF342');

INSERT INTO VehiculoRepartidor (ID_VehiculoRepartidor, Tipo, Marca, Modelo, Anio, Color, Placa)
VALUES ('VH02', 'Motocicleta', 'Yamaha', 'Cruz', '2016', 'Blanca', 'JFH434');

INSERT INTO VehiculoRepartidor (ID_VehiculoRepartidor, Tipo, Marca, Modelo, Anio, Color, Placa)
VALUES ('VH03', 'Motocicleta', 'Italika', 'V3000', '2019', 'Rojo', 'GHF456');

/* Tabla Producto */
CREATE TABLE Producto(
ID_Producto varchar(30) primary key not null,
Nombre_Producto varchar(30),
Descripcion_Producto varchar(30),
Precio_Producto decimal,
FotoFactura_Producto varchar(30)
);

INSERT INTO Producto (ID_Producto, Nombre_Producto, Descripcion_Producto, Precio_Producto, FotoFactura_Producto)
VALUES ('P01', 'Producto 1', 'Hamburguesa hawwaiana', 55, 'Factura.jpg');

INSERT INTO Producto (ID_Producto, Nombre_Producto, Descripcion_Producto, Precio_Producto, FotoFactura_Producto)
VALUES ('P02', 'Producto 1', 'Pizza al pastor', 106, 'Factura.jpg');

INSERT INTO Producto (ID_Producto, Nombre_Producto, Descripcion_Producto, Precio_Producto, FotoFactura_Producto)
VALUES ('P03', 'Producto 2', 'Coca cola 2,5L', 25, 'Factura.jpg');

INSERT INTO Producto (ID_Producto, Nombre_Producto, Descripcion_Producto, Precio_Producto, FotoFactura_Producto)
VALUES ('P04', 'Producto 1', '3 empanadas de queso', 90, 'Factura.jpg');

/* Tabla ComisionDistanciaSistema */
CREATE TABLE ComisionDistanciaSistema(
ID_ComisionDistanciaSistema varchar(30) primary key not null,
Distancia_Sistema varchar(30),
Precio_Sistema int
);

INSERT INTO ComisionDistanciaSistema (ID_ComisionDistanciaSistema, Distancia_Sistema, Precio_Sistema)
VALUES ('1CS', 'Corta', 2);

INSERT INTO ComisionDistanciaSistema (ID_ComisionDistanciaSistema, Distancia_Sistema, Precio_Sistema)
VALUES ('2MS', 'Media', 4);

INSERT INTO ComisionDistanciaSistema (ID_ComisionDistanciaSistema, Distancia_Sistema, Precio_Sistema)
VALUES ('3LS', 'Larga', 6);

/* Tabla ComisionDistanciaRepartidor */
CREATE TABLE ComisionDistanciaRepartidor(
ID_ComisionDistanciaRepartidor varchar(30) primary key not null,
Distancia_Repartidor varchar(30),
Precio_Repartidor int
);

INSERT INTO ComisionDistanciaRepartidor (ID_ComisionDistanciaRepartidor, Distancia_Repartidor, Precio_Repartidor)
VALUES ('1CR', 'Corta', '10');

INSERT INTO ComisionDistanciaRepartidor (ID_ComisionDistanciaRepartidor, Distancia_Repartidor, Precio_Repartidor)
VALUES ('2MR', 'Media', '15');

INSERT INTO ComisionDistanciaRepartidor (ID_ComisionDistanciaRepartidor, Distancia_Repartidor, Precio_Repartidor)
VALUES ('3LR', 'Larga', '20');

/* Tabla ComisionTiempoSistema */
CREATE TABLE ComisionTiempoSistema(
ID_ComisionTiempoSistema varchar(30) primary key not null,
TiempoSis varchar(30),
Hora_Inicio_TiempoSis time,
Hora_Fin_TiempoSis time,
Precio_TiempoSis int
);

INSERT INTO ComisionTiempoSistema (ID_ComisionTiempoSistema, TiempoSis, Hora_Inicio_TiempoSis, Hora_Fin_TiempoSis, Precio_TiempoSis)
VALUES ('1DS', 'Dia', '07:00:00', '22:59:00', 1);

INSERT INTO ComisionTiempoSistema (ID_ComisionTiempoSistema, TiempoSis, Hora_Inicio_TiempoSis, Hora_Fin_TiempoSis, Precio_TiempoSis)
VALUES ('2NS', 'Noche', '23:00:00', '06:59:00', 2);

/* Tabla ComisionTiempoRepartidor */
CREATE TABLE ComisionTiempoRepartidor(
ID_ComisionTiempoRepartidor varchar(30) primary key not null,
TiempoRep varchar(30),
Hora_Inicio_TiempoRep time,
Hora_Fin_TiempoRep time,
Precio_TiempoRep int
);

INSERT INTO ComisionTiempoRepartidor (ID_ComisionTiempoRepartidor, TiempoRep, Hora_Inicio_TiempoRep, Hora_Fin_TiempoRep, Precio_TiempoRep)
VALUES ('1DR', 'Dia', '07:00:00', '22:59:00', 10);

INSERT INTO ComisionTiempoRepartidor (ID_ComisionTiempoRepartidor, TiempoRep, Hora_Inicio_TiempoRep, Hora_Fin_TiempoRep, Precio_TiempoRep)
VALUES ('2NR', 'Noche', '23:00:00', '06:59:00', 20);

/* Tabla ServicioReparto */
CREATE TABLE ServicioReparto(
ID_ServicioReparto varchar(30) primary key not null,
CalleProducU varchar(30),
NumProducU int,
ColoniaProducU varchar(30),
CalleDestino varchar(30),
NumDestino int,
ColoniaDestino varchar(30),
Fecha_Servicio date,
Hora_Servicio time,
TiempoTranscurrido time,
CostoTotal int
/* FK ID_Cliente */
Alter table ServicioReparto
Add ID_Cliente varchar(30),
constraint FK_ServicioReparto_Cliente
Foreign key(ID_Cliente)
References Cliente(ID_Cliente)
/* FK ID_Repartidor */
Alter table ServicioReparto
Add ID_Repartidor varchar(30),
constraint FK_ServicioReparto_Repartidor
Foreign key(ID_Repartidor)
References Repartidor(ID_Repartidor)
/* FK ID_EstadoServicio */
Alter table ServicioReparto
Add ID_EstadoServicio varchar(30),
constraint FK_ServicioReparto_EstadoServicio
Foreign key(ID_EstadoServicio)
References EstadoServicio(ID_EstadoServicio)
/* FK ID_ComisionDistanciaSistema */
Alter table ServicioReparto
Add ID_ComisionDistanciaSistema varchar(30),
constraint FK_ServicioReparto_ComisionDistanciaSistema
Foreign key(ID_ComisionDistanciaSistema)
References ComisionDistanciaSistema(ID_ComisionDistanciaSistema)
/* FK ID_ComisionDistanciaRepartidor */
Alter table ServicioReparto
Add ID_ComisionDistanciaRepartidor varchar(30),
constraint FK_ServicioReparto_ComisionDistanciaRepartidor
Foreign key(ID_ComisionDistanciaRepartidor)
References ComisionDistanciaRepartidor(ID_ComisionDistanciaRepartidor)
/* FK ID_ComisionTiempoSistema */
Alter table ServicioReparto
Add ID_ComisionTiempoSistema varchar(30),
constraint FK_ServicioReparto_ComisionTiempoSistema
Foreign key(ID_ComisionTiempoSistema)
References ComisionTiempoSistema(ID_ComisionTiempoSistema)
/* FK ID_ComisionTiempoRepartidor */
Alter table ServicioReparto
Add ID_ComisionTiempoRepartidor varchar(30),
constraint FK_ServicioReparto_ComisionTiempoRepartidor
Foreign key(ID_ComisionTiempoRepartidor)
References ComisionTiempoRepartidor(ID_ComisionTiempoRepartidor)
);

INSERT INTO ServicioReparto (ID_ServicioReparto, CalleProducU, NumProducU, ColoniaProducU, CalleDestino, NumDestino, ColoniaDestino, Fecha_Servicio, Hora_Servicio, TiempoTranscurrido, CostoTotal)
VALUES ('SR01', 'Venustiano Carranza', 390, 'Venustiano Carranza', 'Heroes', 110, 'Centro', '2019-06-04', '14:00:00', '01:34:02', 68);

INSERT INTO ServicioReparto (ID_ServicioReparto, CalleProducU, NumProducU, ColoniaProducU, CalleDestino, NumDestino, ColoniaDestino, Fecha_Servicio, Hora_Servicio, TiempoTranscurrido, CostoTotal)
VALUES ('SR02', 'Andres Quintana Roo', 200, 'Centro', 'Maxuxac', 500, 'Proterritorio', '2019-06-04', '17:00:00', '01:20:50', 161);

INSERT INTO ServicioReparto (ID_ServicioReparto, CalleProducU, NumProducU, ColoniaProducU, CalleDestino, NumDestino, ColoniaDestino, Fecha_Servicio, Hora_Servicio, TiempoTranscurrido, CostoTotal)
VALUES ('SR03', 'Zaragoza', 156, 'Centro', 'Erick Paolo', 50, 'Solidaridad', '2019-06-04', '01:35:00', '01:05:02', 131);

/* Tabla CalificacionesAusuarios */
CREATE TABLE CalificacionesAusuarios(
ID_CalificacionesAusuarios varchar(30) primary key not null
/* FK ID_ServicioReparto */

Alter table CalificacionesAusuarios
Add ID_ServicioReparto varchar(30),
constraint FK_CalificacionesAusuarios_ServicioReparto
Foreign key(ID_ServicioReparto)
References ServicioReparto(ID_ServicioReparto)

/* FK ID_CalifARepartidor */
Alter table CalificacionesAusuarios
Add ID_CalifARepartidor varchar(30),
constraint FK_CalificacionesAusuarios_ID_CalifARepartidor
Foreign key(ID_CalifARepartidor)
References Calificacion(ID_Calificacion)

/* FK ID_CalifACliente */
Alter table CalificacionesAusuarios
Add ID_CalifACliente varchar(30),
constraint FK_CalificacionesAusuarios_ID_CalifACliente
Foreign key(ID_CalifACliente)
References Calificacion(ID_Calificacion)
);

/* Tabla Calificacion */
CREATE TABLE Calificacion(
ID_Calificacion varchar(30) primary key not null,
NombreCalif varchar(30),
Puntaje int
);

INSERT INTO Calificacion (ID_Calificacion, NombreCalif, Puntaje)
VALUES ('CCM', 'Mal', 1);

INSERT INTO Calificacion (ID_Calificacion, NombreCalif, Puntaje)
VALUES ('CCR', 'Regular', 2);

INSERT INTO Calificacion (ID_Calificacion, NombreCalif, Puntaje)
VALUES ('CCB', 'Bueno', 3);

INSERT INTO Calificacion (ID_Calificacion, NombreCalif, Puntaje)
VALUES ('CCMB', 'Muy Bueno', 4);

INSERT INTO Calificacion (ID_Calificacion, NombreCalif, Puntaje)
VALUES ('CCE', 'Excelente', 5);


/* Tabla EstadoServicio */
CREATE TABLE EstadoServicio(
ID_EstadoServicio varchar(30) primary key not null,
EstadoActualServicio varchar(30)
);

INSERT INTO EstadoServicio (ID_EstadoServicio, EstadoActualServicio)
VALUES ('EASI', 'Iniciado');

INSERT INTO EstadoServicio (ID_EstadoServicio, EstadoActualServicio)
VALUES ('EASB', 'Buscando producto');

INSERT INTO EstadoServicio (ID_EstadoServicio, EstadoActualServicio)
VALUES ('EASE', 'Entregando producto');

INSERT INTO EstadoServicio (ID_EstadoServicio, EstadoActualServicio)
VALUES ('EASF', 'Finalizado');

/* Tabla EstadoRepartidor */
CREATE TABLE EstadoRepartidor(
ID_EstadoRepartidor varchar(30) primary key not null,
Estado varchar(30)
);

INSERT INTO EstadoRepartidor (ID_EstadoRepartidor, Estado)
VALUES ('ERD', 'Disponible');

INSERT INTO EstadoRepartidor (ID_EstadoRepartidor, Estado)
VALUES ('ERO', 'Ocupado');

/* Tabla ServicioRepartoDetalles */
CREATE TABLE ServicioRepartoDetalles(
ID_ServicioRepartoDetalles varchar(30) primary key not null
/* FK ID_ServicioReparto */
Alter table ServicioRepartoDetalles
Add ID_ServicioReparto varchar(30),
constraint FK_ServicioRepartoDetalles_ServicioReparto
Foreign key(ID_ServicioReparto)
References ServicioReparto(ID_ServicioReparto)
/* FK ID_Producto */
Alter table ServicioRepartoDetalles
Add ID_Producto varchar(30),
constraint FK_ServicioRepartoDetalles_Producto
Foreign key(ID_Producto)
References Producto(ID_Producto)
);

INSERT INTO ServicioRepartoDetalles (ID_ServicioRepartoDetalles)
VALUES ('SRD01');

INSERT INTO ServicioRepartoDetalles (ID_ServicioRepartoDetalles)
VALUES ('SRD02');

INSERT INTO ServicioRepartoDetalles (ID_ServicioRepartoDetalles)
VALUES ('SRD03');

INSERT INTO ServicioRepartoDetalles (ID_ServicioRepartoDetalles)
VALUES ('SRD04');
