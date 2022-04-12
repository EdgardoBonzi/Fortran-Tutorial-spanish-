program Arquimedes

 implicit none

 integer , parameter :: pr=kind(1.d0)

 real(pr), parameter :: pi = 4._pr *atan(1._pr )

 real(pr) :: a0 , b0 , a, b, pw

 integer(8) :: k

 character(len=150)   ::  titulo1, titulo2
! ----------------------------------------------------------

 ! Arquímedes



 write (*,*) ' #################### Arquímedes ###################### '
 write (*,*) '################# Usando perímetros de polígonos regulares ##################'

  a0 = 2._pr* sqrt (3._pr)

  b0 = 3._pr

 titulo1 = '     lados             a(n)                b(n)                pi               &
                                 (a+b)/2           a(n)-b(n)     pi-(a+b)/2'

 write(*,*) ''

 write (*,200)  titulo1

 write (*, '(I9 ,4(2x,F19 .16) ,2x ,2(1x, E13 .6) )') (6), a0, b0, pi, a0-b0, (a0+b0)/2._pr, pi-((a0+b0)/2._pr)

  do k=1 ,20

      a = 2._pr*a0*b0 /( a0 + b0)

      b = sqrt (a*b0)




      write (*, '(I9 ,4(2x,F19 .16) ,2x ,2(1x, E13 .6) )') (6*2**k), a, b, pi, (a+b)/2._pr, a-b, pi-((a+b)/2._pr)

      a0 = a

      b0 = b

  enddo

  ! ----------------------------------------------------------

  ! Wallis

  write (*,*) ''

  write (*,*) ''

  write (*,*) ' ###################### Wallis ####################### '

  titulo2 = '          k                    pw                    pi            &

                          (pw - pi)'

  write (*,200) titulo2



   a = 1._pr

   do k =1,10**6

      a = a*(4*k**2) /(1._pr *(4*k**2 - 1))

         if (mod(k,10**5) == 0) then

         pw = 2._pr*a

         write(*,'(6x ,I9 ,2(4x,F19.16) ,4x, E16.9) ')  k,  pw ,  pi ,  (pw -pi)

         endif

    enddo



  200 format (A)

  end program
