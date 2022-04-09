MODULE Complex_Data
!Aqui definiremos el tipo de numero Complejo

IMPLICIT NONE

SAVE   ! Esta declaracion es para que los valores declarados debajo,
       !         perduren en todo el programa

TYPE C_Number   ! Declaramos un tipo de dato del usuario

    REAL::ReZ, ImZ

END TYPE C_Number

END MODULE Complex_Data
