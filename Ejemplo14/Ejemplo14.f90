Program Ejemplo14

!************************************************
!*												*
!* Aqui veremos el Ciclo Do While .... End Do	*
!*												*
!************************************************

IMPLICIT NONE

INTEGER :: ii, jj

ii = 10
jj = 10

DO WHILE ((ii .NE. 20) .AND. (jj .NE. 15))
	Print *, ii, jj

	ii = ii + 1

	jj = jj + 1

END DO

End Program Ejemplo14