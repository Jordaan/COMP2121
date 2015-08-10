.include "m2560def.inc"
.equ size = 5
.def counter = r17
.dseg
cap_string: .byte 20
.cseg
rjmp prob3
a1: .db 'a','b','D','1',',', 0
prob3:
ldi zl, low(a1)
ldi zh, high(a1)
ldi yl, low(cap_string)
ldi yh, high(cap_string)
clr counter
ldi counter, size
main:
lpm r20, z+	
cpi r20, 0x61
brlt n_op
cpi r20, 0x7b
brge n_op
subi r20, 32
n_op:
st y+, r20
dec counter
cpi counter, 0
brge main

halt:
rjmp halt
