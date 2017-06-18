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

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI5_0:
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
Ltmp88:
	.cfi_def_cfa_offset 16
Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp90:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Ltmp91:
	.cfi_offset %rbx, -56
Ltmp92:
	.cfi_offset %r12, -48
Ltmp93:
	.cfi_offset %r13, -40
Ltmp94:
	.cfi_offset %r14, -32
Ltmp95:
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	8(%r15), %rbx
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
Ltmp69:
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r14, %rdi
	callq	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	movl	%eax, %ebx
Ltmp70:
## BB#1:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	16(%r15), %r14
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
	movq	%r14, %rdi
	callq	_strlen
	leaq	-64(%rbp), %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
Ltmp72:
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r15, %rdi
	callq	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	movl	%eax, -84(%rbp)         ## 4-byte Spill
Ltmp73:
## BB#2:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
	testl	%ebx, %ebx
	je	LBB5_3
## BB#4:
	movslq	%ebx, %r14
	leaq	(,%r14,8), %rdi
Ltmp75:
	callq	__Znwm
	movq	%rax, %rsi
Ltmp76:
## BB#5:
	leaq	(%rsi,%r14,8), %rax
	movq	%rsi, -64(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rax, -48(%rbp)
	testl	%ebx, %ebx
	jle	LBB5_6
## BB#10:
	xorl	%r14d, %r14d
	.p2align	4, 0x90
LBB5_11:                                ## =>This Inner Loop Header: Depth=1
Ltmp77:
	leaq	-112(%rbp), %rdi
	movl	-84(%rbp), %esi         ## 4-byte Reload
	callq	__ZN10benchmarks4util16generate_doublesEj
Ltmp78:
## BB#12:                               ##   in Loop: Header=BB5_11 Depth=1
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movq	%rax, %r12
	movq	-112(%rbp), %r13
	movq	-104(%rbp), %r15
	movq	%r13, %rdi
	movq	%r15, %rsi
	leaq	-72(%rbp), %rdx
	callq	__ZNSt3__16__sortIRNS_7greaterIdEEPdEEvT0_S5_T_
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	subq	%r12, %rax
	movabsq	$4835703278458516699, %rcx ## imm = 0x431BDE82D7B634DB
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$18, %rdx
	addq	%rax, %rdx
	movq	%rdx, -80(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	LBB5_14
## BB#13:                               ##   in Loop: Header=BB5_11 Depth=1
	movq	%rdx, (%rax)
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	jmp	LBB5_15
	.p2align	4, 0x90
LBB5_14:                                ##   in Loop: Header=BB5_11 Depth=1
Ltmp80:
	leaq	-64(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	callq	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE21__push_back_slow_pathIRKS5_EEvOT_
Ltmp81:
LBB5_15:                                ##   in Loop: Header=BB5_11 Depth=1
	testq	%r13, %r13
	je	LBB5_19
## BB#16:                               ##   in Loop: Header=BB5_11 Depth=1
	cmpq	%r13, %r15
	je	LBB5_18
## BB#17:                               ##   in Loop: Header=BB5_11 Depth=1
	leaq	-8(%r15), %rax
	subq	%r13, %rax
	notq	%rax
	andq	$-8, %rax
	addq	%r15, %rax
	movq	%rax, -104(%rbp)
LBB5_18:                                ##   in Loop: Header=BB5_11 Depth=1
	movq	%r13, %rdi
	callq	__ZdlPv
LBB5_19:                                ##   in Loop: Header=BB5_11 Depth=1
	incl	%r14d
	cmpl	%ebx, %r14d
	jl	LBB5_11
## BB#20:
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	leaq	-56(%rbp), %rbx
	jmp	LBB5_21
LBB5_3:
	xorl	%esi, %esi
LBB5_6:
	leaq	-56(%rbp), %rbx
	movq	%rsi, %rdi
LBB5_21:
	leaq	-112(%rbp), %rdx
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	movq	(%rbx), %rax
	movq	-64(%rbp), %rcx
	subq	%rcx, %rax
	sarq	%rax
	andq	$-8, %rax
	movq	(%rcx,%rax), %rsi
Ltmp83:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp84:
## BB#22:
	movb	$32, -80(%rbp)
Ltmp85:
	leaq	-80(%rbp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp86:
## BB#23:
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_27
## BB#24:
	movq	-56(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_26
## BB#25:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
LBB5_26:
	callq	__ZdlPv
LBB5_27:
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB5_9:
Ltmp74:
	jmp	LBB5_8
LBB5_7:
Ltmp71:
LBB5_8:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB5_33:
Ltmp87:
	jmp	LBB5_34
LBB5_29:
Ltmp82:
	movq	%rax, %rbx
	testq	%r13, %r13
	je	LBB5_35
## BB#30:
	cmpq	%r13, %r15
	je	LBB5_32
## BB#31:
	leaq	-8(%r15), %rax
	subq	%r13, %rax
	notq	%rax
	andq	$-8, %rax
	addq	%r15, %rax
	movq	%rax, -104(%rbp)
LBB5_32:
	movq	%r13, %rdi
	callq	__ZdlPv
	jmp	LBB5_35
LBB5_28:
Ltmp79:
LBB5_34:
	movq	%rax, %rbx
LBB5_35:
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_39
## BB#36:
	movq	-56(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_38
## BB#37:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
LBB5_38:
	callq	__ZdlPv
LBB5_39:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table5:
Lexception5:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\367\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	117                     ## Call site table length
Lset51 = Lfunc_begin5-Lfunc_begin5      ## >> Call Site 1 <<
	.long	Lset51
Lset52 = Ltmp69-Lfunc_begin5            ##   Call between Lfunc_begin5 and Ltmp69
	.long	Lset52
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset53 = Ltmp69-Lfunc_begin5            ## >> Call Site 2 <<
	.long	Lset53
Lset54 = Ltmp70-Ltmp69                  ##   Call between Ltmp69 and Ltmp70
	.long	Lset54
Lset55 = Ltmp71-Lfunc_begin5            ##     jumps to Ltmp71
	.long	Lset55
	.byte	0                       ##   On action: cleanup
Lset56 = Ltmp70-Lfunc_begin5            ## >> Call Site 3 <<
	.long	Lset56
Lset57 = Ltmp72-Ltmp70                  ##   Call between Ltmp70 and Ltmp72
	.long	Lset57
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset58 = Ltmp72-Lfunc_begin5            ## >> Call Site 4 <<
	.long	Lset58
Lset59 = Ltmp73-Ltmp72                  ##   Call between Ltmp72 and Ltmp73
	.long	Lset59
Lset60 = Ltmp74-Lfunc_begin5            ##     jumps to Ltmp74
	.long	Lset60
	.byte	0                       ##   On action: cleanup
Lset61 = Ltmp75-Lfunc_begin5            ## >> Call Site 5 <<
	.long	Lset61
Lset62 = Ltmp76-Ltmp75                  ##   Call between Ltmp75 and Ltmp76
	.long	Lset62
Lset63 = Ltmp87-Lfunc_begin5            ##     jumps to Ltmp87
	.long	Lset63
	.byte	0                       ##   On action: cleanup
Lset64 = Ltmp77-Lfunc_begin5            ## >> Call Site 6 <<
	.long	Lset64
Lset65 = Ltmp78-Ltmp77                  ##   Call between Ltmp77 and Ltmp78
	.long	Lset65
Lset66 = Ltmp79-Lfunc_begin5            ##     jumps to Ltmp79
	.long	Lset66
	.byte	0                       ##   On action: cleanup
Lset67 = Ltmp80-Lfunc_begin5            ## >> Call Site 7 <<
	.long	Lset67
Lset68 = Ltmp81-Ltmp80                  ##   Call between Ltmp80 and Ltmp81
	.long	Lset68
Lset69 = Ltmp82-Lfunc_begin5            ##     jumps to Ltmp82
	.long	Lset69
	.byte	0                       ##   On action: cleanup
Lset70 = Ltmp83-Lfunc_begin5            ## >> Call Site 8 <<
	.long	Lset70
Lset71 = Ltmp86-Ltmp83                  ##   Call between Ltmp83 and Ltmp86
	.long	Lset71
Lset72 = Ltmp87-Lfunc_begin5            ##     jumps to Ltmp87
	.long	Lset72
	.byte	0                       ##   On action: cleanup
Lset73 = Ltmp86-Lfunc_begin5            ## >> Call Site 9 <<
	.long	Lset73
Lset74 = Lfunc_end5-Ltmp86              ##   Call between Ltmp86 and Lfunc_end5
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

	.globl	__ZNSt3__16__sortIRNS_7greaterIdEEPdEEvT0_S5_T_
	.weak_def_can_be_hidden	__ZNSt3__16__sortIRNS_7greaterIdEEPdEEvT0_S5_T_
	.p2align	4, 0x90
__ZNSt3__16__sortIRNS_7greaterIdEEPdEEvT0_S5_T_: ## @_ZNSt3__16__sortIRNS_7greaterIdEEPdEEvT0_S5_T_
	.cfi_startproc
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
	subq	$24, %rsp
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
	movq	%rdx, -48(%rbp)         ## 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %r13
	jmp	LBB7_2
LBB7_1:                                 ##   in Loop: Header=BB7_2 Depth=1
	leaq	8(%r12), %rdi
	movq	%r14, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_7greaterIdEEPdEEvT0_S5_T_
	movq	%r12, %r14
	.p2align	4, 0x90
LBB7_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_3 Depth 2
                                        ##       Child Loop BB7_6 Depth 3
                                        ##         Child Loop BB7_12 Depth 4
                                        ##         Child Loop BB7_36 Depth 4
                                        ##         Child Loop BB7_48 Depth 4
                                        ##           Child Loop BB7_49 Depth 5
                                        ##           Child Loop BB7_51 Depth 5
                                        ##         Child Loop BB7_17 Depth 4
                                        ##           Child Loop BB7_18 Depth 5
                                        ##           Child Loop BB7_20 Depth 5
	leaq	-8(%r14), %r15
	leaq	-16(%r14), %rax
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	movq	%r13, %rbx
LBB7_3:                                 ##   Parent Loop BB7_2 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB7_6 Depth 3
                                        ##         Child Loop BB7_12 Depth 4
                                        ##         Child Loop BB7_36 Depth 4
                                        ##         Child Loop BB7_48 Depth 4
                                        ##           Child Loop BB7_49 Depth 5
                                        ##           Child Loop BB7_51 Depth 5
                                        ##         Child Loop BB7_17 Depth 4
                                        ##           Child Loop BB7_18 Depth 5
                                        ##           Child Loop BB7_20 Depth 5
	movq	%rbx, %r13
	jmp	LBB7_6
	.p2align	4, 0x90
LBB7_4:                                 ##   in Loop: Header=BB7_6 Depth=3
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_7greaterIdEEPdEEvT0_S5_T_
	addq	$8, %r12
	movq	%r12, %rbx
	movq	%rbx, %r13
	jmp	LBB7_6
	.p2align	4, 0x90
LBB7_5:                                 ##   in Loop: Header=BB7_6 Depth=3
	movq	%rdx, %r13
LBB7_6:                                 ##   Parent Loop BB7_2 Depth=1
                                        ##     Parent Loop BB7_3 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB7_12 Depth 4
                                        ##         Child Loop BB7_36 Depth 4
                                        ##         Child Loop BB7_48 Depth 4
                                        ##           Child Loop BB7_49 Depth 5
                                        ##           Child Loop BB7_51 Depth 5
                                        ##         Child Loop BB7_17 Depth 4
                                        ##           Child Loop BB7_18 Depth 5
                                        ##           Child Loop BB7_20 Depth 5
	movq	%r14, %rcx
	subq	%r13, %rcx
	movq	%rcx, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	jbe	LBB7_55
## BB#7:                                ##   in Loop: Header=BB7_6 Depth=3
	cmpq	$247, %rcx
	jle	LBB7_58
## BB#8:                                ##   in Loop: Header=BB7_6 Depth=3
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rax, %rdx
	movabsq	$4611686018427387902, %rsi ## imm = 0x3FFFFFFFFFFFFFFE
	andq	%rsi, %rdx
	leaq	(%r13,%rdx,4), %rbx
	cmpq	$7993, %rcx             ## imm = 0x1F39
	jl	LBB7_30
## BB#9:                                ##   in Loop: Header=BB7_6 Depth=3
	movq	%rax, %rcx
	sarq	$63, %rcx
	shrq	$62, %rcx
	addq	%rax, %rcx
	addq	%rcx, %rcx
	andq	$-8, %rcx
	leaq	(%r13,%rcx), %rsi
	addq	%rbx, %rcx
	movq	%r13, %rdi
	movq	%rbx, %rdx
	movq	%r15, %r8
	movq	-48(%rbp), %r9          ## 8-byte Reload
	callq	__ZNSt3__17__sort5IRNS_7greaterIdEEPdEEjT0_S5_S5_S5_S5_T_
LBB7_10:                                ##   in Loop: Header=BB7_6 Depth=3
	movsd	(%r13), %xmm0           ## xmm0 = mem[0],zero
	movsd	(%rbx), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	LBB7_53
## BB#11:                               ##   in Loop: Header=BB7_6 Depth=3
	movq	-64(%rbp), %rcx         ## 8-byte Reload
	.p2align	4, 0x90
LBB7_12:                                ##   Parent Loop BB7_2 Depth=1
                                        ##     Parent Loop BB7_3 Depth=2
                                        ##       Parent Loop BB7_6 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	cmpq	%rcx, %r13
	je	LBB7_33
## BB#13:                               ##   in Loop: Header=BB7_12 Depth=4
	movsd	(%rcx), %xmm2           ## xmm2 = mem[0],zero
	addq	$-8, %rcx
	ucomisd	%xmm1, %xmm2
	jbe	LBB7_12
## BB#14:                               ##   in Loop: Header=BB7_6 Depth=3
	movsd	%xmm2, (%r13)
	movsd	%xmm0, 8(%rcx)
	addq	$8, %rcx
	incl	%eax
LBB7_15:                                ##   in Loop: Header=BB7_6 Depth=3
	leaq	8(%r13), %r12
	cmpq	%rcx, %r12
	jb	LBB7_17
	jmp	LBB7_23
	.p2align	4, 0x90
LBB7_16:                                ##   in Loop: Header=BB7_17 Depth=4
	movsd	%xmm2, (%rdx)
	movsd	%xmm1, (%rcx)
	incl	%eax
	cmpq	%rdx, %rbx
	cmoveq	%rcx, %rbx
LBB7_17:                                ##   Parent Loop BB7_2 Depth=1
                                        ##     Parent Loop BB7_3 Depth=2
                                        ##       Parent Loop BB7_6 Depth=3
                                        ## =>      This Loop Header: Depth=4
                                        ##           Child Loop BB7_18 Depth 5
                                        ##           Child Loop BB7_20 Depth 5
	movsd	(%rbx), %xmm0           ## xmm0 = mem[0],zero
	addq	$-8, %r12
	movq	%r12, %rdx
	.p2align	4, 0x90
LBB7_18:                                ##   Parent Loop BB7_2 Depth=1
                                        ##     Parent Loop BB7_3 Depth=2
                                        ##       Parent Loop BB7_6 Depth=3
                                        ##         Parent Loop BB7_17 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movsd	8(%rdx), %xmm1          ## xmm1 = mem[0],zero
	addq	$8, %rdx
	ucomisd	%xmm0, %xmm1
	ja	LBB7_18
## BB#19:                               ##   in Loop: Header=BB7_17 Depth=4
	leaq	8(%rdx), %r12
	.p2align	4, 0x90
LBB7_20:                                ##   Parent Loop BB7_2 Depth=1
                                        ##     Parent Loop BB7_3 Depth=2
                                        ##       Parent Loop BB7_6 Depth=3
                                        ##         Parent Loop BB7_17 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movsd	-8(%rcx), %xmm2         ## xmm2 = mem[0],zero
	addq	$-8, %rcx
	ucomisd	%xmm0, %xmm2
	jbe	LBB7_20
## BB#21:                               ##   in Loop: Header=BB7_17 Depth=4
	cmpq	%rcx, %rdx
	jbe	LBB7_16
## BB#22:                               ##   in Loop: Header=BB7_6 Depth=3
	movq	%rdx, %r12
LBB7_23:                                ##   in Loop: Header=BB7_6 Depth=3
	cmpq	%rbx, %r12
	je	LBB7_26
## BB#24:                               ##   in Loop: Header=BB7_6 Depth=3
	movsd	(%rbx), %xmm0           ## xmm0 = mem[0],zero
	movsd	(%r12), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB7_26
## BB#25:                               ##   in Loop: Header=BB7_6 Depth=3
	movsd	%xmm0, (%r12)
	movsd	%xmm1, (%rbx)
	incl	%eax
LBB7_26:                                ##   in Loop: Header=BB7_6 Depth=3
	testl	%eax, %eax
	jne	LBB7_29
## BB#27:                               ##   in Loop: Header=BB7_6 Depth=3
	movq	%r15, -56(%rbp)         ## 8-byte Spill
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__127__insertion_sort_incompleteIRNS_7greaterIdEEPdEEbT0_S5_T_
	movl	%eax, %r15d
	leaq	8(%r12), %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__127__insertion_sort_incompleteIRNS_7greaterIdEEPdEEbT0_S5_T_
	testb	%al, %al
	jne	LBB7_54
## BB#28:                               ##   in Loop: Header=BB7_6 Depth=3
	testb	%r15b, %r15b
	movq	-56(%rbp), %r15         ## 8-byte Reload
	jne	LBB7_3
LBB7_29:                                ##   in Loop: Header=BB7_6 Depth=3
	movq	%r12, %rax
	subq	%r13, %rax
	movq	%r14, %rcx
	subq	%r12, %rcx
	cmpq	%rcx, %rax
	jl	LBB7_4
	jmp	LBB7_1
	.p2align	4, 0x90
LBB7_30:                                ##   in Loop: Header=BB7_6 Depth=3
	movsd	(%rbx), %xmm1           ## xmm1 = mem[0],zero
	movsd	(%r13), %xmm0           ## xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movsd	(%r15), %xmm2           ## xmm2 = mem[0],zero
	jbe	LBB7_38
## BB#31:                               ##   in Loop: Header=BB7_6 Depth=3
	ucomisd	%xmm1, %xmm2
	jbe	LBB7_41
## BB#32:                               ##   in Loop: Header=BB7_6 Depth=3
	movsd	%xmm2, (%r13)
	movsd	%xmm0, (%r15)
	movl	$1, %eax
	jmp	LBB7_10
	.p2align	4, 0x90
LBB7_33:                                ##   in Loop: Header=BB7_6 Depth=3
	leaq	8(%r13), %rax
	movsd	(%r15), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	LBB7_45
## BB#34:                               ##   in Loop: Header=BB7_6 Depth=3
	cmpq	%r15, %rax
	je	LBB7_87
## BB#35:                               ##   in Loop: Header=BB7_6 Depth=3
	leaq	16(%r13), %rax
	.p2align	4, 0x90
LBB7_36:                                ##   Parent Loop BB7_2 Depth=1
                                        ##     Parent Loop BB7_3 Depth=2
                                        ##       Parent Loop BB7_6 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movsd	-8(%rax), %xmm2         ## xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	ja	LBB7_44
## BB#37:                               ##   in Loop: Header=BB7_36 Depth=4
	addq	$8, %rax
	cmpq	%rax, %r14
	jne	LBB7_36
	jmp	LBB7_87
	.p2align	4, 0x90
LBB7_38:                                ##   in Loop: Header=BB7_6 Depth=3
	xorl	%eax, %eax
	ucomisd	%xmm1, %xmm2
	jbe	LBB7_10
## BB#39:                               ##   in Loop: Header=BB7_6 Depth=3
	movsd	%xmm2, (%rbx)
	movsd	%xmm1, (%r15)
	movsd	(%rbx), %xmm0           ## xmm0 = mem[0],zero
	movsd	(%r13), %xmm1           ## xmm1 = mem[0],zero
	movl	$1, %eax
	ucomisd	%xmm1, %xmm0
	jbe	LBB7_10
## BB#40:                               ##   in Loop: Header=BB7_6 Depth=3
	movsd	%xmm0, (%r13)
	movsd	%xmm1, (%rbx)
	jmp	LBB7_43
LBB7_41:                                ##   in Loop: Header=BB7_6 Depth=3
	movsd	%xmm1, (%r13)
	movsd	%xmm0, (%rbx)
	movsd	(%r15), %xmm1           ## xmm1 = mem[0],zero
	movl	$1, %eax
	ucomisd	%xmm0, %xmm1
	jbe	LBB7_10
## BB#42:                               ##   in Loop: Header=BB7_6 Depth=3
	movsd	%xmm1, (%rbx)
	movsd	%xmm0, (%r15)
LBB7_43:                                ##   in Loop: Header=BB7_6 Depth=3
	movl	$2, %eax
	jmp	LBB7_10
LBB7_44:                                ##   in Loop: Header=BB7_6 Depth=3
	movsd	%xmm1, -8(%rax)
	movsd	%xmm2, (%r15)
LBB7_45:                                ##   in Loop: Header=BB7_6 Depth=3
	cmpq	%r15, %rax
	je	LBB7_87
## BB#46:                               ##   in Loop: Header=BB7_6 Depth=3
	movq	%r15, %rcx
	jmp	LBB7_48
	.p2align	4, 0x90
LBB7_47:                                ##   in Loop: Header=BB7_48 Depth=4
	movsd	%xmm2, (%rdx)
	movsd	%xmm0, (%rcx)
LBB7_48:                                ##   Parent Loop BB7_2 Depth=1
                                        ##     Parent Loop BB7_3 Depth=2
                                        ##       Parent Loop BB7_6 Depth=3
                                        ## =>      This Loop Header: Depth=4
                                        ##           Child Loop BB7_49 Depth 5
                                        ##           Child Loop BB7_51 Depth 5
	movsd	(%r13), %xmm1           ## xmm1 = mem[0],zero
	.p2align	4, 0x90
LBB7_49:                                ##   Parent Loop BB7_2 Depth=1
                                        ##     Parent Loop BB7_3 Depth=2
                                        ##       Parent Loop BB7_6 Depth=3
                                        ##         Parent Loop BB7_48 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	addq	$8, %rax
	ucomisd	%xmm0, %xmm1
	jbe	LBB7_49
## BB#50:                               ##   in Loop: Header=BB7_48 Depth=4
	leaq	-8(%rax), %rdx
	.p2align	4, 0x90
LBB7_51:                                ##   Parent Loop BB7_2 Depth=1
                                        ##     Parent Loop BB7_3 Depth=2
                                        ##       Parent Loop BB7_6 Depth=3
                                        ##         Parent Loop BB7_48 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movsd	-8(%rcx), %xmm2         ## xmm2 = mem[0],zero
	addq	$-8, %rcx
	ucomisd	%xmm2, %xmm1
	ja	LBB7_51
## BB#52:                               ##   in Loop: Header=BB7_48 Depth=4
	cmpq	%rcx, %rdx
	jb	LBB7_47
	jmp	LBB7_5
LBB7_53:                                ##   in Loop: Header=BB7_6 Depth=3
	movq	%r15, %rcx
	jmp	LBB7_15
LBB7_54:                                ##   in Loop: Header=BB7_2 Depth=1
	testb	%r15b, %r15b
	movq	%r12, %r14
	je	LBB7_2
	jmp	LBB7_87
LBB7_55:
	leaq	LJTI7_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB7_56:
	movsd	(%r15), %xmm0           ## xmm0 = mem[0],zero
	movsd	(%r13), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB7_87
## BB#57:
	movsd	%xmm0, (%r13)
	movsd	%xmm1, (%r15)
	jmp	LBB7_87
LBB7_58:
	movsd	(%r13), %xmm1           ## xmm1 = mem[0],zero
	movsd	8(%r13), %xmm0          ## xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movsd	16(%r13), %xmm2         ## xmm2 = mem[0],zero
	jbe	LBB7_61
## BB#59:
	ucomisd	%xmm0, %xmm2
	jbe	LBB7_64
## BB#60:
	movsd	%xmm2, (%r13)
	jmp	LBB7_66
LBB7_61:
	ucomisd	%xmm0, %xmm2
	jbe	LBB7_75
## BB#62:
	movsd	%xmm2, 8(%r13)
	movsd	%xmm0, 16(%r13)
	ucomisd	%xmm1, %xmm2
	jbe	LBB7_76
## BB#63:
	movsd	%xmm2, (%r13)
	movsd	%xmm1, 8(%r13)
	jmp	LBB7_76
LBB7_64:
	movsd	%xmm0, (%r13)
	movsd	%xmm1, 8(%r13)
	ucomisd	%xmm1, %xmm2
	jbe	LBB7_75
## BB#65:
	movsd	%xmm2, 8(%r13)
LBB7_66:
	movsd	%xmm1, 16(%r13)
	movapd	%xmm1, %xmm0
	jmp	LBB7_76
LBB7_75:
	movapd	%xmm2, %xmm0
LBB7_76:
	leaq	24(%r13), %rcx
	cmpq	%r14, %rcx
	je	LBB7_87
## BB#77:
	movl	$24, %eax
	jmp	LBB7_79
	.p2align	4, 0x90
LBB7_78:                                ##   in Loop: Header=BB7_79 Depth=1
	movsd	(%rcx), %xmm0           ## xmm0 = mem[0],zero
	addq	$8, %rax
	movq	%rdx, %rcx
LBB7_79:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_81 Depth 2
	movsd	(%rcx), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB7_86
## BB#80:                               ##   in Loop: Header=BB7_79 Depth=1
	movq	%rax, %rdx
	.p2align	4, 0x90
LBB7_81:                                ##   Parent Loop BB7_79 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-8(%r13,%rdx), %rsi
	movq	%rsi, (%r13,%rdx)
	cmpq	$8, %rdx
	je	LBB7_84
## BB#82:                               ##   in Loop: Header=BB7_81 Depth=2
	ucomisd	-16(%r13,%rdx), %xmm1
	leaq	-8(%rdx), %rdx
	ja	LBB7_81
## BB#83:                               ##   in Loop: Header=BB7_79 Depth=1
	addq	%r13, %rdx
	jmp	LBB7_85
	.p2align	4, 0x90
LBB7_84:                                ##   in Loop: Header=BB7_79 Depth=1
	movq	%r13, %rdx
LBB7_85:                                ##   in Loop: Header=BB7_79 Depth=1
	movsd	%xmm1, (%rdx)
LBB7_86:                                ##   in Loop: Header=BB7_79 Depth=1
	leaq	8(%rcx), %rdx
	cmpq	%r14, %rdx
	jne	LBB7_78
LBB7_87:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB7_68:
	movsd	(%r13), %xmm0           ## xmm0 = mem[0],zero
	movsd	8(%r13), %xmm1          ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movsd	(%r15), %xmm2           ## xmm2 = mem[0],zero
	jbe	LBB7_88
## BB#69:
	ucomisd	%xmm1, %xmm2
	jbe	LBB7_94
## BB#70:
	movsd	%xmm2, (%r13)
	movsd	%xmm0, (%r15)
	jmp	LBB7_87
LBB7_71:
	leaq	16(%r13), %rdx
	leaq	24(%r13), %rcx
	leaq	8(%r13), %rsi
	movq	%r13, %rdi
	movq	%r15, %r8
	movq	-48(%rbp), %r9          ## 8-byte Reload
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZNSt3__17__sort5IRNS_7greaterIdEEPdEEjT0_S5_S5_S5_S5_T_ ## TAILCALL
LBB7_72:
	movsd	(%r13), %xmm1           ## xmm1 = mem[0],zero
	movsd	8(%r13), %xmm0          ## xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movsd	16(%r13), %xmm2         ## xmm2 = mem[0],zero
	jbe	LBB7_91
## BB#73:
	ucomisd	%xmm0, %xmm2
	jbe	LBB7_96
## BB#74:
	movsd	%xmm2, (%r13)
	jmp	LBB7_98
LBB7_88:
	ucomisd	%xmm1, %xmm2
	jbe	LBB7_87
## BB#89:
	movsd	%xmm2, 8(%r13)
	movsd	%xmm1, (%r15)
	movsd	(%r13), %xmm0           ## xmm0 = mem[0],zero
	movsd	8(%r13), %xmm1          ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB7_87
## BB#90:
	movsd	%xmm1, (%r13)
	movsd	%xmm0, 8(%r13)
	jmp	LBB7_87
LBB7_91:
	ucomisd	%xmm0, %xmm2
	jbe	LBB7_100
## BB#92:
	movsd	%xmm2, 8(%r13)
	movsd	%xmm0, 16(%r13)
	ucomisd	%xmm1, %xmm2
	jbe	LBB7_101
## BB#93:
	movsd	%xmm2, (%r13)
	movsd	%xmm1, 8(%r13)
	jmp	LBB7_101
LBB7_94:
	movsd	%xmm1, (%r13)
	movsd	%xmm0, 8(%r13)
	movsd	(%r15), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB7_87
## BB#95:
	movsd	%xmm1, 8(%r13)
	movsd	%xmm0, (%r15)
	jmp	LBB7_87
LBB7_96:
	movsd	%xmm0, (%r13)
	movsd	%xmm1, 8(%r13)
	ucomisd	%xmm1, %xmm2
	jbe	LBB7_100
## BB#97:
	movsd	%xmm2, 8(%r13)
LBB7_98:
	movsd	%xmm1, 16(%r13)
	movapd	%xmm1, %xmm0
	jmp	LBB7_101
LBB7_100:
	movapd	%xmm2, %xmm0
LBB7_101:
	movsd	(%r15), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB7_87
## BB#102:
	movsd	%xmm1, 16(%r13)
	movsd	%xmm0, (%r15)
	movsd	8(%r13), %xmm1          ## xmm1 = mem[0],zero
	movsd	16(%r13), %xmm0         ## xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB7_87
## BB#103:
	movsd	%xmm0, 8(%r13)
	movsd	%xmm1, 16(%r13)
	movsd	(%r13), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB7_87
## BB#104:
	movsd	%xmm0, (%r13)
	movsd	%xmm1, 8(%r13)
	jmp	LBB7_87
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L7_0_set_87 = LBB7_87-LJTI7_0
L7_0_set_56 = LBB7_56-LJTI7_0
L7_0_set_68 = LBB7_68-LJTI7_0
L7_0_set_72 = LBB7_72-LJTI7_0
L7_0_set_71 = LBB7_71-LJTI7_0
LJTI7_0:
	.long	L7_0_set_87
	.long	L7_0_set_87
	.long	L7_0_set_56
	.long	L7_0_set_68
	.long	L7_0_set_72
	.long	L7_0_set_71
	.end_data_region

	.globl	__ZNSt3__17__sort5IRNS_7greaterIdEEPdEEjT0_S5_S5_S5_S5_T_
	.weak_def_can_be_hidden	__ZNSt3__17__sort5IRNS_7greaterIdEEPdEEjT0_S5_S5_S5_S5_T_
	.p2align	4, 0x90
__ZNSt3__17__sort5IRNS_7greaterIdEEPdEEjT0_S5_S5_S5_S5_T_: ## @_ZNSt3__17__sort5IRNS_7greaterIdEEPdEEjT0_S5_S5_S5_S5_T_
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
	movsd	(%rsi), %xmm0           ## xmm0 = mem[0],zero
	movsd	(%rdi), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movsd	(%rdx), %xmm2           ## xmm2 = mem[0],zero
	jbe	LBB8_1
## BB#5:
	ucomisd	%xmm0, %xmm2
	jbe	LBB8_7
## BB#6:
	movsd	%xmm2, (%rdi)
	movsd	%xmm1, (%rdx)
	movl	$1, %eax
	jmp	LBB8_9
LBB8_1:
	xorl	%eax, %eax
	ucomisd	%xmm0, %xmm2
	jbe	LBB8_2
## BB#3:
	movsd	%xmm2, (%rsi)
	movsd	%xmm0, (%rdx)
	movsd	(%rsi), %xmm1           ## xmm1 = mem[0],zero
	movsd	(%rdi), %xmm2           ## xmm2 = mem[0],zero
	movl	$1, %eax
	ucomisd	%xmm2, %xmm1
	jbe	LBB8_10
## BB#4:
	movsd	%xmm1, (%rdi)
	movsd	%xmm2, (%rsi)
	movsd	(%rdx), %xmm0           ## xmm0 = mem[0],zero
	movl	$2, %eax
	jmp	LBB8_10
LBB8_7:
	movsd	%xmm0, (%rdi)
	movsd	%xmm1, (%rsi)
	movsd	(%rdx), %xmm0           ## xmm0 = mem[0],zero
	movl	$1, %eax
	ucomisd	%xmm1, %xmm0
	jbe	LBB8_10
## BB#8:
	movsd	%xmm0, (%rsi)
	movsd	%xmm1, (%rdx)
	movl	$2, %eax
LBB8_9:
	movapd	%xmm1, %xmm0
	jmp	LBB8_10
LBB8_2:
	movapd	%xmm2, %xmm0
LBB8_10:
	movsd	(%rcx), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB8_16
## BB#11:
	movsd	%xmm1, (%rdx)
	movsd	%xmm0, (%rcx)
	movsd	(%rdx), %xmm0           ## xmm0 = mem[0],zero
	movsd	(%rsi), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB8_12
## BB#13:
	movsd	%xmm0, (%rsi)
	movsd	%xmm1, (%rdx)
	movsd	(%rsi), %xmm0           ## xmm0 = mem[0],zero
	movsd	(%rdi), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB8_14
## BB#15:
	movsd	%xmm0, (%rdi)
	movsd	%xmm1, (%rsi)
	addl	$3, %eax
	jmp	LBB8_16
LBB8_12:
	incl	%eax
	jmp	LBB8_16
LBB8_14:
	addl	$2, %eax
LBB8_16:
	movsd	(%r8), %xmm0            ## xmm0 = mem[0],zero
	movsd	(%rcx), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB8_24
## BB#17:
	movsd	%xmm0, (%rcx)
	movsd	%xmm1, (%r8)
	movsd	(%rcx), %xmm0           ## xmm0 = mem[0],zero
	movsd	(%rdx), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB8_18
## BB#19:
	movsd	%xmm0, (%rdx)
	movsd	%xmm1, (%rcx)
	movsd	(%rdx), %xmm0           ## xmm0 = mem[0],zero
	movsd	(%rsi), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB8_20
## BB#21:
	movsd	%xmm0, (%rsi)
	movsd	%xmm1, (%rdx)
	movsd	(%rsi), %xmm0           ## xmm0 = mem[0],zero
	movsd	(%rdi), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB8_22
## BB#23:
	movsd	%xmm0, (%rdi)
	movsd	%xmm1, (%rsi)
	addl	$4, %eax
LBB8_24:
	popq	%rbp
	retq
LBB8_18:
	incl	%eax
	popq	%rbp
	retq
LBB8_20:
	addl	$2, %eax
	popq	%rbp
	retq
LBB8_22:
	addl	$3, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__127__insertion_sort_incompleteIRNS_7greaterIdEEPdEEbT0_S5_T_
	.weak_def_can_be_hidden	__ZNSt3__127__insertion_sort_incompleteIRNS_7greaterIdEEPdEEbT0_S5_T_
	.p2align	4, 0x90
__ZNSt3__127__insertion_sort_incompleteIRNS_7greaterIdEEPdEEbT0_S5_T_: ## @_ZNSt3__127__insertion_sort_incompleteIRNS_7greaterIdEEPdEEbT0_S5_T_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp107:
	.cfi_def_cfa_offset 16
Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp109:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Ltmp110:
	.cfi_offset %rbx, -24
	movq	%rdx, %r9
	movq	%rsi, %r10
	movq	%r10, %rax
	subq	%rdi, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	ja	LBB9_4
## BB#1:
	movb	$1, %bl
	leaq	LJTI9_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB9_2:
	movsd	-8(%r10), %xmm0         ## xmm0 = mem[0],zero
	movsd	(%rdi), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB9_50
## BB#3:
	movsd	%xmm0, (%rdi)
	movsd	%xmm1, -8(%r10)
	jmp	LBB9_50
LBB9_4:
	movsd	(%rdi), %xmm1           ## xmm1 = mem[0],zero
	movsd	8(%rdi), %xmm0          ## xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movsd	16(%rdi), %xmm2         ## xmm2 = mem[0],zero
	jbe	LBB9_14
## BB#5:
	ucomisd	%xmm0, %xmm2
	jbe	LBB9_23
## BB#6:
	movsd	%xmm2, (%rdi)
	jmp	LBB9_25
LBB9_7:
	movsd	(%rdi), %xmm0           ## xmm0 = mem[0],zero
	movsd	8(%rdi), %xmm1          ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movsd	-8(%r10), %xmm2         ## xmm2 = mem[0],zero
	jbe	LBB9_17
## BB#8:
	ucomisd	%xmm1, %xmm2
	jbe	LBB9_26
## BB#9:
	movsd	%xmm2, (%rdi)
	movsd	%xmm0, -8(%r10)
	jmp	LBB9_50
LBB9_10:
	leaq	16(%rdi), %rdx
	leaq	24(%rdi), %rcx
	addq	$-8, %r10
	leaq	8(%rdi), %rsi
	movq	%r10, %r8
	callq	__ZNSt3__17__sort5IRNS_7greaterIdEEPdEEjT0_S5_S5_S5_S5_T_
	jmp	LBB9_50
LBB9_11:
	movsd	(%rdi), %xmm1           ## xmm1 = mem[0],zero
	movsd	8(%rdi), %xmm0          ## xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movsd	16(%rdi), %xmm2         ## xmm2 = mem[0],zero
	jbe	LBB9_20
## BB#12:
	ucomisd	%xmm0, %xmm2
	jbe	LBB9_28
## BB#13:
	movsd	%xmm2, (%rdi)
	jmp	LBB9_30
LBB9_14:
	ucomisd	%xmm0, %xmm2
	jbe	LBB9_33
## BB#15:
	movsd	%xmm2, 8(%rdi)
	movsd	%xmm0, 16(%rdi)
	ucomisd	%xmm1, %xmm2
	jbe	LBB9_34
## BB#16:
	movsd	%xmm2, (%rdi)
	movsd	%xmm1, 8(%rdi)
	jmp	LBB9_34
LBB9_17:
	ucomisd	%xmm1, %xmm2
	jbe	LBB9_50
## BB#18:
	movsd	%xmm2, 8(%rdi)
	movsd	%xmm1, -8(%r10)
	movsd	(%rdi), %xmm0           ## xmm0 = mem[0],zero
	movsd	8(%rdi), %xmm1          ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB9_50
## BB#19:
	movsd	%xmm1, (%rdi)
	movsd	%xmm0, 8(%rdi)
	jmp	LBB9_50
LBB9_20:
	ucomisd	%xmm0, %xmm2
	jbe	LBB9_45
## BB#21:
	movsd	%xmm2, 8(%rdi)
	movsd	%xmm0, 16(%rdi)
	ucomisd	%xmm1, %xmm2
	jbe	LBB9_46
## BB#22:
	movsd	%xmm2, (%rdi)
	movsd	%xmm1, 8(%rdi)
	jmp	LBB9_46
LBB9_23:
	movsd	%xmm0, (%rdi)
	movsd	%xmm1, 8(%rdi)
	ucomisd	%xmm1, %xmm2
	jbe	LBB9_33
## BB#24:
	movsd	%xmm2, 8(%rdi)
LBB9_25:
	movsd	%xmm1, 16(%rdi)
	movapd	%xmm1, %xmm0
	jmp	LBB9_34
LBB9_33:
	movapd	%xmm2, %xmm0
LBB9_34:
	leaq	24(%rdi), %rax
	movb	$1, %r8b
	cmpq	%r10, %rax
	je	LBB9_44
## BB#35:
	xorl	%esi, %esi
	movl	$16, %ecx
	jmp	LBB9_37
	.p2align	4, 0x90
LBB9_36:                                ##   in Loop: Header=BB9_37 Depth=1
	movsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	addq	$8, %rcx
	movq	%rdx, %rax
LBB9_37:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_39 Depth 2
	movsd	(%rax), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB9_42
## BB#38:                               ##   in Loop: Header=BB9_37 Depth=1
	movq	%rcx, %rdx
	.p2align	4, 0x90
LBB9_39:                                ##   Parent Loop BB9_37 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rbx
	movq	(%rdi,%rbx), %rdx
	movq	%rdx, 8(%rdi,%rbx)
	testq	%rbx, %rbx
	je	LBB9_41
## BB#40:                               ##   in Loop: Header=BB9_39 Depth=2
	leaq	-8(%rbx), %rdx
	ucomisd	-8(%rdi,%rbx), %xmm1
	ja	LBB9_39
LBB9_41:                                ##   in Loop: Header=BB9_37 Depth=1
	movsd	%xmm1, (%rdi,%rbx)
	incl	%esi
	leaq	8(%rax), %rdx
	cmpq	%r10, %rdx
	sete	%bl
	cmpl	$8, %esi
	je	LBB9_43
LBB9_42:                                ##   in Loop: Header=BB9_37 Depth=1
	leaq	8(%rax), %rdx
	cmpq	%r10, %rdx
	jne	LBB9_36
	jmp	LBB9_44
LBB9_26:
	movsd	%xmm1, (%rdi)
	movsd	%xmm0, 8(%rdi)
	movsd	-8(%r10), %xmm1         ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB9_50
## BB#27:
	movsd	%xmm1, 8(%rdi)
	movsd	%xmm0, -8(%r10)
	jmp	LBB9_50
LBB9_28:
	movsd	%xmm0, (%rdi)
	movsd	%xmm1, 8(%rdi)
	ucomisd	%xmm1, %xmm2
	jbe	LBB9_45
## BB#29:
	movsd	%xmm2, 8(%rdi)
LBB9_30:
	movsd	%xmm1, 16(%rdi)
	movapd	%xmm1, %xmm0
	jmp	LBB9_46
LBB9_45:
	movapd	%xmm2, %xmm0
LBB9_46:
	movsd	-8(%r10), %xmm1         ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB9_50
## BB#47:
	movsd	%xmm1, 16(%rdi)
	movsd	%xmm0, -8(%r10)
	movsd	8(%rdi), %xmm1          ## xmm1 = mem[0],zero
	movsd	16(%rdi), %xmm0         ## xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB9_50
## BB#48:
	movsd	%xmm0, 8(%rdi)
	movsd	%xmm1, 16(%rdi)
	movsd	(%rdi), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB9_50
## BB#49:
	movsd	%xmm0, (%rdi)
	movsd	%xmm1, 8(%rdi)
	jmp	LBB9_50
LBB9_43:
	xorl	%r8d, %r8d
LBB9_44:
	orb	%r8b, %bl
LBB9_50:
	andb	$1, %bl
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L9_0_set_50 = LBB9_50-LJTI9_0
L9_0_set_2 = LBB9_2-LJTI9_0
L9_0_set_7 = LBB9_7-LJTI9_0
L9_0_set_11 = LBB9_11-LJTI9_0
L9_0_set_10 = LBB9_10-LJTI9_0
LJTI9_0:
	.long	L9_0_set_50
	.long	L9_0_set_50
	.long	L9_0_set_2
	.long	L9_0_set_7
	.long	L9_0_set_11
	.long	L9_0_set_10
	.end_data_region

	.globl	__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	.weak_def_can_be_hidden	__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	.p2align	4, 0x90
__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE: ## @_ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp111:
	.cfi_def_cfa_offset 16
Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp113:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
Ltmp114:
	.cfi_offset %rbx, -40
Ltmp115:
	.cfi_offset %r14, -32
Ltmp116:
	.cfi_offset %r15, -24
	movq	%rdx, %r8
	movl	(%r8), %eax
	movl	4(%r8), %r11d
	subl	%eax, %r11d
	je	LBB10_6
## BB#1:
	incl	%r11d
	je	LBB10_2
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
LBB10_4:                                ## =>This Inner Loop Header: Depth=1
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
	jae	LBB10_4
## BB#5:
	addl	(%r8), %eax
	jmp	LBB10_6
LBB10_2:
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
LBB10_6:
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
Ltmp117:
	.cfi_def_cfa_offset 16
Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp119:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp120:
	.cfi_offset %rbx, -56
Ltmp121:
	.cfi_offset %r12, -48
Ltmp122:
	.cfi_offset %r13, -40
Ltmp123:
	.cfi_offset %r14, -32
Ltmp124:
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
	je	LBB11_2
## BB#1:
	movq	%r12, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	movq	(%r12), %rdx
LBB11_2:
	movq	16(%r12), %r14
	subq	%rdx, %r14
	movq	%r14, %rax
	sarq	$3, %rax
	movabsq	$1152921504606846975, %rcx ## imm = 0xFFFFFFFFFFFFFFF
	cmpq	%rcx, %rax
	movq	%r15, -48(%rbp)         ## 8-byte Spill
	jae	LBB11_3
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
	jne	LBB11_5
	jmp	LBB11_6
LBB11_3:
	movabsq	$2305843009213693951, %r14 ## imm = 0x1FFFFFFFFFFFFFFF
	movq	8(%r12), %r15
	movq	%r15, %r13
	subq	%rdx, %r13
	sarq	$3, %r13
LBB11_5:
	leaq	(,%r14,8), %rdi
	movq	%rdx, %rbx
	callq	__Znwm
	movq	%rbx, %rdx
	movq	%r14, %rcx
LBB11_6:
	leaq	(%rax,%r13,8), %rbx
	leaq	(%rax,%rcx,8), %rsi
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rcx, (%rax,%r13,8)
	leaq	8(%rax,%r13,8), %r13
	subq	%rdx, %r15
	subq	%r15, %rbx
	testq	%r15, %r15
	jle	LBB11_8
## BB#7:
	movq	%rbx, %rdi
	movq	%rdx, %r14
	movq	%rsi, -48(%rbp)         ## 8-byte Spill
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	_memcpy
	movq	-48(%rbp), %rsi         ## 8-byte Reload
	movq	%r14, %rdx
LBB11_8:
	movq	%rbx, (%r12)
	movq	%r13, 8(%r12)
	movq	%rsi, 16(%r12)
	testq	%rdx, %rdx
	je	LBB11_9
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
LBB11_9:
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
Ltmp125:
	.cfi_def_cfa_offset 16
Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp127:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp128:
	.cfi_offset %rbx, -56
Ltmp129:
	.cfi_offset %r12, -48
Ltmp130:
	.cfi_offset %r13, -40
Ltmp131:
	.cfi_offset %r14, -32
Ltmp132:
	.cfi_offset %r15, -24
	movq	%rdx, -48(%rbp)         ## 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %r13
	jmp	LBB12_2
LBB12_1:                                ##   in Loop: Header=BB12_2 Depth=1
	leaq	8(%r15), %rdi
	movq	%r14, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	movq	%r15, %r14
	.p2align	4, 0x90
LBB12_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB12_4 Depth 2
                                        ##       Child Loop BB12_32 Depth 3
                                        ##         Child Loop BB12_6 Depth 4
                                        ##         Child Loop BB12_14 Depth 4
                                        ##         Child Loop BB12_27 Depth 4
                                        ##           Child Loop BB12_28 Depth 5
                                        ##           Child Loop BB12_30 Depth 5
                                        ##       Child Loop BB12_41 Depth 3
                                        ##         Child Loop BB12_42 Depth 4
                                        ##         Child Loop BB12_44 Depth 4
	leaq	-8(%r14), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	leaq	-16(%r14), %rax
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	movq	%r13, %rbx
	jmp	LBB12_4
	.p2align	4, 0x90
LBB12_3:                                ##   in Loop: Header=BB12_4 Depth=2
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	addq	$8, %r15
	movq	%r15, %rbx
LBB12_4:                                ##   Parent Loop BB12_2 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB12_32 Depth 3
                                        ##         Child Loop BB12_6 Depth 4
                                        ##         Child Loop BB12_14 Depth 4
                                        ##         Child Loop BB12_27 Depth 4
                                        ##           Child Loop BB12_28 Depth 5
                                        ##           Child Loop BB12_30 Depth 5
                                        ##       Child Loop BB12_41 Depth 3
                                        ##         Child Loop BB12_42 Depth 4
                                        ##         Child Loop BB12_44 Depth 4
	movq	%rbx, %r13
	jmp	LBB12_32
	.p2align	4, 0x90
LBB12_5:                                ##   in Loop: Header=BB12_32 Depth=3
	movq	-64(%rbp), %rdx         ## 8-byte Reload
	.p2align	4, 0x90
LBB12_6:                                ##   Parent Loop BB12_2 Depth=1
                                        ##     Parent Loop BB12_4 Depth=2
                                        ##       Parent Loop BB12_32 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	cmpq	%rdx, %r13
	je	LBB12_11
## BB#7:                                ##   in Loop: Header=BB12_6 Depth=4
	movq	(%rdx), %rbx
	addq	$-8, %rdx
	cmpq	%rdi, %rbx
	jge	LBB12_6
	jmp	LBB12_38
	.p2align	4, 0x90
LBB12_8:                                ##   in Loop: Header=BB12_32 Depth=3
	movq	(%r12), %rcx
	movq	(%r13), %rax
	cmpq	%rax, %rcx
	movq	(%r15), %rdx
	jge	LBB12_16
## BB#9:                                ##   in Loop: Header=BB12_32 Depth=3
	cmpq	%rcx, %rdx
	jge	LBB12_19
## BB#10:                               ##   in Loop: Header=BB12_32 Depth=3
	movq	%rdx, (%r13)
	movq	%rax, (%r15)
	movl	$1, %eax
	jmp	LBB12_36
	.p2align	4, 0x90
LBB12_11:                               ##   in Loop: Header=BB12_32 Depth=3
	leaq	8(%r13), %rax
	movq	(%r15), %rdx
	cmpq	%rdx, %rsi
	jl	LBB12_25
## BB#12:                               ##   in Loop: Header=BB12_32 Depth=3
	cmpq	%r15, %rax
	je	LBB12_87
## BB#13:                               ##   in Loop: Header=BB12_32 Depth=3
	addq	$16, %r13
	movq	%r13, %rax
	.p2align	4, 0x90
LBB12_14:                               ##   Parent Loop BB12_2 Depth=1
                                        ##     Parent Loop BB12_4 Depth=2
                                        ##       Parent Loop BB12_32 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	-8(%rax), %rdi
	cmpq	%rdi, %rsi
	jl	LBB12_24
## BB#15:                               ##   in Loop: Header=BB12_14 Depth=4
	addq	$8, %rax
	cmpq	%rax, %r14
	jne	LBB12_14
	jmp	LBB12_87
	.p2align	4, 0x90
LBB12_16:                               ##   in Loop: Header=BB12_32 Depth=3
	cmpq	%rcx, %rdx
	jge	LBB12_22
## BB#17:                               ##   in Loop: Header=BB12_32 Depth=3
	movq	%rdx, (%r12)
	movq	%rcx, (%r15)
	movq	(%r12), %rax
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB12_23
## BB#18:                               ##   in Loop: Header=BB12_32 Depth=3
	movq	%rax, (%r13)
	movq	%rcx, (%r12)
	jmp	LBB12_21
LBB12_19:                               ##   in Loop: Header=BB12_32 Depth=3
	movq	%rcx, (%r13)
	movq	%rax, (%r12)
	movq	(%r15), %rcx
	cmpq	%rax, %rcx
	jge	LBB12_23
## BB#20:                               ##   in Loop: Header=BB12_32 Depth=3
	movq	%rcx, (%r12)
	movq	%rax, (%r15)
LBB12_21:                               ##   in Loop: Header=BB12_32 Depth=3
	movl	$2, %eax
	jmp	LBB12_36
LBB12_22:                               ##   in Loop: Header=BB12_32 Depth=3
	xorl	%eax, %eax
	jmp	LBB12_36
LBB12_23:                               ##   in Loop: Header=BB12_32 Depth=3
	movl	$1, %eax
	jmp	LBB12_36
LBB12_24:                               ##   in Loop: Header=BB12_32 Depth=3
	movq	%rdx, -8(%rax)
	movq	%rdi, (%r15)
LBB12_25:                               ##   in Loop: Header=BB12_32 Depth=3
	cmpq	%r15, %rax
	jne	LBB12_27
	jmp	LBB12_87
	.p2align	4, 0x90
LBB12_26:                               ##   in Loop: Header=BB12_27 Depth=4
	movq	%rbx, -8(%rax)
	movq	%rsi, (%r15)
LBB12_27:                               ##   Parent Loop BB12_2 Depth=1
                                        ##     Parent Loop BB12_4 Depth=2
                                        ##       Parent Loop BB12_32 Depth=3
                                        ## =>      This Loop Header: Depth=4
                                        ##           Child Loop BB12_28 Depth 5
                                        ##           Child Loop BB12_30 Depth 5
	movq	(%rcx), %rdi
	.p2align	4, 0x90
LBB12_28:                               ##   Parent Loop BB12_2 Depth=1
                                        ##     Parent Loop BB12_4 Depth=2
                                        ##       Parent Loop BB12_32 Depth=3
                                        ##         Parent Loop BB12_27 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movq	(%rax), %rsi
	addq	$8, %rax
	cmpq	%rsi, %rdi
	jge	LBB12_28
## BB#29:                               ##   in Loop: Header=BB12_27 Depth=4
	leaq	-8(%rax), %r13
	.p2align	4, 0x90
LBB12_30:                               ##   Parent Loop BB12_2 Depth=1
                                        ##     Parent Loop BB12_4 Depth=2
                                        ##       Parent Loop BB12_32 Depth=3
                                        ##         Parent Loop BB12_27 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movq	-8(%r15), %rbx
	addq	$-8, %r15
	cmpq	%rbx, %rdi
	jl	LBB12_30
## BB#31:                               ##   in Loop: Header=BB12_27 Depth=4
	cmpq	%r15, %r13
	jb	LBB12_26
LBB12_32:                               ##   Parent Loop BB12_2 Depth=1
                                        ##     Parent Loop BB12_4 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB12_6 Depth 4
                                        ##         Child Loop BB12_14 Depth 4
                                        ##         Child Loop BB12_27 Depth 4
                                        ##           Child Loop BB12_28 Depth 5
                                        ##           Child Loop BB12_30 Depth 5
	movq	%r14, %rcx
	subq	%r13, %rcx
	movq	%rcx, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	jbe	LBB12_55
## BB#33:                               ##   in Loop: Header=BB12_32 Depth=3
	cmpq	$247, %rcx
	movq	-56(%rbp), %r15         ## 8-byte Reload
	jle	LBB12_58
## BB#34:                               ##   in Loop: Header=BB12_32 Depth=3
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rax, %rdx
	movabsq	$4611686018427387902, %rsi ## imm = 0x3FFFFFFFFFFFFFFE
	andq	%rsi, %rdx
	leaq	(%r13,%rdx,4), %r12
	cmpq	$7993, %rcx             ## imm = 0x1F39
	jl	LBB12_8
## BB#35:                               ##   in Loop: Header=BB12_32 Depth=3
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
LBB12_36:                               ##   in Loop: Header=BB12_32 Depth=3
	movq	%r13, %rcx
	movq	(%rcx), %rsi
	movq	(%r12), %rdi
	cmpq	%rdi, %rsi
	jge	LBB12_5
## BB#37:                               ##   in Loop: Header=BB12_4 Depth=2
	movq	%r15, %rdx
	jmp	LBB12_39
	.p2align	4, 0x90
LBB12_38:                               ##   in Loop: Header=BB12_4 Depth=2
	movq	%rbx, (%rcx)
	movq	%rsi, 8(%rdx)
	addq	$8, %rdx
	incl	%eax
LBB12_39:                               ##   in Loop: Header=BB12_4 Depth=2
	leaq	8(%r13), %r15
	cmpq	%rdx, %r15
	jb	LBB12_41
	jmp	LBB12_47
	.p2align	4, 0x90
LBB12_40:                               ##   in Loop: Header=BB12_41 Depth=3
	movq	%rbx, (%rcx)
	movq	%rdi, (%rdx)
	incl	%eax
	cmpq	%rcx, %r12
	cmoveq	%rdx, %r12
LBB12_41:                               ##   Parent Loop BB12_2 Depth=1
                                        ##     Parent Loop BB12_4 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB12_42 Depth 4
                                        ##         Child Loop BB12_44 Depth 4
	movq	(%r12), %rsi
	addq	$-8, %r15
	movq	%r15, %rcx
	.p2align	4, 0x90
LBB12_42:                               ##   Parent Loop BB12_2 Depth=1
                                        ##     Parent Loop BB12_4 Depth=2
                                        ##       Parent Loop BB12_41 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	8(%rcx), %rdi
	addq	$8, %rcx
	cmpq	%rsi, %rdi
	jl	LBB12_42
## BB#43:                               ##   in Loop: Header=BB12_41 Depth=3
	leaq	8(%rcx), %r15
	.p2align	4, 0x90
LBB12_44:                               ##   Parent Loop BB12_2 Depth=1
                                        ##     Parent Loop BB12_4 Depth=2
                                        ##       Parent Loop BB12_41 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	-8(%rdx), %rbx
	addq	$-8, %rdx
	cmpq	%rsi, %rbx
	jge	LBB12_44
## BB#45:                               ##   in Loop: Header=BB12_41 Depth=3
	cmpq	%rdx, %rcx
	jbe	LBB12_40
## BB#46:                               ##   in Loop: Header=BB12_4 Depth=2
	movq	%rcx, %r15
LBB12_47:                               ##   in Loop: Header=BB12_4 Depth=2
	cmpq	%r12, %r15
	je	LBB12_50
## BB#48:                               ##   in Loop: Header=BB12_4 Depth=2
	movq	(%r12), %rcx
	movq	(%r15), %rdx
	cmpq	%rdx, %rcx
	jge	LBB12_50
## BB#49:                               ##   in Loop: Header=BB12_4 Depth=2
	movq	%rcx, (%r15)
	movq	%rdx, (%r12)
	incl	%eax
LBB12_50:                               ##   in Loop: Header=BB12_4 Depth=2
	testl	%eax, %eax
	jne	LBB12_53
## BB#51:                               ##   in Loop: Header=BB12_4 Depth=2
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
	jne	LBB12_54
## BB#52:                               ##   in Loop: Header=BB12_4 Depth=2
	testb	%r12b, %r12b
	jne	LBB12_4
LBB12_53:                               ##   in Loop: Header=BB12_4 Depth=2
	movq	%r15, %rax
	subq	%r13, %rax
	movq	%r14, %rcx
	subq	%r15, %rcx
	cmpq	%rcx, %rax
	jl	LBB12_3
	jmp	LBB12_1
LBB12_54:                               ##   in Loop: Header=BB12_2 Depth=1
	testb	%r12b, %r12b
	movq	%r15, %r14
	je	LBB12_2
	jmp	LBB12_87
LBB12_55:
	leaq	LJTI12_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	movq	-56(%rbp), %r8          ## 8-byte Reload
	jmpq	*%rax
LBB12_56:
	movq	-8(%r14), %rax
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB12_87
## BB#57:
	movq	%rax, (%r13)
	movq	%rcx, -8(%r14)
	jmp	LBB12_87
LBB12_58:
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rcx, %rax
	movq	16(%r13), %rdx
	jge	LBB12_61
## BB#59:
	cmpq	%rax, %rdx
	jge	LBB12_64
## BB#60:
	movq	%rdx, (%r13)
	jmp	LBB12_66
LBB12_61:
	cmpq	%rax, %rdx
	jge	LBB12_75
## BB#62:
	movq	%rdx, 8(%r13)
	movq	%rax, 16(%r13)
	cmpq	%rcx, %rdx
	jge	LBB12_76
## BB#63:
	movq	%rdx, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB12_76
LBB12_64:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	cmpq	%rcx, %rdx
	jge	LBB12_75
## BB#65:
	movq	%rdx, 8(%r13)
LBB12_66:
	movq	%rcx, 16(%r13)
	movq	%rcx, %rax
	jmp	LBB12_76
LBB12_75:
	movq	%rdx, %rax
LBB12_76:
	leaq	24(%r13), %rdx
	cmpq	%r14, %rdx
	je	LBB12_87
## BB#77:
	movl	$24, %ecx
	jmp	LBB12_79
	.p2align	4, 0x90
LBB12_78:                               ##   in Loop: Header=BB12_79 Depth=1
	movq	(%rdx), %rax
	addq	$8, %rcx
	movq	%rsi, %rdx
LBB12_79:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB12_81 Depth 2
	movq	(%rdx), %rsi
	cmpq	%rax, %rsi
	jge	LBB12_86
## BB#80:                               ##   in Loop: Header=BB12_79 Depth=1
	movq	%rcx, %rdi
	.p2align	4, 0x90
LBB12_81:                               ##   Parent Loop BB12_79 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, (%r13,%rdi)
	cmpq	$8, %rdi
	je	LBB12_84
## BB#82:                               ##   in Loop: Header=BB12_81 Depth=2
	movq	-16(%r13,%rdi), %rax
	addq	$-8, %rdi
	cmpq	%rax, %rsi
	jl	LBB12_81
## BB#83:                               ##   in Loop: Header=BB12_79 Depth=1
	addq	%r13, %rdi
	jmp	LBB12_85
	.p2align	4, 0x90
LBB12_84:                               ##   in Loop: Header=BB12_79 Depth=1
	movq	%r13, %rdi
LBB12_85:                               ##   in Loop: Header=BB12_79 Depth=1
	movq	%rsi, (%rdi)
LBB12_86:                               ##   in Loop: Header=BB12_79 Depth=1
	leaq	8(%rdx), %rsi
	cmpq	%r14, %rsi
	jne	LBB12_78
LBB12_87:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB12_68:
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rax, %rcx
	movq	-8(%r14), %rdx
	jge	LBB12_88
## BB#69:
	cmpq	%rcx, %rdx
	jge	LBB12_94
## BB#70:
	movq	%rdx, (%r13)
	movq	%rax, -8(%r14)
	jmp	LBB12_87
LBB12_71:
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
LBB12_72:
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rcx, %rax
	movq	16(%r13), %rdx
	jge	LBB12_91
## BB#73:
	cmpq	%rax, %rdx
	jge	LBB12_96
## BB#74:
	movq	%rdx, (%r13)
	jmp	LBB12_98
LBB12_88:
	cmpq	%rcx, %rdx
	jge	LBB12_87
## BB#89:
	movq	%rdx, 8(%r13)
	movq	%rcx, -8(%r14)
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rax, %rcx
	jge	LBB12_87
## BB#90:
	movq	%rcx, (%r13)
	movq	%rax, 8(%r13)
	jmp	LBB12_87
LBB12_91:
	cmpq	%rax, %rdx
	jge	LBB12_100
## BB#92:
	movq	%rdx, 8(%r13)
	movq	%rax, 16(%r13)
	cmpq	%rcx, %rdx
	jge	LBB12_101
## BB#93:
	movq	%rdx, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB12_101
LBB12_94:
	movq	%rcx, (%r13)
	movq	%rax, 8(%r13)
	movq	-8(%r14), %rcx
	cmpq	%rax, %rcx
	jge	LBB12_87
## BB#95:
	movq	%rcx, 8(%r13)
	movq	%rax, -8(%r14)
	jmp	LBB12_87
LBB12_96:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	cmpq	%rcx, %rdx
	jge	LBB12_100
## BB#97:
	movq	%rdx, 8(%r13)
LBB12_98:
	movq	%rcx, 16(%r13)
	movq	%rcx, %rax
	jmp	LBB12_101
LBB12_100:
	movq	%rdx, %rax
LBB12_101:
	movq	-8(%r14), %rcx
	cmpq	%rax, %rcx
	jge	LBB12_87
## BB#102:
	movq	%rcx, 16(%r13)
	movq	%rax, -8(%r14)
	movq	8(%r13), %rcx
	movq	16(%r13), %rax
	cmpq	%rcx, %rax
	jge	LBB12_87
## BB#103:
	movq	%rax, 8(%r13)
	movq	%rcx, 16(%r13)
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB12_87
## BB#104:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB12_87
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L12_0_set_87 = LBB12_87-LJTI12_0
L12_0_set_56 = LBB12_56-LJTI12_0
L12_0_set_68 = LBB12_68-LJTI12_0
L12_0_set_72 = LBB12_72-LJTI12_0
L12_0_set_71 = LBB12_71-LJTI12_0
LJTI12_0:
	.long	L12_0_set_87
	.long	L12_0_set_87
	.long	L12_0_set_56
	.long	L12_0_set_68
	.long	L12_0_set_72
	.long	L12_0_set_71
	.end_data_region

	.globl	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.weak_def_can_be_hidden	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.p2align	4, 0x90
__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_: ## @_ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp133:
	.cfi_def_cfa_offset 16
Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp135:
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %r9
	movq	(%rdi), %r10
	cmpq	%r10, %r9
	movq	(%rdx), %r11
	jge	LBB13_1
## BB#5:
	cmpq	%r9, %r11
	jge	LBB13_7
## BB#6:
	movq	%r11, (%rdi)
	movq	%r10, (%rdx)
	movl	$1, %eax
	jmp	LBB13_9
LBB13_1:
	xorl	%eax, %eax
	cmpq	%r9, %r11
	jge	LBB13_2
## BB#3:
	movq	%r11, (%rsi)
	movq	%r9, (%rdx)
	movq	(%rsi), %r10
	movq	(%rdi), %r11
	movl	$1, %eax
	cmpq	%r11, %r10
	jge	LBB13_10
## BB#4:
	movq	%r10, (%rdi)
	movq	%r11, (%rsi)
	movq	(%rdx), %r9
	movl	$2, %eax
	jmp	LBB13_10
LBB13_7:
	movq	%r9, (%rdi)
	movq	%r10, (%rsi)
	movq	(%rdx), %r9
	movl	$1, %eax
	cmpq	%r10, %r9
	jge	LBB13_10
## BB#8:
	movq	%r9, (%rsi)
	movq	%r10, (%rdx)
	movl	$2, %eax
LBB13_9:
	movq	%r10, %r9
	jmp	LBB13_10
LBB13_2:
	movq	%r11, %r9
LBB13_10:
	movq	(%rcx), %r10
	cmpq	%r9, %r10
	jge	LBB13_16
## BB#11:
	movq	%r10, (%rdx)
	movq	%r9, (%rcx)
	movq	(%rdx), %r9
	movq	(%rsi), %r10
	cmpq	%r10, %r9
	jge	LBB13_12
## BB#13:
	movq	%r9, (%rsi)
	movq	%r10, (%rdx)
	movq	(%rsi), %r9
	movq	(%rdi), %r10
	cmpq	%r10, %r9
	jge	LBB13_14
## BB#15:
	movq	%r9, (%rdi)
	movq	%r10, (%rsi)
	addl	$3, %eax
	jmp	LBB13_16
LBB13_12:
	incl	%eax
	jmp	LBB13_16
LBB13_14:
	addl	$2, %eax
LBB13_16:
	movq	(%r8), %r9
	movq	(%rcx), %r10
	cmpq	%r10, %r9
	jge	LBB13_24
## BB#17:
	movq	%r9, (%rcx)
	movq	%r10, (%r8)
	movq	(%rcx), %r8
	movq	(%rdx), %r9
	cmpq	%r9, %r8
	jge	LBB13_18
## BB#19:
	movq	%r8, (%rdx)
	movq	%r9, (%rcx)
	movq	(%rdx), %rcx
	movq	(%rsi), %r8
	cmpq	%r8, %rcx
	jge	LBB13_20
## BB#21:
	movq	%rcx, (%rsi)
	movq	%r8, (%rdx)
	movq	(%rsi), %rcx
	movq	(%rdi), %rdx
	cmpq	%rdx, %rcx
	jge	LBB13_22
## BB#23:
	movq	%rcx, (%rdi)
	movq	%rdx, (%rsi)
	addl	$4, %eax
LBB13_24:
	popq	%rbp
	retq
LBB13_18:
	incl	%eax
	popq	%rbp
	retq
LBB13_20:
	addl	$2, %eax
	popq	%rbp
	retq
LBB13_22:
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
Ltmp136:
	.cfi_def_cfa_offset 16
Ltmp137:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp138:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Ltmp139:
	.cfi_offset %rbx, -24
	movq	%rdx, %r9
	movq	%rsi, %r10
	movq	%r10, %rax
	subq	%rdi, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	ja	LBB14_4
## BB#1:
	movb	$1, %bl
	leaq	LJTI14_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB14_2:
	movq	-8(%r10), %rax
	movq	(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	LBB14_50
## BB#3:
	movq	%rax, (%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB14_50
LBB14_4:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rdx
	cmpq	%rcx, %rdx
	movq	16(%rdi), %rsi
	jge	LBB14_14
## BB#5:
	cmpq	%rdx, %rsi
	jge	LBB14_23
## BB#6:
	movq	%rsi, (%rdi)
	jmp	LBB14_25
LBB14_7:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	cmpq	%rcx, %rax
	movq	-8(%r10), %rdx
	jge	LBB14_17
## BB#8:
	cmpq	%rax, %rdx
	jge	LBB14_26
## BB#9:
	movq	%rdx, (%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB14_50
LBB14_10:
	leaq	16(%rdi), %rdx
	leaq	24(%rdi), %rcx
	addq	$-8, %r10
	leaq	8(%rdi), %rsi
	movq	%r10, %r8
	callq	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	jmp	LBB14_50
LBB14_11:
	movq	(%rdi), %rdx
	movq	8(%rdi), %rcx
	cmpq	%rdx, %rcx
	movq	16(%rdi), %rsi
	jge	LBB14_20
## BB#12:
	cmpq	%rcx, %rsi
	jge	LBB14_28
## BB#13:
	movq	%rsi, (%rdi)
	jmp	LBB14_30
LBB14_14:
	cmpq	%rdx, %rsi
	jge	LBB14_33
## BB#15:
	movq	%rsi, 8(%rdi)
	movq	%rdx, 16(%rdi)
	cmpq	%rcx, %rsi
	jge	LBB14_34
## BB#16:
	movq	%rsi, (%rdi)
	movq	%rcx, 8(%rdi)
	jmp	LBB14_34
LBB14_17:
	cmpq	%rax, %rdx
	jge	LBB14_50
## BB#18:
	movq	%rdx, 8(%rdi)
	movq	%rax, -8(%r10)
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	cmpq	%rax, %rcx
	jge	LBB14_50
## BB#19:
	movq	%rcx, (%rdi)
	movq	%rax, 8(%rdi)
	jmp	LBB14_50
LBB14_20:
	cmpq	%rcx, %rsi
	jge	LBB14_45
## BB#21:
	movq	%rsi, 8(%rdi)
	movq	%rcx, 16(%rdi)
	cmpq	%rdx, %rsi
	jge	LBB14_46
## BB#22:
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	jmp	LBB14_46
LBB14_23:
	movq	%rdx, (%rdi)
	movq	%rcx, 8(%rdi)
	cmpq	%rcx, %rsi
	jge	LBB14_33
## BB#24:
	movq	%rsi, 8(%rdi)
LBB14_25:
	movq	%rcx, 16(%rdi)
	movq	%rcx, %rdx
	jmp	LBB14_34
LBB14_33:
	movq	%rsi, %rdx
LBB14_34:
	leaq	24(%rdi), %rsi
	movb	$1, %r8b
	cmpq	%r10, %rsi
	je	LBB14_44
## BB#35:
	xorl	%r9d, %r9d
	jmp	LBB14_37
	.p2align	4, 0x90
LBB14_36:                               ##   in Loop: Header=BB14_37 Depth=1
	movq	(%rsi), %rdx
	movq	%rax, %rsi
LBB14_37:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB14_39 Depth 2
	movq	(%rsi), %rbx
	cmpq	%rdx, %rbx
	jge	LBB14_42
## BB#38:                               ##   in Loop: Header=BB14_37 Depth=1
	movq	%rsi, %rax
	.p2align	4, 0x90
LBB14_39:                               ##   Parent Loop BB14_37 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, %rcx
	movq	%rdx, (%rcx)
	leaq	-8(%rcx), %rax
	cmpq	%rdi, %rax
	je	LBB14_41
## BB#40:                               ##   in Loop: Header=BB14_39 Depth=2
	movq	-8(%rax), %rdx
	cmpq	%rdx, %rbx
	jl	LBB14_39
LBB14_41:                               ##   in Loop: Header=BB14_37 Depth=1
	movq	%rbx, -8(%rcx)
	incl	%r9d
	leaq	8(%rsi), %rax
	cmpq	%r10, %rax
	sete	%bl
	cmpl	$8, %r9d
	je	LBB14_43
LBB14_42:                               ##   in Loop: Header=BB14_37 Depth=1
	leaq	8(%rsi), %rax
	cmpq	%r10, %rax
	jne	LBB14_36
	jmp	LBB14_44
LBB14_26:
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	movq	-8(%r10), %rax
	cmpq	%rcx, %rax
	jge	LBB14_50
## BB#27:
	movq	%rax, 8(%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB14_50
LBB14_28:
	movq	%rcx, (%rdi)
	movq	%rdx, 8(%rdi)
	cmpq	%rdx, %rsi
	jge	LBB14_45
## BB#29:
	movq	%rsi, 8(%rdi)
LBB14_30:
	movq	%rdx, 16(%rdi)
	movq	%rdx, %rcx
	jmp	LBB14_46
LBB14_45:
	movq	%rsi, %rcx
LBB14_46:
	movq	-8(%r10), %rax
	cmpq	%rcx, %rax
	jge	LBB14_50
## BB#47:
	movq	%rax, 16(%rdi)
	movq	%rcx, -8(%r10)
	movq	8(%rdi), %rcx
	movq	16(%rdi), %rax
	cmpq	%rcx, %rax
	jge	LBB14_50
## BB#48:
	movq	%rax, 8(%rdi)
	movq	%rcx, 16(%rdi)
	movq	(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	LBB14_50
## BB#49:
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	jmp	LBB14_50
LBB14_43:
	xorl	%r8d, %r8d
LBB14_44:
	orb	%r8b, %bl
LBB14_50:
	andb	$1, %bl
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L14_0_set_50 = LBB14_50-LJTI14_0
L14_0_set_2 = LBB14_2-LJTI14_0
L14_0_set_7 = LBB14_7-LJTI14_0
L14_0_set_11 = LBB14_11-LJTI14_0
L14_0_set_10 = LBB14_10-LJTI14_0
LJTI14_0:
	.long	L14_0_set_50
	.long	L14_0_set_50
	.long	L14_0_set_2
	.long	L14_0_set_7
	.long	L14_0_set_11
	.long	L14_0_set_10
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
Ltmp161:
	.cfi_def_cfa_offset 16
Ltmp162:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp163:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp164:
	.cfi_offset %rbx, -56
Ltmp165:
	.cfi_offset %r12, -48
Ltmp166:
	.cfi_offset %r13, -40
Ltmp167:
	.cfi_offset %r14, -32
Ltmp168:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
Ltmp140:
	leaq	-80(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp141:
## BB#1:
	cmpb	$0, -80(%rbp)
	je	LBB15_10
## BB#2:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %r12
	movq	40(%rbx,%rax), %rdi
	movl	8(%rbx,%rax), %r13d
	movl	144(%rbx,%rax), %eax
	cmpl	$-1, %eax
	jne	LBB15_7
## BB#3:
Ltmp143:
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	leaq	-56(%rbp), %rdi
	movq	%r12, %rsi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp144:
## BB#4:
Ltmp145:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-56(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp146:
## BB#5:
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp147:
	movl	$32, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movb	%al, -41(%rbp)          ## 1-byte Spill
Ltmp148:
## BB#6:
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	-41(%rbp), %eax         ## 1-byte Folded Reload
	movl	%eax, 144(%r12)
	movq	-64(%rbp), %rdi         ## 8-byte Reload
LBB15_7:
	addq	%r15, %r14
	andl	$176, %r13d
	cmpl	$32, %r13d
	movq	%r15, %rdx
	cmoveq	%r14, %rdx
Ltmp150:
	movsbl	%al, %r9d
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r12, %r8
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp151:
## BB#8:
	testq	%rax, %rax
	jne	LBB15_10
## BB#9:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$5, %esi
Ltmp152:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp153:
LBB15_10:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB15_15:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB15_19:
Ltmp149:
	movq	%rax, %r14
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB15_12
LBB15_20:
Ltmp142:
	movq	%rax, %r14
	jmp	LBB15_13
LBB15_11:
Ltmp154:
	movq	%rax, %r14
LBB15_12:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB15_13:
	movq	%rbx, %r15
	movq	%r14, %rdi
	callq	___cxa_begin_catch
	movq	(%rbx), %rax
	addq	-24(%rax), %r15
Ltmp155:
	movq	%r15, %rdi
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp156:
## BB#14:
	callq	___cxa_end_catch
	jmp	LBB15_15
LBB15_16:
Ltmp157:
	movq	%rax, %rbx
Ltmp158:
	callq	___cxa_end_catch
Ltmp159:
## BB#17:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB15_18:
Ltmp160:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table15:
Lexception6:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	125                     ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	117                     ## Call site table length
Lset75 = Ltmp140-Lfunc_begin6           ## >> Call Site 1 <<
	.long	Lset75
Lset76 = Ltmp141-Ltmp140                ##   Call between Ltmp140 and Ltmp141
	.long	Lset76
Lset77 = Ltmp142-Lfunc_begin6           ##     jumps to Ltmp142
	.long	Lset77
	.byte	1                       ##   On action: 1
Lset78 = Ltmp143-Lfunc_begin6           ## >> Call Site 2 <<
	.long	Lset78
Lset79 = Ltmp144-Ltmp143                ##   Call between Ltmp143 and Ltmp144
	.long	Lset79
Lset80 = Ltmp154-Lfunc_begin6           ##     jumps to Ltmp154
	.long	Lset80
	.byte	1                       ##   On action: 1
Lset81 = Ltmp145-Lfunc_begin6           ## >> Call Site 3 <<
	.long	Lset81
Lset82 = Ltmp148-Ltmp145                ##   Call between Ltmp145 and Ltmp148
	.long	Lset82
Lset83 = Ltmp149-Lfunc_begin6           ##     jumps to Ltmp149
	.long	Lset83
	.byte	1                       ##   On action: 1
Lset84 = Ltmp150-Lfunc_begin6           ## >> Call Site 4 <<
	.long	Lset84
Lset85 = Ltmp153-Ltmp150                ##   Call between Ltmp150 and Ltmp153
	.long	Lset85
Lset86 = Ltmp154-Lfunc_begin6           ##     jumps to Ltmp154
	.long	Lset86
	.byte	1                       ##   On action: 1
Lset87 = Ltmp153-Lfunc_begin6           ## >> Call Site 5 <<
	.long	Lset87
Lset88 = Ltmp155-Ltmp153                ##   Call between Ltmp153 and Ltmp155
	.long	Lset88
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset89 = Ltmp155-Lfunc_begin6           ## >> Call Site 6 <<
	.long	Lset89
Lset90 = Ltmp156-Ltmp155                ##   Call between Ltmp155 and Ltmp156
	.long	Lset90
Lset91 = Ltmp157-Lfunc_begin6           ##     jumps to Ltmp157
	.long	Lset91
	.byte	0                       ##   On action: cleanup
Lset92 = Ltmp156-Lfunc_begin6           ## >> Call Site 7 <<
	.long	Lset92
Lset93 = Ltmp158-Ltmp156                ##   Call between Ltmp156 and Ltmp158
	.long	Lset93
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset94 = Ltmp158-Lfunc_begin6           ## >> Call Site 8 <<
	.long	Lset94
Lset95 = Ltmp159-Ltmp158                ##   Call between Ltmp158 and Ltmp159
	.long	Lset95
Lset96 = Ltmp160-Lfunc_begin6           ##     jumps to Ltmp160
	.long	Lset96
	.byte	1                       ##   On action: 1
Lset97 = Ltmp159-Lfunc_begin6           ## >> Call Site 9 <<
	.long	Lset97
Lset98 = Lfunc_end6-Ltmp159             ##   Call between Ltmp159 and Lfunc_end6
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
Ltmp172:
	.cfi_def_cfa_offset 16
Ltmp173:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp174:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp175:
	.cfi_offset %rbx, -56
Ltmp176:
	.cfi_offset %r12, -48
Ltmp177:
	.cfi_offset %r13, -40
Ltmp178:
	.cfi_offset %r14, -32
Ltmp179:
	.cfi_offset %r15, -24
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	LBB16_12
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
	jle	LBB16_3
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
	jne	LBB16_12
LBB16_3:
	testq	%r13, %r13
	jle	LBB16_6
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
Ltmp169:
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	*%rax
	movq	%rax, %r14
Ltmp170:
## BB#5:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	cmpq	%r13, %r14
	jne	LBB16_12
LBB16_6:
	subq	%r12, %r15
	testq	%r15, %r15
	jle	LBB16_8
## BB#7:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	*96(%rax)
	cmpq	%r15, %rax
	jne	LBB16_12
LBB16_8:
	movq	-80(%rbp), %rax         ## 8-byte Reload
	movq	$0, 24(%rax)
	jmp	LBB16_13
LBB16_12:
	xorl	%ebx, %ebx
LBB16_13:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB16_14:
Ltmp171:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table16:
Lexception7:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset99 = Lfunc_begin7-Lfunc_begin7      ## >> Call Site 1 <<
	.long	Lset99
Lset100 = Ltmp169-Lfunc_begin7          ##   Call between Lfunc_begin7 and Ltmp169
	.long	Lset100
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset101 = Ltmp169-Lfunc_begin7          ## >> Call Site 2 <<
	.long	Lset101
Lset102 = Ltmp170-Ltmp169               ##   Call between Ltmp169 and Ltmp170
	.long	Lset102
Lset103 = Ltmp171-Lfunc_begin7          ##     jumps to Ltmp171
	.long	Lset103
	.byte	0                       ##   On action: cleanup
Lset104 = Ltmp170-Lfunc_begin7          ## >> Call Site 3 <<
	.long	Lset104
Lset105 = Lfunc_end7-Ltmp170            ##   Call between Ltmp170 and Lfunc_end7
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

.subsections_via_symbols
