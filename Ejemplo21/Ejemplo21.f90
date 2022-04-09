Program Ejemplo21

!
!	 Este es un ejemplo de contador de eventos por eventos y por tiempo
!
	IMPLICIT NONE

  integer(8) :: iStart, iEnd
  character(len=30) :: dateStart, dateEnd


	REAL, dimension(20) :: R
	Integer(4) :: TCalculo, TEnd, CEventos, Eventos 

	Eventos = 1000000000  ! N�mero total de Eventos, en este caso C�lculos Random
	TEnd = 20		   ! Tiempo total de C�lculos en segundos

    iStart = time8()
           
     ! Do something, main part of the program
           
    call ctime(iStart, dateStart)
    print *, 'Program start on       ', dateStart

		CEventos = 0		! Este es un contador de Eventos, por ejemplo "Pasos"

		Do    !While ((CEventos < Eventos) .AND. (TCalculo < TEnd))
				
			CALL RANDOM_NUMBER(R)
      if (CEventos > Eventos .or. TCalculo > TEnd) Exit

				CEventos = CEventos + 1	! Actualizo el contador de Eventos
        iEnd = time8()
        TCalculo = iEnd - iStart	! Actualizo el Tiempo

		End Do
    
    iEnd = time8()
    call ctime(iEnd, dateEnd)


    print *, 'Program was finish on  ',  dateEnd
    
    TCalculo = iEnd - iStart

		Print *, 'Timer :', TCalculo, CEventos
		Print *, 'Velocidad de Calculos: ', CEventos / TCalculo, '   Eventos/Sec'

End Program Ejemplo21

