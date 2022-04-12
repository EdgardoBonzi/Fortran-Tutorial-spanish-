module my_lib

   implicit none
   !public :: mesh, linspace
   public :: linspace

   contains

  subroutine linspace(x, x_start, x_end, x_len)
    real, dimension(:), intent(out) :: x
    real :: x_start, x_end, dx
    integer :: x_len, i

    dx = (x_end - x_start) / (x_len - 1)
    x(1:x_len) = [(x_start + (i * dx), i = 0, x_len-1)]

  end subroutine linspace

end module my_lib
