Program Ejemplo03


implicit none

!Ilustra la no asociatividad de Punto Flotante

real ::  u, v, x, y, z, uu, vv

x =  1.0e+30
y = -1.0e+30
z =  1.0

u = (x + y ) + z
uu = x + y + z

v = x + ( y + z )
vv = z + y + x


print *," Variables: "
print *, 'x	= ', x
print *, 'y	= ', y
print *, 'z = ', z
print *,''

write (*,*)
write (*,*) "u = (x + y) + z) = ", u
write (*,*) "uu = x + y + z = ", uu

write (*,*) "v =  x + (y + z) = ", v
write (*,*) "vv = z + y + x = ", vv



end Program Ejemplo03
