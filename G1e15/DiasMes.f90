 Program DiasMes

! leyendo el mes y el año responde los días que tiene el mes

!
 
implicit none

 integer ::  anio , dias

 character ( len=15) :: mes

 character ( len =1) :: d

 dias = 0

 write(*,*) " Ingrese el mes en minúscula : "

 read(*,*) mes
 
 write(*,*) " Ingrese el año : "

 read(*,*) anio




 select case ( mes )

     case ("enero")

           dias = 31

     case ("febrero")
 
        IF ( mod(anio,4)== 0) THEN 
 
             dias = 29 
 
        ELSE 

             dias = 28
      
        END IF

     case ("marzo")

             dias = 31

     case ("abril")

             dias = 30

     case ("mayo")

             dias = 31

     case ("junio")

             dias = 30
 
     case ("julio")

             dias = 31

     case ("agosto")

             dias = 31

     case ("setiembre")

             dias = 30

     case ("octubre")

             dias = 31

     case ("noviembre")

             dias = 30

     case ("diciembre")

              dias = 31


     case default

           write(*,*) "no reoconozco ese mes = ", mes

 end select

  write(*,*) "el número de dias de  ", mes , " de " , anio,  "  es " , dias
  
  write(*,*) " the end "

 

 end program DiasMes
