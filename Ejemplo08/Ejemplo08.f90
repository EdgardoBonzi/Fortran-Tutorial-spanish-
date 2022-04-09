Program Ejemplo8
!Aqui usaremos variables tipo In, Out & InOut en una
!funcion y subroutina
! Las variables declaradas IN son solo para entrada de datos
! Las variables declaradas OUT son solo para salida de datos
! Las variables declaradas INOUT son indistintamente para entrada y salida de datos

Implicit None


Real, External :: Cubo 
Real :: X, Y, Z, W

	Print *,'Ingrese un numero : '
	Read *,X
	Z = X
	Print *, 'Z es : ', Z
	Print *, 'El cubo es : ', Cubo(X, Y, Z)
	Print *, 'Y es igual a : ', Y
	Print *, 'y Z ahora es igual a :', Z

	Call Cubito(X, W)
	Print *, 'En tanto que W es : ', W 

End Program Ejemplo8


Real Function Cubo(xx, yy, zz)
Implicit None
Real, Intent(IN) :: xx
Real, Intent(OUT) :: yy
Real, Intent(INOUT) :: zz

  yy = xx**3
  Cubo = yy
  zz = zz**3

End Function Cubo

Subroutine Cubito(xx, ww)
Implicit None

Real, Intent(IN) :: xx
Real, Intent(Out) :: ww

ww = xx**3

End Subroutine Cubito