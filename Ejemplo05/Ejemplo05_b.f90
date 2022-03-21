Program testkind

! int8, int16, int32, int64
!    Parámetros de tipo Kind para especificar un tipo "INTEGER" con un tamaño de
! almacenamiento de 8, 16, 32 y 64 bits. Es negativo si una plataforma de
! destino no es compatible con el tipo particular. ( Fortran 2008 o posterior).

! real32, real64, real128
!    Parámetros de tipo Kind para especificar un tipo "REAL" con un tamaño de
! almacenamiento de 32, 64 y 128 bits. Es negativo si una plataforma de
! destino no es compatible con el tipo particular. ( Fortran 2008 o posterior).

use ISO_FORTRAN_ENV

implicit none

integer(kind = int8), parameter :: is = int8, id = int16, il = int32, ix = int64
integer(kind = int8), parameter :: rs = real32, rd = real64, rl = real128
! s : Short, d : Double, l : Large, x : eXtralarge

integer(kind = is) :: el_entero
integer(is) :: otro_entero
real(kind = rl) :: los_reales
real(rl) :: otros_reales
complex(kind = real64) :: el_acomplejado
complex(real64) :: otro_acomplejado

el_entero = 8
los_reales = 10.00_rl
otros_reales = 355.00_rl / 113.00_rl ! Almost pi
el_acomplejado = (355.00_rl, 113.00_rl)
otro_acomplejado = (3.00_rl, 4.00_rl)

print '(4a)', 'This file was compiled by ', &
                           compiler_version(), ' using the options ', &
                           compiler_options()



write(*,*) el_entero, los_reales
write(*,*) otro_entero, otros_reales
write(*,*) el_acomplejado, otro_acomplejado
write(*,*) real(el_acomplejado)/imag(el_acomplejado), abs(otro_acomplejado)

write(*,*) is, id, il, ix
write(*,*) rs, rd, rl


end program testkind
