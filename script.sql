/************
* Enunciado *
*************
Se requiere desarrollar un software para agilizar el servicio de reparto donde los usuarios solicitan un servicio,
le aparecerá una lista de los repartidores donde podrá elegir de los que están disponibles y los que están atendiendo
otro servicio están como ocupados y no se mostrarán.
El usuario podrá visualizar el perfil del repartidor que eligió con los siguientes datos nombre, apellido, sexo, foto, edad, mensaje de descripción y
promedio de calificación de como usuario.
El usuario introduce la ubicación de destino donde el repartidor ordenara el pedido y la ubicación donde el repartidor llevará como destino el pedido,
como también enviará un mensaje detallado de lo que abarcara su pedido.
El repartidor podrá visualizar el  perfil del usuario que lo eligió con los datos nombre, apellido, sexo, foto, edad, mensaje de descripción y
promedio de calificación de como usuario, el recibe esa información cambia el estado del servicio en iniciado, se dirige a realizar el pedido, el repartidor indica su comisión dependiendo de la distancia y la hora del dia, costo total de pedido, costo total del servicio, se cobrará una comisión sobre el uso de la aplicación, sube una foto de la factura del establecimiento al usuario, se dirige a entrar el pedido.
El usuario recibe esa información paga el precio total del pedido más la comisión del repartidor y la aplicación.
El  usuario como también el repartidor se califican con su desempeño dado.
El repartidor cambia el estado del servicio como concluido.
Si hubiera un problema con alguno, ambos podrán reportar y enviar un mensaje de lo acontecido.
*/

/** Tablas ** 
* Usuario
* Repartidor
* DatosPersonales
* ServicioReparto
* DetallesServicioReparto
* VehiculoRepartidor
* EstadoServicio *
* EstadoRepartidor *
* ComisionSistema
* ComisionRepartidor
* Calificacion 
* Productos 
*/

/** Usuario ** LISTO
* ID_Usuario
* Username_Usuario
* Password_Usuario
* Correo_Usuario
* NumTelefonico_Usuario
*/

/** Repartidor ** LISTO
* ID_Repartidor
* Username_Repartidor
* Password_Repartidor
* Correo_Repartidor
* NumTelefonico_Repartidor
*/

/** DatosPersonales ** LISTO
* ID_DatosPersonales
* PrimerNombre
* SegundoNombre
* ApellidoPaterno
* ApellidoMaterno
* FechaDeNacimiento
* Localidad
* Sexo
* FotoPerfil
* MensajeEstado
*/

/** ServicioReparto NO_LISTO **
* ID_ServicioReparto
* UbicacionDestino
* UbicacionRecepcion
* Fecha
* CostoTotal
* TiempoTranscurrido
*/

/** ServicioRepartoDetalles NO_LISTO **
* ID_ServicioRepartoDetalles
*
*/

/** VehiculoRepartidor ** LISTO
* ID_VehiculoRepartidor
* Tipo
* Marca
* Modelo
* Anio
* Color
* Placa
*/

/** ComisionSistema ** LISTO
* ID_ComisionSistema
* DistanciaCorta_Sistema
* DistanciaMedia_Sistema
* DistanciaLarga_Sistema
* TiempoDia_Sistema
* TiempoNoche_Sistema
*/

/** ComisionRepartidor ** LISTO
* ID_ComisionRepartidor
* DistanciaCorta_Repartidor
* DistanciaMedia_Repartidor
* DistanciaLarga_Repartidor
* TiempoDia_Repartidor
* TiempoNoche_Repartidor
*/

/** Calificacion ** LISTO 
* ID_Calificacion
* Calif_UserToRepart
* Calif_RepartToUSer
*/

/** Producto ** LISTO
* ID_Producto
* Nombre_Producto
* Descripcion_Prodcuto
* Precio_Producto
* FotoFactura_Producto
 */

/** EstadoServicio ** LISTO
* ID_EstadoServicio
* EstadoActualServicio
*/

/** EstadoRepartidor ** LISTO
* ID_EstadoRepartidor
* EstadoActualRepartidr
*/











/***************************
****************************
******** INCERVIBLE  *******
****************************
****************************
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
calificacionRepartidor_DetallesServicioReparto int,
comisionRepartidor_DetallesServicioReparto int,
precioTotal_DetallesServicioReparto int,
fotoNotaResivo_DetallesServicioReparto varchar(30)
);
/* FK -> id_ServicioReparto -> servicioReparto_tb */
alter table detallesServicioReparto_tb ADD foreign key (id_DetallesServicioReparto) references servicioReparto_tb (id_ServicioReparto);
