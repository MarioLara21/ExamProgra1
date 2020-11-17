;-------------------------------------------;
;Creado por: Mario Lara Molina              ;
;Fecha de creación: 07/11/2020              ;
;Última modificación: 07/11/2020            ;
;Forma de compilación:                      ;
; Debe ingresar en la línea de comando      ;
;  Usando el turbo assembler de borland 4:  ;
;          compilar PEP                     ;
;  Y si desea solo ejecutarlo:              ;
;          PEP                              ;
;-------------------------------------------;
include MacEp.mlm
Datos Segment
nombreArch  db  '        .bmp'      ;Variable donde voy a guardarel nombre del archivo
handle      dw  ?                   ;Variable donde guardo la dirección en memoria del archivo

Datos EndS

Code Segment
    Assume Cs:Code Ds:Datos
    IniciarSegDatos
    