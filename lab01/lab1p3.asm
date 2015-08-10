.include "m2560def.inc"
.def index = r16
.cseg
rjmp prob4
a1: .db 'a','b','D','1',',', 0
prob4:
ldi zl, low(a1)
ldi zh, high(a1) 
ldi r20, 'D'
clr index
main:
lpm r21, z+	
cp r20, r21
breq halt
cpi r20, 0
rjmp nf
inc index
rjmp main
halt:
jmp halt

nf:
ldi index, 0xff
jmp halt
