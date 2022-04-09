Program Ejemplo18

!
! Uso de Format para escribir
!

IMPLICIT NONE

Character(4) :: Char

Integer ii, jj

Real :: xx, yy, uu

Real(8) :: zz, ww


Char = 'Cuat'

uu = 1

ii = 12345678; jj = 34

Print *, 'escrito generico :',ii

xx = 2.345678901234; yy = 0.012345

zz = 1.234567890123456789D0

ww = 1.0D0

 zz = zz + 1

!  zz = 1.234567890123456789D0

! zz = 1.234567890123456789

Print 10, ii

10 Format(I9) 

100 Format(// 11X, I4, 2X, I5, 4X, F22.14, 2X, G22.14E4, 2X, E22.14E4)  


Print 100, ii, jj, yy, yy, yy

Print 100, jj, jj, zz, zz, zz
Print 100, jj

Print 200, zz, Char 

200 Format(// 5X, E22.14, 5X, A5) 


Print 200, zz

Print 300, zz

300 Format(5X, E35.27) 

Print *, 'ww :', ww
Print 300, ww
Print 200, ww, Char


Print*,'********************************'

400 Format(// 5X,'****', 3(3X,I10))

print 400, ii, jj, ii 


End Program Ejemplo18