Program	Ejemplo04
!Aqui probaremos la definicion y uso de una funcion

Implicit None
	Real :: LeeX
	Real :: X, W, a
	Integer :: ii

!***********************************************!

	Print *, 'Ingrese un dato Entero'
	Read *, ii
	Print *, ii


!***********************************************!
	a = 22.4

	X = LeeX()
	W = sqrt(LeeX())

!***********************************************!


	Print *, 'Dato Ingresado : ',X
	Print *, 'Raiz cuadrada :', W
	print *, a


End Program Ejemplo04



Real Function LeeX()

  Real :: a


	 Print *,'Por favor ingrese un Numero Real'
	 Read *, a

	 LeeX  = a * a

	 print *, a

End Function LeeX
