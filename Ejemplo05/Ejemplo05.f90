Program	Ejemplo05
!Aqui probaremos la definicion y uso de una funcion pero
!externa al archivo
USE LeeX

Implicit None

!! INCLUDE 'LeeX.f90'

! Real :: FuncLeeX

!!  Real :: LeeX
  Real :: X


!! INCLUDE 'LeeX.f90'


	X = FuncLeeX()
	Print *, 'Dato Ingresado por una Funcion de Otro Archivo:'
	Print *, X

End Program Ejemplo05
