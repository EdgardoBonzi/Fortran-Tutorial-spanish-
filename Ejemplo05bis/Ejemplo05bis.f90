Program Ejemplo5Bis

!***********************************************************************!
!  Programa Ejemplo5Bis																									!
!																																				!
!				Programa Creado por Edgardo Bonzi																!
!							edgardobonzi@gmail.com																		!
!																																				!
!								Marzo 23, 2015																					!
!								Version 0.1																							!
!																																				!
!	Ejemplo creado para mostrar el uso del comando "RESULT" en las 				!
!	funciones e "INTERFACE"																								!
!																																				!
!	Mostraremos el uso del TYPE Complex, nuemeros complejos intrinsecos		!
!	Y del uso de salidas de estructuras en las funciones, como ser				!
!															vectores																	!
!																																				!
! Una declaracion INTERFACE enumera todos las caracteristicas de				!
! procedimientos externos, por lo que el compilador puede confirmar si	!
! las llamadas de los subprogramas son correctos o no.									!
!																																				!
! El compilador verifica que el numero, tipos y atributos de los				!
! argumentos en la ! llamada del subprograma son consistentes con los		!
! declarados en la interfaz.																						!
!																																				!
! La declaracion INTERFACE tambion define los nombres a utilizar como		!
! palabras clave de argumentos.																					!
!																																				!
!	Esta metodo es conveniente reemplazarlo por el uso de Modulos					!																																	!
!																																				!
!***********************************************************************!

IMPLICIT NONE

Real(kind=8),Dimension(3) :: A, B, Salida
Complex(kind=8) :: Z, Y

INTERFACE
! INTERFACE donde definimos la operacion Producto_Cruz para Vectores
! *****************************************************************!

Function Producto_Cruz(a,b)
Real(kind=8), Dimension(3)::Producto_Cruz
Real(kind=8), Dimension(3), intent(in)::a,b
End Function Producto_Cruz

END INTERFACE

! Aplicacion simple de TYPE Complex
! ********************************!

Print*, 'Ingrese un numero complejo, de la forma "(a,b)" '

Read (*,*) Z
!Z = (1, 3)

Print*, 'Ingrese otro numero complejo, de la forma "(a,b)" '

Read (*,*) Y
!Y = (2, 4)

Print*, 'Estos son los dato ingresados :', Z, Y

Print*, 'Multiplicacion inteligente de Z * Y: ', Z * Y

Print*, 'Suma inteligente de Z + Y: ', Z + Y


! Aqui usaremos vectores en 3D
! ***************************!
Print*, '  '
Print *, 'Por favor ingrese tres numeros componentes del primer vector'


Read *, A

Print *, 'Por favor ingrese tres numeros componentes del segundo vector'

Read *, B


Salida = producto_cruz(A,B)


Print*, 'A x B', Salida


Salida = producto_cruz(B,A)

Print*, 'B x A', Salida


End Program Ejemplo5Bis


Function producto_cruz(a,b) Result(vector)

! Definici�n de la Funci�n Prodcuto Cruz con
! salida como resultado de un vector 3D
!
! *****************************************!

IMPLICIT NONE

Real(kind=8),Dimension(3),Intent(in)::a,b
Real(kind=8),Dimension(3) :: vector


vector(1) = a(2) * b(3) - a(3) * b(2)
vector(2) = a(3) * b(1) - a(1) * b(3)
vector(3) = a(1) * b(2) - a(2) * b(1)


End Function producto_cruz
