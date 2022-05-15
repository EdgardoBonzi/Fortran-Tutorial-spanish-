Program Ejemplo41
use :: ISO ! from here we obtain "is"

integer(is) :: ii, jj, kk, m , n, p

n = 5
m = 4
p = 3

do concurrent(ii = 1 : n, jj = 1 : m, kk = 1 : p)
    print*, ii, jj, kk
end do

End Program Ejemplo41
