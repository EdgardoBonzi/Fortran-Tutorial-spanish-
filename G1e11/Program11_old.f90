Program P11



 implicit none

 integer :: i, j, n

 integer , allocatable , dimension(:,:) :: a, b, v, aaa

 integer , allocatable , dimension(:) :: aa , c



 write(*,*) ' ingrese la dimensión de los arreglos .'

 read(*,*) n



 allocate (a(n,n), b(n,1), c(n), v(n,1), aa(n*n), aaa(n,n) )



 b(1:N:2,1) = 3 ! Notar que para fortran N = n

 b(2:N:2,1) = 2



 write (*,*) ''

 write (*,*) 'dimensión n =', n

 write (*,*) ''

 write (*,*) ' vector b =', b



 ! Otra manera de hacer la asignación. ( Array Constructors )

 ! Notar que 'c' es un arreglo unidimensional

 c = (/ (2+mod(i ,2),i=1,n) /)

 write (*,*) ''

 write (*,*) ' c =', c



 write (*,*) ''

 write (*,*) ' ---------------------------------------------------------- '  


write (*,*) ''



 ! se define el vector aa

 aa = (/ 3, (0,i=2,n), ( (1,i=1,j-1) ,3,(0,i=j+1,n), j=2,n) /)

 write (*,*) ''

 write (*,*) ' vector aa =', aa

 write (*,*) ' --------------------------------------------------------- '

 ! se cambia el vector a arreglo

 aaa = reshape ((aa) ,(/ n , n /))

  write (*,*) ' arreglo aaa =', aaa

 
 
  write (*,*) ' --------------------------------------------------------------------- '
 
 do i=1,n

 write (*,*) aaa (i ,:)

 end do



 ! Otra manera de hacer la asignaci ón.

 a = 0

 forall (i =1:n, j=2:n, j>i) a(i,j) = 1

 forall (i =1:n) a(i,i) = 3



 write (*,*) ''

 write (*,*) ' ------------------------------------------------------------------------ '

 write (*,*) ''

 write (*,*) ' a(i,j) ='

 do i=1,n

 write (*,*) a(i,:)

 end do
 
 write (*,*) ' ------------------------------------------------------------------------ '
 
 
 write (*,*) ' vector b =', b

 
 
  write (*,*) ' --------------------------------------------------------------------------- ' 
 
 v = a * b
 
 write (*,*) ' vector v = a * b :', v
 
write (*,*) ' --------------------------------------------------------------------------- ' 
 
 v = matmul(a,b)

 write (*,*) ''

 write (*,*) 'v = matmul (a,b)'

 write (*,*) ' vector v =', v



 ! ¾Qué pasa si se prueba lo siguiente ?

 ! v = matmul(a,c)

 ! write (*,*) ''

 ! write (*,*) 'matmul(a,c) =', v



 end program




 
