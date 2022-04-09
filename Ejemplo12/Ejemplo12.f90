PROGRAM Ejemplo12
! Usaremos Variable Logicas

! Las comparaciones de datos son:
!
! a <  b   &  a .LT. b  &  a.LT.b 
! a >  b   &  a .GT. b
! a <= b   &  a .LE. b
! a >= b   &  a. GE. b
! a == b   &  a .EQ. b
! a /= b   &  a .NE. b

! .AND.  o  .OR.
! .EQV.  o  .NEQV.
! .NOT. 


IMPLICIT NONE

LOGICAL :: Lx=.FALSE., Ly=.FALSE., Lz=.FALSE.


Lx = .TRUE.
Ly = .FALSE. 

If(Lx) Print *, 'TRUE'


IF ((Lx .AND. Ly) .EQV. .FALSE.)  Print *, .FALSE.
IF ((Lx .AND. Ly) .NEQV. .TRUE.)  Print *, .TRUE.

Print *, (Lx .AND. Ly)

Print *, (Lx .AND. .NOT. Ly)

PRINT *,'a. Lx : ', Lx
PRINT *,'a. Ly : ', Ly
PRINT *,'a. Lz : ', Lz

IF (Lx .EQV. Ly) Lz = .TRUE.

IF (Lx .NEQV. Ly) Lz = .FALSE.

PRINT *,'b. Lx : ', Lx
PRINT *,'b. Ly : ', Ly
PRINT *,'b. Lz : ', Lz

Print *,'Ingrese dos valores logicos'
Print *,'Esto es: (.TRUE. o .FALSE.)'
Print *, ' o .T. .F. o .t. .f.'
Print *, 'o tambien: T, F, t, f'
Read *, Lx, Ly

IF (Lx .EQV. Ly) Lz = .TRUE.

IF (Lx .NEQV. Ly) Lz = .FALSE.

PRINT *,'Lx : ', Lx
PRINT *,'Ly : ', Ly
PRINT *,'Lz : ', Lz

END PROGRAM Ejemplo12