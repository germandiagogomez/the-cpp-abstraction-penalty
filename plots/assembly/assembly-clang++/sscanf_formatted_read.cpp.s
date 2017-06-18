	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI0_0:
	.quad	4503599627370496        ## double 2.2250738585072014E-308
	.quad	9218868437227405311     ## double 1.7976931348623157E+308
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN10benchmarks4util16double_generatorEv
	.p2align	4, 0x90
__ZN10benchmarks4util16double_generatorEv: ## @_ZN10benchmarks4util16double_generatorEv
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## BB#0:
	pushq	%rbp
Ltmp6:
	.cfi_def_cfa_offset 16
Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp8:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$2504, %rsp             ## imm = 0x9C8
Ltmp9:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movb	__ZGVZN10benchmarks4util16double_generatorEvE2rd(%rip), %al
	testb	%al, %al
	jne	LBB0_5
## BB#1:
	leaq	__ZGVZN10benchmarks4util16double_generatorEvE2rd(%rip), %rdi
	callq	___cxa_guard_acquire
	testl	%eax, %eax
	je	LBB0_5
## BB#2:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -2512(%rbp)
	movq	$0, -2496(%rbp)
Ltmp0:
	leaq	L_.str(%rip), %rsi
	leaq	-2512(%rbp), %rdi
	movl	$12, %edx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
Ltmp1:
## BB#3:
Ltmp3:
	leaq	__ZZN10benchmarks4util16double_generatorEvE2rd(%rip), %rdi
	leaq	-2512(%rbp), %rsi
	callq	__ZNSt3__113random_deviceC1ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
Ltmp4:
## BB#4:
	leaq	-2512(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	__ZNSt3__113random_deviceD1Ev@GOTPCREL(%rip), %rdi
	leaq	__ZZN10benchmarks4util16double_generatorEvE2rd(%rip), %rsi
	movq	___dso_handle@GOTPCREL(%rip), %rdx
	callq	___cxa_atexit
	leaq	__ZGVZN10benchmarks4util16double_generatorEvE2rd(%rip), %rdi
	callq	___cxa_guard_release
LBB0_5:
	leaq	__ZZN10benchmarks4util16double_generatorEvE2rd(%rip), %rdi
	callq	__ZNSt3__113random_deviceclEv
                                        ## kill: %EAX<def> %EAX<kill> %RAX<def>
	movl	%eax, -2512(%rbp)
	movl	$1, %ecx
	xorl	%edx, %edx
	jmp	LBB0_6
	.p2align	4, 0x90
LBB0_11:                                ##   in Loop: Header=BB0_6 Depth=1
	leaq	3(%rcx), %rax
	movl	%esi, %edi
	shrl	$30, %edi
	xorl	%esi, %edi
	imull	$1812433253, %edi, %esi ## imm = 0x6C078965
	addl	%esi, %eax
	leal	4(%rdx,%rsi), %esi
	movl	%esi, -2496(%rbp,%rdx,4)
	addq	$4, %rcx
	addq	$4, %rdx
LBB0_6:                                 ## =>This Inner Loop Header: Depth=1
	movl	%eax, %esi
	shrl	$30, %esi
	xorl	%eax, %esi
	imull	$1812433253, %esi, %eax ## imm = 0x6C078965
	leal	1(%rdx,%rax), %eax
	movl	%eax, -2508(%rbp,%rdx,4)
	movl	%eax, %esi
	shrl	$30, %esi
	xorl	%eax, %esi
	imull	$1812433253, %esi, %eax ## imm = 0x6C078965
	leal	2(%rdx,%rax), %eax
	movl	%eax, -2504(%rbp,%rdx,4)
	movl	%eax, %esi
	shrl	$30, %esi
	xorl	%eax, %esi
	imull	$1812433253, %esi, %eax ## imm = 0x6C078965
	leaq	3(%rdx,%rax), %rsi
	movl	%esi, -2500(%rbp,%rdx,4)
	cmpq	$620, %rdx              ## imm = 0x26C
	jne	LBB0_11
## BB#7:
	movq	$0, -16(%rbp)
	leaq	-2512(%rbp), %rsi
	movl	$2504, %edx             ## imm = 0x9C8
	movq	%rbx, %rdi
	callq	_memcpy
	movaps	LCPI0_0(%rip), %xmm0    ## xmm0 = [2.225074e-308,1.797693e+308]
	movups	%xmm0, 2504(%rbx)
	movq	%rbx, %rax
	addq	$2504, %rsp             ## imm = 0x9C8
	popq	%rbx
	popq	%rbp
	retq
LBB0_9:
Ltmp5:
	movq	%rax, %rbx
	leaq	-2512(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	LBB0_10
LBB0_8:
Ltmp2:
	movq	%rax, %rbx
LBB0_10:
	leaq	__ZGVZN10benchmarks4util16double_generatorEvE2rd(%rip), %rdi
	callq	___cxa_guard_abort
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset0 = Ltmp0-Lfunc_begin0              ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp1-Ltmp0                     ##   Call between Ltmp0 and Ltmp1
	.long	Lset1
Lset2 = Ltmp2-Lfunc_begin0              ##     jumps to Ltmp2
	.long	Lset2
	.byte	0                       ##   On action: cleanup
Lset3 = Ltmp3-Lfunc_begin0              ## >> Call Site 2 <<
	.long	Lset3
Lset4 = Ltmp4-Ltmp3                     ##   Call between Ltmp3 and Ltmp4
	.long	Lset4
Lset5 = Ltmp5-Lfunc_begin0              ##     jumps to Ltmp5
	.long	Lset5
	.byte	0                       ##   On action: cleanup
Lset6 = Ltmp4-Lfunc_begin0              ## >> Call Site 3 <<
	.long	Lset6
Lset7 = Lfunc_end0-Ltmp4                ##   Call between Ltmp4 and Lfunc_end0
	.long	Lset7
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2

	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI1_0:
	.quad	4751297606875873280     ## double 4294967296
LCPI1_1:
	.quad	4318952042648305664     ## double 5.4210108624275222E-20
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN10benchmarks4util16generate_doublesEj
	.p2align	4, 0x90
__ZN10benchmarks4util16generate_doublesEj: ## @_ZN10benchmarks4util16generate_doublesEj
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## BB#0:
	pushq	%rbp
Ltmp13:
	.cfi_def_cfa_offset 16
Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp15:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$5048, %rsp             ## imm = 0x13B8
Ltmp16:
	.cfi_offset %rbx, -56
Ltmp17:
	.cfi_offset %r12, -48
Ltmp18:
	.cfi_offset %r13, -40
Ltmp19:
	.cfi_offset %r14, -32
Ltmp20:
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	movq	$0, 16(%r14)
	movq	$0, 8(%r14)
	movq	$0, (%r14)
	testl	%esi, %esi
	je	LBB1_1
## BB#2:
	movl	%esi, %r12d
	leaq	(,%r12,8), %r15
	movq	%r15, %rdi
	callq	__Znwm
	movq	%rax, %r13
	leaq	8(%r14), %rbx
	movq	%r13, (%r14)
	leaq	(%r13,%r12,8), %r12
	movq	%r12, 16(%r14)
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	___bzero
	movq	%r12, 8(%r14)
	jmp	LBB1_3
LBB1_1:
	leaq	8(%r14), %rbx
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
LBB1_3:
Ltmp10:
	leaq	-5080(%rbp), %rdi
	callq	__ZN10benchmarks4util16double_generatorEv
Ltmp11:
## BB#4:
	leaq	-2560(%rbp), %rdi
	leaq	-5080(%rbp), %rsi
	movl	$2520, %edx             ## imm = 0x9D8
	callq	_memcpy
	cmpq	%r12, %r13
	je	LBB1_7
## BB#5:
	movq	-64(%rbp), %r10
	movabsq	$945986875574848801, %r9 ## imm = 0xD20D20D20D20D21
	movl	$-2147483648, %r8d      ## imm = 0x80000000
	movsd	LCPI1_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	movsd	LCPI1_1(%rip), %xmm1    ## xmm1 = mem[0],zero
	.p2align	4, 0x90
LBB1_6:                                 ## =>This Inner Loop Header: Depth=1
	movsd	-56(%rbp), %xmm2        ## xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        ## xmm3 = mem[0],zero
	leaq	1(%r10), %r11
	movq	%r11, %rax
	shrq	$4, %rax
	subsd	%xmm2, %xmm3
	mulq	%r9
	shrq	%rdx
	imulq	$624, %rdx, %rax        ## imm = 0x270
	subq	%rax, %r11
	movl	-2560(%rbp,%r10,4), %ecx
	andl	%r8d, %ecx
	leaq	397(%r10), %rax
	movl	-2560(%rbp,%r11,4), %ebx
	movl	%ebx, %edi
	shrq	$4, %rax
	mulq	%r9
	shrq	%rdx
	andl	$2147483646, %edi       ## imm = 0x7FFFFFFE
	imulq	$624, %rdx, %rax        ## imm = 0x270
	negq	%rax
	leaq	397(%r10,%rax), %rax
	orl	%ecx, %edi
	shrl	%edi
	andl	$1, %ebx
	negl	%ebx
	andl	$-1727483681, %ebx      ## imm = 0x9908B0DF
	xorl	-2560(%rbp,%rax,4), %ebx
	xorl	%edi, %ebx
	movl	%ebx, -2560(%rbp,%r10,4)
	movq	-64(%rbp), %rax
	movl	-2560(%rbp,%rax,4), %ecx
	leaq	1(%r11), %rax
	shrq	$4, %rax
	movq	%r11, -64(%rbp)
	movl	%ecx, %edi
	mulq	%r9
	shrq	%rdx
	imulq	$624, %rdx, %rax        ## imm = 0x270
	shrl	$11, %edi
	negq	%rax
	leaq	1(%r11,%rax), %r10
	movl	-2560(%rbp,%r11,4), %eax
	xorl	%ecx, %edi
	movl	%edi, %ecx
	andl	%r8d, %eax
	movl	-2560(%rbp,%r10,4), %ebx
	movl	%ebx, %esi
	andl	$2147483646, %esi       ## imm = 0x7FFFFFFE
	shll	$7, %ecx
	orl	%eax, %esi
	leaq	397(%r11), %r15
	movq	%r15, %rax
	shrq	$4, %rax
	andl	$-1658038656, %ecx      ## imm = 0x9D2C5680
	mulq	%r9
	shrq	%rdx
	imulq	$624, %rdx, %rax        ## imm = 0x270
	xorl	%edi, %ecx
	subq	%rax, %r15
	movl	%ecx, %eax
	shll	$15, %eax
	andl	$-272236544, %eax       ## imm = 0xEFC60000
	xorl	%ecx, %eax
	movl	%eax, %ecx
	shrl	$18, %ecx
	shrl	%esi
	andl	$1, %ebx
	xorl	%eax, %ecx
	negl	%ebx
	andl	$-1727483681, %ebx      ## imm = 0x9908B0DF
	xorl	-2560(%rbp,%r15,4), %ebx
	cvtsi2sdq	%rcx, %xmm4
	xorl	%esi, %ebx
	movl	%ebx, -2560(%rbp,%r11,4)
	movq	-64(%rbp), %rax
	movl	-2560(%rbp,%rax,4), %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	xorl	%eax, %ecx
	movq	%r10, -64(%rbp)
	movl	%ecx, %eax
	shll	$7, %eax
	andl	$-1658038656, %eax      ## imm = 0x9D2C5680
	xorl	%ecx, %eax
	movl	%eax, %ecx
	shll	$15, %ecx
	andl	$-272236544, %ecx       ## imm = 0xEFC60000
	xorl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$18, %eax
	xorl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm4, %xmm5
	mulsd	%xmm1, %xmm5
	mulsd	%xmm3, %xmm5
	addsd	%xmm2, %xmm5
	movsd	%xmm5, (%r13)
	addq	$8, %r13
	cmpq	%r13, %r12
	jne	LBB1_6
LBB1_7:
	movq	%r14, %rax
	addq	$5048, %rsp             ## imm = 0x13B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB1_8:
Ltmp12:
	movq	%rax, %r14
	testq	%r13, %r13
	je	LBB1_12
## BB#9:
	cmpq	%r13, %r12
	je	LBB1_11
## BB#10:
	leaq	-8(%r12), %rax
	subq	%r13, %rax
	notq	%rax
	andq	$-8, %rax
	addq	%r12, %rax
	movq	%rax, (%rbx)
LBB1_11:
	movq	%r13, %rdi
	callq	__ZdlPv
LBB1_12:
	movq	%r14, %rdi
	callq	__Unwind_Resume
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset8 = Lfunc_begin1-Lfunc_begin1       ## >> Call Site 1 <<
	.long	Lset8
Lset9 = Ltmp10-Lfunc_begin1             ##   Call between Lfunc_begin1 and Ltmp10
	.long	Lset9
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset10 = Ltmp10-Lfunc_begin1            ## >> Call Site 2 <<
	.long	Lset10
Lset11 = Ltmp11-Ltmp10                  ##   Call between Ltmp10 and Ltmp11
	.long	Lset11
Lset12 = Ltmp12-Lfunc_begin1            ##     jumps to Ltmp12
	.long	Lset12
	.byte	0                       ##   On action: cleanup
Lset13 = Ltmp11-Lfunc_begin1            ## >> Call Site 3 <<
	.long	Lset13
Lset14 = Lfunc_end1-Ltmp11              ##   Call between Ltmp11 and Lfunc_end1
	.long	Lset14
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN10benchmarks4util13int_generatorEii
	.p2align	4, 0x90
__ZN10benchmarks4util13int_generatorEii: ## @_ZN10benchmarks4util13int_generatorEii
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
## BB#0:
	pushq	%rbp
Ltmp27:
	.cfi_def_cfa_offset 16
Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp29:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$2504, %rsp             ## imm = 0x9C8
Ltmp30:
	.cfi_offset %rbx, -40
Ltmp31:
	.cfi_offset %r14, -32
Ltmp32:
	.cfi_offset %r15, -24
	movl	%edx, %ebx
	movl	%esi, %r15d
	movq	%rdi, %r14
	movb	__ZGVZN10benchmarks4util13int_generatorEiiE2rd(%rip), %al
	testb	%al, %al
	jne	LBB2_5
## BB#1:
	leaq	__ZGVZN10benchmarks4util13int_generatorEiiE2rd(%rip), %rdi
	callq	___cxa_guard_acquire
	testl	%eax, %eax
	je	LBB2_5
## BB#2:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -2528(%rbp)
	movq	$0, -2512(%rbp)
Ltmp21:
	leaq	L_.str(%rip), %rsi
	leaq	-2528(%rbp), %rdi
	movl	$12, %edx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
Ltmp22:
## BB#3:
Ltmp24:
	leaq	__ZZN10benchmarks4util13int_generatorEiiE2rd(%rip), %rdi
	leaq	-2528(%rbp), %rsi
	callq	__ZNSt3__113random_deviceC1ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
Ltmp25:
## BB#4:
	leaq	-2528(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	__ZNSt3__113random_deviceD1Ev@GOTPCREL(%rip), %rdi
	leaq	__ZZN10benchmarks4util13int_generatorEiiE2rd(%rip), %rsi
	movq	___dso_handle@GOTPCREL(%rip), %rdx
	callq	___cxa_atexit
	leaq	__ZGVZN10benchmarks4util13int_generatorEiiE2rd(%rip), %rdi
	callq	___cxa_guard_release
LBB2_5:
	leaq	__ZZN10benchmarks4util13int_generatorEiiE2rd(%rip), %rdi
	callq	__ZNSt3__113random_deviceclEv
                                        ## kill: %EAX<def> %EAX<kill> %RAX<def>
	movl	%eax, -2528(%rbp)
	movl	$1, %ecx
	xorl	%edx, %edx
	jmp	LBB2_6
	.p2align	4, 0x90
LBB2_11:                                ##   in Loop: Header=BB2_6 Depth=1
	leaq	3(%rcx), %rax
	movl	%esi, %edi
	shrl	$30, %edi
	xorl	%esi, %edi
	imull	$1812433253, %edi, %esi ## imm = 0x6C078965
	addl	%esi, %eax
	leal	4(%rdx,%rsi), %esi
	movl	%esi, -2512(%rbp,%rdx,4)
	addq	$4, %rcx
	addq	$4, %rdx
LBB2_6:                                 ## =>This Inner Loop Header: Depth=1
	movl	%eax, %esi
	shrl	$30, %esi
	xorl	%eax, %esi
	imull	$1812433253, %esi, %eax ## imm = 0x6C078965
	leal	1(%rdx,%rax), %eax
	movl	%eax, -2524(%rbp,%rdx,4)
	movl	%eax, %esi
	shrl	$30, %esi
	xorl	%eax, %esi
	imull	$1812433253, %esi, %eax ## imm = 0x6C078965
	leal	2(%rdx,%rax), %eax
	movl	%eax, -2520(%rbp,%rdx,4)
	movl	%eax, %esi
	shrl	$30, %esi
	xorl	%eax, %esi
	imull	$1812433253, %esi, %eax ## imm = 0x6C078965
	leaq	3(%rdx,%rax), %rsi
	movl	%esi, -2516(%rbp,%rdx,4)
	cmpq	$620, %rdx              ## imm = 0x26C
	jne	LBB2_11
## BB#7:
	movq	$0, -32(%rbp)
	shlq	$32, %rbx
	movl	%r15d, %eax
	orq	%rbx, %rax
	movq	%rax, (%r14)
	movq	%r14, %rdi
	addq	$8, %rdi
	leaq	-2528(%rbp), %rsi
	movl	$2504, %edx             ## imm = 0x9C8
	callq	_memcpy
	movq	%r14, %rax
	addq	$2504, %rsp             ## imm = 0x9C8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB2_9:
Ltmp26:
	movq	%rax, %rbx
	leaq	-2528(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	LBB2_10
LBB2_8:
Ltmp23:
	movq	%rax, %rbx
LBB2_10:
	leaq	__ZGVZN10benchmarks4util13int_generatorEiiE2rd(%rip), %rdi
	callq	___cxa_guard_abort
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
Lexception2:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset15 = Ltmp21-Lfunc_begin2            ## >> Call Site 1 <<
	.long	Lset15
Lset16 = Ltmp22-Ltmp21                  ##   Call between Ltmp21 and Ltmp22
	.long	Lset16
Lset17 = Ltmp23-Lfunc_begin2            ##     jumps to Ltmp23
	.long	Lset17
	.byte	0                       ##   On action: cleanup
Lset18 = Ltmp24-Lfunc_begin2            ## >> Call Site 2 <<
	.long	Lset18
Lset19 = Ltmp25-Ltmp24                  ##   Call between Ltmp24 and Ltmp25
	.long	Lset19
Lset20 = Ltmp26-Lfunc_begin2            ##     jumps to Ltmp26
	.long	Lset20
	.byte	0                       ##   On action: cleanup
Lset21 = Ltmp25-Lfunc_begin2            ## >> Call Site 3 <<
	.long	Lset21
Lset22 = Lfunc_end2-Ltmp25              ##   Call between Ltmp25 and Lfunc_end2
	.long	Lset22
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN10benchmarks4util13generate_intsEj
	.p2align	4, 0x90
__ZN10benchmarks4util13generate_intsEj: ## @_ZN10benchmarks4util13generate_intsEj
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
## BB#0:
	pushq	%rbp
Ltmp36:
	.cfi_def_cfa_offset 16
Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp38:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$5032, %rsp             ## imm = 0x13A8
Ltmp39:
	.cfi_offset %rbx, -56
Ltmp40:
	.cfi_offset %r12, -48
Ltmp41:
	.cfi_offset %r13, -40
Ltmp42:
	.cfi_offset %r14, -32
Ltmp43:
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	movq	$0, 16(%r14)
	movq	$0, 8(%r14)
	movq	$0, (%r14)
	testl	%esi, %esi
	je	LBB3_1
## BB#2:
	movl	%esi, %r13d
	leaq	(,%r13,4), %r15
	movq	%r15, %rdi
	callq	__Znwm
	movq	%rax, %rbx
	leaq	8(%r14), %r12
	movq	%rbx, (%r14)
	leaq	(%rbx,%r13,4), %r13
	movq	%r13, 16(%r14)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	___bzero
	movq	%r13, 8(%r14)
	jmp	LBB3_3
LBB3_1:
	leaq	8(%r14), %r12
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
LBB3_3:
Ltmp33:
	leaq	-5064(%rbp), %rdi
	movl	$-2147483648, %esi      ## imm = 0x80000000
	movl	$2147483647, %edx       ## imm = 0x7FFFFFFF
	callq	__ZN10benchmarks4util13int_generatorEii
Ltmp34:
## BB#4:
	leaq	-2552(%rbp), %rdi
	leaq	-5064(%rbp), %rsi
	movl	$2512, %edx             ## imm = 0x9D0
	callq	_memcpy
	cmpq	%r13, %rbx
	je	LBB3_7
## BB#5:
	leaq	-2544(%rbp), %r15
	leaq	-2552(%rbp), %r12
	.p2align	4, 0x90
LBB3_6:                                 ## =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	movl	%eax, (%rbx)
	addq	$4, %rbx
	cmpq	%rbx, %r13
	jne	LBB3_6
LBB3_7:
	movq	%r14, %rax
	addq	$5032, %rsp             ## imm = 0x13A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB3_8:
Ltmp35:
	movq	%rax, %r14
	testq	%rbx, %rbx
	je	LBB3_12
## BB#9:
	cmpq	%rbx, %r13
	je	LBB3_11
## BB#10:
	leaq	-4(%r13), %rax
	subq	%rbx, %rax
	notq	%rax
	andq	$-4, %rax
	addq	%r13, %rax
	movq	%rax, (%r12)
LBB3_11:
	movq	%rbx, %rdi
	callq	__ZdlPv
LBB3_12:
	movq	%r14, %rdi
	callq	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table3:
Lexception3:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset23 = Lfunc_begin3-Lfunc_begin3      ## >> Call Site 1 <<
	.long	Lset23
Lset24 = Ltmp33-Lfunc_begin3            ##   Call between Lfunc_begin3 and Ltmp33
	.long	Lset24
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset25 = Ltmp33-Lfunc_begin3            ## >> Call Site 2 <<
	.long	Lset25
Lset26 = Ltmp34-Ltmp33                  ##   Call between Ltmp33 and Ltmp34
	.long	Lset26
Lset27 = Ltmp35-Lfunc_begin3            ##     jumps to Ltmp35
	.long	Lset27
	.byte	0                       ##   On action: cleanup
Lset28 = Ltmp34-Lfunc_begin3            ## >> Call Site 3 <<
	.long	Lset28
Lset29 = Lfunc_end3-Ltmp34              ##   Call between Ltmp34 and Lfunc_end3
	.long	Lset29
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN10benchmarks4util20generate_ints_stringEi
	.p2align	4, 0x90
__ZN10benchmarks4util20generate_ints_stringEi: ## @_ZN10benchmarks4util20generate_ints_stringEi
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
## BB#0:
	pushq	%rbp
Ltmp61:
	.cfi_def_cfa_offset 16
Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp63:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$5048, %rsp             ## imm = 0x13B8
Ltmp64:
	.cfi_offset %rbx, -56
Ltmp65:
	.cfi_offset %r12, -48
Ltmp66:
	.cfi_offset %r13, -40
Ltmp67:
	.cfi_offset %r14, -32
Ltmp68:
	.cfi_offset %r15, -24
	movl	%esi, %ebx
	movq	%rdi, %r14
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
	testl	%ebx, %ebx
	je	LBB4_1
## BB#2:
	jns	LBB4_4
## BB#3:
Ltmp44:
	leaq	-64(%rbp), %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp45:
LBB4_4:
	movslq	%ebx, %r12
	leaq	(,%r12,4), %r15
Ltmp46:
	movq	%r15, %rdi
	callq	__Znwm
	movq	%rax, %rbx
Ltmp47:
## BB#5:
	movq	%rbx, -64(%rbp)
	leaq	(%rbx,%r12,4), %r13
	movq	%r13, -48(%rbp)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	___bzero
	movq	%r13, -56(%rbp)
	jmp	LBB4_6
LBB4_1:
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
LBB4_6:
Ltmp49:
	leaq	-5088(%rbp), %rdi
	movl	$-2147483648, %esi      ## imm = 0x80000000
	movl	$2147483647, %edx       ## imm = 0x7FFFFFFF
	callq	__ZN10benchmarks4util13int_generatorEii
Ltmp50:
## BB#7:
	leaq	-2576(%rbp), %rdi
	leaq	-5088(%rbp), %rsi
	movl	$2512, %edx             ## imm = 0x9D0
	callq	_memcpy
	cmpq	%r13, %rbx
	je	LBB4_10
## BB#8:
	leaq	-2568(%rbp), %r15
	leaq	-2576(%rbp), %r12
	.p2align	4, 0x90
LBB4_9:                                 ## =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	movl	%eax, (%rbx)
	addq	$4, %rbx
	cmpq	%rbx, %r13
	jne	LBB4_9
LBB4_10:
	movq	$0, 16(%r14)
	movq	$0, 8(%r14)
	movq	$0, (%r14)
	movq	-64(%rbp), %rbx
	movq	-56(%rbp), %r12
	cmpq	%r12, %rbx
	je	LBB4_17
## BB#11:
	leaq	-2575(%rbp), %r13
	leaq	-2576(%rbp), %r15
	.p2align	4, 0x90
LBB4_12:                                ## =>This Inner Loop Header: Depth=1
	movl	(%rbx), %esi
Ltmp52:
	movq	%r15, %rdi
	callq	__ZNSt3__19to_stringEi
Ltmp53:
## BB#13:                               ##   in Loop: Header=BB4_12 Depth=1
	movzbl	-2576(%rbp), %edx
	movl	%edx, %eax
	andb	$1, %al
	movq	-2560(%rbp), %rsi
	cmoveq	%r13, %rsi
	shrq	%rdx
	testb	%al, %al
	cmovneq	-2568(%rbp), %rdx
Ltmp55:
	movq	%r14, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm
Ltmp56:
## BB#14:                               ##   in Loop: Header=BB4_12 Depth=1
	movq	%r15, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp58:
	movl	$32, %esi
	movq	%r14, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp59:
## BB#15:                               ##   in Loop: Header=BB4_12 Depth=1
	addq	$4, %rbx
	cmpq	%rbx, %r12
	jne	LBB4_12
## BB#16:
	movq	-64(%rbp), %rbx
LBB4_17:
	testq	%rbx, %rbx
	je	LBB4_21
## BB#18:
	movq	-56(%rbp), %rax
	cmpq	%rbx, %rax
	je	LBB4_20
## BB#19:
	leaq	-4(%rax), %rcx
	subq	%rbx, %rcx
	notq	%rcx
	andq	$-4, %rcx
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
LBB4_20:
	movq	%rbx, %rdi
	callq	__ZdlPv
LBB4_21:
	movq	%r14, %rax
	addq	$5048, %rsp             ## imm = 0x13B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB4_22:
Ltmp48:
	movq	%rax, %rbx
	jmp	LBB4_29
LBB4_23:
Ltmp51:
	movq	%rax, %rbx
	jmp	LBB4_29
LBB4_26:
Ltmp60:
	jmp	LBB4_27
LBB4_25:
Ltmp57:
	movq	%rax, %rbx
	leaq	-2576(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	LBB4_28
LBB4_24:
Ltmp54:
LBB4_27:
	movq	%rax, %rbx
LBB4_28:
	movq	%r14, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
LBB4_29:
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB4_33
## BB#30:
	movq	-56(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB4_32
## BB#31:
	leaq	-4(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-4, %rcx
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
LBB4_32:
	callq	__ZdlPv
LBB4_33:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table4:
Lexception4:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\352\200\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	104                     ## Call site table length
Lset30 = Ltmp44-Lfunc_begin4            ## >> Call Site 1 <<
	.long	Lset30
Lset31 = Ltmp47-Ltmp44                  ##   Call between Ltmp44 and Ltmp47
	.long	Lset31
Lset32 = Ltmp48-Lfunc_begin4            ##     jumps to Ltmp48
	.long	Lset32
	.byte	0                       ##   On action: cleanup
Lset33 = Ltmp47-Lfunc_begin4            ## >> Call Site 2 <<
	.long	Lset33
Lset34 = Ltmp49-Ltmp47                  ##   Call between Ltmp47 and Ltmp49
	.long	Lset34
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset35 = Ltmp49-Lfunc_begin4            ## >> Call Site 3 <<
	.long	Lset35
Lset36 = Ltmp50-Ltmp49                  ##   Call between Ltmp49 and Ltmp50
	.long	Lset36
Lset37 = Ltmp51-Lfunc_begin4            ##     jumps to Ltmp51
	.long	Lset37
	.byte	0                       ##   On action: cleanup
Lset38 = Ltmp50-Lfunc_begin4            ## >> Call Site 4 <<
	.long	Lset38
Lset39 = Ltmp52-Ltmp50                  ##   Call between Ltmp50 and Ltmp52
	.long	Lset39
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset40 = Ltmp52-Lfunc_begin4            ## >> Call Site 5 <<
	.long	Lset40
Lset41 = Ltmp53-Ltmp52                  ##   Call between Ltmp52 and Ltmp53
	.long	Lset41
Lset42 = Ltmp54-Lfunc_begin4            ##     jumps to Ltmp54
	.long	Lset42
	.byte	0                       ##   On action: cleanup
Lset43 = Ltmp55-Lfunc_begin4            ## >> Call Site 6 <<
	.long	Lset43
Lset44 = Ltmp56-Ltmp55                  ##   Call between Ltmp55 and Ltmp56
	.long	Lset44
Lset45 = Ltmp57-Lfunc_begin4            ##     jumps to Ltmp57
	.long	Lset45
	.byte	0                       ##   On action: cleanup
Lset46 = Ltmp58-Lfunc_begin4            ## >> Call Site 7 <<
	.long	Lset46
Lset47 = Ltmp59-Ltmp58                  ##   Call between Ltmp58 and Ltmp59
	.long	Lset47
Lset48 = Ltmp60-Lfunc_begin4            ##     jumps to Ltmp60
	.long	Lset48
	.byte	0                       ##   On action: cleanup
Lset49 = Ltmp59-Lfunc_begin4            ## >> Call Site 8 <<
	.long	Lset49
Lset50 = Lfunc_end4-Ltmp59              ##   Call between Ltmp59 and Lfunc_end4
	.long	Lset50
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z12read_numbersRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	4, 0x90
__Z12read_numbersRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE: ## @_Z12read_numbersRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp69:
	.cfi_def_cfa_offset 16
Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp71:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp72:
	.cfi_offset %rbx, -56
Ltmp73:
	.cfi_offset %r12, -48
Ltmp74:
	.cfi_offset %r13, -40
Ltmp75:
	.cfi_offset %r14, -32
Ltmp76:
	.cfi_offset %r15, -24
	movl	$0, -48(%rbp)
	leaq	1(%rdi), %r14
	testb	$1, (%rdi)
	cmovneq	16(%rdi), %r14
	movl	$0, -44(%rbp)
	leaq	L_.str.1(%rip), %rsi
	xorl	%ebx, %ebx
	leaq	-48(%rbp), %rdx
	leaq	-44(%rbp), %rcx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_sscanf
	cmpl	$1, %eax
	jne	LBB5_3
## BB#1:
	leaq	-48(%rbp), %r12
	leaq	-44(%rbp), %r13
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB5_2:                                 ## =>This Inner Loop Header: Depth=1
	incl	%ebx
	movslq	-44(%rbp), %rax
	movslq	%r15d, %r15
	addq	%rax, %r15
	movq	%r15, %rdi
	addq	%r14, %rdi
	xorl	%eax, %eax
	leaq	L_.str.1(%rip), %rsi
	movq	%r12, %rdx
	movq	%r13, %rcx
	callq	_sscanf
	cmpl	$1, %eax
	je	LBB5_2
LBB5_3:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI6_0:
	.space	16
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
## BB#0:
	pushq	%rbp
Ltmp96:
	.cfi_def_cfa_offset 16
Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp98:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
Ltmp99:
	.cfi_offset %rbx, -56
Ltmp100:
	.cfi_offset %r12, -48
Ltmp101:
	.cfi_offset %r13, -40
Ltmp102:
	.cfi_offset %r14, -32
Ltmp103:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	8(%r14), %rbx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
	movq	%rbx, %rdi
	callq	_strlen
	leaq	-64(%rbp), %r15
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
Ltmp77:
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r15, %rdi
	callq	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	movl	%eax, %r15d
Ltmp78:
## BB#1:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	16(%r14), %rbx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
	movq	%rbx, %rdi
	callq	_strlen
	leaq	-64(%rbp), %r14
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
Ltmp80:
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r14, %rdi
	callq	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	movl	%eax, -84(%rbp)         ## 4-byte Spill
Ltmp81:
## BB#2:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
	testl	%r15d, %r15d
	je	LBB6_3
## BB#4:
	movslq	%r15d, %rbx
	leaq	(,%rbx,8), %rdi
Ltmp83:
	callq	__Znwm
	movq	%rax, %rsi
Ltmp84:
## BB#5:
	leaq	(%rsi,%rbx,8), %rax
	movq	%rsi, -64(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rax, -48(%rbp)
	testl	%r15d, %r15d
	jle	LBB6_6
## BB#10:
	leaq	-120(%rbp), %rbx
	leaq	-92(%rbp), %r13
	leaq	-72(%rbp), %r14
	xorl	%ecx, %ecx
	movl	%r15d, -68(%rbp)        ## 4-byte Spill
	.p2align	4, 0x90
LBB6_11:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_14 Depth 2
Ltmp85:
	movl	%ecx, -88(%rbp)         ## 4-byte Spill
	movq	%rbx, %rdi
	movl	-84(%rbp), %esi         ## 4-byte Reload
	callq	__ZN10benchmarks4util20generate_ints_stringEi
Ltmp86:
## BB#12:                               ##   in Loop: Header=BB6_11 Depth=1
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	testb	$1, -120(%rbp)
	movl	$0, -92(%rbp)
	movq	-104(%rbp), %r12
	leaq	-119(%rbp), %rax
	cmoveq	%rax, %r12
	movl	$0, -72(%rbp)
	xorl	%eax, %eax
	movq	%r12, %rdi
	leaq	L_.str.1(%rip), %rbx
	movq	%rbx, %rsi
	movq	%r13, %rdx
	movq	%r14, %rcx
	callq	_sscanf
	cmpl	$1, %eax
	jne	LBB6_15
## BB#13:                               ##   in Loop: Header=BB6_11 Depth=1
	xorl	%r15d, %r15d
	.p2align	4, 0x90
LBB6_14:                                ##   Parent Loop BB6_11 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movslq	-72(%rbp), %rax
	movslq	%r15d, %r15
	addq	%rax, %r15
	movq	%r15, %rdi
	addq	%r12, %rdi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	movq	%r13, %rdx
	movq	%r14, %rcx
	callq	_sscanf
	cmpl	$1, %eax
	je	LBB6_14
LBB6_15:                                ##   in Loop: Header=BB6_11 Depth=1
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	subq	-128(%rbp), %rax        ## 8-byte Folded Reload
	movabsq	$4835703278458516699, %rcx ## imm = 0x431BDE82D7B634DB
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$18, %rdx
	addq	%rax, %rdx
	movq	%rdx, -80(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	LBB6_17
## BB#16:                               ##   in Loop: Header=BB6_11 Depth=1
	movq	%rdx, (%rax)
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	movl	-68(%rbp), %r15d        ## 4-byte Reload
	leaq	-120(%rbp), %rbx
	jmp	LBB6_18
	.p2align	4, 0x90
LBB6_17:                                ##   in Loop: Header=BB6_11 Depth=1
Ltmp88:
	leaq	-64(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	callq	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE21__push_back_slow_pathIRKS5_EEvOT_
Ltmp89:
	movl	-68(%rbp), %r15d        ## 4-byte Reload
	leaq	-120(%rbp), %rbx
LBB6_18:                                ##   in Loop: Header=BB6_11 Depth=1
	movq	%rbx, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movl	-88(%rbp), %ecx         ## 4-byte Reload
	incl	%ecx
	cmpl	%r15d, %ecx
	jl	LBB6_11
## BB#19:
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	leaq	-56(%rbp), %rbx
	jmp	LBB6_20
LBB6_3:
	xorl	%esi, %esi
LBB6_6:
	leaq	-56(%rbp), %rbx
	movq	%rsi, %rdi
LBB6_20:
	leaq	-120(%rbp), %rdx
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	movq	(%rbx), %rax
	movq	-64(%rbp), %rcx
	subq	%rcx, %rax
	sarq	%rax
	andq	$-8, %rax
	movq	(%rcx,%rax), %rsi
Ltmp91:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp92:
## BB#21:
	movb	$32, -80(%rbp)
Ltmp93:
	leaq	-80(%rbp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp94:
## BB#22:
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB6_26
## BB#23:
	movq	-56(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB6_25
## BB#24:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
LBB6_25:
	callq	__ZdlPv
LBB6_26:
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB6_9:
Ltmp82:
	jmp	LBB6_8
LBB6_7:
Ltmp79:
LBB6_8:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB6_29:
Ltmp95:
	jmp	LBB6_30
LBB6_28:
Ltmp90:
	movq	%rax, %rbx
	leaq	-120(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	LBB6_31
LBB6_27:
Ltmp87:
LBB6_30:
	movq	%rax, %rbx
LBB6_31:
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB6_35
## BB#32:
	movq	-56(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB6_34
## BB#33:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
LBB6_34:
	callq	__ZdlPv
LBB6_35:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table6:
Lexception5:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\367\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	117                     ## Call site table length
Lset51 = Lfunc_begin5-Lfunc_begin5      ## >> Call Site 1 <<
	.long	Lset51
Lset52 = Ltmp77-Lfunc_begin5            ##   Call between Lfunc_begin5 and Ltmp77
	.long	Lset52
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset53 = Ltmp77-Lfunc_begin5            ## >> Call Site 2 <<
	.long	Lset53
Lset54 = Ltmp78-Ltmp77                  ##   Call between Ltmp77 and Ltmp78
	.long	Lset54
Lset55 = Ltmp79-Lfunc_begin5            ##     jumps to Ltmp79
	.long	Lset55
	.byte	0                       ##   On action: cleanup
Lset56 = Ltmp78-Lfunc_begin5            ## >> Call Site 3 <<
	.long	Lset56
Lset57 = Ltmp80-Ltmp78                  ##   Call between Ltmp78 and Ltmp80
	.long	Lset57
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset58 = Ltmp80-Lfunc_begin5            ## >> Call Site 4 <<
	.long	Lset58
Lset59 = Ltmp81-Ltmp80                  ##   Call between Ltmp80 and Ltmp81
	.long	Lset59
Lset60 = Ltmp82-Lfunc_begin5            ##     jumps to Ltmp82
	.long	Lset60
	.byte	0                       ##   On action: cleanup
Lset61 = Ltmp83-Lfunc_begin5            ## >> Call Site 5 <<
	.long	Lset61
Lset62 = Ltmp84-Ltmp83                  ##   Call between Ltmp83 and Ltmp84
	.long	Lset62
Lset63 = Ltmp95-Lfunc_begin5            ##     jumps to Ltmp95
	.long	Lset63
	.byte	0                       ##   On action: cleanup
Lset64 = Ltmp85-Lfunc_begin5            ## >> Call Site 6 <<
	.long	Lset64
Lset65 = Ltmp86-Ltmp85                  ##   Call between Ltmp85 and Ltmp86
	.long	Lset65
Lset66 = Ltmp87-Lfunc_begin5            ##     jumps to Ltmp87
	.long	Lset66
	.byte	0                       ##   On action: cleanup
Lset67 = Ltmp88-Lfunc_begin5            ## >> Call Site 7 <<
	.long	Lset67
Lset68 = Ltmp89-Ltmp88                  ##   Call between Ltmp88 and Ltmp89
	.long	Lset68
Lset69 = Ltmp90-Lfunc_begin5            ##     jumps to Ltmp90
	.long	Lset69
	.byte	0                       ##   On action: cleanup
Lset70 = Ltmp91-Lfunc_begin5            ## >> Call Site 8 <<
	.long	Lset70
Lset71 = Ltmp94-Ltmp91                  ##   Call between Ltmp91 and Ltmp94
	.long	Lset71
Lset72 = Ltmp95-Lfunc_begin5            ##     jumps to Ltmp95
	.long	Lset72
	.byte	0                       ##   On action: cleanup
Lset73 = Ltmp94-Lfunc_begin5            ## >> Call Site 9 <<
	.long	Lset73
Lset74 = Lfunc_end5-Ltmp94              ##   Call between Ltmp94 and Lfunc_end5
	.long	Lset74
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	___clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## BB#0:
	pushq	%rax
	callq	___cxa_begin_catch
	callq	__ZSt9terminatev

	.globl	__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	.weak_def_can_be_hidden	__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	.p2align	4, 0x90
__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE: ## @_ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp104:
	.cfi_def_cfa_offset 16
Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp106:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
Ltmp107:
	.cfi_offset %rbx, -40
Ltmp108:
	.cfi_offset %r14, -32
Ltmp109:
	.cfi_offset %r15, -24
	movq	%rdx, %r8
	movl	(%r8), %eax
	movl	4(%r8), %r11d
	subl	%eax, %r11d
	je	LBB8_6
## BB#1:
	incl	%r11d
	je	LBB8_2
## BB#3:
	bsrl	%r11d, %eax
	xorl	$31, %eax
	movl	$32, %r9d
	subq	%rax, %r9
	movl	$33, %ecx
	subl	%r9d, %ecx
	movl	$-1, %r10d
	movl	$-1, %eax
                                        ## kill: %CL<def> %CL<kill> %ECX<kill>
	shrl	%cl, %eax
	andl	%r11d, %eax
	cmpl	$1, %eax
	sbbq	$0, %r9
	movq	%r9, %rdi
	shrq	$5, %rdi
	movl	%r9d, %eax
	andl	$31, %eax
	cmpq	$1, %rax
	sbbq	$-1, %rdi
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	movq	%r9, %rax
	divq	%rdi
	movl	$32, %ecx
	subl	%eax, %ecx
                                        ## kill: %CL<def> %CL<kill> %ECX<kill>
	shrl	%cl, %r10d
	cmpq	%r9, %rdi
	cmoval	%ebx, %r10d
	movq	2496(%rsi), %rbx
	movabsq	$945986875574848801, %r14 ## imm = 0xD20D20D20D20D21
	movl	$-2147483648, %r9d      ## imm = 0x80000000
	.p2align	4, 0x90
LBB8_4:                                 ## =>This Inner Loop Header: Depth=1
	leaq	1(%rbx), %rax
	shrq	$4, %rax
	mulq	%r14
	shrq	%rdx
	imulq	$624, %rdx, %rax        ## imm = 0x270
	negq	%rax
	leaq	1(%rbx,%rax), %r15
	movl	(%rsi,%rbx,4), %eax
	andl	%r9d, %eax
	movl	(%rsi,%r15,4), %ecx
	movl	%ecx, %edi
	andl	$2147483646, %edi       ## imm = 0x7FFFFFFE
	orl	%eax, %edi
	leaq	397(%rbx), %rax
	shrq	$4, %rax
	mulq	%r14
	shrq	%rdx
	imulq	$624, %rdx, %rax        ## imm = 0x270
	negq	%rax
	leaq	397(%rbx,%rax), %rax
	shrl	%edi
	andl	$1, %ecx
	negl	%ecx
	andl	$-1727483681, %ecx      ## imm = 0x9908B0DF
	xorl	(%rsi,%rax,4), %ecx
	xorl	%edi, %ecx
	movl	%ecx, (%rsi,%rbx,4)
	movq	2496(%rsi), %rax
	movl	(%rsi,%rax,4), %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	xorl	%eax, %ecx
	movq	%r15, 2496(%rsi)
	movl	%ecx, %eax
	shll	$7, %eax
	andl	$-1658038656, %eax      ## imm = 0x9D2C5680
	xorl	%ecx, %eax
	movl	%eax, %ecx
	shll	$15, %ecx
	andl	$-272236544, %ecx       ## imm = 0xEFC60000
	xorl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$18, %eax
	xorl	%ecx, %eax
	andl	%r10d, %eax
	cmpl	%r11d, %eax
	movq	%r15, %rbx
	jae	LBB8_4
## BB#5:
	addl	(%r8), %eax
	jmp	LBB8_6
LBB8_2:
	movq	2496(%rsi), %rcx
	leaq	1(%rcx), %rax
	shrq	$4, %rax
	movabsq	$945986875574848801, %r8 ## imm = 0xD20D20D20D20D21
	mulq	%r8
	shrq	%rdx
	imulq	$624, %rdx, %rax        ## imm = 0x270
	negq	%rax
	leaq	1(%rcx,%rax), %r9
	movl	$-2147483648, %eax      ## imm = 0x80000000
	andl	(%rsi,%rcx,4), %eax
	movl	(%rsi,%r9,4), %ebx
	movl	%ebx, %edi
	andl	$2147483646, %edi       ## imm = 0x7FFFFFFE
	orl	%eax, %edi
	leaq	397(%rcx), %rax
	shrq	$4, %rax
	mulq	%r8
	shrq	%rdx
	imulq	$624, %rdx, %rax        ## imm = 0x270
	negq	%rax
	leaq	397(%rcx,%rax), %rax
	shrl	%edi
	andl	$1, %ebx
	negl	%ebx
	andl	$-1727483681, %ebx      ## imm = 0x9908B0DF
	xorl	(%rsi,%rax,4), %ebx
	xorl	%edi, %ebx
	movl	%ebx, (%rsi,%rcx,4)
	movq	2496(%rsi), %rax
	movl	(%rsi,%rax,4), %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	xorl	%eax, %ecx
	movq	%r9, 2496(%rsi)
	movl	%ecx, %eax
	shll	$7, %eax
	andl	$-1658038656, %eax      ## imm = 0x9D2C5680
	xorl	%ecx, %eax
	movl	%eax, %ecx
	shll	$15, %ecx
	andl	$-272236544, %ecx       ## imm = 0xEFC60000
	xorl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$18, %eax
	xorl	%ecx, %eax
LBB8_6:
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE21__push_back_slow_pathIRKS5_EEvOT_
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE21__push_back_slow_pathIRKS5_EEvOT_
	.p2align	4, 0x90
__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE21__push_back_slow_pathIRKS5_EEvOT_: ## @_ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE21__push_back_slow_pathIRKS5_EEvOT_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp110:
	.cfi_def_cfa_offset 16
Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp112:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp113:
	.cfi_offset %rbx, -56
Ltmp114:
	.cfi_offset %r12, -48
Ltmp115:
	.cfi_offset %r13, -40
Ltmp116:
	.cfi_offset %r14, -32
Ltmp117:
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	(%r12), %rdx
	movq	8(%r12), %rbx
	subq	%rdx, %rbx
	sarq	$3, %rbx
	incq	%rbx
	movq	%rbx, %rax
	shrq	$61, %rax
	je	LBB9_2
## BB#1:
	movq	%r12, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	movq	(%r12), %rdx
LBB9_2:
	movq	16(%r12), %r14
	subq	%rdx, %r14
	movq	%r14, %rax
	sarq	$3, %rax
	movabsq	$1152921504606846975, %rcx ## imm = 0xFFFFFFFFFFFFFFF
	cmpq	%rcx, %rax
	movq	%r15, -48(%rbp)         ## 8-byte Spill
	jae	LBB9_3
## BB#4:
	sarq	$2, %r14
	cmpq	%rbx, %r14
	cmovbq	%rbx, %r14
	movq	8(%r12), %r15
	movq	%r15, %r13
	subq	%rdx, %r13
	sarq	$3, %r13
	xorl	%ecx, %ecx
	testq	%r14, %r14
	movl	$0, %eax
	jne	LBB9_5
	jmp	LBB9_6
LBB9_3:
	movabsq	$2305843009213693951, %r14 ## imm = 0x1FFFFFFFFFFFFFFF
	movq	8(%r12), %r15
	movq	%r15, %r13
	subq	%rdx, %r13
	sarq	$3, %r13
LBB9_5:
	leaq	(,%r14,8), %rdi
	movq	%rdx, %rbx
	callq	__Znwm
	movq	%rbx, %rdx
	movq	%r14, %rcx
LBB9_6:
	leaq	(%rax,%r13,8), %rbx
	leaq	(%rax,%rcx,8), %rsi
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rcx, (%rax,%r13,8)
	leaq	8(%rax,%r13,8), %r13
	subq	%rdx, %r15
	subq	%r15, %rbx
	testq	%r15, %r15
	jle	LBB9_8
## BB#7:
	movq	%rbx, %rdi
	movq	%rdx, %r14
	movq	%rsi, -48(%rbp)         ## 8-byte Spill
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	_memcpy
	movq	-48(%rbp), %rsi         ## 8-byte Reload
	movq	%r14, %rdx
LBB9_8:
	movq	%rbx, (%r12)
	movq	%r13, 8(%r12)
	movq	%rsi, 16(%r12)
	testq	%rdx, %rdx
	je	LBB9_9
## BB#10:
	movq	%rdx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
LBB9_9:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	.weak_def_can_be_hidden	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	.p2align	4, 0x90
__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_: ## @_ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp118:
	.cfi_def_cfa_offset 16
Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp120:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp121:
	.cfi_offset %rbx, -56
Ltmp122:
	.cfi_offset %r12, -48
Ltmp123:
	.cfi_offset %r13, -40
Ltmp124:
	.cfi_offset %r14, -32
Ltmp125:
	.cfi_offset %r15, -24
	movq	%rdx, -48(%rbp)         ## 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %r13
	jmp	LBB10_2
LBB10_1:                                ##   in Loop: Header=BB10_2 Depth=1
	leaq	8(%r15), %rdi
	movq	%r14, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	movq	%r15, %r14
	.p2align	4, 0x90
LBB10_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB10_4 Depth 2
                                        ##       Child Loop BB10_32 Depth 3
                                        ##         Child Loop BB10_6 Depth 4
                                        ##         Child Loop BB10_14 Depth 4
                                        ##         Child Loop BB10_27 Depth 4
                                        ##           Child Loop BB10_28 Depth 5
                                        ##           Child Loop BB10_30 Depth 5
                                        ##       Child Loop BB10_41 Depth 3
                                        ##         Child Loop BB10_42 Depth 4
                                        ##         Child Loop BB10_44 Depth 4
	leaq	-8(%r14), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	leaq	-16(%r14), %rax
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	movq	%r13, %rbx
	jmp	LBB10_4
	.p2align	4, 0x90
LBB10_3:                                ##   in Loop: Header=BB10_4 Depth=2
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	addq	$8, %r15
	movq	%r15, %rbx
LBB10_4:                                ##   Parent Loop BB10_2 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB10_32 Depth 3
                                        ##         Child Loop BB10_6 Depth 4
                                        ##         Child Loop BB10_14 Depth 4
                                        ##         Child Loop BB10_27 Depth 4
                                        ##           Child Loop BB10_28 Depth 5
                                        ##           Child Loop BB10_30 Depth 5
                                        ##       Child Loop BB10_41 Depth 3
                                        ##         Child Loop BB10_42 Depth 4
                                        ##         Child Loop BB10_44 Depth 4
	movq	%rbx, %r13
	jmp	LBB10_32
	.p2align	4, 0x90
LBB10_5:                                ##   in Loop: Header=BB10_32 Depth=3
	movq	-64(%rbp), %rdx         ## 8-byte Reload
	.p2align	4, 0x90
LBB10_6:                                ##   Parent Loop BB10_2 Depth=1
                                        ##     Parent Loop BB10_4 Depth=2
                                        ##       Parent Loop BB10_32 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	cmpq	%rdx, %r13
	je	LBB10_11
## BB#7:                                ##   in Loop: Header=BB10_6 Depth=4
	movq	(%rdx), %rbx
	addq	$-8, %rdx
	cmpq	%rdi, %rbx
	jge	LBB10_6
	jmp	LBB10_38
	.p2align	4, 0x90
LBB10_8:                                ##   in Loop: Header=BB10_32 Depth=3
	movq	(%r12), %rcx
	movq	(%r13), %rax
	cmpq	%rax, %rcx
	movq	(%r15), %rdx
	jge	LBB10_16
## BB#9:                                ##   in Loop: Header=BB10_32 Depth=3
	cmpq	%rcx, %rdx
	jge	LBB10_19
## BB#10:                               ##   in Loop: Header=BB10_32 Depth=3
	movq	%rdx, (%r13)
	movq	%rax, (%r15)
	movl	$1, %eax
	jmp	LBB10_36
	.p2align	4, 0x90
LBB10_11:                               ##   in Loop: Header=BB10_32 Depth=3
	leaq	8(%r13), %rax
	movq	(%r15), %rdx
	cmpq	%rdx, %rsi
	jl	LBB10_25
## BB#12:                               ##   in Loop: Header=BB10_32 Depth=3
	cmpq	%r15, %rax
	je	LBB10_87
## BB#13:                               ##   in Loop: Header=BB10_32 Depth=3
	addq	$16, %r13
	movq	%r13, %rax
	.p2align	4, 0x90
LBB10_14:                               ##   Parent Loop BB10_2 Depth=1
                                        ##     Parent Loop BB10_4 Depth=2
                                        ##       Parent Loop BB10_32 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	-8(%rax), %rdi
	cmpq	%rdi, %rsi
	jl	LBB10_24
## BB#15:                               ##   in Loop: Header=BB10_14 Depth=4
	addq	$8, %rax
	cmpq	%rax, %r14
	jne	LBB10_14
	jmp	LBB10_87
	.p2align	4, 0x90
LBB10_16:                               ##   in Loop: Header=BB10_32 Depth=3
	cmpq	%rcx, %rdx
	jge	LBB10_22
## BB#17:                               ##   in Loop: Header=BB10_32 Depth=3
	movq	%rdx, (%r12)
	movq	%rcx, (%r15)
	movq	(%r12), %rax
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB10_23
## BB#18:                               ##   in Loop: Header=BB10_32 Depth=3
	movq	%rax, (%r13)
	movq	%rcx, (%r12)
	jmp	LBB10_21
LBB10_19:                               ##   in Loop: Header=BB10_32 Depth=3
	movq	%rcx, (%r13)
	movq	%rax, (%r12)
	movq	(%r15), %rcx
	cmpq	%rax, %rcx
	jge	LBB10_23
## BB#20:                               ##   in Loop: Header=BB10_32 Depth=3
	movq	%rcx, (%r12)
	movq	%rax, (%r15)
LBB10_21:                               ##   in Loop: Header=BB10_32 Depth=3
	movl	$2, %eax
	jmp	LBB10_36
LBB10_22:                               ##   in Loop: Header=BB10_32 Depth=3
	xorl	%eax, %eax
	jmp	LBB10_36
LBB10_23:                               ##   in Loop: Header=BB10_32 Depth=3
	movl	$1, %eax
	jmp	LBB10_36
LBB10_24:                               ##   in Loop: Header=BB10_32 Depth=3
	movq	%rdx, -8(%rax)
	movq	%rdi, (%r15)
LBB10_25:                               ##   in Loop: Header=BB10_32 Depth=3
	cmpq	%r15, %rax
	jne	LBB10_27
	jmp	LBB10_87
	.p2align	4, 0x90
LBB10_26:                               ##   in Loop: Header=BB10_27 Depth=4
	movq	%rbx, -8(%rax)
	movq	%rsi, (%r15)
LBB10_27:                               ##   Parent Loop BB10_2 Depth=1
                                        ##     Parent Loop BB10_4 Depth=2
                                        ##       Parent Loop BB10_32 Depth=3
                                        ## =>      This Loop Header: Depth=4
                                        ##           Child Loop BB10_28 Depth 5
                                        ##           Child Loop BB10_30 Depth 5
	movq	(%rcx), %rdi
	.p2align	4, 0x90
LBB10_28:                               ##   Parent Loop BB10_2 Depth=1
                                        ##     Parent Loop BB10_4 Depth=2
                                        ##       Parent Loop BB10_32 Depth=3
                                        ##         Parent Loop BB10_27 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movq	(%rax), %rsi
	addq	$8, %rax
	cmpq	%rsi, %rdi
	jge	LBB10_28
## BB#29:                               ##   in Loop: Header=BB10_27 Depth=4
	leaq	-8(%rax), %r13
	.p2align	4, 0x90
LBB10_30:                               ##   Parent Loop BB10_2 Depth=1
                                        ##     Parent Loop BB10_4 Depth=2
                                        ##       Parent Loop BB10_32 Depth=3
                                        ##         Parent Loop BB10_27 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movq	-8(%r15), %rbx
	addq	$-8, %r15
	cmpq	%rbx, %rdi
	jl	LBB10_30
## BB#31:                               ##   in Loop: Header=BB10_27 Depth=4
	cmpq	%r15, %r13
	jb	LBB10_26
LBB10_32:                               ##   Parent Loop BB10_2 Depth=1
                                        ##     Parent Loop BB10_4 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB10_6 Depth 4
                                        ##         Child Loop BB10_14 Depth 4
                                        ##         Child Loop BB10_27 Depth 4
                                        ##           Child Loop BB10_28 Depth 5
                                        ##           Child Loop BB10_30 Depth 5
	movq	%r14, %rcx
	subq	%r13, %rcx
	movq	%rcx, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	jbe	LBB10_55
## BB#33:                               ##   in Loop: Header=BB10_32 Depth=3
	cmpq	$247, %rcx
	movq	-56(%rbp), %r15         ## 8-byte Reload
	jle	LBB10_58
## BB#34:                               ##   in Loop: Header=BB10_32 Depth=3
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rax, %rdx
	movabsq	$4611686018427387902, %rsi ## imm = 0x3FFFFFFFFFFFFFFE
	andq	%rsi, %rdx
	leaq	(%r13,%rdx,4), %r12
	cmpq	$7993, %rcx             ## imm = 0x1F39
	jl	LBB10_8
## BB#35:                               ##   in Loop: Header=BB10_32 Depth=3
	movq	%rax, %rcx
	sarq	$63, %rcx
	shrq	$62, %rcx
	addq	%rax, %rcx
	addq	%rcx, %rcx
	andq	$-8, %rcx
	leaq	(%r13,%rcx), %rsi
	addq	%r12, %rcx
	movq	%r13, %rdi
	movq	%r12, %rdx
	movq	%r15, %r8
	movq	-48(%rbp), %r9          ## 8-byte Reload
	callq	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
LBB10_36:                               ##   in Loop: Header=BB10_32 Depth=3
	movq	%r13, %rcx
	movq	(%rcx), %rsi
	movq	(%r12), %rdi
	cmpq	%rdi, %rsi
	jge	LBB10_5
## BB#37:                               ##   in Loop: Header=BB10_4 Depth=2
	movq	%r15, %rdx
	jmp	LBB10_39
	.p2align	4, 0x90
LBB10_38:                               ##   in Loop: Header=BB10_4 Depth=2
	movq	%rbx, (%rcx)
	movq	%rsi, 8(%rdx)
	addq	$8, %rdx
	incl	%eax
LBB10_39:                               ##   in Loop: Header=BB10_4 Depth=2
	leaq	8(%r13), %r15
	cmpq	%rdx, %r15
	jb	LBB10_41
	jmp	LBB10_47
	.p2align	4, 0x90
LBB10_40:                               ##   in Loop: Header=BB10_41 Depth=3
	movq	%rbx, (%rcx)
	movq	%rdi, (%rdx)
	incl	%eax
	cmpq	%rcx, %r12
	cmoveq	%rdx, %r12
LBB10_41:                               ##   Parent Loop BB10_2 Depth=1
                                        ##     Parent Loop BB10_4 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB10_42 Depth 4
                                        ##         Child Loop BB10_44 Depth 4
	movq	(%r12), %rsi
	addq	$-8, %r15
	movq	%r15, %rcx
	.p2align	4, 0x90
LBB10_42:                               ##   Parent Loop BB10_2 Depth=1
                                        ##     Parent Loop BB10_4 Depth=2
                                        ##       Parent Loop BB10_41 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	8(%rcx), %rdi
	addq	$8, %rcx
	cmpq	%rsi, %rdi
	jl	LBB10_42
## BB#43:                               ##   in Loop: Header=BB10_41 Depth=3
	leaq	8(%rcx), %r15
	.p2align	4, 0x90
LBB10_44:                               ##   Parent Loop BB10_2 Depth=1
                                        ##     Parent Loop BB10_4 Depth=2
                                        ##       Parent Loop BB10_41 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	-8(%rdx), %rbx
	addq	$-8, %rdx
	cmpq	%rsi, %rbx
	jge	LBB10_44
## BB#45:                               ##   in Loop: Header=BB10_41 Depth=3
	cmpq	%rdx, %rcx
	jbe	LBB10_40
## BB#46:                               ##   in Loop: Header=BB10_4 Depth=2
	movq	%rcx, %r15
LBB10_47:                               ##   in Loop: Header=BB10_4 Depth=2
	cmpq	%r12, %r15
	je	LBB10_50
## BB#48:                               ##   in Loop: Header=BB10_4 Depth=2
	movq	(%r12), %rcx
	movq	(%r15), %rdx
	cmpq	%rdx, %rcx
	jge	LBB10_50
## BB#49:                               ##   in Loop: Header=BB10_4 Depth=2
	movq	%rcx, (%r15)
	movq	%rdx, (%r12)
	incl	%eax
LBB10_50:                               ##   in Loop: Header=BB10_4 Depth=2
	testl	%eax, %eax
	jne	LBB10_53
## BB#51:                               ##   in Loop: Header=BB10_4 Depth=2
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__127__insertion_sort_incompleteIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEbT0_SA_T_
	movl	%eax, %r12d
	leaq	8(%r15), %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__127__insertion_sort_incompleteIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEbT0_SA_T_
	testb	%al, %al
	jne	LBB10_54
## BB#52:                               ##   in Loop: Header=BB10_4 Depth=2
	testb	%r12b, %r12b
	jne	LBB10_4
LBB10_53:                               ##   in Loop: Header=BB10_4 Depth=2
	movq	%r15, %rax
	subq	%r13, %rax
	movq	%r14, %rcx
	subq	%r15, %rcx
	cmpq	%rcx, %rax
	jl	LBB10_3
	jmp	LBB10_1
LBB10_54:                               ##   in Loop: Header=BB10_2 Depth=1
	testb	%r12b, %r12b
	movq	%r15, %r14
	je	LBB10_2
	jmp	LBB10_87
LBB10_55:
	leaq	LJTI10_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	movq	-56(%rbp), %r8          ## 8-byte Reload
	jmpq	*%rax
LBB10_56:
	movq	-8(%r14), %rax
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB10_87
## BB#57:
	movq	%rax, (%r13)
	movq	%rcx, -8(%r14)
	jmp	LBB10_87
LBB10_58:
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rcx, %rax
	movq	16(%r13), %rdx
	jge	LBB10_61
## BB#59:
	cmpq	%rax, %rdx
	jge	LBB10_64
## BB#60:
	movq	%rdx, (%r13)
	jmp	LBB10_66
LBB10_61:
	cmpq	%rax, %rdx
	jge	LBB10_75
## BB#62:
	movq	%rdx, 8(%r13)
	movq	%rax, 16(%r13)
	cmpq	%rcx, %rdx
	jge	LBB10_76
## BB#63:
	movq	%rdx, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB10_76
LBB10_64:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	cmpq	%rcx, %rdx
	jge	LBB10_75
## BB#65:
	movq	%rdx, 8(%r13)
LBB10_66:
	movq	%rcx, 16(%r13)
	movq	%rcx, %rax
	jmp	LBB10_76
LBB10_75:
	movq	%rdx, %rax
LBB10_76:
	leaq	24(%r13), %rdx
	cmpq	%r14, %rdx
	je	LBB10_87
## BB#77:
	movl	$24, %ecx
	jmp	LBB10_79
	.p2align	4, 0x90
LBB10_78:                               ##   in Loop: Header=BB10_79 Depth=1
	movq	(%rdx), %rax
	addq	$8, %rcx
	movq	%rsi, %rdx
LBB10_79:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB10_81 Depth 2
	movq	(%rdx), %rsi
	cmpq	%rax, %rsi
	jge	LBB10_86
## BB#80:                               ##   in Loop: Header=BB10_79 Depth=1
	movq	%rcx, %rdi
	.p2align	4, 0x90
LBB10_81:                               ##   Parent Loop BB10_79 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, (%r13,%rdi)
	cmpq	$8, %rdi
	je	LBB10_84
## BB#82:                               ##   in Loop: Header=BB10_81 Depth=2
	movq	-16(%r13,%rdi), %rax
	addq	$-8, %rdi
	cmpq	%rax, %rsi
	jl	LBB10_81
## BB#83:                               ##   in Loop: Header=BB10_79 Depth=1
	addq	%r13, %rdi
	jmp	LBB10_85
	.p2align	4, 0x90
LBB10_84:                               ##   in Loop: Header=BB10_79 Depth=1
	movq	%r13, %rdi
LBB10_85:                               ##   in Loop: Header=BB10_79 Depth=1
	movq	%rsi, (%rdi)
LBB10_86:                               ##   in Loop: Header=BB10_79 Depth=1
	leaq	8(%rdx), %rsi
	cmpq	%r14, %rsi
	jne	LBB10_78
LBB10_87:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB10_68:
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rax, %rcx
	movq	-8(%r14), %rdx
	jge	LBB10_88
## BB#69:
	cmpq	%rcx, %rdx
	jge	LBB10_94
## BB#70:
	movq	%rdx, (%r13)
	movq	%rax, -8(%r14)
	jmp	LBB10_87
LBB10_71:
	leaq	16(%r13), %rdx
	leaq	24(%r13), %rcx
	leaq	8(%r13), %rsi
	movq	%r13, %rdi
	movq	-48(%rbp), %r9          ## 8-byte Reload
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_ ## TAILCALL
LBB10_72:
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rcx, %rax
	movq	16(%r13), %rdx
	jge	LBB10_91
## BB#73:
	cmpq	%rax, %rdx
	jge	LBB10_96
## BB#74:
	movq	%rdx, (%r13)
	jmp	LBB10_98
LBB10_88:
	cmpq	%rcx, %rdx
	jge	LBB10_87
## BB#89:
	movq	%rdx, 8(%r13)
	movq	%rcx, -8(%r14)
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rax, %rcx
	jge	LBB10_87
## BB#90:
	movq	%rcx, (%r13)
	movq	%rax, 8(%r13)
	jmp	LBB10_87
LBB10_91:
	cmpq	%rax, %rdx
	jge	LBB10_100
## BB#92:
	movq	%rdx, 8(%r13)
	movq	%rax, 16(%r13)
	cmpq	%rcx, %rdx
	jge	LBB10_101
## BB#93:
	movq	%rdx, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB10_101
LBB10_94:
	movq	%rcx, (%r13)
	movq	%rax, 8(%r13)
	movq	-8(%r14), %rcx
	cmpq	%rax, %rcx
	jge	LBB10_87
## BB#95:
	movq	%rcx, 8(%r13)
	movq	%rax, -8(%r14)
	jmp	LBB10_87
LBB10_96:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	cmpq	%rcx, %rdx
	jge	LBB10_100
## BB#97:
	movq	%rdx, 8(%r13)
LBB10_98:
	movq	%rcx, 16(%r13)
	movq	%rcx, %rax
	jmp	LBB10_101
LBB10_100:
	movq	%rdx, %rax
LBB10_101:
	movq	-8(%r14), %rcx
	cmpq	%rax, %rcx
	jge	LBB10_87
## BB#102:
	movq	%rcx, 16(%r13)
	movq	%rax, -8(%r14)
	movq	8(%r13), %rcx
	movq	16(%r13), %rax
	cmpq	%rcx, %rax
	jge	LBB10_87
## BB#103:
	movq	%rax, 8(%r13)
	movq	%rcx, 16(%r13)
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB10_87
## BB#104:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB10_87
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L10_0_set_87 = LBB10_87-LJTI10_0
L10_0_set_56 = LBB10_56-LJTI10_0
L10_0_set_68 = LBB10_68-LJTI10_0
L10_0_set_72 = LBB10_72-LJTI10_0
L10_0_set_71 = LBB10_71-LJTI10_0
LJTI10_0:
	.long	L10_0_set_87
	.long	L10_0_set_87
	.long	L10_0_set_56
	.long	L10_0_set_68
	.long	L10_0_set_72
	.long	L10_0_set_71
	.end_data_region

	.globl	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.weak_def_can_be_hidden	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.p2align	4, 0x90
__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_: ## @_ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp126:
	.cfi_def_cfa_offset 16
Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp128:
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %r9
	movq	(%rdi), %r10
	cmpq	%r10, %r9
	movq	(%rdx), %r11
	jge	LBB11_1
## BB#5:
	cmpq	%r9, %r11
	jge	LBB11_7
## BB#6:
	movq	%r11, (%rdi)
	movq	%r10, (%rdx)
	movl	$1, %eax
	jmp	LBB11_9
LBB11_1:
	xorl	%eax, %eax
	cmpq	%r9, %r11
	jge	LBB11_2
## BB#3:
	movq	%r11, (%rsi)
	movq	%r9, (%rdx)
	movq	(%rsi), %r10
	movq	(%rdi), %r11
	movl	$1, %eax
	cmpq	%r11, %r10
	jge	LBB11_10
## BB#4:
	movq	%r10, (%rdi)
	movq	%r11, (%rsi)
	movq	(%rdx), %r9
	movl	$2, %eax
	jmp	LBB11_10
LBB11_7:
	movq	%r9, (%rdi)
	movq	%r10, (%rsi)
	movq	(%rdx), %r9
	movl	$1, %eax
	cmpq	%r10, %r9
	jge	LBB11_10
## BB#8:
	movq	%r9, (%rsi)
	movq	%r10, (%rdx)
	movl	$2, %eax
LBB11_9:
	movq	%r10, %r9
	jmp	LBB11_10
LBB11_2:
	movq	%r11, %r9
LBB11_10:
	movq	(%rcx), %r10
	cmpq	%r9, %r10
	jge	LBB11_16
## BB#11:
	movq	%r10, (%rdx)
	movq	%r9, (%rcx)
	movq	(%rdx), %r9
	movq	(%rsi), %r10
	cmpq	%r10, %r9
	jge	LBB11_12
## BB#13:
	movq	%r9, (%rsi)
	movq	%r10, (%rdx)
	movq	(%rsi), %r9
	movq	(%rdi), %r10
	cmpq	%r10, %r9
	jge	LBB11_14
## BB#15:
	movq	%r9, (%rdi)
	movq	%r10, (%rsi)
	addl	$3, %eax
	jmp	LBB11_16
LBB11_12:
	incl	%eax
	jmp	LBB11_16
LBB11_14:
	addl	$2, %eax
LBB11_16:
	movq	(%r8), %r9
	movq	(%rcx), %r10
	cmpq	%r10, %r9
	jge	LBB11_24
## BB#17:
	movq	%r9, (%rcx)
	movq	%r10, (%r8)
	movq	(%rcx), %r8
	movq	(%rdx), %r9
	cmpq	%r9, %r8
	jge	LBB11_18
## BB#19:
	movq	%r8, (%rdx)
	movq	%r9, (%rcx)
	movq	(%rdx), %rcx
	movq	(%rsi), %r8
	cmpq	%r8, %rcx
	jge	LBB11_20
## BB#21:
	movq	%rcx, (%rsi)
	movq	%r8, (%rdx)
	movq	(%rsi), %rcx
	movq	(%rdi), %rdx
	cmpq	%rdx, %rcx
	jge	LBB11_22
## BB#23:
	movq	%rcx, (%rdi)
	movq	%rdx, (%rsi)
	addl	$4, %eax
LBB11_24:
	popq	%rbp
	retq
LBB11_18:
	incl	%eax
	popq	%rbp
	retq
LBB11_20:
	addl	$2, %eax
	popq	%rbp
	retq
LBB11_22:
	addl	$3, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__127__insertion_sort_incompleteIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEbT0_SA_T_
	.weak_def_can_be_hidden	__ZNSt3__127__insertion_sort_incompleteIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEbT0_SA_T_
	.p2align	4, 0x90
__ZNSt3__127__insertion_sort_incompleteIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEbT0_SA_T_: ## @_ZNSt3__127__insertion_sort_incompleteIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEbT0_SA_T_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp129:
	.cfi_def_cfa_offset 16
Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp131:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Ltmp132:
	.cfi_offset %rbx, -24
	movq	%rdx, %r9
	movq	%rsi, %r10
	movq	%r10, %rax
	subq	%rdi, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	ja	LBB12_4
## BB#1:
	movb	$1, %bl
	leaq	LJTI12_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB12_2:
	movq	-8(%r10), %rax
	movq	(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	LBB12_50
## BB#3:
	movq	%rax, (%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB12_50
LBB12_4:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rdx
	cmpq	%rcx, %rdx
	movq	16(%rdi), %rsi
	jge	LBB12_14
## BB#5:
	cmpq	%rdx, %rsi
	jge	LBB12_23
## BB#6:
	movq	%rsi, (%rdi)
	jmp	LBB12_25
LBB12_7:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	cmpq	%rcx, %rax
	movq	-8(%r10), %rdx
	jge	LBB12_17
## BB#8:
	cmpq	%rax, %rdx
	jge	LBB12_26
## BB#9:
	movq	%rdx, (%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB12_50
LBB12_10:
	leaq	16(%rdi), %rdx
	leaq	24(%rdi), %rcx
	addq	$-8, %r10
	leaq	8(%rdi), %rsi
	movq	%r10, %r8
	callq	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	jmp	LBB12_50
LBB12_11:
	movq	(%rdi), %rdx
	movq	8(%rdi), %rcx
	cmpq	%rdx, %rcx
	movq	16(%rdi), %rsi
	jge	LBB12_20
## BB#12:
	cmpq	%rcx, %rsi
	jge	LBB12_28
## BB#13:
	movq	%rsi, (%rdi)
	jmp	LBB12_30
LBB12_14:
	cmpq	%rdx, %rsi
	jge	LBB12_33
## BB#15:
	movq	%rsi, 8(%rdi)
	movq	%rdx, 16(%rdi)
	cmpq	%rcx, %rsi
	jge	LBB12_34
## BB#16:
	movq	%rsi, (%rdi)
	movq	%rcx, 8(%rdi)
	jmp	LBB12_34
LBB12_17:
	cmpq	%rax, %rdx
	jge	LBB12_50
## BB#18:
	movq	%rdx, 8(%rdi)
	movq	%rax, -8(%r10)
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	cmpq	%rax, %rcx
	jge	LBB12_50
## BB#19:
	movq	%rcx, (%rdi)
	movq	%rax, 8(%rdi)
	jmp	LBB12_50
LBB12_20:
	cmpq	%rcx, %rsi
	jge	LBB12_45
## BB#21:
	movq	%rsi, 8(%rdi)
	movq	%rcx, 16(%rdi)
	cmpq	%rdx, %rsi
	jge	LBB12_46
## BB#22:
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	jmp	LBB12_46
LBB12_23:
	movq	%rdx, (%rdi)
	movq	%rcx, 8(%rdi)
	cmpq	%rcx, %rsi
	jge	LBB12_33
## BB#24:
	movq	%rsi, 8(%rdi)
LBB12_25:
	movq	%rcx, 16(%rdi)
	movq	%rcx, %rdx
	jmp	LBB12_34
LBB12_33:
	movq	%rsi, %rdx
LBB12_34:
	leaq	24(%rdi), %rsi
	movb	$1, %r8b
	cmpq	%r10, %rsi
	je	LBB12_44
## BB#35:
	xorl	%r9d, %r9d
	jmp	LBB12_37
	.p2align	4, 0x90
LBB12_36:                               ##   in Loop: Header=BB12_37 Depth=1
	movq	(%rsi), %rdx
	movq	%rax, %rsi
LBB12_37:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB12_39 Depth 2
	movq	(%rsi), %rbx
	cmpq	%rdx, %rbx
	jge	LBB12_42
## BB#38:                               ##   in Loop: Header=BB12_37 Depth=1
	movq	%rsi, %rax
	.p2align	4, 0x90
LBB12_39:                               ##   Parent Loop BB12_37 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, %rcx
	movq	%rdx, (%rcx)
	leaq	-8(%rcx), %rax
	cmpq	%rdi, %rax
	je	LBB12_41
## BB#40:                               ##   in Loop: Header=BB12_39 Depth=2
	movq	-8(%rax), %rdx
	cmpq	%rdx, %rbx
	jl	LBB12_39
LBB12_41:                               ##   in Loop: Header=BB12_37 Depth=1
	movq	%rbx, -8(%rcx)
	incl	%r9d
	leaq	8(%rsi), %rax
	cmpq	%r10, %rax
	sete	%bl
	cmpl	$8, %r9d
	je	LBB12_43
LBB12_42:                               ##   in Loop: Header=BB12_37 Depth=1
	leaq	8(%rsi), %rax
	cmpq	%r10, %rax
	jne	LBB12_36
	jmp	LBB12_44
LBB12_26:
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	movq	-8(%r10), %rax
	cmpq	%rcx, %rax
	jge	LBB12_50
## BB#27:
	movq	%rax, 8(%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB12_50
LBB12_28:
	movq	%rcx, (%rdi)
	movq	%rdx, 8(%rdi)
	cmpq	%rdx, %rsi
	jge	LBB12_45
## BB#29:
	movq	%rsi, 8(%rdi)
LBB12_30:
	movq	%rdx, 16(%rdi)
	movq	%rdx, %rcx
	jmp	LBB12_46
LBB12_45:
	movq	%rsi, %rcx
LBB12_46:
	movq	-8(%r10), %rax
	cmpq	%rcx, %rax
	jge	LBB12_50
## BB#47:
	movq	%rax, 16(%rdi)
	movq	%rcx, -8(%r10)
	movq	8(%rdi), %rcx
	movq	16(%rdi), %rax
	cmpq	%rcx, %rax
	jge	LBB12_50
## BB#48:
	movq	%rax, 8(%rdi)
	movq	%rcx, 16(%rdi)
	movq	(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	LBB12_50
## BB#49:
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	jmp	LBB12_50
LBB12_43:
	xorl	%r8d, %r8d
LBB12_44:
	orb	%r8b, %bl
LBB12_50:
	andb	$1, %bl
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L12_0_set_50 = LBB12_50-LJTI12_0
L12_0_set_2 = LBB12_2-LJTI12_0
L12_0_set_7 = LBB12_7-LJTI12_0
L12_0_set_11 = LBB12_11-LJTI12_0
L12_0_set_10 = LBB12_10-LJTI12_0
LJTI12_0:
	.long	L12_0_set_50
	.long	L12_0_set_50
	.long	L12_0_set_2
	.long	L12_0_set_7
	.long	L12_0_set_11
	.long	L12_0_set_10
	.end_data_region

	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	4, 0x90
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
## BB#0:
	pushq	%rbp
Ltmp154:
	.cfi_def_cfa_offset 16
Ltmp155:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp156:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp157:
	.cfi_offset %rbx, -56
Ltmp158:
	.cfi_offset %r12, -48
Ltmp159:
	.cfi_offset %r13, -40
Ltmp160:
	.cfi_offset %r14, -32
Ltmp161:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
Ltmp133:
	leaq	-80(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp134:
## BB#1:
	cmpb	$0, -80(%rbp)
	je	LBB13_10
## BB#2:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %r12
	movq	40(%rbx,%rax), %rdi
	movl	8(%rbx,%rax), %r13d
	movl	144(%rbx,%rax), %eax
	cmpl	$-1, %eax
	jne	LBB13_7
## BB#3:
Ltmp136:
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	leaq	-56(%rbp), %rdi
	movq	%r12, %rsi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp137:
## BB#4:
Ltmp138:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-56(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp139:
## BB#5:
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp140:
	movl	$32, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movb	%al, -41(%rbp)          ## 1-byte Spill
Ltmp141:
## BB#6:
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	-41(%rbp), %eax         ## 1-byte Folded Reload
	movl	%eax, 144(%r12)
	movq	-64(%rbp), %rdi         ## 8-byte Reload
LBB13_7:
	addq	%r15, %r14
	andl	$176, %r13d
	cmpl	$32, %r13d
	movq	%r15, %rdx
	cmoveq	%r14, %rdx
Ltmp143:
	movsbl	%al, %r9d
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r12, %r8
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp144:
## BB#8:
	testq	%rax, %rax
	jne	LBB13_10
## BB#9:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$5, %esi
Ltmp145:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp146:
LBB13_10:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB13_15:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB13_19:
Ltmp142:
	movq	%rax, %r14
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB13_12
LBB13_20:
Ltmp135:
	movq	%rax, %r14
	jmp	LBB13_13
LBB13_11:
Ltmp147:
	movq	%rax, %r14
LBB13_12:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB13_13:
	movq	%rbx, %r15
	movq	%r14, %rdi
	callq	___cxa_begin_catch
	movq	(%rbx), %rax
	addq	-24(%rax), %r15
Ltmp148:
	movq	%r15, %rdi
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp149:
## BB#14:
	callq	___cxa_end_catch
	jmp	LBB13_15
LBB13_16:
Ltmp150:
	movq	%rax, %rbx
Ltmp151:
	callq	___cxa_end_catch
Ltmp152:
## BB#17:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB13_18:
Ltmp153:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table13:
Lexception6:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	125                     ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	117                     ## Call site table length
Lset75 = Ltmp133-Lfunc_begin6           ## >> Call Site 1 <<
	.long	Lset75
Lset76 = Ltmp134-Ltmp133                ##   Call between Ltmp133 and Ltmp134
	.long	Lset76
Lset77 = Ltmp135-Lfunc_begin6           ##     jumps to Ltmp135
	.long	Lset77
	.byte	1                       ##   On action: 1
Lset78 = Ltmp136-Lfunc_begin6           ## >> Call Site 2 <<
	.long	Lset78
Lset79 = Ltmp137-Ltmp136                ##   Call between Ltmp136 and Ltmp137
	.long	Lset79
Lset80 = Ltmp147-Lfunc_begin6           ##     jumps to Ltmp147
	.long	Lset80
	.byte	1                       ##   On action: 1
Lset81 = Ltmp138-Lfunc_begin6           ## >> Call Site 3 <<
	.long	Lset81
Lset82 = Ltmp141-Ltmp138                ##   Call between Ltmp138 and Ltmp141
	.long	Lset82
Lset83 = Ltmp142-Lfunc_begin6           ##     jumps to Ltmp142
	.long	Lset83
	.byte	1                       ##   On action: 1
Lset84 = Ltmp143-Lfunc_begin6           ## >> Call Site 4 <<
	.long	Lset84
Lset85 = Ltmp146-Ltmp143                ##   Call between Ltmp143 and Ltmp146
	.long	Lset85
Lset86 = Ltmp147-Lfunc_begin6           ##     jumps to Ltmp147
	.long	Lset86
	.byte	1                       ##   On action: 1
Lset87 = Ltmp146-Lfunc_begin6           ## >> Call Site 5 <<
	.long	Lset87
Lset88 = Ltmp148-Ltmp146                ##   Call between Ltmp146 and Ltmp148
	.long	Lset88
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset89 = Ltmp148-Lfunc_begin6           ## >> Call Site 6 <<
	.long	Lset89
Lset90 = Ltmp149-Ltmp148                ##   Call between Ltmp148 and Ltmp149
	.long	Lset90
Lset91 = Ltmp150-Lfunc_begin6           ##     jumps to Ltmp150
	.long	Lset91
	.byte	0                       ##   On action: cleanup
Lset92 = Ltmp149-Lfunc_begin6           ## >> Call Site 7 <<
	.long	Lset92
Lset93 = Ltmp151-Ltmp149                ##   Call between Ltmp149 and Ltmp151
	.long	Lset93
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset94 = Ltmp151-Lfunc_begin6           ## >> Call Site 8 <<
	.long	Lset94
Lset95 = Ltmp152-Ltmp151                ##   Call between Ltmp151 and Ltmp152
	.long	Lset95
Lset96 = Ltmp153-Lfunc_begin6           ##     jumps to Ltmp153
	.long	Lset96
	.byte	1                       ##   On action: 1
Lset97 = Ltmp152-Lfunc_begin6           ## >> Call Site 9 <<
	.long	Lset97
Lset98 = Lfunc_end6-Ltmp152             ##   Call between Ltmp152 and Lfunc_end6
	.long	Lset98
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	4, 0x90
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ## @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
## BB#0:
	pushq	%rbp
Ltmp165:
	.cfi_def_cfa_offset 16
Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp167:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp168:
	.cfi_offset %rbx, -56
Ltmp169:
	.cfi_offset %r12, -48
Ltmp170:
	.cfi_offset %r13, -40
Ltmp171:
	.cfi_offset %r14, -32
Ltmp172:
	.cfi_offset %r15, -24
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	LBB14_12
## BB#1:
	movq	%r15, %rax
	subq	%rsi, %rax
	movq	%r8, -80(%rbp)          ## 8-byte Spill
	movq	24(%r8), %rcx
	xorl	%r13d, %r13d
	subq	%rax, %rcx
	cmovgq	%rcx, %r13
	movq	%r12, %r14
	subq	%rsi, %r14
	testq	%r14, %r14
	jle	LBB14_3
## BB#2:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%r15, -72(%rbp)         ## 8-byte Spill
	movq	%r12, %r15
	movl	%r9d, %r12d
	callq	*96(%rax)
	movl	%r12d, %r9d
	movq	%r15, %r12
	movq	-72(%rbp), %r15         ## 8-byte Reload
	cmpq	%r14, %rax
	jne	LBB14_12
LBB14_3:
	testq	%r13, %r13
	jle	LBB14_6
## BB#4:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
	movsbl	%r9b, %edx
	leaq	-64(%rbp), %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	testb	$1, -64(%rbp)
	leaq	-63(%rbp), %rsi
	cmovneq	-48(%rbp), %rsi
	movq	(%rbx), %rax
	movq	96(%rax), %rax
Ltmp162:
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	*%rax
	movq	%rax, %r14
Ltmp163:
## BB#5:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	cmpq	%r13, %r14
	jne	LBB14_12
LBB14_6:
	subq	%r12, %r15
	testq	%r15, %r15
	jle	LBB14_8
## BB#7:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	*96(%rax)
	cmpq	%r15, %rax
	jne	LBB14_12
LBB14_8:
	movq	-80(%rbp), %rax         ## 8-byte Reload
	movq	$0, 24(%rax)
	jmp	LBB14_13
LBB14_12:
	xorl	%ebx, %ebx
LBB14_13:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB14_14:
Ltmp164:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table14:
Lexception7:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset99 = Lfunc_begin7-Lfunc_begin7      ## >> Call Site 1 <<
	.long	Lset99
Lset100 = Ltmp162-Lfunc_begin7          ##   Call between Lfunc_begin7 and Ltmp162
	.long	Lset100
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset101 = Ltmp162-Lfunc_begin7          ## >> Call Site 2 <<
	.long	Lset101
Lset102 = Ltmp163-Ltmp162               ##   Call between Ltmp162 and Ltmp163
	.long	Lset102
Lset103 = Ltmp164-Lfunc_begin7          ##     jumps to Ltmp164
	.long	Lset103
	.byte	0                       ##   On action: cleanup
Lset104 = Ltmp163-Lfunc_begin7          ## >> Call Site 3 <<
	.long	Lset104
Lset105 = Lfunc_end7-Ltmp163            ##   Call between Ltmp163 and Lfunc_end7
	.long	Lset105
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2

.zerofill __DATA,__bss,__ZZN10benchmarks4util16double_generatorEvE2rd,4,2 ## @_ZZN10benchmarks4util16double_generatorEvE2rd
.zerofill __DATA,__bss,__ZGVZN10benchmarks4util16double_generatorEvE2rd,8,3 ## @_ZGVZN10benchmarks4util16double_generatorEvE2rd
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"/dev/urandom"

.zerofill __DATA,__bss,__ZZN10benchmarks4util13int_generatorEiiE2rd,4,2 ## @_ZZN10benchmarks4util13int_generatorEiiE2rd
.zerofill __DATA,__bss,__ZGVZN10benchmarks4util13int_generatorEiiE2rd,8,3 ## @_ZGVZN10benchmarks4util13int_generatorEiiE2rd
L_.str.1:                               ## @.str.1
	.asciz	"%d%n"


.subsections_via_symbols
