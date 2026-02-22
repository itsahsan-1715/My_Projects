; ==============================
; 8086 REGISTERS – TECHNICAL DEFINITIONS WITH EXAMPLES
; ==============================

; AX (Accumulator Register)
; AX is the primary register used in arithmetic, logic, and I/O operations.
MOV AX, 0005H
ADD AX, 0003H        ; AX = 0008H

; BX (Base Register)
; BX is used as a base register for memory addressing.
MOV BX, 1000H
MOV AX, [BX]         ; Load data from memory address DS:BX

; CX (Count Register)
; CX is used as a counter in loop, shift, and rotate instructions.
MOV CX, 5
LOOP_LABEL:
DEC AX
LOOP LOOP_LABEL      ; Loop executes 5 times

; DX (Data Register)
; DX is used in extended arithmetic operations and I/O port addressing.
MOV AX, 1234H
MOV DX, 0002H
MUL DX               ; Result stored in DX:AX

; CS (Code Segment Register)
; CS holds the base address of the code segment.
; (Used implicitly with IP to fetch instructions)
MOV AX, BX

; DS (Data Segment Register)
; DS holds the base address of the data segment.
MOV AX, DATA
MOV DS, AX
MOV AX, [1000H]

; ES (Extra Segment Register)
; ES is used as an additional data segment, mainly in string operations.
MOV AX, EXTRA
MOV ES, AX
MOV DI, 0000H

; SS (Stack Segment Register)
; SS holds the base address of the stack segment.
MOV AX, STACK
MOV SS, AX

; SI (Source Index Register)
; SI is used as a source pointer in string and memory operations.
MOV SI, 2000H
MOV AX, [SI]

; DI (Destination Index Register)
; DI is used as a destination pointer in string operations.
MOV DI, 3000H
MOV [DI], AX

; BP (Base Pointer Register)
; BP is used to access data from the stack segment.
MOV BP, SP
MOV AX, [BP+4]

; SP (Stack Pointer Register)
; SP holds the offset of the top of the stack.
PUSH AX
POP BX

; IP (Instruction Pointer Register)
; IP holds the offset address of the next instruction to be executed.
JMP NEXT
NEXT:
MOV AX, BX