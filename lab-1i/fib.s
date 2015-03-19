	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, lr}
	sub r0,r0,#2   @for loop execute n-2 times
	mov r4,#0      @r4 is for loop counter
	mov r1,#0
	mov r2,#1
	b .Loop
endfor:
	mov r0,r3
	pop {r3, r4, r5, pc}		@EPILOG

	@ END CODE MODIFICATION

.Loop:
	cmp r4,r0
	bgt endfor
	add r3,r1,r2
	mov r1,r2
	mov r2,r3
	add r4,r4,#1
	b .Loop
.L3:
	mov r0, #0			@ R0 = 0
	pop {r3, r4, r5, pc}		@ EPILOG

.L4:
	mov r0, #1			@ R0 = 1
	pop {r3, r4, r5, pc}		@ EPILOG

	.size fibonacci, .-fibonacci
	.end
