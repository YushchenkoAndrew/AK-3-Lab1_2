.global lab1
.syntax unified

#define A #3
#define B #4
#define C #5

lab1:
	push {lr}
	mov r0, A
	mov r1, B
	mov r2, C
	add r0, r1
	lsr r0, r0, #1
	bl fact
	add r0, r2
	pop {pc}

fact:
	push {r3, lr}
	mov r3, r2
fact_loop:
	sub r3, #1
	mul r2, r3	
	cmp r3, #1
	bne fact_loop
	pop {r3, pc}
