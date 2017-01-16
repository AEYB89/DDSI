# SI: Gesti�n de pr�stamos de materiales deportivos. #

Por: **Adnane El Yaagoubi**

## Descripci�n ##
Este sistema gestiona los pr�stamos de materiales deportivos de un polideportivo. Un usuario dado de alta podr� pedir prestado un material En caso de estar disponible(dado de alta y con un unidades disponibles). El alta un usuario se llevar� a cabo almacenando en la base de datos su DNI, Nombre completo, direcci�n, tel�fono y correo. Por su parte, el alta de un material se har� almacenando su identifici�n de la categor�a a la que pertenece, identificaci�n de la unidad, descripci�n y n�mero de secuencia. En cuanto a los pr�stamos, se registrar�n a partir de el DNI del usuario al cual se le presta el material,  la identificaci�n de la categor�a a la cual pertenece el material, la identificaci�n de la unidad, la fecha de inicio del pr�stamo y la fecha en que acaba. El sistema puede realizar consultas sobre los pr�stamos hechos a cada usuario.

## An�lisis de requisitos ##

### An�lisis de requisitos. ###
**Requisitos de datos:**

RD1 Los datos de un usuario:
  - DNI(Una cadena de 9 caracteres no vac�a cuyo �ltimo caracter en una letra)
  - Nombre completo(Una cadena de hasta 60 caracteres no vac�a)
  - Direcci�n(Una cadena de hasta 390 caracteres)
  - T�lefono(Una cadena de hasta 20 caracteres num�ricos en la que el primer caracter puede ser un signo +)
  - Correo(Una cadena de hasta 20 caracteres no vac�a)

RD2 Los datos de un usuario almacenados:
  - DNI(Una cadena de 9 caracteres no vac�a cuyo �ltimo caracter en una letra)
  - Nombre completo(Una cadena de hasta 60 caracteres no vac�a)
  - Direcci�n(Una cadena de hasta 390 caracteres)
  - T�lefono(Una cadena de hasta 20 caracteres num�ricos en la que el primer caracter puede ser un signo +)
  - Correo(Una cadena de hasta 20 caracteres no vac�a)
	
RD3 Los datos de las categor�as de materiales:
  - Identificador(Una cadena de 3 caracteres no vac�a cuyo �ltimo caracter es un n�mero)
  - Descripci�n(Una cadena de hasta 20 caracteres no vac�a)
	
RD4 Los datos de las categor�as de materiales almacenadas:
  - Identificador(Una cadena de 3 caracteres no vac�a cuyo �ltimo caracter es un n�mero)
  - Descripci�n(Una cadena de hasta 20 caracteres no vac�a)
	
RD5 Los datos de las unidades de categor�as de materiales:
  - Identificador(Una cadena de 3 caracteres no vac�a cuyo �ltimo caracter es un n�mero)
  - N�mero de secuencia (Un n�mero entero mayor que 0)
	
RD6 Los datos de las unidades de categor�as de materiales almacenadas:
  - Identificador(Una cadena de 3 caracteres no vac�a cuyo �ltimo caracter es un n�mero)
  - N�mero de secuencia(Un n�mero entero mayor que 0)
	
RD7 Los datos del pr�stamo:
  - DNI(Una cadena de 9 caracteres no vac�a cuyo �ltimo caracter en una letra)
  - Identificador(Una cadena de 3 caracteres no vac�a cuyo �ltimo caracter es un n�mero)
  - N�mero de secuencia(Un n�mero entero mayor que 0)
  - Fecha de inicio(Tipo de dato Date no vac�o)
  - Fecha de fin(Tipo de dato Date no vac�o)

RD8 Los datos del pr�stamo almacenados:
  - DNI(Una cadena de 9 caracteres no vac�a cuyo �ltimo caracter en una letra)
  - Identificador(Una cadena de 3 caracteres no vac�a cuyo �ltimo caracter es un n�mero)
  - N�mero de secuencia(Un n�mero entero mayor que 0)
  - Fecha de inicio(Tipo de dato Date no vac�o)
  - Fecha de fin(Tipo de dato Date no vac�o)
	
RD9 Los datos del pr�stamo a mostrar:
  - DNI(Una cadena de 9 caracteres no vac�a cuyo �ltimo caracter en una letra)
  - Identificador de categor�a(Una cadena de 3 caracteres no vac�a cuyo �ltimo caracter es un n�mero)
  - N�mero de secuencia(Un n�mero entero mayor que 0)
  - Mensaje
	
RD10 Los datos de un usuario (b�squeda):
  - DNI(Una cadena de 9 caracteres no vac�a cuyo �ltimo caracter en una letra)

RD11 Los datos de un usuario (baja):
  - DNI(Una cadena de 9 caracteres no vac�a cuyo �ltimo caracter en una letra)
  - Nombre completo(Una cadena de hasta 60 caracteres no vac�a)
  - Direcci�n(Una cadena de hasta 390 caracteres) 
  - T�lefono(Una cadena de hasta 20 caracteres num�ricos en la que el primer caracter puede ser un signo +)
  - Correo(Una cadena de hasta 20 caracteres no vac�a)

RD12 Los datos de las categor�as de materiales (b�squeda):
  - Identificador(Una cadena de 3 caracteres no vac�a cuyo �ltimo caracter es un n�mero)

RD13 Los datos de las categor�as de materiales (baja):
  - Identificador(Una cadena de 3 caracteres no vac�a cuyo �ltimo caracter es un n�mero)
  - Descripci�n(Una cadena de hasta 20 caracteres no vac�a)
	
RD14 Los datos de las unidades de categor�as de materiales (b�squeda):
  - N�mero de secuencia (Un n�mero entero mayor que 0)

RD15 Los datos de las unidades de categor�as de materiales (baja):
  - Identificador(Una cadena de 3 caracteres no vac�a cuyo �ltimo caracter es un n�mero)
  - N�mero de secuencia (Un n�mero entero mayor que 0)

RD16 Los datos del pr�stamo (b�squeda):
  - DNI(Una cadena de 9 caracteres no vac�a cuyo �ltimo caracter en una letra)

RD17 Los datos de un pr�stamo (consulta):
  - DNI(Una cadena de 9 caracteres no vac�a cuyo �ltimo caracter en una letra)
  - Identificador(Una cadena de 3 caracteres no vac�a cuyo �ltimo caracter es un n�mero)
  - N�mero de secuencia (Un n�mero entero mayor que 0)
  - Fecha de inicio(Tipo de dato Date no vac�o)
  - Fecha de fin(Tipo de dato Date no vac�o)

RD18 Los datos del pr�stamo (b�squeda para anular):
  - DNI(Una cadena de 9 caracteres no vac�a cuyo �ltimo caracter en una letra)

RD19 Los datos de un pr�stamo (anular):
  - DNI(Una cadena de 9 caracteres no vac�a cuyo �ltimo caracter en una letra)
  - Identificador(Una cadena de 3 caracteres no vac�a cuyo �ltimo caracter es un n�mero)
  - N�mero de secuencia (Un n�mero entero mayor que 0)
  - Fecha de inicio(Tipo de dato Date no vac�o)
  - Fecha de fin(Tipo de dato Date no vac�o)
	
	
**Requisitos funcionales:**

RF1 Alta de un usuario: Funci�n que registra a un usuario en el sistema a partir de los datos proprcionados por el usuario.
  - Entrada: RD1
  - Manejo: RD2
	
RF2 Alta de una categor�a de material: Funci�n que registra una categor�a de materiales en el sistema.
  - Entrada: RD3
  - Manejo: RD4
	
RF3 Alta de una unidad de material: Funci�n que registra una unidad de materiales en el sistema.
  - Entrada: RD5
  - Manejo: RD6
	
RF4 Baja de un usuario: Funci�n que elimina a un usuario del sistema.
  - Entrada: RD10
  - Manejo: RD11
	
RF5 Baja de una categor�a de material: Funci�n que elimina una categor�a de materiales sistema.
  - Entrada: RD12 
  - Manejo: RD13
	
RF6 Baja de una unidad de material: Funci�n que elimina una unidad de materiales en el sistema.
  - Entrada: RD14
  - Manejo: RD15
	
RF7 Realizar un pr�stamo: Funci�n que registra un pr�stamo en el sistema.
  - Entrada: RD7
  - Manejo: RD8
	
RF8 Consultar pr�stamos: Funci�n que muestra los pr�stamos realizados a un usuario.
  - Entrada: RD16
  - Manejo: RD17
  - Salida: RD9
	
RF9 Anular un pr�stamo: Funci�n que elimina un pr�stamo del sistema.
  - Entrada: RD18
  - Manejo: RD19
	
	
	
**Requisitos sem�nticos:**

RS1 Para dar de alta un usuario no debe haber sido dado de alta anteriormente. Afecta a:
  - RF1
	
RS2 Para dar de alta una categor�a de materiales no debe haber sido dada de alta anteriormente. Afecta a:
  - RF2
	
RS3 Para dar de alta una unidad de material no debe haber sido dada de alta anteriormente. Afecta a:
  - RF3
	
RS4 Para dar de baja un usuario debe haber sido dado de alta anteriormente. Afecta a:
  - RF4
	
RS5 Para dar de baja una categor�a de materiales debe haber sido dada de alta anteriormente. Afecta a:
  - RF5
	
RS6 Para dar de baja una unidad de material debe haber sido dada de alta anteriormente. Afecta a:
  - RF6
	
RS7 Para realizar un pr�stamo, el usuario de estar dado de alta en el sistema y debe haber unidades disponibles de la categor�a elegida. Afcta a:
  - RF7

RS8 Para consultar los pr�stamos de un usuario, el mismo tiene que estar dado de alta anteriormente. Afecta a:
  - RF8
	
RS9 Para anular un pr�stamo, debe haberse realizado anteriormente. Afecta a:
  - RF9
	
**Validaci�n cruzada de requisitos:**

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


## Dise�o (an�lisis de datos y funcionalidades) ##

**Esquema de caja negra**

![img](https://github.com/AEYB89/DDSI/blob/master/Diagramas/Esquema_de_caja_negra.png)

**Esquema F armaz�n (funcional)**

![img](https://github.com/AEYB89/DDSI/blob/master/Diagramas/Esquema_F_armazon.png)

**Primer y �nico refinamiento**

![img](https://github.com/AEYB89/DDSI/blob/master/Diagramas/DFD_refinamiento.png)

### Correcci�n de esquemas 

**Correcci�n de esquemas**

|**RD**|         **Elemento DFD**        |    **Elemento E/R**    |
|:----:|:-------------------------------:|:----------------------:|
|RD1 |     Proceso: Gesti�n de usuarios  |    Entidad: Usuario    |
|RD2 |     Proceso: Gesti�n de usuarios  |    Entidad: Usuario    |
|RD3 |     Proceso: Gesti�n de materiales|    Entidad: Material   |
|RD4 |     Proceso: Gesti�n de materiales|    Entidad: Material   |
|RD5 |     Proceso: Gesti�n de materiales|    Entidad: Material   |
|RD6 |     Proceso: Gesti�n de materiales|    Entidad: Material   |
|RD7 |     Proceso: Gesti�n de pr�stamos |    Relaci�n: Presta    |
|RD8 |     Proceso: Gesti�n de pr�stamos |    Relaci�n: Presta    |
|RD9 |     Proceso: Gesti�n de pr�stamos |    Relaci�n: Presta    |
|RD10|     Proceso: Gesti�n de usuarios  |    Entidad: Usuario    |
|RD11|     Proceso: Gesti�n de usuarios  |    Entidad: Usuario    |
|RD12|     Proceso: Gesti�n de materiales|    Entidad: Material   |
|RD13|     Proceso: Gesti�n de materiales|    Entidad: Material   |
|RD14|     Proceso: Gesti�n de materiales|    Entidad: Material   |
|RD15|     Proceso: Gesti�n de materiales|    Entidad: Material   |
|RD16|     Proceso: Gesti�n de pr�stamos |    Relaci�n: Presta    |
|RD17|     Proceso: Gesti�n de pr�stamos |    Relaci�n: Presta    |
|RD18|     Proceso: Gesti�n de pr�stamos |    Relaci�n: Presta    |
|RD19|     Proceso: Gesti�n de pr�stamos |    Relaci�n: Presta    |


|**RF**|        **Elemento DFD**         |
|:--:|:---------------------------------:|
|RF1 |	  Proceso: Gesti�n de usuarios   |
|RF2 |	  Proceso: Gesti�n de materiales |
|RF3 |	  Proceso: Gesti�n de materiales |
|RF4 |	  Proceso: Gesti�n de usuarios   |
|RF5 |	  Proceso: Gesti�n de materiales |
|RF6 |	  Proceso: Gesti�n de materiales |
|RF7 |	  Proceso: Gesti�n de pr�stamos  |
|RF8 |	  Proceso: Gesti�n de pr�stamos  |
|RF9 |	  Proceso: Gesti�n de pr�stamos  |


|**RS**|           **Elemento DFD**          |     **Elemento E/R**   |
|:----:|:-------------------------------:|:----------------------:|
|RS1 |	  Proceso: Gesti�n de usuarios   |    Entidad: Usuario	  |
|RS2 |	  Proceso: Gesti�n de materiales |    Entidad: Material   |
|RS3 |	  Proceso: Gesti�n de materiales |    Entidad: Material   |
|RS4 |	  Proceso: Gesti�n de usuarios   |    Entidad: Usuario	  |
|RS5 |	  Proceso: Gesti�n de materiales |    Entidad: Material   |
|RS6 |	  Proceso: Gesti�n de materiales |    Entidad: Material   |
|RS7 |	  Proceso: Gesti�n de pr�stamos  |    Relaci�n: Presta    |
|RS8 |	  Proceso: Gesti�n de pr�stamos  |    Relaci�n: Presta    |
|RS9 |	  Proceso: Gesti�n de pr�stamos  |    Relaci�n: Presta    |

**Esquemas externos**

![img](https://github.com/AEYB89/DDSI/blob/master/Diagramas/Esquemas_externos_DFD_0.png)

**Esquema D armaz�n (conceptual)**

![img](https://github.com/AEYB89/DDSI/blob/master/Diagramas/Esquema_D_armazon.png)


## Operaciones para el esquema F ##

Lista de operaciones:

- O1: Insertar un nuevo usuario a partir de su DNI, nombre completo, direcci�n, tel�fono y correo.
- O2: Insertar un nuevo material a partir de su categor�a, unidad, descripci�n y n�mero de secuencia.
- O3: Insertar un nuevo pr�stamo a partir del DNI del usuario, categor�a del material, unidad del material, fecha de inicio y fecha de fin.
- O4: Consultar un pr�stamo a patir del DNI del usuario.

## Esquemas de opreraci�n y de navegaci�n para las operaciones de datos ##

**Esquemas de operaci�n y de navegaci�n**

![img](https://github.com/AEYB89/DDSI/blob/master/Diagramas/Esquemas_de_navegacion.png)

## Dise�o l�gico relacional apartir del esquema D ##

**Tablas:**

- Usuario(**DNI**, Nombre completo, Direcci�n, Tel�fono, Correo) 
- Material(**Id categor�a**, **Id unidad**, Descripci�n, N� de secuencia) 
- Presta(**DNI**, **Id categor�a**, **Id unidad**, Fecha de inicio, Fecha de fin)

## Dise�o f�sico relacional ##

``` [sql]
-- Craci�n de las tablas

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

Disparador para no insertar el mismo DNI en la actualizaci�n de un usuario:

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
