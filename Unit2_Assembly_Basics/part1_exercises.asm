; 
; Base Author:  Megan Avery Spring 2024
; Exercise Author: [YOUR NAME HERE]
; 
; Purpose - to learn about the following:
; 	- comments
;	- dumping registers
;	- printing empty lines
;	- instructions: mov, add, sub, inc/dec

%include "asm_io.inc"

; initialized data
segment .data

; uninitialized data
segment .bss


segment .text
        global  asm_main
asm_main: 
        enter   0,0               ; setup routine
        pusha
        dump_regs 1
        call print_nl
        
        mov eax,0; making eax = 0
        mov ah,18; making ah = 18 (base 10)
        mov al,0BAH; AL = 0xBA(base 16)
        dump_regs 2

        mov eax,0BEEFCAFEH
        dump_regs 3

        mov eax,3; eax += ebx, eax = 7

        
        mov ebx,4 ; ebx = 4 


        add eax,ebx

        mov eax,10
        mov ebx,4

        sub eax,ebx ; changes the value to the new value
        inc ebx ;adds by inciment by 5

        mov eax,ebx
        inc ecx
        dump_regs 4
        call print_nl
        
        dump_regs 1

        mov eax,4
        add eax,eax
        add eax,eax
        add eax,eax

        dump_regs 5

        dump_regs 1; dump register
		; TODO: add code

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


