PILASG SEGMENT PARA STACK 'Pila'
DW 32 DUP(16) ;Datos repetidos
PILASG ENDS
DATOSG SEGMENT PARA PUBLIC 'Datos'
FLDA DW 250
FLDB DW 1FH
FLDC DW ?
FLD1DB DB ?
FLD2DB DB 32
FLD3DB DB 20H
FLD4DB DB 01011001B
FLD5DB DB 10 DUP(0)
FLD6DB DB 'SISTEMAS OPERATIVOS'
FLD7DB DB '32654'
FLD8DB DB 01, 'ENERO', 02, 'FEBRERO', 03, 'MARZO'
FLD1DW DW 0FFF0H
FLD2DW DW 01011001B
FLD3DW DW FLD7DB
FLD4DW DW 3, 4, 7, 8, 9
FLD5DW DW 5 DUP(0)
FLD1DD DD ?
FLD2DD DD 32574
FLD3DD DD 14, 49
FLD4DD DD FLD3DB - FLD2DB
FLD5DD DD 'PC'
FLD1DQ DQ ?
FLD2DQ DQ 04D47H
FLD3DQ DQ 32572
DATOSG ENDS
CODIGO SEGMENT PARA PUBLIC 'Codigo'
MAIN PROC FAR
ASSUME SS:PILASG, DS:DATOSG, CS:CODIGO
MOV AX, DATOSG
MOV DS, AX ;Se inicializa DS
MOV AX, FLDA
ADD AX, FLDB
MOV FLDC, AX
MOV AX, 4C00H
INT 21H
MAIN ENDP
CODIGO ENDS
END MAIN