   Program Ejemplo11
!Aqui usaremos las sentencias de control
! SELECT CASE, CASE, CASE DEFAULT

!Adem�s haremos una introduccion a los operadores l�gicos

IMPLICIT NONE

INTEGER :: ii
CHARACTER :: Chr

Print *, 'Ingrese un numero entero del 1 al 10 :'
Read *, ii

	SELECT CASE (ii)

		CASE (1)
			Print *, 'Numero Uno'

		CASE (2)
			Print *, 'Numero Dos'

		CASE (3)
			Print *, 'Numero Tres'
			Print *, 'Otra cosa'
		CASE (4:7)
			Print *, 'Numero entre Cuatro al Siete'

		CASE (8,10)
			Print *, 'Numero Ocho o Diez'

    CASE (9)
			Print *, 'Numero Nueve'

	CASE DEFAULT 
		Print *, 'Numero Equivocado'

		IF (ii < 1) THEN
			PRINT *, 'Numero Negativo'
		END IF

!Otro modo de uso de la sentencia IF
		IF (ii .GE. 11) PRINT *, 'Numero Muy Grande'
		
	END SELECT






	
	  Print *, 'Ingrese una letra minuscula:'
Read *, Chr


	SELECT CASE (Chr)

		CASE ("a")
			Print *, 'Letra a'

		CASE ("b": "l")
			Print *, 'Letra entre b y l'


		CASE ("m","w","x","z")
			Print *, 'Letra M o W, o X o Z'
	
	CASE DEFAULT
		Print *, 'Cualquier otra Letra'
		Print *, 'Esto Distingue minusculas de MAYUSCULAS'

	END SELECT		
			
	
	
END PROGRAM Ejemplo11

