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
/* FK ID_EstadoRepartidor */
);

INSERT INTO Repartidor (ID_Repartidor, UsernameR, PasswordR, CorreoR, NumTelefonicoR, PrimerNombreR, SegundoNombreR, ApellidoPaternoR, ApellidoMaternoR, FechaNaciR, CiudadR, CodPostalR, SexoR, FotoPerfilR) 
VALUES ('R01', 'robertom', 'jfhsjdhf', 'robertom@gmail.com', 983789875, 'Roberto', 'Oscar', 'Mendez', 'Lopez', '1993-05-23', 'Chetumal', '77014', 'Hombre', 'Roberto.jpg');

INSERT INTO Repartidor (ID_Repartidor, UsernameR, PasswordR, CorreoR, NumTelefonicoR, PrimerNombreR, SegundoNombreR, ApellidoPaternoR, ApellidoMaternoR, FechaNaciR, CiudadR, CodPostalR, SexoR, FotoPerfilR) 
VALUES ('R02', 'alejandra', 'hgdjshdg', 'alejandratorres@gmail.com', 9837826378, 'Alejandra', 'Maria', 'Lopez', 'Torres', '1994-04-15', 'Calderitas', '77016', 'Mujer', 'Alejandra.jpg');

INSERT INTO Repartidor (ID_Repartidor, UsernameR, PasswordR, CorreoR, NumTelefonicoR, PrimerNombreR, SegundoNombreR, ApellidoPaternoR, ApellidoMaternoR, FechaNaciR, CiudadR, CodPostalR, SexoR, FotoPerfilR) 
VALUES ('R03', 'manuelt', 'dskdskdsd', 'manuelt@gmail.com', 9839876735, 'Manuel', 'Alejandro', 'Tejero', 'Salazar', '1996-04-30', 'Chetumal', '77015', 'Hombre', 'Manuel.jpg');























