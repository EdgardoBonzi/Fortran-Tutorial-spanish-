Program Ejemplo15
!
!		Aqui veremos el Uso del lazo CYCLE
!
IMPLICIT NONE

INTEGER :: ii, jj, kk

ii = 10
jj = 10

 Loop2: Do ii = 1, 15

			Print *, ' ii : ', ii

			IF (ii .LT. 10) CYCLE Loop2

 Loop1:		DO kk = 1, 20

				Print *,'Loop 1'
					IF (kk.lt.12) CYCLE Loop1
					Print *,'kk : ', kk

			END DO Loop1

		END Do  Loop2


End Program Ejemplo15