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
datos SEGMENT
    error       db  'Error'
    nombreArch  db  '\c:              '      ;Variable donde voy a guardarel nombre del archivo
    nombreAssci db  '\c:          .txt'
    handle      dw  ?                        ;Variable donde guardo la dirección en memoria del archivo
    ancho       dw  0h
    largo       dw  0h
    largoBk     dw  0h
    anchoBk     dw  0h
datos ENDS
include macep.mlm
codigo SEGMENT
ASSUME CS:codigo,ds:datos
inicio :
       
fin:
         RetornaControl
codigo ENDS
END inicio