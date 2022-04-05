program useClass

! Object-oriented programming (OOP) is a programming paradigm based on
! the concept of "objects", which can contain data and code: data in the
! form of fields (often known as attributes or properties), and code,
! in the form of procedures (often known as methods).

use iso_fortran_env
use particles_objs

  implicit none
  integer :: ii
  character(4) :: nn
  character(1) :: c
  real(real64) :: r, m, q, x, carga
  type(Particle) :: p
  type(Electron) :: eneg, epos
  type(Electron), dimension(4) :: W

  r = 2.4e-10
  m = 9.109e-31
  q = 1.602e-19

  x = 4.0_real64
  p = Particle("stone", r, m)
  eneg = Electron("negatron", r, m, -q)
  epos = Electron("positron", r, m, q)


  do ii = 1, 4
    write(c,'(I1)') ii
    nn = "w"//c
    carga = ((-1.0)**ii) * q/(real(ii))
    W(ii) = Electron(nn, r/real(ii), m*real(ii)/2.0, carga)
    call w(ii)%show()
  end do

  !W(1) = Electron("w1", r/1.0, m*2, q/4.0)
  !W(2) = Electron("w2", r/2.0, m*2, q/3.0)
  !W(3) = Electron("w3", r/3.0, m*2, q/2.0)
  !W(4) = Electron("w4", r/4.0, m*2, q/1.0)

  print *, p%radius, p%mass
  print *, eneg%radius, eneg%mass, eneg% charge
  print *, epos%radius, epos%mass, epos% charge

  call p%cross_area()
  call eneg%cross_area()
  call epos%cross_area()

  print *, eneg%electric_potential(x)
  print *, epos%electric_potential(x)

print *, "-------------------------------------------"
print*, " "
  call p%show()
  call eneg%show()
  call epos%show()

  do ii = 1, 4
    call w(ii)%show()
  end do

end program useClass
