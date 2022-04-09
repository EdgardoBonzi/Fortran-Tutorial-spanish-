Program	Ejemplo06
!Aqui probaremos la definicion y uso de una Subroutine
! que se inlcuye en el mismo archivo, fuera del programa

Implicit None
	
	Call LeeX

End Program Ejemplo06



Subroutine LeeX()

  Real(8) :: X
	 Print *,'Por favor ingrese un Numero Real'
	 Read *, X
	 Print *, X

End Subroutine LeeX






