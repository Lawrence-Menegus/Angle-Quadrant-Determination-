;;; Assembly Course 
;;; Author: Lawrence Menegus
;;; File: angles.asm
;;; Date: 2/25/23
;;; Description: Determine Quadrant based on user Angle input

;; Variables
segment .data
prompt: db "Enter a angle number(0-360): ", 0
axis: db "Your angle falls on an axis.", 10, 0
input: db "%d", 0
quad1: db "The angle is in quadrant: I", 10, 0
quad2: db "The angle is in quadrant: II", 10, 0
quad3: db "The angle is in quadrant: III", 10, 0
quad4: db "The angle is in quadrant: IV", 10, 0
Much: db "The number must be between (0 - 360)", 10, 0

;; User input
segment .bss
angle: resd 1

segment .text
global asm_main
extern printf, scanf

asm_main:
    enter 0, 0

    ;; Prompt the user for input
    mov rdi, prompt
    call printf

    ;; Take user input and save in angle
    mov rdi, input
    mov rsi, angle
    call scanf

    ;; Store input in rax
    mov rax, [angle]

    ;; Check if the value is on an axis
    cmp rax, 0
    je Axis
    cmp rax, 90
    je Axis
    cmp rax, 180
    je Axis
    cmp rax, 270
    je Axis
    cmp rax, 360
    je Axis

    ;; Check if below 0 or above 360
    cmp rax, 0
    jl range

    ;; Check if number is greater than 0
    cmp rax, 0
    jg Quad1

Axis:
    mov rdi, axis
    call printf
    jmp exit

Quad1:
    cmp rax, 90
    jg Quad2
    mov rdi, quad1
    call printf
    jmp exit

Quad2:
    cmp rax, 180
    jg Quad3
    mov rdi, quad2
    call printf
    jmp exit

Quad3:
    cmp rax, 270
    jg Quad4
    mov rdi, quad3
    call printf
    jmp exit

Quad4:
    cmp rax, 360
    jg range
    mov rdi, quad4
    call printf
    jmp exit

range:
    mov rdi, Much
    call printf

exit:
    mov rax, 0
    leave
    ret