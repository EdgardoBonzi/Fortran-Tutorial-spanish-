module particles_objs

  use iso_fortran_env

  implicit none

! Define parameter
  real(real64), parameter :: pi = 3.14159
  real(real64), parameter :: e0 = 8.854188e-12

! Define types
  type, public :: Particle
    ! define the attributes
     character(9) :: name
     real(real64) :: radius
     real(real64) :: mass
   contains
     procedure :: cross_area => ca  ! Multiple Dispatch & Overloading Functions
     procedure :: show => show_p    ! Multiple Dispatch & Overloading Functions
  end type Particle

  ! hereditary
  type, extends(Particle) :: Electron
     real(real64) :: charge
   contains
     procedure :: electric_potential => ep
     procedure :: show => show_e ! Multiple Dispatch
  end type Electron

! Define Procedure
contains

  subroutine ca(this)
    ! arguments
    class(Particle), intent(in) :: this
    print *, pi * (this%radius + this%radius)**2
  end subroutine ca

  subroutine show_p(this)
    class(Particle), intent(in) :: this
    print *, 'name :', this%name, 'radius :', this%radius, 'mass :', this%mass
  end subroutine show_p

  real(real64) function ep(this, radius) &
       result(V)
    ! arguments
    class(Electron), intent(in) :: this
    real(real64), intent(in) :: radius

    V = 1./(4.*pi*e0) * this%charge / radius

  end function ep

  subroutine show_e(this)
    class(Electron), intent(in) :: this
    print *, 'name .', this%name, 'radius :', this%radius, 'mass :', this%mass, 'charge :', this%charge
  end subroutine show_e

end module particles_objs
