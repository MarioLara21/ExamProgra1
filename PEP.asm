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
    error           db  'Error$'
    nombArch        db  '\c:            ',0      ;Variable donde voy a guardar el nombre del archivo
    nombreAssci     db  '\c:          .txt'      ;Variable donde guardo el nombre del txt
    mostrarAyuda    db  'C:\TASM\BIN\ayuda.txt' 
    handle          dw   ?                         ; handle lo uso para guardar la dirección del archivo
    X               dw   ?                         ; X and Z is used to fill the screen with pixels
    Z               dw   ?
    col             db   640 dup(?)                ; col lo uso para hacer una linea en pantalla
    buff            dw   0
                    dw   0
                    dw   0
                    dw   0
    multi           dw   6
                    dw   4
                    dw   0
                    dw   0
    num             dw   0
    y               dw   409         ; y es para saber el final del bmp
                    dw   408
                    dw   307
                    dw   306
                    dw   204
                    dw   203
                    dw   102
                    dw   101
    BMPKBEZA    struc           ; Estructura que guarda datos del bmp
       id          db   2 dup(?)
       filesize    dw   2 dup(?)
       reserved    dw   2 dup(?)
       headersize  dw   2 dup(?)
       infosize    dw   2 dup(?)
       width       dw   2 dup(?)
       depth       dw   2 dup(?)
       biplanes    dw   ?
       bits        dw   ?
       bicomp      dw   2 dup(?)
       bisizeim    dw   2 dup(?)
       bixpels     dw   2 dup(?)
       biypels     dw   2 dup(?)
       biclrused   dw   2 dup(?)
       biclrimp    dw   2 dup(?)
    BMPKBEZA   ends
    ColoresBmp   struc            ; This is how the bitmap stores its colours
     blue        db   ?
     green       db   ?
     red         db   ?
     fill        db   ?
    ColoresBmp   ends

params BMPKBEZA <> ; assigning the structures to these values
param  ColoresBmp <>
datos ENDS
include macep.mlm
codigo SEGMENT
ASSUME CS:codigo,ds:datos
inicio :
         IniciarSegDatos datos
         EncontrarNombre 
         CargarBMP 

fin:
         RetornaControl
codigo ENDS
END inicio