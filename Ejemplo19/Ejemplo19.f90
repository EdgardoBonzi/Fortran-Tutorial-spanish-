Program Ejemplo19

!
!	Ejemplo para el uso de Archivos	y la definicion de Characteres
!	Uso del Continue para el ciclo Do
!				Version 1.0 
!				22/09/2008

IMPLICIT NONE

Integer :: ii, error
Real :: Canal, CanalMax
Real(8) :: Datum(10000, 1), DataMaximo
Real(8) :: Dato, Dat
Character(60) ::  Buffer
Character(6) ::  Palabra, P1, P2, P3, P4, P5, P6
Character(13) :: ArchivoName


Open(5, FILE='PruebaIn.txt')
 
		Read (5,700) Dato

700			Format(7X, E5.3)

Close(UNIT=5)


 Print *,' '

 Print *, 'Dato Escrito', Dato

 ArchivoName = 'PruebaOut.txt'

Open(16, File = ArchivoName, ACCESS='APPEND')
			Write (16, 1000) Dato
Close(16)

1000 		FORMAT(E22.14)

Print*,'********************************'
Print*,' '


	Open(15, FILE='PruebaIn.txt')

 	  Do 1600 ii = 1, 3

          READ(15,'(A60)') Buffer

          READ(Buffer,*) Palabra, Dato

		Print *, 'Palabra y Dato: ',ii,'  ',Palabra, Dato

		Print 10, Dato

 1600	  Continue !! Observe el uso de la sentencia CONTINUE
 	
	Close(UNIT=15)

 10 Format(F22.10)

!  STOP

		Open(7, FILE='PruebaOut.txt')

	  Do ii = 1, 4
			Read (7, 1400) Dat
1400			FORMAT(E22.14)	
	  
	  Print *, 'Dato Leido', Dat

	  End Do

    	Close(Unit=7)

 Print *,' '

Open(16, FILE='Spect.dat')
ii = 0

   DO
        READ (16, *, iostat = error) Canal, Datum(ii, 1)
        if (error /= 0) Exit
        ii = ii + 1
			if (Datum(ii, 1) > DataMaximo) then
 			DataMaximo = Datum(ii, 1)
				CanalMax = Canal
			end if
		 Print *, ii, Canal, Datum(ii, 1)
    END DO

Close(16)

Print *,'  '
Print *,'Datos maximos :', CanalMax, Datamaximo

		Open(16, FILE='PruebaIn.txt')
 	    Do 1800 ii = 1, 2
            READ(16,'(A60)')BUFFER

            READ(BUFFER,*) P1
			READ(BUFFER,*) P2
			READ(BUFFER,*) P3
			READ(BUFFER,*) P4
			READ(BUFFER,*) P5
			READ(BUFFER,*) P6
							 
		  Print *, 'D L',ii,'  ', P1, P2, P3, P4, P5, P6
    
 1800   Continue

            READ(16,'(A60)')BUFFER

            READ(BUFFER,*) P1

	 print*, P1,' keV:'

  	  Close(UNIT=16)

End Program Ejemplo19