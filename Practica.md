# SI: Gestión de préstamos de materiales deportivos. #

Por: **Adnane El Yaagoubi**

## Descripción ##
Este sistema gestiona los préstamos de materiales deportivos de un polideportivo. Un usuario dado de alta podrá pedir prestado un material En caso de estar disponible(dado de alta y con un unidades disponibles). El alta un usuario se llevará a cabo almacenando en la base de datos su DNI, Nombre completo, dirección, teléfono y correo. Por su parte, el alta de un material se hará almacenando su identifición de la categoría a la que pertenece, identificación de la unidad, descripción y número de secuencia. En cuanto a los préstamos, se registrarán a partir de el DNI del usuario al cual se le presta el material,  la identificación de la categoría a la cual pertenece el material, la identificación de la unidad, la fecha de inicio del préstamo y la fecha en que acaba. El sistema puede realizar consultas sobre los préstamos hechos a cada usuario.

## Análisis de requisitos ##

### Análisis de requisitos. ###
**Requisitos de datos:**

RD1 Los datos de un usuario:
  - DNI(Una cadena de 9 caracteres no vacía cuyo último caracter en una letra)
  - Nombre completo(Una cadena de hasta 60 caracteres no vacía)
  - Dirección(Una cadena de hasta 390 caracteres)
  - Télefono(Una cadena de hasta 20 caracteres numéricos en la que el primer caracter puede ser un signo +)
  - Correo(Una cadena de hasta 20 caracteres no vacía)

RD2 Los datos de un usuario almacenados:
  - DNI(Una cadena de 9 caracteres no vacía cuyo último caracter en una letra)
  - Nombre completo(Una cadena de hasta 60 caracteres no vacía)
  - Dirección(Una cadena de hasta 390 caracteres)
  - Télefono(Una cadena de hasta 20 caracteres numéricos en la que el primer caracter puede ser un signo +)
  - Correo(Una cadena de hasta 20 caracteres no vacía)
	
RD3 Los datos de las categorías de materiales:
  - Identificador(Una cadena de 3 caracteres no vacía cuyo último caracter es un número)
  - Descripción(Una cadena de hasta 20 caracteres no vacía)
	
RD4 Los datos de las categorías de materiales almacenadas:
  - Identificador(Una cadena de 3 caracteres no vacía cuyo último caracter es un número)
  - Descripción(Una cadena de hasta 20 caracteres no vacía)
	
RD5 Los datos de las unidades de categorías de materiales:
  - Identificador(Una cadena de 3 caracteres no vacía cuyo último caracter es un número)
  - Número de secuencia (Un número entero mayor que 0)
	
RD6 Los datos de las unidades de categorías de materiales almacenadas:
  - Identificador(Una cadena de 3 caracteres no vacía cuyo último caracter es un número)
  - Número de secuencia(Un número entero mayor que 0)
	
RD7 Los datos del préstamo:
  - DNI(Una cadena de 9 caracteres no vacía cuyo último caracter en una letra)
  - Identificador(Una cadena de 3 caracteres no vacía cuyo último caracter es un número)
  - Número de secuencia(Un número entero mayor que 0)
  - Fecha de inicio(Tipo de dato Date no vacío)
  - Fecha de fin(Tipo de dato Date no vacío)

RD8 Los datos del préstamo almacenados:
  - DNI(Una cadena de 9 caracteres no vacía cuyo último caracter en una letra)
  - Identificador(Una cadena de 3 caracteres no vacía cuyo último caracter es un número)
  - Número de secuencia(Un número entero mayor que 0)
  - Fecha de inicio(Tipo de dato Date no vacío)
  - Fecha de fin(Tipo de dato Date no vacío)
	
RD9 Los datos del préstamo a mostrar:
  - DNI(Una cadena de 9 caracteres no vacía cuyo último caracter en una letra)
  - Identificador de categoría(Una cadena de 3 caracteres no vacía cuyo último caracter es un número)
  - Número de secuencia(Un número entero mayor que 0)
  - Mensaje
	
RD10 Los datos de un usuario (búsqueda):
  - DNI(Una cadena de 9 caracteres no vacía cuyo último caracter en una letra)

RD11 Los datos de un usuario (baja):
  - DNI(Una cadena de 9 caracteres no vacía cuyo último caracter en una letra)
  - Nombre completo(Una cadena de hasta 60 caracteres no vacía)
  - Dirección(Una cadena de hasta 390 caracteres) 
  - Télefono(Una cadena de hasta 20 caracteres numéricos en la que el primer caracter puede ser un signo +)
  - Correo(Una cadena de hasta 20 caracteres no vacía)

RD12 Los datos de las categorías de materiales (búsqueda):
  - Identificador(Una cadena de 3 caracteres no vacía cuyo último caracter es un número)

RD13 Los datos de las categorías de materiales (baja):
  - Identificador(Una cadena de 3 caracteres no vacía cuyo último caracter es un número)
  - Descripción(Una cadena de hasta 20 caracteres no vacía)
	
RD14 Los datos de las unidades de categorías de materiales (búsqueda):
  - Número de secuencia (Un número entero mayor que 0)

RD15 Los datos de las unidades de categorías de materiales (baja):
  - Identificador(Una cadena de 3 caracteres no vacía cuyo último caracter es un número)
  - Número de secuencia (Un número entero mayor que 0)

RD16 Los datos del préstamo (búsqueda):
  - DNI(Una cadena de 9 caracteres no vacía cuyo último caracter en una letra)

RD17 Los datos de un préstamo (consulta):
  - DNI(Una cadena de 9 caracteres no vacía cuyo último caracter en una letra)
  - Identificador(Una cadena de 3 caracteres no vacía cuyo último caracter es un número)
  - Número de secuencia (Un número entero mayor que 0)
  - Fecha de inicio(Tipo de dato Date no vacío)
  - Fecha de fin(Tipo de dato Date no vacío)

RD18 Los datos del préstamo (búsqueda para anular):
  - DNI(Una cadena de 9 caracteres no vacía cuyo último caracter en una letra)

RD19 Los datos de un préstamo (anular):
  - DNI(Una cadena de 9 caracteres no vacía cuyo último caracter en una letra)
  - Identificador(Una cadena de 3 caracteres no vacía cuyo último caracter es un número)
  - Número de secuencia (Un número entero mayor que 0)
  - Fecha de inicio(Tipo de dato Date no vacío)
  - Fecha de fin(Tipo de dato Date no vacío)
	
	
**Requisitos funcionales:**

RF1 Alta de un usuario: Función que registra a un usuario en el sistema a partir de los datos proprcionados por el usuario.
  - Entrada: RD1
  - Manejo: RD2
	
RF2 Alta de una categoría de material: Función que registra una categoría de materiales en el sistema.
  - Entrada: RD3
  - Manejo: RD4
	
RF3 Alta de una unidad de material: Función que registra una unidad de materiales en el sistema.
  - Entrada: RD5
  - Manejo: RD6
	
RF4 Baja de un usuario: Función que elimina a un usuario del sistema.
  - Entrada: RD10
  - Manejo: RD11
	
RF5 Baja de una categoría de material: Función que elimina una categoría de materiales sistema.
  - Entrada: RD12 
  - Manejo: RD13
	
RF6 Baja de una unidad de material: Función que elimina una unidad de materiales en el sistema.
  - Entrada: RD14
  - Manejo: RD15
	
RF7 Realizar un préstamo: Función que registra un préstamo en el sistema.
  - Entrada: RD7
  - Manejo: RD8
	
RF8 Consultar préstamos: Función que muestra los préstamos realizados a un usuario.
  - Entrada: RD16
  - Manejo: RD17
  - Salida: RD9
	
RF9 Anular un préstamo: Función que elimina un préstamo del sistema.
  - Entrada: RD18
  - Manejo: RD19
	
	
	
**Requisitos semánticos:**

RS1 Para dar de alta un usuario no debe haber sido dado de alta anteriormente. Afecta a:
  - RF1
	
RS2 Para dar de alta una categoría de materiales no debe haber sido dada de alta anteriormente. Afecta a:
  - RF2
	
RS3 Para dar de alta una unidad de material no debe haber sido dada de alta anteriormente. Afecta a:
  - RF3
	
RS4 Para dar de baja un usuario debe haber sido dado de alta anteriormente. Afecta a:
  - RF4
	
RS5 Para dar de baja una categoría de materiales debe haber sido dada de alta anteriormente. Afecta a:
  - RF5
	
RS6 Para dar de baja una unidad de material debe haber sido dada de alta anteriormente. Afecta a:
  - RF6
	
RS7 Para realizar un préstamo, el usuario de estar dado de alta en el sistema y debe haber unidades disponibles de la categoría elegida. Afcta a:
  - RF7

RS8 Para consultar los préstamos de un usuario, el mismo tiene que estar dado de alta anteriormente. Afecta a:
  - RF8
	
RS9 Para anular un préstamo, debe haberse realizado anteriormente. Afecta a:
  - RF9
	
**Validación cruzada de requisitos:**

| **RD** |**Entrada**|**Manejo** |**Salida**|
|:------:|:-------:|:------:|:------:|
|  RD1   |   RF1   |	    |        |
|  RD2   |         |   RF1  |	     |
|  RD3   |   RF2   |	    |        |
|  RD4   |	   |   RF2  |	     |
|  RD5   |   RF3   |	    |        |
|  RD6   |	   |   RF3  |	     |
|  RD7   |   RF7   |	    |	     |
|  RD8   |	   |   RF7  |	     |
|  RD9   |	   |        |   RF8  |
|  RD10  |   RF4   |        |        |
|  RD11  | 	   |   RF4  |        |
|  RD12  |   RF5   |        |	     |
|  RD13  |	   |   RF5  |        |
|  RD14  |   RF6   |	    |        |
|  RD15  |	   |   RF6  |        |
|  RD16  |   RF8   |        |        |
|  RD17  |	   |   RF8  |	     |
|  RD18	 |   RF9   |	    |	     |
|  RD19  |  	   |   RF9  |        |


## Diseño (análisis de datos y funcionalidades) ##

**Esquema de caja negra**

![img](https://github.com/AEYB89/DDSI/blob/master/Diagramas/Esquema_de_caja_negra.png)

**Esquema F armazón (funcional)**

![img](https://github.com/AEYB89/DDSI/blob/master/Diagramas/Esquema_F_armazon.png)

**Primer y único refinamiento**

![img](https://github.com/AEYB89/DDSI/blob/master/Diagramas/DFD_refinamiento.png)

### Corrección de esquemas 

**Corrección de esquemas**

|**RD**|         **Elemento DFD**        |    **Elemento E/R**    |
|:----:|:-------------------------------:|:----------------------:|
|RD1 |     Proceso: Gestión de usuarios  |    Entidad: Usuario    |
|RD2 |     Proceso: Gestión de usuarios  |    Entidad: Usuario    |
|RD3 |     Proceso: Gestión de materiales|    Entidad: Material   |
|RD4 |     Proceso: Gestión de materiales|    Entidad: Material   |
|RD5 |     Proceso: Gestión de materiales|    Entidad: Material   |
|RD6 |     Proceso: Gestión de materiales|    Entidad: Material   |
|RD7 |     Proceso: Gestión de préstamos |    Relación: Presta    |
|RD8 |     Proceso: Gestión de préstamos |    Relación: Presta    |
|RD9 |     Proceso: Gestión de préstamos |    Relación: Presta    |
|RD10|     Proceso: Gestión de usuarios  |    Entidad: Usuario    |
|RD11|     Proceso: Gestión de usuarios  |    Entidad: Usuario    |
|RD12|     Proceso: Gestión de materiales|    Entidad: Material   |
|RD13|     Proceso: Gestión de materiales|    Entidad: Material   |
|RD14|     Proceso: Gestión de materiales|    Entidad: Material   |
|RD15|     Proceso: Gestión de materiales|    Entidad: Material   |
|RD16|     Proceso: Gestión de préstamos |    Relación: Presta    |
|RD17|     Proceso: Gestión de préstamos |    Relación: Presta    |
|RD18|     Proceso: Gestión de préstamos |    Relación: Presta    |
|RD19|     Proceso: Gestión de préstamos |    Relación: Presta    |


|**RF**|        **Elemento DFD**         |
|:--:|:---------------------------------:|
|RF1 |	  Proceso: Gestión de usuarios   |
|RF2 |	  Proceso: Gestión de materiales |
|RF3 |	  Proceso: Gestión de materiales |
|RF4 |	  Proceso: Gestión de usuarios   |
|RF5 |	  Proceso: Gestión de materiales |
|RF6 |	  Proceso: Gestión de materiales |
|RF7 |	  Proceso: Gestión de préstamos  |
|RF8 |	  Proceso: Gestión de préstamos  |
|RF9 |	  Proceso: Gestión de préstamos  |


|**RS**|           **Elemento DFD**          |     **Elemento E/R**   |
|:----:|:-------------------------------:|:----------------------:|
|RS1 |	  Proceso: Gestión de usuarios   |    Entidad: Usuario	  |
|RS2 |	  Proceso: Gestión de materiales |    Entidad: Material   |
|RS3 |	  Proceso: Gestión de materiales |    Entidad: Material   |
|RS4 |	  Proceso: Gestión de usuarios   |    Entidad: Usuario	  |
|RS5 |	  Proceso: Gestión de materiales |    Entidad: Material   |
|RS6 |	  Proceso: Gestión de materiales |    Entidad: Material   |
|RS7 |	  Proceso: Gestión de préstamos  |    Relación: Presta    |
|RS8 |	  Proceso: Gestión de préstamos  |    Relación: Presta    |
|RS9 |	  Proceso: Gestión de préstamos  |    Relación: Presta    |

**Esquemas externos**

![img](https://github.com/AEYB89/DDSI/blob/master/Diagramas/Esquemas_externos_DFD_0.png)

**Esquema D armazón (conceptual)**

![img](https://github.com/AEYB89/DDSI/blob/master/Diagramas/Esquema_D_armazon.png)


## Operaciones para el esquema F ##

Lista de operaciones:

- O1: Insertar un nuevo usuario a partir de su DNI, nombre completo, dirección, teléfono y correo.
- O2: Insertar un nuevo material a partir de su categoría, unidad, descripción y número de secuencia.
- O3: Insertar un nuevo préstamo a partir del DNI del usuario, categoría del material, unidad del material, fecha de inicio y fecha de fin.
- O4: Consultar un préstamo a patir del DNI del usuario.

## Esquemas de opreración y de navegación para las operaciones de datos ##

**Esquemas de operación y de navegación**

![img](https://github.com/AEYB89/DDSI/blob/master/Diagramas/Esquemas_de_navegacion.png)

## Diseño lógico relacional apartir del esquema D ##

**Tablas:**

- Usuario(**DNI**, Nombre completo, Dirección, Teléfono, Correo) 
- Material(**Id categoría**, **Id unidad**, Descripción, Nº de secuencia) 
- Presta(**DNI**, **Id categoría**, **Id unidad**, Fecha de inicio, Fecha de fin)

## Diseño físico relacional ##

``` [sql]
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
Num_sec NUMBER(3) NOT NULL AUTO_INCREMENT,
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
```


## Disparador  

Disparador para no insertar el mismo DNI en la actualización de un usuario:

```[sql]
-- Disparador actualiza DNI Usuario

CREATE OR REPLACE TRIGGER ActuUsuario
BEFORE UPDATE OF DNI ON Usuario
FOR EACH ROW

WHEN(new.DNI == old.DNI) THEN
BEGIN
	RAISE_APPLICATION_ERROR(-20001, "El DNI que intenta introducir ya existe en el sistema");
END;
```
