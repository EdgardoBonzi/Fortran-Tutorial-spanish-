   program Ejemplo01  !Este es el primer ejercicio ejemplo

   !
   ! Se muestra como se comienza y termina un programa con las
   ! palabras Comando PROGRAM nombre, END PROGRAM nombre.
   !
   ! Esto mismo es un ejemplo de como escribir comentarios.
   ! Tambien se pueden dejar renglones en Blanco.
   !
   ! Son ejemplos de uso de variables Reales y Enteras
   ! con el uso del Comando PARAMETER para definir valores
   ! constantes, adem�s se muestra como trabajan en conjunto
   ! las variables Reales y Enteras
   !
   ! Tambien se usa el comando PRINT, para mostrar texto y variables,
   ! el modo de presentaci�n es usando el "*", que es una manera de
   ! mostrar datos con un formato intr�nseco del Fortran 90.
   ! Se debe Observar que los archivos que se crean son de tipo Texto
   ! en ASCCI, no interesan las mayusculas o minusculas y el largo de
   ! cada rengl�n puede ser de hasta 128 caracteres de Largo

   implicit none

	real :: RealVal1
	real :: RealVal2 = 2	!Aqui estamos asignando el valor de
	real :: RealVal3 = 3.0  ! RealVal2 y RealVal3

	real, PARAMETER :: RealParam1 = 355.0/113.0	    !Aqui asignamos valores
	real, PARAMETER :: RealParam2 = 355/113		    ! a constantes, no se puede
	real, PARAMETER :: RealParam3 = 2*RealParam2    ! hacerlos en el programa
	real, PARAMETER :: RealParam4 = 2.0*RealParam2 	! compilaci�n

	integer :: IntegVal1, IntegVal2

	! Observar la diferencia entre RealParam1 y RealParam2
	! y decir cual es la respuesta

		RealVal1  = 4.0
		IntegVal1 = 3
		IntegVal2 = 4

		Print *,'Rv1 y Rv2', RealVal1, RealVal2
		Print *,"Rv3", RealVal3
		Print *,"Rp1 y Rp2", RealParam1, RealParam2
		Print *,"Rp3 y Rp4", RealParam3, RealParam4
		Print *,"Iv1 y Iv2", IntegVal1, IntegVal2

	end program Ejemplo01
