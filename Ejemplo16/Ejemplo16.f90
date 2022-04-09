Program Ejemplo16
!
!	Uso de COMMON 
! Esta metodologia es heredada del FORTRAN 77, y actulmente reemplazada por el uso de Modulos
!
! OBSERVE el WARNING que se produce al Compilar.
! A pesar el WARNING el ejecutable se produce y funciona
!

IMPLICIT NONE 

Integer :: ii, jj, kk

Real :: xx, yy, ss

COMMON/Pepe/ ii
COMMON/Roque/ xx, jj, kk
COMMON ss

ii = 1

xx = 1.234567

yy = 9.87654321

ss = 2.7178

Print *,'Primer lectura', ii, xx, yy, ss

Call Prueba


Print *,'Segunda lectura', ii, xx, yy, ss


End Program Ejemplo16


SUBROUTINE	Prueba()

Integer :: iii

Real :: xxx, yy, kkk, sss

COMMON /Pepe/ iii
COMMON /Roque/ xxx
COMMON sss


Print *,'Desde la Prueba primero', iii, xxx, yy, sss

iii = 30

xxx = 5.555555

yy = 6.666666

Print *,'Desde la Prueba segundo', iii, xxx, yy


End Subroutine




