Program Ejemplo02
! Intentaremos el uso del par�metro Kind

implicit none

integer :: i, j
integer, parameter :: buffy = 8

real :: x, y
real(kind = 8) :: z

real(kind = buffy) :: rx, ry, rz



integer, parameter :: p = 9, r=30
integer, parameter :: r_Kind = selected_real_kind(p, r)


rx = 0.0D0; ry = rx; rz	= ry

Print*, rx
Print*, ry
Print*, rz

i = kind(x)
j = kind(y)


z = 12.00012345678901234567890


Print *, 'El KIND de x es: ', i
Print *, ", el KIND de y es: ",j
Print *, "y el KIND de z es : ", KIND(z)
Print *, 'r_Kind de (',p,',',r,') es :',r_Kind
Print *, z





Print *, 'Esta es una prueba del ampers&
		  &dan que si funciona'

Print *, 'Conviene Observar la dif&
	erencia con esta forma'


end program Ejemplo02
