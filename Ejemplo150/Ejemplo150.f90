program animation
  !
  ! Programa para la creacion de una pelicula cientifica
  ! Utilizando gnuPLOT
  !  y para Linux
  !
  !
  !   version  1.1
  !           12704/2022
  !           Edgardo Bonzi
  !    edgardobonzi@gmail.com
  !
  !
  !

  use my_lib
  use modGnuPLOT

  implicit none

  integer, parameter :: len_x = 100
  real, dimension(1: len_x) :: x, y
  integer :: ii, jj, frames = 250, fu
  character(21) :: frame_name
  character(22) :: frame_n

  character(30) :: data_name_p
  character(22) :: data_name

!  character(25) :: fname
  character(17) :: PLT_FILE = './frames/plot.plt'   ! Gnuplot file.

  ! Borramos la pelicula
!  call system('rm animation.avi')

  ! Hacemos dos carpetas auxiliares
  call system('mkdir data')
  call system('mkdir frames')

  ! Llamamos la sbrouina linspace para crear el vector x
  call linspace(x, 1.0, 10.0, len_x)


  ! Aqui comenzamos a contruir las imagenes para la animacion
  do ii = 1, frames

    ! Primero crearemos los archivos de datos a graficar
    write(data_name,'(a, i4.4, a)') 'data', ii,'.dat'
    write(data_name_p,'(a, i4.4, a)') 'data', ii,'.dat'
    data_name  = './data/'//trim(data_name)

    y = sin(0.01* ii * x) / (x + 1)

    ! Aqui grabamos en un archivo los datos a graficar
    Open(file = data_name, newunit = fu)
    do jj = 1, len_x
       write(fu, '(f12.2, 2X, f12.2)') x(jj), y(jj)
    end do
    Close(fu)

    ! Aqui creamos el nombre que tendra el frame en png
    write(frame_n, '(a, i4.4, a)') 'plot', ii, '.png'
    frame_name = './frames/'//trim(frame_n)

    ! Aqui creamos el script plt para el GnuPlot
    ! data_name = nombre del archivo de datos a graficar
    ! PLT_FILE = nombre del archivo SCRIPT de GnuPLOT (plot.plt)

    call scriptGnuPLOT(data_name, frame_name, PLT_FILE)

    ! Aqui llamamos al GnuPLOT desde el system para crear una imagen
    ! Podemos hacerlo de dos manera, mostrado a continuacion
!    call execute_command_line('gnuplot -p ' // PLT_FILE)
    call system('gnuplot -p ' // PLT_FILE)

  end do


    ! Aquí creamos la pelicula
    call system('ffmpeg -i frames/plot%04d.png animation.avi')

    ! Aqui removemos los directorios
    call system('rm -rf data')
    call system('rm -rf frames')

end program animation
