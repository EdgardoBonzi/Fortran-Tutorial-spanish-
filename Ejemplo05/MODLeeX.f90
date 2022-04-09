Module LeeX

Implicit None
! Aquí se declaran las variables globales del Modulo
!No tenemos variables globales del Modulo para declarar

contains
	! La Declaración 'contains' se utiliza para declarar las funciones dentro de un módulo
	! y se coloca despues de declarar las variables globales del modulo.

   Function FuncLeeX()

     real :: FuncLeeX

     Print *,'Por favor ingrese un Numero Real'
     Read *, FuncLeeX
     Print *, 'El valor ingresado es :', FuncLeeX

   End Function FuncLeeX


End Module LeeX
