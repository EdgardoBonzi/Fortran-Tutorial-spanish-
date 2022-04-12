 program P16

 implicit none

 integer , parameter :: pr=kind(1.d0)

 real(pr), parameter :: pi = 4._pr *atan(1._pr )

 real(pr) :: a0 , b0 , a, b, pw , c0 , c

 integer(8) :: k

  character(len=150)   ::  titulo


! ----------------------------------------------------------

 ! Arquímedes



 write (*,*) ' ################ Arquímedes ################## '
 write (*,*)  '#########  Usando desarrollos de Taylor de las funciones trigonométricas  ########'


 a0 = 2._pr* sqrt (3._pr)

 b0 = 3._pr



 ! Usando más información definimos

 c0 = 0.5_pr *( (a0+b0) + (-a0 **3 / 3._pr + b0 **3 / 6._pr ) &

 * (1._pr /6._pr) **2 + (a0 **5 / 5._pr + b0 **5 *(3._pr / 40._pr ) ) &

 * (1._pr /6._pr) **4 )

 ! Ver página 192 de Burden y Faires



 write(*,*) ''

 titulo = '      lados               a(n)                  b(n)                  c(n)             &
                                pi               a(n)-b(n)       c(n)-pi '

 write (*,200)  titulo

 write (*,'(I9 ,4(4x,F19 .16) ,2x ,2(2x, E13 .6) )') 6, a0 , b0 , c0 , pi , (a0 -b0), &

 (c0 -pi)



 do k=1 ,20

    a = 2._pr*a0*b0 /( a0 + b0)

    b = sqrt (a*b0)

    c = 0.5_pr* ( (a+b) + (- a **3 / 3._pr + b **3 / 6._pr ) &

    * (1._pr /(6*2** k)) **2 &

    + (a**5 / 5._pr + b**5 *(3._pr / 40._pr ) ) * (1._pr /(6*2**k))**4 )

    write (*, '(I9 ,4(2x,F21.15) ,2x ,2(2x, E13.6) )') (6*2** k) ,  a,  b,  c,  pi , &

    (a-b), (c-pi)

    a0 = a

    b0 = b

 enddo

 write(*,*) ''

 200 format (A)

 end program
