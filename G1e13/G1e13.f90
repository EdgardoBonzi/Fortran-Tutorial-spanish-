 Program G1e13

!   Problema 13 Guia 1: Efectue con un programa en Fortran en simple precision los
!   siguientes calculos, matematicamente equivalentes,
!   a) 1 000 000 × 0.1
!   b) Sum de n=1, 1 000 000 de 0.1
!   c) Sum de m=1, 1 000 de Sum de n=1, 1 000
!       Explique las diferencias obtenidas entre resultados finales de a), b) y c) y muestre que el error relativo en b)
!       es del orden del 1%, pero es mucho menor en c). Resalte la conclusion de este ejercicio.

!   d) En los puntos b) y c), vaya guardando con un write (cada 1000 iteraciones en el caso b, y en todas
!        las iteraciones de la suma externa en c), los errores parciales en un archivo de datos. La primera
!        columna con los valores de los indices (multiplicados por 1000 para el caso c) de las sumas y segunda
!        columna con el error parcial, i.e., la diferencia entre el valor de la respectiva suma parcial y el valor
!        exacto (i ∗ 0:1). Grafique usando gnuplot, los errores parciales de b) y c) superpuestas, en funcion del
!        indice correspondiente, en un archivo\prob13.pdf" en color, con titulo de grafica\Problema 18, Guıa
!        1", con nombres adecuados en los ejes y con leyendas adecuadas. Los datos del b), graficarla con
!        puntos de tama~no 0.75 (el default es 1), y los de c) con linea de grosor 1.6 (el default es tambien 1).
!        Luego de ver como le queda la grafica en escala lineal, cambie el eje x, a escala logar´ıtmica. Segun su
!        criterio, en que escala se aprecia mejor el resultado del problema para su analisis? Puede al eje y darle
!        escala logaritmica? Pruebe que pasa si lo hace. Analice la conveniencia en general del uso de escalas
!        logaritmicas.
!        Finalmente deje el archivo grabado en escala lineal en y, y logaritmica en x, y diga el tama~no del
!        mismo tanto en bytes como Kbytes.
!
!                   Programa original escrito por Osvaldo Moreschi
!                   Programa modificado escrito por Edgardo Bonzi
!
!                             version 1.1
!                             08/04/2022
!
!                                                         Edgardo Bonzi
!                                                         edgardobonzi@gmail.com
!


   USE iso_fortran_env

   implicit none

   integer, parameter :: rs = real32
   integer, parameter :: rd = real64
   integer, parameter :: rl = real128

   integer, parameter :: wp = rl

   real(kind = wp) :: suma1 , suma2
   integer :: nmax , n, m, fu

  character(len=*), parameter :: PltFile = 'G1e13.plt'   ! Gnuplot file.

  nmax = 1000000

 ! -----------------------------------

 ! a)
  suma1 = nmax * 0.1_wp
  write(*,*) ' 1000000 * 0.1_wp = ',suma1
 ! -----------------------------------

 ! b)
   open(newunit = fu, file = 'datossal/a_y_suma_b.dat ')
     write(fu,*) "# n, n * 0.1_wp , suma1 , ( suma1 - n * 0.1_wp)"

     suma1 = 0.0_wp
     do n = 1, nmax

        suma1 = suma1 + 0.1_wp
        if (mod(n, 1000) == 0) then
           write(fu, 500) n, n * 0.1_wp , suma1 , ( suma1 - n * 0.1_wp )
        end if

     end do
   close(fu)

  write (*,*) ' suma de 1 a 1000000 de 0.1_wp = ',suma1

 ! -----------------------------------
 ! c)

   suma1 = 0.0_wp
   suma2 = 0.0_wp

   do m = 1, 1000
     suma1 = suma1 + 0.1_wp
   end do

   open(newunit = fu, file = 'datossal/a_y_suma_c.dat ')
     write(fu,*) "# n, n * 100. _wp , suma2 , (suma2 - n * 100._wp)"

     do n = 1, 1000

       suma2 = suma2 + suma1

       write(fu, 500) n, n * 100._wp , suma2 , ( suma2 - n * 100._wp )
     end do

   close(fu)

   write(*,*) ' suma de 1 a 1000 de 1 a 1000 de 0.1_wp = ',suma2

  500 format(I8, 3(1X, ES20.13) )

      call system('gnuplot -p '//PltFile)

end program G1e13
