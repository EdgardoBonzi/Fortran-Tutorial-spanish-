Program Ejemplo17

IMPLICIT NONE
!
!	Uso de vectores y matrices
!
! OBSERVE los Warnings!!
!

Integer :: Vector(10), ii, jj, kk

Integer :: Vect(2:8)

Real, dimension(2, 3)  :: Matriz = reshape([0.0,0.0,0.0,0.0,0.0,0.0], (/2, 3/))
Real :: Mati(3,3) = 1.0
Real :: Mat1(3,3), Mat2(3,3) = 3.0
Real :: MatMat(1:4, 3:5)

  
!Metodo para crear y alojar formas diferidas de arreglos
INTEGER,ALLOCATABLE :: Matu(:,:)
REAL, ALLOCATABLE ::  Vvector(:)

Integer :: AllocateStatus, DeAllocateStatus

						 
Vect = 1
Mat1 = 2.0
Mat2 = 3.0

Do ii = 1, 3
Do jj = 1, 3
 Mat1(ii, jj) = -1
 Mat2(ii, jj) = jj
End Do
End Do

Print*, 'Matriz * Mati'
Print*, Mat1*Mat2


Print*, 'Ingrese las dimensiones de la matriz y del vector : (ejemplos 2 4 6) '
Read*, 	ii, jj, kk

Allocate(Matu(ii, jj), STAT = AllocateStatus)
If ( AllocateStatus /= 0)  STOP '++++ No hay suficiente memoria+++'

Allocate(Vvector(kk), STAT = AllocateStatus)
If ( AllocateStatus /= 0)  STOP '++++ No hay suficiente memoria+++'

Matu = 3
Vvector = 8

Print *, Matu
Print *, '******************************'
Print *, Vvector
Print*, '******************************'



!Un Arreglo puede ser liberado de la memoria, usando el comando DEALLOCATE

   DeAllocate (Matu, STAT = DeAllocateStatus)
   Print*, 'DeAllocateStatus ', DeAllocateStatus

! Y lo podemos alojar de nuevo con ALLOCATE

Allocate(Matu(3,3))
Matu = 9
Print*, Matu


! Stop

Print*, 'Imprimo Vect :', Vect
Print*, '**********************'
Print*,'Mati...:', Mati

Do ii = 2, 8

	Vect(ii) = ii

End Do

	Print *, 'Vect(',ii,')',Vect(ii)

	Vect(0) = 0
	Vect(9) = 9
				  
	Print *, 'Vect(0)',Vect(0)
	Print *, 'Vect(1)',Vect(1)
	Print *, 'Vect(9)',Vect(9)

   
Do ii = 0, 11

	Vector(ii) = ii + 2

End Do

Do ii = 0, 11
	Print *, ii, Vector(ii)
End Do

Do ii = 1, 2

  Do jj = 1, 3

	Matriz(ii, jj) = ii + jj

  End Do

End Do

Do ii = 1, 2

 Do jj = 1, 3

	Print *, ii, jj, Matriz(ii, jj)

  End Do

End Do


Do ii = 1, 3

 Do jj = 1, 3

	Print *, ii, jj, Mati(ii, jj)

  End Do

End Do


Do ii = 1, 4

  Do jj = 3, 5

	MatMat(ii, jj) = ii + jj

  End Do

End Do


Do ii = 1, 4

  Do jj = 3, 5

	Print *, 'MatMat', ii, jj, MatMat(ii, jj)

  End Do

End Do



End Program Ejemplo17