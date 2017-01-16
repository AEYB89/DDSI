-- Cración de las tablas

create table Usuario(
DNI VARCHAR(9) NOT NULL primary key,
Nombre_completo VARCHAR(30) NOT NULL,
Direccion VARCHAR(40) NOT NULL,
Telefono VARCHAR(12) NOT NULL,
Correo VARCHAR(20) NOT NULL
);

create table Material(
Id_cat VARCHAR(3) NOT NULL,
Id_uni VARCHAR(3) NOT NULL,
Descripcion VARCHAR(120) NOT NULL,
Num_sec NUMBER(3) NOT NULL AUTOMATIC INCREMENT,
primary key(Id_cat, Id_uni)
);

create table Presta(
DNI references Usuario(DNI),
Id_cat references Usuario(Id_cat),
Id_uni references Usuario(Id_uni),
Fecha_inicio DATE NOT NULL,
Fecha_fin DATE NOT NULL,
primary key(DNI, Id_cat, Id_uni)
);

-- Disparador actualiza DNI Usuario

CREATE OR REPLACE TRIGGER ActuUsuario
BEFORE UPDATE OF DNI ON Usuario
FOR EACH ROW

WHEN(new.DNI == old.DNI) THEN
BEGIN
	RAISE_APPLICATION_ERROR(-20001, "El DNI que intenta introducir ya existe en el sistema");
END;