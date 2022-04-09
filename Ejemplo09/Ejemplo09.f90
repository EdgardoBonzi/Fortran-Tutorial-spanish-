Program Ejemplo9
!Uso de la sentencia CONTAINS en los modulos

 USE Complex_Number

 IMPLICIT NONE

 TYPE(C_Number) Z, W, Q, R

 Print *, 'Ingrese dos Nros Complejos como pares de datos'

 Read *, Z, W
 Print *, 'Z : ', Z
 Print *, 'W : ', W
  
 Q = C_Add(Z, W)
 R = C_Mul(Z, W)

 Print *, 'Add Q : ',Q
 Print *, 'Mul R : ',R

 END PROGRAM Ejemplo9

