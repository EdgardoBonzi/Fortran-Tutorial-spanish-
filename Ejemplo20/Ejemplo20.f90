Program Ejemplo20

	IMPLICIT NONE

  integer :: n
  integer,allocatable :: seed(:)
  real, dimension (3, 4) :: r
  
  call random_seed(size=n)
  
  print*, 'n : ', n
  
  allocate(seed(n))
  
  seed = 123456789    ! putting arbitrary seed to all elements
  
!  call random_seed(put=seed) ! Si descomento esta linea, los nuevos nros serán distintos
  
  deallocate(seed)
  
  
  print*,'Seed : ', seed

  CALL RANDOM_NUMBER(r)
  print*, r    ! Observe como print sabe lo que Usted quiere!

End Program Ejemplo20

											

