MODULE Complex_Number
!Ahora definiremos tambien las funciones de lo Complejos

USE Complex_Data

IMPLICIT NONE

CONTAINS    ! Esta declaracion es necesaria para agregar procedimientos (funciones y subrutinas)

FUNCTION C_Add(Z1, Z2)

USE Complex_Data
!IMPLICIT NONE

!Definici�n de Datos
TYPE (C_Number) :: C_Add
TYPE (C_Number), INTENT(IN):: Z1, Z2

!Definici�n de la Suma
C_Add%ReZ = Z1%ReZ + Z2%ReZ
C_Add%ImZ = Z1%ImZ + Z2%ImZ


END FUNCTION C_Add

FUNCTION C_Mul(Z1, Z2)

USE Complex_Data

TYPE (C_Number) :: C_Mul
TYPE (C_Number), INTENT(IN):: Z1, Z2

!Definici�n de la Suma
C_Mul%ReZ = (Z1%ReZ * Z2%ReZ)-(Z1%ImZ * Z2%ImZ)
C_Mul%ImZ = (Z1%ReZ * Z2%ImZ)+(Z1%ImZ * Z2%ReZ)


END FUNCTION C_Mul

END MODULE Complex_Number
