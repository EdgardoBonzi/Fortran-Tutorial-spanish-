Program Ejemplo40
use :: ISO ! from here we read "iostat_end"

character(len = 140) :: line
CHARACTER(len = 30)  :: inputName
integer :: fu, stat, dim, ii
real(rd), dimension(:), allocatable :: x, y

inputName = 'pos.dat'
dim = 0
  open (newunit = fu, action='read',file = inputName,status='old')
      ef: do
        read(fu, '(A140)', iostat = stat) line
        if (stat == iostat_end) exit ef ! end of file
        dim = dim + 1
      end do ef

  close(fu)
print*,'# of lines', dim

allocate(x(dim), y(dim))

open (newunit = fu, action='read',file = inputName,status='old')
  do ii = 1, dim
      read(fu, '(A140)') line
      read(line, *) x(ii), y(ii)
      write(*,*) ii, x(ii), y(ii)
  end do

close(fu)




End Program Ejemplo40
