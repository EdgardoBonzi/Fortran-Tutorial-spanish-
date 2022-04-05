! example.f90
program Example50
    implicit none
    character(len=*), parameter :: OUT_FILE = 'data.txt'   ! Output file.
    character(len=*), parameter :: PLT_FILE = 'plot.plt'   ! Gnuplot file.
    integer,          parameter :: N        = 10           ! Number of values.

    integer            :: i, fu
    real, dimension(N) :: x, y

    x(1) = 0.0
    y(1) = 0.0

    do i = 2, N
        x(i) = 0.1 * i
        y(i) = x(i)**2
    end do

    open (action='write', file=OUT_FILE, newunit=fu, status='replace')

    do i = 1, N
        write (fu, *) x(i), y(i)
    end do

    close (fu)

    call execute_command_line('gnuplot -p ' // PLT_FILE)
end program Example50
