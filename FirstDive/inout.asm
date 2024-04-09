section .data
        prompt1 db "Enter the first integer: ", 0
        prompt2 db "Enter the second integer: ", 0
        format db "%d", 0
        result db "The sum is: %d", 0

    section .bss
        num1 resd 1
        num2 resd 1
        sum resd 1

    section .text
        extern  _printf, _scanf, _exit

    global _main

    _main:

        push prompt1
        call _printf
        add esp, 4

        lea eax, [num1]
        push eax
        push format
        call _scanf
        add esp, 8

        push prompt2
        call _printf
        add esp, 4

        lea eax, [num2]
        push eax
        push format
        call _scanf
        add esp, 8

        mov eax, [num1]
        add eax, [num2]
        mov [sum], eax

        push dword [sum]
        push result
        call _printf
        add esp, 8

        push 0
        call _exit