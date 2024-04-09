    global _main
    extern _printf

    section .data
    message: db 'Hello World', 0xA, 0
    
    section .text
_main:
        push    message
        call    _printf
        add     esp, 4
        ret 