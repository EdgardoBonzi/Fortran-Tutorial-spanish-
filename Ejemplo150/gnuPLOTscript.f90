module modGnuPLOT

  contains

  subroutine scriptGnuPLOT(data_name, frame_name, PLT_FILE)

    implicit none

      integer ::  fu
      character(21) :: frame_name
      character(19) :: data_name
      character(40) :: fname
      character(40) :: setOut
      character(17) :: PLT_FILE ! Gnuplot file.

      ! Aqui creamos el script plt para el GnuPlot
      Open(file = PLT_FILE, newunit = fu)

      write(fu, "(a)") "set terminal png"
      write(fu, "(a)") "set title 'Fortran Example'"
      write(fu, "(a)") "set nokey"
      write(fu, "(a)") "set grid"
      write(fu, "(a)") "set xlabel 'x'"
      write(fu, "(a)") "set ylabel 'y'"
      write(fname,"(a)") "m = '"//data_name//"'"
      write(fu, "(a)") fname

      ! Aqui creamos el nombre para cada frame
      write(setOut, *) "set output '"//TRIM(frame_name)//"'"
      write(fu, "(a)") setOut
      write(fu, "(a)") "plot m using 1:2 with linespoints"

      ! Aqui terminamos de crear el script
      Close(fu)

  end subroutine scriptGnuPLOT

end module modGnuPLOT
