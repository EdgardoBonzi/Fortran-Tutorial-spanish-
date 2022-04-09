Program Ejemplo10
!Aqui usaremos las sentencias de control
! IF, THEN, ELSE IF, ELSE, END IF.
! 
!Adem�s haremos una introduccion a los operadores l�gicos

IMPLICIT NONE

INTEGER :: ii

Print *, 'Ingrese un numero entero del 1 al 10 :'
Read *, ii

	IF (ii == 1) THEN
		Print *, 'Numero Uno'
	ELSE IF (ii == 2) THEN
		Print *, 'Numero Dos'
	ELSE IF (ii == 3) THEN
		Print *, 'Numero Tres'
	ELSE IF (ii == 4) THEN
		Print *, 'Numero Cuatro'
	ELSE IF (ii == 5) THEN
		Print *, 'Numero Cinco'
	ELSE IF (ii == 6) THEN
		Print *, 'Numero Seis'
	ELSE IF (ii == 7) THEN
		Print *, 'Numero Siete'
	ELSE IF (ii == 8) THEN
		Print *, 'Numero Ocho'
	ELSE IF (ii == 9) THEN
		Print *, 'Numero Nueve'
	ELSE IF (ii == 10) THEN
		Print *, 'Numero Diez'
	ELSE 
		Print *, 'Numero Equivocado'
	END IF
	
	IF (ii < 1) THEN
		PRINT *, 'Numero Negativo'
	END IF
		
	!Otro modo de uso de la sentencia IF
	IF (ii .GE. 11) PRINT *, 'Numero Muy Grande'

	
END PROGRAM Ejemplo10


