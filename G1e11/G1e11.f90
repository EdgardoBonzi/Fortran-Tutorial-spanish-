Program G1e11 ! Guia 1 ejercicio 11

! Programa del Ejercicio 11 de la Guia1
! Metodos Numerico 2022
!
!Problema 11: Escriba un programa, que utilizando una subrutina, multiplique un
!  vector de N elementos, por una matriz de N × N.
!El programa debe preguntar el valor de N y luego definir los arreglos, y darle
!  valores iniciales tal que:
!       i. la matriz sea triangular superior, con todos sus elementos igual a 1,
!             excepto los de la diagonal que toman valor 3,
!       ii. el vector tendra todos sus elementos pares igual a 2,
!             y los impares igual a 3.
!No utilice DO para las inicializar el vector, ni DO anidados para inicializar
!  la matriz.
!
!
!           version 1.0
!           4 de abril, 2022
!
! Version original de Osvaldo Moreschi
! Adecuación de Edgardo Bonzi
!             edgardobonzi@gmail.com

USE iso_fortran_env

implicit none

integer :: ii, jj, dim ! Notar que para fortran dim = DIM
integer, parameter :: rl = real128

integer, allocatable, dimension(:,:) :: matA, matB, matC, matD
integer, allocatable, dimension(:)   :: vecE, vecF, vecG

real(rl) :: x    ! Será utilizados al final del programa
real(rl), dimension(5) :: w  ! Será utilizados al final del programa

write(*,*) 'Ingrese la dimensión de los arreglos :'
read(*,*) dim

write (*, 100)
write (*,*) "Dimension dim = ", dim
write (*, 99)

! ====================================================
!     Redimensionamos las matrices y los vectores
! ====================================================

allocate (matA(dim, dim), matB(dim, 1), matC(dim,1), &
          matD(dim, dim), vecE(dim*dim), vecF(dim), vecG(dim))

! ====================================================
!   Jugamos llenando Vector y Matriz Unidimensional
! ====================================================

! Llenamos con 3 y 2 a un vector de dimension dim, [dim] vecG
! ***********************************************************
!
write (*, 100)
vecG(1: dim: 2) = 3 ! Impares: Comienzo en 1, salto de a 2 y lleno con 3
vecG(2: dim: 2) = 2 ! Pares:   Comienzo en 2, salto de a 2 y lleno con 2
write (*, 99)

write (*, 100)
write (*,*) "Vector unidimensional [dim], vecG = "
write (*,*) vecG
write (*, 99)



! Llenamos con 3 y 2 a una matriz unidimensional [dim, 1] matB
! *************************************************************
!
matB(1:dim: 2, 1) = 3 ! Comienzo en 1 y lleno con 3
matB(2:dim: 2, 1) = 2 ! Comienzo en 2 y salto de 2

write (*, 100)
write (*,*) "Matriz unidimensional [dim, 1], matB = "
write (*,*) matB
write (*, 99)

! Probamos distintas formas de escribr matB
write (*, 100)
do ii = 1, dim
   write (*,*) matB(ii, :)
end do
write (*, 99)

write (*, 100)
   write (*,*) matB(:, 1)
write (*, 99)


! Otra manera de hacer la asignación. ( Array Constructors )
! Notar que 'vecF' es un arreglo unidimensional
vecF = (/ ( 2 + mod(ii, 2), ii = 1, dim) /)

write (*, 100)
write (*,*) "Matriz unidimensional [dim, 1], matF = "
write (*,*) vecF
write (*, 99)

! ====================================================
!           Ahora jugamos con la Matriz
! ====================================================
! la matriz sea triangular superior, con todos sus elementos igual a 1, excepto los de
! la diagonal que toman valor 3,


!matA(1:dim,1:dim) = 3 ! Comienzo en 1 y lleno con 3
write (*, 100)
write (*, *) "Sea la matriz triangular superior"
! cargamos los datos en el vector vecE que es dim x dim
vecE = (/ 3, (0, ii = 2, dim), &
       (( 1, ii = 1, jj - 1), 3, (0, ii = jj + 1, dim), jj = 2, dim) /)

write (*,*) 'Vector unidimensional de [dim x dim], vecE ='
do ii = 0, dim-1
  write(*, *) vecE(dim * ii + 1: dim * ( ii + 1))
end do
write (*, 99)

write (*, 100)
 ! se cambia el vector vecE a un arreglo dim x dim matD
matD = reshape ((vecE) ,(/ dim , dim /))
write (*,*) 'Arreglo matD ='
write (*,*)  matD
write (*, 99)

write (*, 100)
do ii = 1, dim
   write (*,*) matD (ii, :)
end do
write(*, 99)
! stop "con todos sus elementos igual a 1, excepto los de la diagonal que toman valor 3"
! Otra manera de hacer la asignacion.

matA = 0

forall (ii = 1: dim, jj = 2: dim, jj > ii) matA(ii, jj) = 1
forall (ii = 1: dim) matA(ii, ii) = 3

write (*,100)
write (*,*) 'MatA(ii, jj) ='
write(*, 99)

write (*,100)
do ii = 1, dim
  write (*,*) matA(ii,:)
end do
write(*, 99)

write (*,100)
write (*,*) 'Arreglo matB ='
write(*,*) matB
write(*, 99)

write (*,100)
matC = matA * matB
write (*,*) 'vector matC = matA * matB :'
write(*,*) matC
write(*, 99)

matC = matmul(matA, matB)
write (*, 100)
write (*,*) 'matC = matmul(matA, matB)'
write (*,*) 'Arreglo matC ='
write(*,*) matC
write (*, 99)



 x = 1.1_rl
 w = (/ 0.0_rl ,x, x-1.0_rl, 0.0_rl, -1.0_rl /)
write (*, 100)
write(*,*) "Valores en w"
write(*,110) w
 ! v = matmul(a,c)

 ! write (*,*) ''

 ! write (*,*) 'matmul(a,c) =', v
  
 99 Format(' ')
100 Format('------------------------------------------------')
110 Format(5(2X, F10.7))

end program G1e11 ! Guia 1 ejercicio 11
