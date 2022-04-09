Program Ejemplo13
! Ejemplo para el Uso del Ciclo DO, END DO y EXIT

	IMPLICIT NONE

	INTEGER :: ii , yy

	DO ii = 1, 5
		PRINT *, ii
	END DO
	  
	  PRINT *,''

	DO ii = 2, 8, 2
		PRINT *, ii
	END DO

	  PRINT *,''

	DO ii = 6, -2, -2
		PRINT *, ii
	END DO

		  PRINT *,''

	Print *, 'Ingrese un numero entre 0 y 6'
	Read *, yy

  DO ii = 6, -2, -2  ! Saltos de a 2, cuenta regesiva
	   	IF (ii == yy) EXIT
   		PRINT *, 'Saltos de a 2 :', ii	 
	END DO

  DO ii = 6, -2, -2  ! Este uso del Ciclo DO es más recomendado que el DO WHILE
	   	IF (ii == yy) EXIT
   		PRINT *, 'Recomendado :', ii	 
	END DO



  ii = 0
  DO while (ii .ne. yy)      ! Ciclo DO WHILE
      ii = ii + 1
   		PRINT *, 'Ciclo DO WHILE :',  ii	 
	END DO


!	STOP  'Paramos el programa'


	Print *,'Este es el valor :', ii

 End Program Ejemplo13
