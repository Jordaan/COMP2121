.include "m2560def.inc"

.equ size = 5
.def counter = r17
.dseg
a1: .byte 5
.cseg
jmp prob2
jmp prob1

prob2:
ldi zl, low(a1<<1)
ldi zh, high(a1<<1)
clr counter
main:
ldi r20, 5
ldi r21, 1
add r20, r21
st z+, r20
ldi r20, 4
ldi r21, 2
add r20, r21
st z+, r20
ldi r20, 3
ldi r21, 3
add r20, r21
st z+, r20
ldi r20, 2
ldi r21, 4
add r20, r21
st z+, r20
ldi r20, 1
ldi r21, 5
add r20, r21
st z+, r20


jmp halt
jmp prob1

halt:
jmp halt



prob1:
ldi r17, high(640)
ldi r16, low(640)
ldi r19, high(511)
ldi r18, low(511)
add r18, r16
adc r19, r17

mov r21, r19 
mov r20, r18

jmp halt
