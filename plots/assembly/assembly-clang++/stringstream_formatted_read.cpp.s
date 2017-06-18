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
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
## BB#0:
	pushq	%rbp
Ltmp81:
	.cfi_def_cfa_offset 16
Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp83:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$296, %rsp              ## imm = 0x128
Ltmp84:
	.cfi_offset %rbx, -56
Ltmp85:
	.cfi_offset %r12, -48
Ltmp86:
	.cfi_offset %r13, -40
Ltmp87:
	.cfi_offset %r14, -32
Ltmp88:
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	leaq	-216(%rbp), %rdi
	leaq	-320(%rbp), %r15
	movq	__ZTCNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE@GOTPCREL(%rip), %rax
	leaq	64(%rax), %rcx
	movq	%rcx, -216(%rbp)
	addq	$24, %rax
	movd	%rax, %xmm0
	movaps	%xmm0, -336(%rbp)
Ltmp69:
	movq	%r15, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp70:
## BB#1:
	movq	$0, -80(%rbp)
	movl	$-1, -72(%rbp)
	movq	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %r12
	leaq	24(%r12), %rbx
	movq	%rbx, -336(%rbp)
	addq	$64, %r12
	movq	%r12, -216(%rbp)
Ltmp72:
	movq	%r15, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp73:
## BB#2:
	movq	%rbx, -56(%rbp)         ## 8-byte Spill
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %r13
	addq	$16, %r13
	movq	%r13, -320(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -240(%rbp)
	movaps	%xmm0, -256(%rbp)
	movl	$8, -224(%rbp)
Ltmp75:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE
Ltmp76:
## BB#3:
	movl	$0, -44(%rbp)
	xorl	%ebx, %ebx
	leaq	-336(%rbp), %r15
	leaq	-44(%rbp), %r14
	jmp	LBB5_4
	.p2align	4, 0x90
LBB5_6:                                 ##   in Loop: Header=BB5_4 Depth=1
	incl	%ebx
LBB5_4:                                 ## =>This Inner Loop Header: Depth=1
Ltmp78:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi
Ltmp79:
## BB#5:                                ##   in Loop: Header=BB5_4 Depth=1
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	je	LBB5_6
## BB#14:
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -336(%rbp)
	movq	%r12, -216(%rbp)
	movq	%r13, -320(%rbp)
	leaq	-256(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	leaq	-320(%rbp), %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	-336(%rbp), %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	leaq	-216(%rbp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movl	%ebx, %eax
	addq	$296, %rsp              ## imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB5_7:
Ltmp77:
	movq	%rax, %r15
	jmp	LBB5_8
LBB5_10:
Ltmp74:
	movq	%rax, %r15
	jmp	LBB5_11
LBB5_9:
Ltmp71:
	movq	%rax, %r15
	jmp	LBB5_12
LBB5_13:
Ltmp80:
	movq	%rax, %r15
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -336(%rbp)
	movq	%r12, -216(%rbp)
	movq	%r13, -320(%rbp)
LBB5_8:
	leaq	-256(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	leaq	-320(%rbp), %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
LBB5_11:
	movq	__ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	-336(%rbp), %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
LBB5_12:
	leaq	-216(%rbp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	%r15, %rdi
	callq	__Unwind_Resume
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table5:
Lexception5:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\303\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	65                      ## Call site table length
Lset51 = Ltmp69-Lfunc_begin5            ## >> Call Site 1 <<
	.long	Lset51
Lset52 = Ltmp70-Ltmp69                  ##   Call between Ltmp69 and Ltmp70
	.long	Lset52
Lset53 = Ltmp71-Lfunc_begin5            ##     jumps to Ltmp71
	.long	Lset53
	.byte	0                       ##   On action: cleanup
Lset54 = Ltmp72-Lfunc_begin5            ## >> Call Site 2 <<
	.long	Lset54
Lset55 = Ltmp73-Ltmp72                  ##   Call between Ltmp72 and Ltmp73
	.long	Lset55
Lset56 = Ltmp74-Lfunc_begin5            ##     jumps to Ltmp74
	.long	Lset56
	.byte	0                       ##   On action: cleanup
Lset57 = Ltmp75-Lfunc_begin5            ## >> Call Site 3 <<
	.long	Lset57
Lset58 = Ltmp76-Ltmp75                  ##   Call between Ltmp75 and Ltmp76
	.long	Lset58
Lset59 = Ltmp77-Lfunc_begin5            ##     jumps to Ltmp77
	.long	Lset59
	.byte	0                       ##   On action: cleanup
Lset60 = Ltmp78-Lfunc_begin5            ## >> Call Site 4 <<
	.long	Lset60
Lset61 = Ltmp79-Ltmp78                  ##   Call between Ltmp78 and Ltmp79
	.long	Lset61
Lset62 = Ltmp80-Lfunc_begin5            ##     jumps to Ltmp80
	.long	Lset62
	.byte	0                       ##   On action: cleanup
Lset63 = Ltmp79-Lfunc_begin5            ## >> Call Site 5 <<
	.long	Lset63
Lset64 = Lfunc_end5-Ltmp79              ##   Call between Ltmp79 and Lfunc_end5
	.long	Lset64
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	4, 0x90
__ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: ## @_ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp89:
	.cfi_def_cfa_offset 16
Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp91:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Ltmp92:
	.cfi_offset %rbx, -32
Ltmp93:
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	movq	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, (%rbx)
	addq	$64, %rax
	movq	%rax, 120(%rbx)
	leaq	16(%rbx), %r14
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, 16(%rbx)
	leaq	80(%rbx), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	%r14, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	120(%rbx), %r14
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev ## TAILCALL
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI7_0:
	.space	16
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
## BB#0:
	pushq	%rbp
Ltmp116:
	.cfi_def_cfa_offset 16
Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp118:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Ltmp119:
	.cfi_offset %rbx, -56
Ltmp120:
	.cfi_offset %r12, -48
Ltmp121:
	.cfi_offset %r13, -40
Ltmp122:
	.cfi_offset %r14, -32
Ltmp123:
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
Ltmp94:
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r14, %rdi
	callq	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	movl	%eax, %r14d
Ltmp95:
## BB#1:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	16(%r15), %rbx
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
Ltmp97:
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r15, %rdi
	callq	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	movl	%eax, %r15d
Ltmp98:
## BB#2:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
	testl	%r14d, %r14d
	je	LBB7_3
## BB#4:
	movslq	%r14d, %rbx
	leaq	(,%rbx,8), %rdi
Ltmp100:
	callq	__Znwm
	movq	%rax, %rsi
Ltmp101:
## BB#5:
	leaq	(%rsi,%rbx,8), %rax
	movq	%rsi, -64(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rax, -48(%rbp)
	testl	%r14d, %r14d
	jle	LBB7_6
## BB#10:
	xorl	%r13d, %r13d
	leaq	-96(%rbp), %rbx
	.p2align	4, 0x90
LBB7_11:                                ## =>This Inner Loop Header: Depth=1
Ltmp102:
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	__ZN10benchmarks4util20generate_ints_stringEi
Ltmp103:
## BB#12:                               ##   in Loop: Header=BB7_11 Depth=1
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movq	%rax, %r12
Ltmp105:
	movq	%rbx, %rdi
	callq	__Z12read_numbersRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
Ltmp106:
## BB#13:                               ##   in Loop: Header=BB7_11 Depth=1
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	subq	%r12, %rax
	movabsq	$4835703278458516699, %rcx ## imm = 0x431BDE82D7B634DB
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$18, %rdx
	addq	%rax, %rdx
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	LBB7_15
## BB#14:                               ##   in Loop: Header=BB7_11 Depth=1
	movq	%rdx, (%rax)
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	jmp	LBB7_16
	.p2align	4, 0x90
LBB7_15:                                ##   in Loop: Header=BB7_11 Depth=1
Ltmp108:
	leaq	-64(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	callq	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE21__push_back_slow_pathIRKS5_EEvOT_
Ltmp109:
LBB7_16:                                ##   in Loop: Header=BB7_11 Depth=1
	movq	%rbx, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	incl	%r13d
	cmpl	%r14d, %r13d
	jl	LBB7_11
## BB#17:
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	leaq	-56(%rbp), %rbx
	jmp	LBB7_18
LBB7_3:
	xorl	%esi, %esi
LBB7_6:
	leaq	-56(%rbp), %rbx
	movq	%rsi, %rdi
LBB7_18:
	leaq	-96(%rbp), %rdx
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	movq	(%rbx), %rax
	movq	-64(%rbp), %rcx
	subq	%rcx, %rax
	sarq	%rax
	andq	$-8, %rax
	movq	(%rcx,%rax), %rsi
Ltmp111:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp112:
## BB#19:
	movb	$32, -72(%rbp)
Ltmp113:
	leaq	-72(%rbp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp114:
## BB#20:
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB7_24
## BB#21:
	movq	-56(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB7_23
## BB#22:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
LBB7_23:
	callq	__ZdlPv
LBB7_24:
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB7_9:
Ltmp99:
	jmp	LBB7_8
LBB7_7:
Ltmp96:
LBB7_8:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB7_29:
Ltmp115:
	jmp	LBB7_30
LBB7_27:
Ltmp110:
	jmp	LBB7_28
LBB7_26:
Ltmp107:
LBB7_28:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	LBB7_31
LBB7_25:
Ltmp104:
LBB7_30:
	movq	%rax, %rbx
LBB7_31:
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB7_35
## BB#32:
	movq	-56(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB7_34
## BB#33:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
LBB7_34:
	callq	__ZdlPv
LBB7_35:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table7:
Lexception6:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\205\201\200\200"      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\202\001"              ## Call site table length
Lset65 = Lfunc_begin6-Lfunc_begin6      ## >> Call Site 1 <<
	.long	Lset65
Lset66 = Ltmp94-Lfunc_begin6            ##   Call between Lfunc_begin6 and Ltmp94
	.long	Lset66
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset67 = Ltmp94-Lfunc_begin6            ## >> Call Site 2 <<
	.long	Lset67
Lset68 = Ltmp95-Ltmp94                  ##   Call between Ltmp94 and Ltmp95
	.long	Lset68
Lset69 = Ltmp96-Lfunc_begin6            ##     jumps to Ltmp96
	.long	Lset69
	.byte	0                       ##   On action: cleanup
Lset70 = Ltmp95-Lfunc_begin6            ## >> Call Site 3 <<
	.long	Lset70
Lset71 = Ltmp97-Ltmp95                  ##   Call between Ltmp95 and Ltmp97
	.long	Lset71
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset72 = Ltmp97-Lfunc_begin6            ## >> Call Site 4 <<
	.long	Lset72
Lset73 = Ltmp98-Ltmp97                  ##   Call between Ltmp97 and Ltmp98
	.long	Lset73
Lset74 = Ltmp99-Lfunc_begin6            ##     jumps to Ltmp99
	.long	Lset74
	.byte	0                       ##   On action: cleanup
Lset75 = Ltmp100-Lfunc_begin6           ## >> Call Site 5 <<
	.long	Lset75
Lset76 = Ltmp101-Ltmp100                ##   Call between Ltmp100 and Ltmp101
	.long	Lset76
Lset77 = Ltmp115-Lfunc_begin6           ##     jumps to Ltmp115
	.long	Lset77
	.byte	0                       ##   On action: cleanup
Lset78 = Ltmp102-Lfunc_begin6           ## >> Call Site 6 <<
	.long	Lset78
Lset79 = Ltmp103-Ltmp102                ##   Call between Ltmp102 and Ltmp103
	.long	Lset79
Lset80 = Ltmp104-Lfunc_begin6           ##     jumps to Ltmp104
	.long	Lset80
	.byte	0                       ##   On action: cleanup
Lset81 = Ltmp105-Lfunc_begin6           ## >> Call Site 7 <<
	.long	Lset81
Lset82 = Ltmp106-Ltmp105                ##   Call between Ltmp105 and Ltmp106
	.long	Lset82
Lset83 = Ltmp107-Lfunc_begin6           ##     jumps to Ltmp107
	.long	Lset83
	.byte	0                       ##   On action: cleanup
Lset84 = Ltmp108-Lfunc_begin6           ## >> Call Site 8 <<
	.long	Lset84
Lset85 = Ltmp109-Ltmp108                ##   Call between Ltmp108 and Ltmp109
	.long	Lset85
Lset86 = Ltmp110-Lfunc_begin6           ##     jumps to Ltmp110
	.long	Lset86
	.byte	0                       ##   On action: cleanup
Lset87 = Ltmp111-Lfunc_begin6           ## >> Call Site 9 <<
	.long	Lset87
Lset88 = Ltmp114-Ltmp111                ##   Call between Ltmp111 and Ltmp114
	.long	Lset88
Lset89 = Ltmp115-Lfunc_begin6           ##     jumps to Ltmp115
	.long	Lset89
	.byte	0                       ##   On action: cleanup
Lset90 = Ltmp114-Lfunc_begin6           ## >> Call Site 10 <<
	.long	Lset90
Lset91 = Lfunc_end6-Ltmp114             ##   Call between Ltmp114 and Lfunc_end6
	.long	Lset91
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

	.globl	__ZTv0_n24_NSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.weak_def_can_be_hidden	__ZTv0_n24_NSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	4, 0x90
__ZTv0_n24_NSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: ## @_ZTv0_n24_NSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp124:
	.cfi_def_cfa_offset 16
Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp126:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp127:
	.cfi_offset %rbx, -40
Ltmp128:
	.cfi_offset %r14, -32
Ltmp129:
	.cfi_offset %r15, -24
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	leaq	(%rdi,%rax), %r15
	movq	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rcx
	leaq	24(%rcx), %rdx
	movq	%rdx, (%rdi,%rax)
	leaq	120(%rdi,%rax), %r14
	addq	$64, %rcx
	movq	%rcx, 120(%rdi,%rax)
	leaq	16(%rdi,%rax), %rbx
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, 16(%rdi,%rax)
	leaq	80(%rdi,%rax), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%r15, %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev ## TAILCALL
	.cfi_endproc

	.globl	__ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.weak_def_can_be_hidden	__ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.p2align	4, 0x90
__ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev: ## @_ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp130:
	.cfi_def_cfa_offset 16
Ltmp131:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp132:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp133:
	.cfi_offset %rbx, -40
Ltmp134:
	.cfi_offset %r14, -32
Ltmp135:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movq	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, (%rbx)
	leaq	120(%rbx), %r14
	addq	$64, %rax
	movq	%rax, 120(%rbx)
	leaq	16(%rbx), %r15
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, 16(%rbx)
	leaq	80(%rbx), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	%r15, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
	.cfi_endproc

	.globl	__ZTv0_n24_NSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.weak_def_can_be_hidden	__ZTv0_n24_NSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.p2align	4, 0x90
__ZTv0_n24_NSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev: ## @_ZTv0_n24_NSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp139:
	.cfi_offset %rbx, -40
Ltmp140:
	.cfi_offset %r14, -32
Ltmp141:
	.cfi_offset %r15, -24
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	leaq	(%rdi,%rax), %r15
	movq	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rcx
	leaq	24(%rcx), %rdx
	movq	%rdx, (%rdi,%rax)
	leaq	120(%rdi,%rax), %r14
	addq	$64, %rcx
	movq	%rcx, 120(%rdi,%rax)
	leaq	16(%rdi,%rax), %rbx
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, 16(%rdi,%rax)
	leaq	80(%rdi,%rax), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%r15, %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	%r15, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
	.cfi_endproc

	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp142:
	.cfi_def_cfa_offset 16
Ltmp143:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp144:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Ltmp145:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	leaq	64(%rbx), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev ## TAILCALL
	.cfi_endproc

	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp146:
	.cfi_def_cfa_offset 16
Ltmp147:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp148:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Ltmp149:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	leaq	64(%rbx), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
	.cfi_endproc

	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp150:
	.cfi_def_cfa_offset 16
Ltmp151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp152:
	.cfi_def_cfa_register %rbp
	movq	48(%rsi), %r10
	movq	88(%rsi), %r9
	cmpq	%r10, %r9
	jae	LBB14_2
## BB#1:
	movq	%r10, 88(%rsi)
	movq	%r10, %r9
LBB14_2:
	movl	%r8d, %eax
	andl	$24, %eax
	je	LBB14_3
## BB#4:
	cmpl	$1, %ecx
	jne	LBB14_6
## BB#5:
	cmpl	$24, %eax
	je	LBB14_3
LBB14_6:
	testl	%ecx, %ecx
	je	LBB14_7
## BB#8:
	cmpl	$2, %ecx
	je	LBB14_12
## BB#9:
	cmpl	$1, %ecx
	jne	LBB14_3
## BB#10:
	testb	$8, %r8b
	jne	LBB14_11
## BB#15:
	movq	%r10, %rcx
	subq	40(%rsi), %rcx
	jmp	LBB14_16
LBB14_7:
	xorl	%ecx, %ecx
	jmp	LBB14_16
LBB14_12:
	testb	$1, 64(%rsi)
	jne	LBB14_13
## BB#14:
	leaq	64(%rsi), %rax
	incq	%rax
	movq	%r9, %rcx
	subq	%rax, %rcx
	jmp	LBB14_16
LBB14_11:
	movq	24(%rsi), %rcx
	subq	16(%rsi), %rcx
	jmp	LBB14_16
LBB14_13:
	movq	%r9, %rcx
	subq	80(%rsi), %rcx
LBB14_16:
	addq	%rdx, %rcx
	js	LBB14_3
## BB#17:
	testb	$1, 64(%rsi)
	jne	LBB14_18
## BB#19:
	leaq	64(%rsi), %rdx
	incq	%rdx
	jmp	LBB14_20
LBB14_18:
	movq	80(%rsi), %rdx
LBB14_20:
	movq	%r9, %rax
	subq	%rdx, %rax
	cmpq	%rcx, %rax
	jge	LBB14_21
LBB14_3:
	movq	$0, 120(%rdi)
	movq	$0, 112(%rdi)
	movq	$0, 104(%rdi)
	movq	$0, 96(%rdi)
	movq	$0, 88(%rdi)
	movq	$0, 80(%rdi)
	movq	$0, 72(%rdi)
	movq	$0, 64(%rdi)
	movq	$0, 56(%rdi)
	movq	$0, 48(%rdi)
	movq	$0, 40(%rdi)
	movq	$0, 32(%rdi)
	movq	$0, 24(%rdi)
	movq	$0, 16(%rdi)
	movq	$0, 8(%rdi)
	movq	$0, (%rdi)
	movq	$-1, 128(%rdi)
LBB14_31:
	movq	%rdi, %rax
	popq	%rbp
	retq
LBB14_21:
	movl	%r8d, %edx
	andl	$8, %edx
	testq	%rcx, %rcx
	je	LBB14_26
## BB#22:
	testl	%edx, %edx
	je	LBB14_24
## BB#23:
	cmpq	$0, 24(%rsi)
	je	LBB14_3
LBB14_24:
	testb	$16, %r8b
	je	LBB14_26
## BB#25:
	testq	%r10, %r10
	je	LBB14_3
LBB14_26:
	testl	%edx, %edx
	je	LBB14_28
## BB#27:
	movq	16(%rsi), %rax
	addq	%rcx, %rax
	movq	%rax, 24(%rsi)
	movq	%r9, 32(%rsi)
LBB14_28:
	testb	$16, %r8b
	je	LBB14_30
## BB#29:
	movslq	%ecx, %rax
	addq	40(%rsi), %rax
	movq	%rax, 48(%rsi)
LBB14_30:
	movq	$0, 120(%rdi)
	movq	$0, 112(%rdi)
	movq	$0, 104(%rdi)
	movq	$0, 96(%rdi)
	movq	$0, 88(%rdi)
	movq	$0, 80(%rdi)
	movq	$0, 72(%rdi)
	movq	$0, 64(%rdi)
	movq	$0, 56(%rdi)
	movq	$0, 48(%rdi)
	movq	$0, 40(%rdi)
	movq	$0, 32(%rdi)
	movq	$0, 24(%rdi)
	movq	$0, 16(%rdi)
	movq	$0, 8(%rdi)
	movq	$0, (%rdi)
	movq	%rcx, 128(%rdi)
	jmp	LBB14_31
	.cfi_endproc

	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp153:
	.cfi_def_cfa_offset 16
Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp155:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Ltmp156:
	.cfi_offset %rbx, -24
	movl	%edx, %r8d
	movq	%rdi, %rbx
	movq	(%rsi), %rax
	movq	144(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	*32(%rax)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp157:
	.cfi_def_cfa_offset 16
Ltmp158:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp159:
	.cfi_def_cfa_register %rbp
	movq	48(%rdi), %rax
	movq	88(%rdi), %rcx
	cmpq	%rax, %rcx
	jae	LBB16_2
## BB#1:
	movq	%rax, 88(%rdi)
	movq	%rax, %rcx
LBB16_2:
	movl	$-1, %eax
	testb	$8, 96(%rdi)
	je	LBB16_7
## BB#3:
	movq	32(%rdi), %rdx
	cmpq	%rcx, %rdx
	jae	LBB16_5
## BB#4:
	movq	%rcx, 32(%rdi)
	movq	%rcx, %rdx
LBB16_5:
	movq	24(%rdi), %rcx
	cmpq	%rdx, %rcx
	jae	LBB16_7
## BB#6:
	movzbl	(%rcx), %eax
LBB16_7:
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp160:
	.cfi_def_cfa_offset 16
Ltmp161:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp162:
	.cfi_def_cfa_register %rbp
	movq	48(%rdi), %rax
	movq	88(%rdi), %rcx
	cmpq	%rax, %rcx
	jae	LBB17_2
## BB#1:
	movq	%rax, 88(%rdi)
	movq	%rax, %rcx
LBB17_2:
	movq	24(%rdi), %rdx
	movl	$-1, %eax
	cmpq	%rdx, 16(%rdi)
	jae	LBB17_8
## BB#3:
	cmpl	$-1, %esi
	je	LBB17_4
## BB#5:
	testb	$16, 96(%rdi)
	jne	LBB17_7
## BB#6:
	cmpb	-1(%rdx), %sil
	jne	LBB17_8
LBB17_7:
	decq	%rdx
	movq	%rdx, 24(%rdi)
	movq	%rcx, 32(%rdi)
	movb	%sil, (%rdx)
	movl	%esi, %eax
LBB17_8:
	popq	%rbp
	retq
LBB17_4:
	decq	%rdx
	movq	%rdx, 24(%rdi)
	movq	%rcx, 32(%rdi)
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
## BB#0:
	pushq	%rbp
Ltmp168:
	.cfi_def_cfa_offset 16
Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp170:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp171:
	.cfi_offset %rbx, -56
Ltmp172:
	.cfi_offset %r12, -48
Ltmp173:
	.cfi_offset %r13, -40
Ltmp174:
	.cfi_offset %r14, -32
Ltmp175:
	.cfi_offset %r15, -24
	movl	%esi, %r14d
	movq	%rdi, %rbx
	xorl	%r12d, %r12d
	cmpl	$-1, %r14d
	je	LBB18_20
## BB#1:
	movq	24(%rbx), %r15
	movq	48(%rbx), %r13
	subq	16(%rbx), %r15
	movq	56(%rbx), %rax
	cmpq	%rax, %r13
	je	LBB18_3
## BB#2:
	leaq	88(%rbx), %rcx
	movq	88(%rbx), %rdi
	leaq	96(%rbx), %rdx
	jmp	LBB18_13
LBB18_3:
	movl	$-1, %r12d
	testb	$16, 96(%rbx)
	je	LBB18_20
## BB#4:
	movq	40(%rbx), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	movq	88(%rbx), %rax
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	leaq	64(%rbx), %rdi
Ltmp163:
	xorl	%esi, %esi
	movq	%rdi, -48(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp164:
## BB#5:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	testb	$1, (%rax)
	movq	%rax, %rdi
	jne	LBB18_7
## BB#6:
	movl	$22, %esi
	jmp	LBB18_8
LBB18_7:
	movq	(%rdi), %rsi
	andq	$-2, %rsi
	decq	%rsi
LBB18_8:
Ltmp165:
	xorl	%edx, %edx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc
Ltmp166:
## BB#9:
	movq	-56(%rbp), %rax         ## 8-byte Reload
	subq	%rax, %r13
	leaq	88(%rbx), %rcx
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	subq	%rax, %rdi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	movzbl	(%rdx), %eax
	testb	$1, %al
	movq	%rdx, %rsi
	jne	LBB18_10
## BB#11:
	incq	%rsi
	shrq	%rax
	jmp	LBB18_12
LBB18_10:
	movq	72(%rbx), %rax
	movq	80(%rbx), %rsi
LBB18_12:
	leaq	96(%rbx), %rdx
	addq	%rsi, %rax
	movq	%rsi, 40(%rbx)
	movq	%rax, 56(%rbx)
	movslq	%r13d, %r13
	addq	%rsi, %r13
	movq	%r13, 48(%rbx)
	addq	%rsi, %rdi
	movq	%rdi, 88(%rbx)
LBB18_13:
	leaq	1(%r13), %rsi
	movq	%rsi, -72(%rbp)
	cmpq	%rdi, %rsi
	leaq	-72(%rbp), %rdi
	cmovbq	%rcx, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, (%rcx)
	testb	$8, (%rdx)
	je	LBB18_18
## BB#14:
	testb	$1, 64(%rbx)
	jne	LBB18_15
## BB#16:
	leaq	64(%rbx), %rcx
	incq	%rcx
	jmp	LBB18_17
LBB18_15:
	movq	80(%rbx), %rcx
LBB18_17:
	addq	%rcx, %r15
	movq	%rcx, 16(%rbx)
	movq	%r15, 24(%rbx)
	movq	%rdi, 32(%rbx)
LBB18_18:
	cmpq	%rax, %r13
	je	LBB18_22
## BB#19:
	movq	%rsi, 48(%rbx)
	movb	%r14b, (%r13)
	movzbl	%r14b, %r12d
LBB18_20:
	movl	%r12d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB18_22:
	movq	(%rbx), %rax
	movq	104(%rax), %rax
	movzbl	%r14b, %esi
	movq	%rbx, %rdi
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   ## TAILCALL
LBB18_21:
Ltmp167:
	movq	%rax, %rdi
	callq	___cxa_begin_catch
	callq	___cxa_end_catch
	jmp	LBB18_20
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table18:
Lexception7:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\242\200\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	26                      ## Call site table length
Lset92 = Ltmp163-Lfunc_begin7           ## >> Call Site 1 <<
	.long	Lset92
Lset93 = Ltmp166-Ltmp163                ##   Call between Ltmp163 and Ltmp166
	.long	Lset93
Lset94 = Ltmp167-Lfunc_begin7           ##     jumps to Ltmp167
	.long	Lset94
	.byte	1                       ##   On action: 1
Lset95 = Ltmp166-Lfunc_begin7           ## >> Call Site 2 <<
	.long	Lset95
Lset96 = Lfunc_end7-Ltmp166             ##   Call between Ltmp166 and Lfunc_end7
	.long	Lset96
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	.weak_def_can_be_hidden	__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	.p2align	4, 0x90
__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE: ## @_ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp176:
	.cfi_def_cfa_offset 16
Ltmp177:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp178:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
Ltmp179:
	.cfi_offset %rbx, -40
Ltmp180:
	.cfi_offset %r14, -32
Ltmp181:
	.cfi_offset %r15, -24
	movq	%rdx, %r8
	movl	(%r8), %eax
	movl	4(%r8), %r11d
	subl	%eax, %r11d
	je	LBB19_6
## BB#1:
	incl	%r11d
	je	LBB19_2
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
LBB19_4:                                ## =>This Inner Loop Header: Depth=1
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
	jae	LBB19_4
## BB#5:
	addl	(%r8), %eax
	jmp	LBB19_6
LBB19_2:
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
LBB19_6:
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp182:
	.cfi_def_cfa_offset 16
Ltmp183:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp184:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp185:
	.cfi_offset %rbx, -40
Ltmp186:
	.cfi_offset %r14, -32
Ltmp187:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	leaq	64(%rbx), %r14
	movq	%r14, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
	movq	$0, 88(%rbx)
	movl	96(%rbx), %eax
	testb	$8, %al
	je	LBB20_5
## BB#1:
	movzbl	(%r14), %ecx
	testb	$1, %cl
	jne	LBB20_2
## BB#3:
	shrq	%rcx
	leaq	1(%r14,%rcx), %rcx
	leaq	1(%r14), %rdx
	jmp	LBB20_4
LBB20_2:
	movq	80(%rbx), %rdx
	movq	72(%rbx), %rcx
	addq	%rdx, %rcx
LBB20_4:
	movq	%rcx, 88(%rbx)
	movq	%rdx, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	%rcx, 32(%rbx)
LBB20_5:
	testb	$16, %al
	je	LBB20_14
## BB#6:
	movzbl	(%r14), %r15d
	testb	$1, %r15b
	jne	LBB20_8
## BB#7:
	shrq	%r15
	leaq	1(%r14,%r15), %rax
	movq	%rax, 88(%rbx)
	movl	$22, %esi
	jmp	LBB20_9
LBB20_8:
	movq	72(%rbx), %r15
	movq	80(%rbx), %rax
	addq	%r15, %rax
	movq	%rax, 88(%rbx)
	movq	64(%rbx), %rsi
	andq	$-2, %rsi
	decq	%rsi
LBB20_9:
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc
	movzbl	(%r14), %eax
	testb	$1, %al
	jne	LBB20_10
## BB#11:
	incq	%r14
	shrq	%rax
	jmp	LBB20_12
LBB20_10:
	movq	72(%rbx), %rax
	movq	80(%rbx), %r14
LBB20_12:
	movq	%r14, %rcx
	addq	%rax, %r14
	movq	%rcx, 48(%rbx)
	movq	%rcx, 40(%rbx)
	movq	%r14, 56(%rbx)
	testb	$3, 96(%rbx)
	je	LBB20_14
## BB#13:
	movslq	%r15d, %rax
	addq	%rax, %rcx
	movq	%rcx, 48(%rbx)
LBB20_14:
	addq	$8, %rsp
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
Ltmp188:
	.cfi_def_cfa_offset 16
Ltmp189:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp190:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp191:
	.cfi_offset %rbx, -56
Ltmp192:
	.cfi_offset %r12, -48
Ltmp193:
	.cfi_offset %r13, -40
Ltmp194:
	.cfi_offset %r14, -32
Ltmp195:
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
	je	LBB21_2
## BB#1:
	movq	%r12, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	movq	(%r12), %rdx
LBB21_2:
	movq	16(%r12), %r14
	subq	%rdx, %r14
	movq	%r14, %rax
	sarq	$3, %rax
	movabsq	$1152921504606846975, %rcx ## imm = 0xFFFFFFFFFFFFFFF
	cmpq	%rcx, %rax
	movq	%r15, -48(%rbp)         ## 8-byte Spill
	jae	LBB21_3
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
	jne	LBB21_5
	jmp	LBB21_6
LBB21_3:
	movabsq	$2305843009213693951, %r14 ## imm = 0x1FFFFFFFFFFFFFFF
	movq	8(%r12), %r15
	movq	%r15, %r13
	subq	%rdx, %r13
	sarq	$3, %r13
LBB21_5:
	leaq	(,%r14,8), %rdi
	movq	%rdx, %rbx
	callq	__Znwm
	movq	%rbx, %rdx
	movq	%r14, %rcx
LBB21_6:
	leaq	(%rax,%r13,8), %rbx
	leaq	(%rax,%rcx,8), %rsi
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rcx, (%rax,%r13,8)
	leaq	8(%rax,%r13,8), %r13
	subq	%rdx, %r15
	subq	%r15, %rbx
	testq	%r15, %r15
	jle	LBB21_8
## BB#7:
	movq	%rbx, %rdi
	movq	%rdx, %r14
	movq	%rsi, -48(%rbp)         ## 8-byte Spill
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	_memcpy
	movq	-48(%rbp), %rsi         ## 8-byte Reload
	movq	%r14, %rdx
LBB21_8:
	movq	%rbx, (%r12)
	movq	%r13, 8(%r12)
	movq	%rsi, 16(%r12)
	testq	%rdx, %rdx
	je	LBB21_9
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
LBB21_9:
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
Ltmp196:
	.cfi_def_cfa_offset 16
Ltmp197:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp198:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp199:
	.cfi_offset %rbx, -56
Ltmp200:
	.cfi_offset %r12, -48
Ltmp201:
	.cfi_offset %r13, -40
Ltmp202:
	.cfi_offset %r14, -32
Ltmp203:
	.cfi_offset %r15, -24
	movq	%rdx, -48(%rbp)         ## 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %r13
	jmp	LBB22_2
LBB22_1:                                ##   in Loop: Header=BB22_2 Depth=1
	leaq	8(%r15), %rdi
	movq	%r14, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	movq	%r15, %r14
	.p2align	4, 0x90
LBB22_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB22_4 Depth 2
                                        ##       Child Loop BB22_32 Depth 3
                                        ##         Child Loop BB22_6 Depth 4
                                        ##         Child Loop BB22_14 Depth 4
                                        ##         Child Loop BB22_27 Depth 4
                                        ##           Child Loop BB22_28 Depth 5
                                        ##           Child Loop BB22_30 Depth 5
                                        ##       Child Loop BB22_41 Depth 3
                                        ##         Child Loop BB22_42 Depth 4
                                        ##         Child Loop BB22_44 Depth 4
	leaq	-8(%r14), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	leaq	-16(%r14), %rax
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	movq	%r13, %rbx
	jmp	LBB22_4
	.p2align	4, 0x90
LBB22_3:                                ##   in Loop: Header=BB22_4 Depth=2
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	addq	$8, %r15
	movq	%r15, %rbx
LBB22_4:                                ##   Parent Loop BB22_2 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB22_32 Depth 3
                                        ##         Child Loop BB22_6 Depth 4
                                        ##         Child Loop BB22_14 Depth 4
                                        ##         Child Loop BB22_27 Depth 4
                                        ##           Child Loop BB22_28 Depth 5
                                        ##           Child Loop BB22_30 Depth 5
                                        ##       Child Loop BB22_41 Depth 3
                                        ##         Child Loop BB22_42 Depth 4
                                        ##         Child Loop BB22_44 Depth 4
	movq	%rbx, %r13
	jmp	LBB22_32
	.p2align	4, 0x90
LBB22_5:                                ##   in Loop: Header=BB22_32 Depth=3
	movq	-64(%rbp), %rdx         ## 8-byte Reload
	.p2align	4, 0x90
LBB22_6:                                ##   Parent Loop BB22_2 Depth=1
                                        ##     Parent Loop BB22_4 Depth=2
                                        ##       Parent Loop BB22_32 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	cmpq	%rdx, %r13
	je	LBB22_11
## BB#7:                                ##   in Loop: Header=BB22_6 Depth=4
	movq	(%rdx), %rbx
	addq	$-8, %rdx
	cmpq	%rdi, %rbx
	jge	LBB22_6
	jmp	LBB22_38
	.p2align	4, 0x90
LBB22_8:                                ##   in Loop: Header=BB22_32 Depth=3
	movq	(%r12), %rcx
	movq	(%r13), %rax
	cmpq	%rax, %rcx
	movq	(%r15), %rdx
	jge	LBB22_16
## BB#9:                                ##   in Loop: Header=BB22_32 Depth=3
	cmpq	%rcx, %rdx
	jge	LBB22_19
## BB#10:                               ##   in Loop: Header=BB22_32 Depth=3
	movq	%rdx, (%r13)
	movq	%rax, (%r15)
	movl	$1, %eax
	jmp	LBB22_36
	.p2align	4, 0x90
LBB22_11:                               ##   in Loop: Header=BB22_32 Depth=3
	leaq	8(%r13), %rax
	movq	(%r15), %rdx
	cmpq	%rdx, %rsi
	jl	LBB22_25
## BB#12:                               ##   in Loop: Header=BB22_32 Depth=3
	cmpq	%r15, %rax
	je	LBB22_87
## BB#13:                               ##   in Loop: Header=BB22_32 Depth=3
	addq	$16, %r13
	movq	%r13, %rax
	.p2align	4, 0x90
LBB22_14:                               ##   Parent Loop BB22_2 Depth=1
                                        ##     Parent Loop BB22_4 Depth=2
                                        ##       Parent Loop BB22_32 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	-8(%rax), %rdi
	cmpq	%rdi, %rsi
	jl	LBB22_24
## BB#15:                               ##   in Loop: Header=BB22_14 Depth=4
	addq	$8, %rax
	cmpq	%rax, %r14
	jne	LBB22_14
	jmp	LBB22_87
	.p2align	4, 0x90
LBB22_16:                               ##   in Loop: Header=BB22_32 Depth=3
	cmpq	%rcx, %rdx
	jge	LBB22_22
## BB#17:                               ##   in Loop: Header=BB22_32 Depth=3
	movq	%rdx, (%r12)
	movq	%rcx, (%r15)
	movq	(%r12), %rax
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB22_23
## BB#18:                               ##   in Loop: Header=BB22_32 Depth=3
	movq	%rax, (%r13)
	movq	%rcx, (%r12)
	jmp	LBB22_21
LBB22_19:                               ##   in Loop: Header=BB22_32 Depth=3
	movq	%rcx, (%r13)
	movq	%rax, (%r12)
	movq	(%r15), %rcx
	cmpq	%rax, %rcx
	jge	LBB22_23
## BB#20:                               ##   in Loop: Header=BB22_32 Depth=3
	movq	%rcx, (%r12)
	movq	%rax, (%r15)
LBB22_21:                               ##   in Loop: Header=BB22_32 Depth=3
	movl	$2, %eax
	jmp	LBB22_36
LBB22_22:                               ##   in Loop: Header=BB22_32 Depth=3
	xorl	%eax, %eax
	jmp	LBB22_36
LBB22_23:                               ##   in Loop: Header=BB22_32 Depth=3
	movl	$1, %eax
	jmp	LBB22_36
LBB22_24:                               ##   in Loop: Header=BB22_32 Depth=3
	movq	%rdx, -8(%rax)
	movq	%rdi, (%r15)
LBB22_25:                               ##   in Loop: Header=BB22_32 Depth=3
	cmpq	%r15, %rax
	jne	LBB22_27
	jmp	LBB22_87
	.p2align	4, 0x90
LBB22_26:                               ##   in Loop: Header=BB22_27 Depth=4
	movq	%rbx, -8(%rax)
	movq	%rsi, (%r15)
LBB22_27:                               ##   Parent Loop BB22_2 Depth=1
                                        ##     Parent Loop BB22_4 Depth=2
                                        ##       Parent Loop BB22_32 Depth=3
                                        ## =>      This Loop Header: Depth=4
                                        ##           Child Loop BB22_28 Depth 5
                                        ##           Child Loop BB22_30 Depth 5
	movq	(%rcx), %rdi
	.p2align	4, 0x90
LBB22_28:                               ##   Parent Loop BB22_2 Depth=1
                                        ##     Parent Loop BB22_4 Depth=2
                                        ##       Parent Loop BB22_32 Depth=3
                                        ##         Parent Loop BB22_27 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movq	(%rax), %rsi
	addq	$8, %rax
	cmpq	%rsi, %rdi
	jge	LBB22_28
## BB#29:                               ##   in Loop: Header=BB22_27 Depth=4
	leaq	-8(%rax), %r13
	.p2align	4, 0x90
LBB22_30:                               ##   Parent Loop BB22_2 Depth=1
                                        ##     Parent Loop BB22_4 Depth=2
                                        ##       Parent Loop BB22_32 Depth=3
                                        ##         Parent Loop BB22_27 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movq	-8(%r15), %rbx
	addq	$-8, %r15
	cmpq	%rbx, %rdi
	jl	LBB22_30
## BB#31:                               ##   in Loop: Header=BB22_27 Depth=4
	cmpq	%r15, %r13
	jb	LBB22_26
LBB22_32:                               ##   Parent Loop BB22_2 Depth=1
                                        ##     Parent Loop BB22_4 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB22_6 Depth 4
                                        ##         Child Loop BB22_14 Depth 4
                                        ##         Child Loop BB22_27 Depth 4
                                        ##           Child Loop BB22_28 Depth 5
                                        ##           Child Loop BB22_30 Depth 5
	movq	%r14, %rcx
	subq	%r13, %rcx
	movq	%rcx, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	jbe	LBB22_55
## BB#33:                               ##   in Loop: Header=BB22_32 Depth=3
	cmpq	$247, %rcx
	movq	-56(%rbp), %r15         ## 8-byte Reload
	jle	LBB22_58
## BB#34:                               ##   in Loop: Header=BB22_32 Depth=3
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rax, %rdx
	movabsq	$4611686018427387902, %rsi ## imm = 0x3FFFFFFFFFFFFFFE
	andq	%rsi, %rdx
	leaq	(%r13,%rdx,4), %r12
	cmpq	$7993, %rcx             ## imm = 0x1F39
	jl	LBB22_8
## BB#35:                               ##   in Loop: Header=BB22_32 Depth=3
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
LBB22_36:                               ##   in Loop: Header=BB22_32 Depth=3
	movq	%r13, %rcx
	movq	(%rcx), %rsi
	movq	(%r12), %rdi
	cmpq	%rdi, %rsi
	jge	LBB22_5
## BB#37:                               ##   in Loop: Header=BB22_4 Depth=2
	movq	%r15, %rdx
	jmp	LBB22_39
	.p2align	4, 0x90
LBB22_38:                               ##   in Loop: Header=BB22_4 Depth=2
	movq	%rbx, (%rcx)
	movq	%rsi, 8(%rdx)
	addq	$8, %rdx
	incl	%eax
LBB22_39:                               ##   in Loop: Header=BB22_4 Depth=2
	leaq	8(%r13), %r15
	cmpq	%rdx, %r15
	jb	LBB22_41
	jmp	LBB22_47
	.p2align	4, 0x90
LBB22_40:                               ##   in Loop: Header=BB22_41 Depth=3
	movq	%rbx, (%rcx)
	movq	%rdi, (%rdx)
	incl	%eax
	cmpq	%rcx, %r12
	cmoveq	%rdx, %r12
LBB22_41:                               ##   Parent Loop BB22_2 Depth=1
                                        ##     Parent Loop BB22_4 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB22_42 Depth 4
                                        ##         Child Loop BB22_44 Depth 4
	movq	(%r12), %rsi
	addq	$-8, %r15
	movq	%r15, %rcx
	.p2align	4, 0x90
LBB22_42:                               ##   Parent Loop BB22_2 Depth=1
                                        ##     Parent Loop BB22_4 Depth=2
                                        ##       Parent Loop BB22_41 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	8(%rcx), %rdi
	addq	$8, %rcx
	cmpq	%rsi, %rdi
	jl	LBB22_42
## BB#43:                               ##   in Loop: Header=BB22_41 Depth=3
	leaq	8(%rcx), %r15
	.p2align	4, 0x90
LBB22_44:                               ##   Parent Loop BB22_2 Depth=1
                                        ##     Parent Loop BB22_4 Depth=2
                                        ##       Parent Loop BB22_41 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	-8(%rdx), %rbx
	addq	$-8, %rdx
	cmpq	%rsi, %rbx
	jge	LBB22_44
## BB#45:                               ##   in Loop: Header=BB22_41 Depth=3
	cmpq	%rdx, %rcx
	jbe	LBB22_40
## BB#46:                               ##   in Loop: Header=BB22_4 Depth=2
	movq	%rcx, %r15
LBB22_47:                               ##   in Loop: Header=BB22_4 Depth=2
	cmpq	%r12, %r15
	je	LBB22_50
## BB#48:                               ##   in Loop: Header=BB22_4 Depth=2
	movq	(%r12), %rcx
	movq	(%r15), %rdx
	cmpq	%rdx, %rcx
	jge	LBB22_50
## BB#49:                               ##   in Loop: Header=BB22_4 Depth=2
	movq	%rcx, (%r15)
	movq	%rdx, (%r12)
	incl	%eax
LBB22_50:                               ##   in Loop: Header=BB22_4 Depth=2
	testl	%eax, %eax
	jne	LBB22_53
## BB#51:                               ##   in Loop: Header=BB22_4 Depth=2
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
	jne	LBB22_54
## BB#52:                               ##   in Loop: Header=BB22_4 Depth=2
	testb	%r12b, %r12b
	jne	LBB22_4
LBB22_53:                               ##   in Loop: Header=BB22_4 Depth=2
	movq	%r15, %rax
	subq	%r13, %rax
	movq	%r14, %rcx
	subq	%r15, %rcx
	cmpq	%rcx, %rax
	jl	LBB22_3
	jmp	LBB22_1
LBB22_54:                               ##   in Loop: Header=BB22_2 Depth=1
	testb	%r12b, %r12b
	movq	%r15, %r14
	je	LBB22_2
	jmp	LBB22_87
LBB22_55:
	leaq	LJTI22_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	movq	-56(%rbp), %r8          ## 8-byte Reload
	jmpq	*%rax
LBB22_56:
	movq	-8(%r14), %rax
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB22_87
## BB#57:
	movq	%rax, (%r13)
	movq	%rcx, -8(%r14)
	jmp	LBB22_87
LBB22_58:
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rcx, %rax
	movq	16(%r13), %rdx
	jge	LBB22_61
## BB#59:
	cmpq	%rax, %rdx
	jge	LBB22_64
## BB#60:
	movq	%rdx, (%r13)
	jmp	LBB22_66
LBB22_61:
	cmpq	%rax, %rdx
	jge	LBB22_75
## BB#62:
	movq	%rdx, 8(%r13)
	movq	%rax, 16(%r13)
	cmpq	%rcx, %rdx
	jge	LBB22_76
## BB#63:
	movq	%rdx, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB22_76
LBB22_64:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	cmpq	%rcx, %rdx
	jge	LBB22_75
## BB#65:
	movq	%rdx, 8(%r13)
LBB22_66:
	movq	%rcx, 16(%r13)
	movq	%rcx, %rax
	jmp	LBB22_76
LBB22_75:
	movq	%rdx, %rax
LBB22_76:
	leaq	24(%r13), %rdx
	cmpq	%r14, %rdx
	je	LBB22_87
## BB#77:
	movl	$24, %ecx
	jmp	LBB22_79
	.p2align	4, 0x90
LBB22_78:                               ##   in Loop: Header=BB22_79 Depth=1
	movq	(%rdx), %rax
	addq	$8, %rcx
	movq	%rsi, %rdx
LBB22_79:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB22_81 Depth 2
	movq	(%rdx), %rsi
	cmpq	%rax, %rsi
	jge	LBB22_86
## BB#80:                               ##   in Loop: Header=BB22_79 Depth=1
	movq	%rcx, %rdi
	.p2align	4, 0x90
LBB22_81:                               ##   Parent Loop BB22_79 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, (%r13,%rdi)
	cmpq	$8, %rdi
	je	LBB22_84
## BB#82:                               ##   in Loop: Header=BB22_81 Depth=2
	movq	-16(%r13,%rdi), %rax
	addq	$-8, %rdi
	cmpq	%rax, %rsi
	jl	LBB22_81
## BB#83:                               ##   in Loop: Header=BB22_79 Depth=1
	addq	%r13, %rdi
	jmp	LBB22_85
	.p2align	4, 0x90
LBB22_84:                               ##   in Loop: Header=BB22_79 Depth=1
	movq	%r13, %rdi
LBB22_85:                               ##   in Loop: Header=BB22_79 Depth=1
	movq	%rsi, (%rdi)
LBB22_86:                               ##   in Loop: Header=BB22_79 Depth=1
	leaq	8(%rdx), %rsi
	cmpq	%r14, %rsi
	jne	LBB22_78
LBB22_87:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB22_68:
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rax, %rcx
	movq	-8(%r14), %rdx
	jge	LBB22_88
## BB#69:
	cmpq	%rcx, %rdx
	jge	LBB22_94
## BB#70:
	movq	%rdx, (%r13)
	movq	%rax, -8(%r14)
	jmp	LBB22_87
LBB22_71:
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
LBB22_72:
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rcx, %rax
	movq	16(%r13), %rdx
	jge	LBB22_91
## BB#73:
	cmpq	%rax, %rdx
	jge	LBB22_96
## BB#74:
	movq	%rdx, (%r13)
	jmp	LBB22_98
LBB22_88:
	cmpq	%rcx, %rdx
	jge	LBB22_87
## BB#89:
	movq	%rdx, 8(%r13)
	movq	%rcx, -8(%r14)
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rax, %rcx
	jge	LBB22_87
## BB#90:
	movq	%rcx, (%r13)
	movq	%rax, 8(%r13)
	jmp	LBB22_87
LBB22_91:
	cmpq	%rax, %rdx
	jge	LBB22_100
## BB#92:
	movq	%rdx, 8(%r13)
	movq	%rax, 16(%r13)
	cmpq	%rcx, %rdx
	jge	LBB22_101
## BB#93:
	movq	%rdx, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB22_101
LBB22_94:
	movq	%rcx, (%r13)
	movq	%rax, 8(%r13)
	movq	-8(%r14), %rcx
	cmpq	%rax, %rcx
	jge	LBB22_87
## BB#95:
	movq	%rcx, 8(%r13)
	movq	%rax, -8(%r14)
	jmp	LBB22_87
LBB22_96:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	cmpq	%rcx, %rdx
	jge	LBB22_100
## BB#97:
	movq	%rdx, 8(%r13)
LBB22_98:
	movq	%rcx, 16(%r13)
	movq	%rcx, %rax
	jmp	LBB22_101
LBB22_100:
	movq	%rdx, %rax
LBB22_101:
	movq	-8(%r14), %rcx
	cmpq	%rax, %rcx
	jge	LBB22_87
## BB#102:
	movq	%rcx, 16(%r13)
	movq	%rax, -8(%r14)
	movq	8(%r13), %rcx
	movq	16(%r13), %rax
	cmpq	%rcx, %rax
	jge	LBB22_87
## BB#103:
	movq	%rax, 8(%r13)
	movq	%rcx, 16(%r13)
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB22_87
## BB#104:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB22_87
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L22_0_set_87 = LBB22_87-LJTI22_0
L22_0_set_56 = LBB22_56-LJTI22_0
L22_0_set_68 = LBB22_68-LJTI22_0
L22_0_set_72 = LBB22_72-LJTI22_0
L22_0_set_71 = LBB22_71-LJTI22_0
LJTI22_0:
	.long	L22_0_set_87
	.long	L22_0_set_87
	.long	L22_0_set_56
	.long	L22_0_set_68
	.long	L22_0_set_72
	.long	L22_0_set_71
	.end_data_region

	.globl	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.weak_def_can_be_hidden	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.p2align	4, 0x90
__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_: ## @_ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp204:
	.cfi_def_cfa_offset 16
Ltmp205:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp206:
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %r9
	movq	(%rdi), %r10
	cmpq	%r10, %r9
	movq	(%rdx), %r11
	jge	LBB23_1
## BB#5:
	cmpq	%r9, %r11
	jge	LBB23_7
## BB#6:
	movq	%r11, (%rdi)
	movq	%r10, (%rdx)
	movl	$1, %eax
	jmp	LBB23_9
LBB23_1:
	xorl	%eax, %eax
	cmpq	%r9, %r11
	jge	LBB23_2
## BB#3:
	movq	%r11, (%rsi)
	movq	%r9, (%rdx)
	movq	(%rsi), %r10
	movq	(%rdi), %r11
	movl	$1, %eax
	cmpq	%r11, %r10
	jge	LBB23_10
## BB#4:
	movq	%r10, (%rdi)
	movq	%r11, (%rsi)
	movq	(%rdx), %r9
	movl	$2, %eax
	jmp	LBB23_10
LBB23_7:
	movq	%r9, (%rdi)
	movq	%r10, (%rsi)
	movq	(%rdx), %r9
	movl	$1, %eax
	cmpq	%r10, %r9
	jge	LBB23_10
## BB#8:
	movq	%r9, (%rsi)
	movq	%r10, (%rdx)
	movl	$2, %eax
LBB23_9:
	movq	%r10, %r9
	jmp	LBB23_10
LBB23_2:
	movq	%r11, %r9
LBB23_10:
	movq	(%rcx), %r10
	cmpq	%r9, %r10
	jge	LBB23_16
## BB#11:
	movq	%r10, (%rdx)
	movq	%r9, (%rcx)
	movq	(%rdx), %r9
	movq	(%rsi), %r10
	cmpq	%r10, %r9
	jge	LBB23_12
## BB#13:
	movq	%r9, (%rsi)
	movq	%r10, (%rdx)
	movq	(%rsi), %r9
	movq	(%rdi), %r10
	cmpq	%r10, %r9
	jge	LBB23_14
## BB#15:
	movq	%r9, (%rdi)
	movq	%r10, (%rsi)
	addl	$3, %eax
	jmp	LBB23_16
LBB23_12:
	incl	%eax
	jmp	LBB23_16
LBB23_14:
	addl	$2, %eax
LBB23_16:
	movq	(%r8), %r9
	movq	(%rcx), %r10
	cmpq	%r10, %r9
	jge	LBB23_24
## BB#17:
	movq	%r9, (%rcx)
	movq	%r10, (%r8)
	movq	(%rcx), %r8
	movq	(%rdx), %r9
	cmpq	%r9, %r8
	jge	LBB23_18
## BB#19:
	movq	%r8, (%rdx)
	movq	%r9, (%rcx)
	movq	(%rdx), %rcx
	movq	(%rsi), %r8
	cmpq	%r8, %rcx
	jge	LBB23_20
## BB#21:
	movq	%rcx, (%rsi)
	movq	%r8, (%rdx)
	movq	(%rsi), %rcx
	movq	(%rdi), %rdx
	cmpq	%rdx, %rcx
	jge	LBB23_22
## BB#23:
	movq	%rcx, (%rdi)
	movq	%rdx, (%rsi)
	addl	$4, %eax
LBB23_24:
	popq	%rbp
	retq
LBB23_18:
	incl	%eax
	popq	%rbp
	retq
LBB23_20:
	addl	$2, %eax
	popq	%rbp
	retq
LBB23_22:
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
Ltmp207:
	.cfi_def_cfa_offset 16
Ltmp208:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp209:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Ltmp210:
	.cfi_offset %rbx, -24
	movq	%rdx, %r9
	movq	%rsi, %r10
	movq	%r10, %rax
	subq	%rdi, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	ja	LBB24_4
## BB#1:
	movb	$1, %bl
	leaq	LJTI24_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB24_2:
	movq	-8(%r10), %rax
	movq	(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	LBB24_50
## BB#3:
	movq	%rax, (%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB24_50
LBB24_4:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rdx
	cmpq	%rcx, %rdx
	movq	16(%rdi), %rsi
	jge	LBB24_14
## BB#5:
	cmpq	%rdx, %rsi
	jge	LBB24_23
## BB#6:
	movq	%rsi, (%rdi)
	jmp	LBB24_25
LBB24_7:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	cmpq	%rcx, %rax
	movq	-8(%r10), %rdx
	jge	LBB24_17
## BB#8:
	cmpq	%rax, %rdx
	jge	LBB24_26
## BB#9:
	movq	%rdx, (%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB24_50
LBB24_10:
	leaq	16(%rdi), %rdx
	leaq	24(%rdi), %rcx
	addq	$-8, %r10
	leaq	8(%rdi), %rsi
	movq	%r10, %r8
	callq	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	jmp	LBB24_50
LBB24_11:
	movq	(%rdi), %rdx
	movq	8(%rdi), %rcx
	cmpq	%rdx, %rcx
	movq	16(%rdi), %rsi
	jge	LBB24_20
## BB#12:
	cmpq	%rcx, %rsi
	jge	LBB24_28
## BB#13:
	movq	%rsi, (%rdi)
	jmp	LBB24_30
LBB24_14:
	cmpq	%rdx, %rsi
	jge	LBB24_33
## BB#15:
	movq	%rsi, 8(%rdi)
	movq	%rdx, 16(%rdi)
	cmpq	%rcx, %rsi
	jge	LBB24_34
## BB#16:
	movq	%rsi, (%rdi)
	movq	%rcx, 8(%rdi)
	jmp	LBB24_34
LBB24_17:
	cmpq	%rax, %rdx
	jge	LBB24_50
## BB#18:
	movq	%rdx, 8(%rdi)
	movq	%rax, -8(%r10)
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	cmpq	%rax, %rcx
	jge	LBB24_50
## BB#19:
	movq	%rcx, (%rdi)
	movq	%rax, 8(%rdi)
	jmp	LBB24_50
LBB24_20:
	cmpq	%rcx, %rsi
	jge	LBB24_45
## BB#21:
	movq	%rsi, 8(%rdi)
	movq	%rcx, 16(%rdi)
	cmpq	%rdx, %rsi
	jge	LBB24_46
## BB#22:
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	jmp	LBB24_46
LBB24_23:
	movq	%rdx, (%rdi)
	movq	%rcx, 8(%rdi)
	cmpq	%rcx, %rsi
	jge	LBB24_33
## BB#24:
	movq	%rsi, 8(%rdi)
LBB24_25:
	movq	%rcx, 16(%rdi)
	movq	%rcx, %rdx
	jmp	LBB24_34
LBB24_33:
	movq	%rsi, %rdx
LBB24_34:
	leaq	24(%rdi), %rsi
	movb	$1, %r8b
	cmpq	%r10, %rsi
	je	LBB24_44
## BB#35:
	xorl	%r9d, %r9d
	jmp	LBB24_37
	.p2align	4, 0x90
LBB24_36:                               ##   in Loop: Header=BB24_37 Depth=1
	movq	(%rsi), %rdx
	movq	%rax, %rsi
LBB24_37:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB24_39 Depth 2
	movq	(%rsi), %rbx
	cmpq	%rdx, %rbx
	jge	LBB24_42
## BB#38:                               ##   in Loop: Header=BB24_37 Depth=1
	movq	%rsi, %rax
	.p2align	4, 0x90
LBB24_39:                               ##   Parent Loop BB24_37 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, %rcx
	movq	%rdx, (%rcx)
	leaq	-8(%rcx), %rax
	cmpq	%rdi, %rax
	je	LBB24_41
## BB#40:                               ##   in Loop: Header=BB24_39 Depth=2
	movq	-8(%rax), %rdx
	cmpq	%rdx, %rbx
	jl	LBB24_39
LBB24_41:                               ##   in Loop: Header=BB24_37 Depth=1
	movq	%rbx, -8(%rcx)
	incl	%r9d
	leaq	8(%rsi), %rax
	cmpq	%r10, %rax
	sete	%bl
	cmpl	$8, %r9d
	je	LBB24_43
LBB24_42:                               ##   in Loop: Header=BB24_37 Depth=1
	leaq	8(%rsi), %rax
	cmpq	%r10, %rax
	jne	LBB24_36
	jmp	LBB24_44
LBB24_26:
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	movq	-8(%r10), %rax
	cmpq	%rcx, %rax
	jge	LBB24_50
## BB#27:
	movq	%rax, 8(%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB24_50
LBB24_28:
	movq	%rcx, (%rdi)
	movq	%rdx, 8(%rdi)
	cmpq	%rdx, %rsi
	jge	LBB24_45
## BB#29:
	movq	%rsi, 8(%rdi)
LBB24_30:
	movq	%rdx, 16(%rdi)
	movq	%rdx, %rcx
	jmp	LBB24_46
LBB24_45:
	movq	%rsi, %rcx
LBB24_46:
	movq	-8(%r10), %rax
	cmpq	%rcx, %rax
	jge	LBB24_50
## BB#47:
	movq	%rax, 16(%rdi)
	movq	%rcx, -8(%r10)
	movq	8(%rdi), %rcx
	movq	16(%rdi), %rax
	cmpq	%rcx, %rax
	jge	LBB24_50
## BB#48:
	movq	%rax, 8(%rdi)
	movq	%rcx, 16(%rdi)
	movq	(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	LBB24_50
## BB#49:
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	jmp	LBB24_50
LBB24_43:
	xorl	%r8d, %r8d
LBB24_44:
	orb	%r8b, %bl
LBB24_50:
	andb	$1, %bl
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L24_0_set_50 = LBB24_50-LJTI24_0
L24_0_set_2 = LBB24_2-LJTI24_0
L24_0_set_7 = LBB24_7-LJTI24_0
L24_0_set_11 = LBB24_11-LJTI24_0
L24_0_set_10 = LBB24_10-LJTI24_0
LJTI24_0:
	.long	L24_0_set_50
	.long	L24_0_set_50
	.long	L24_0_set_2
	.long	L24_0_set_7
	.long	L24_0_set_11
	.long	L24_0_set_10
	.end_data_region

	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	4, 0x90
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
## BB#0:
	pushq	%rbp
Ltmp232:
	.cfi_def_cfa_offset 16
Ltmp233:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp234:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp235:
	.cfi_offset %rbx, -56
Ltmp236:
	.cfi_offset %r12, -48
Ltmp237:
	.cfi_offset %r13, -40
Ltmp238:
	.cfi_offset %r14, -32
Ltmp239:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
Ltmp211:
	leaq	-80(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp212:
## BB#1:
	cmpb	$0, -80(%rbp)
	je	LBB25_10
## BB#2:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %r12
	movq	40(%rbx,%rax), %rdi
	movl	8(%rbx,%rax), %r13d
	movl	144(%rbx,%rax), %eax
	cmpl	$-1, %eax
	jne	LBB25_7
## BB#3:
Ltmp214:
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	leaq	-56(%rbp), %rdi
	movq	%r12, %rsi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp215:
## BB#4:
Ltmp216:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-56(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp217:
## BB#5:
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp218:
	movl	$32, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movb	%al, -41(%rbp)          ## 1-byte Spill
Ltmp219:
## BB#6:
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	-41(%rbp), %eax         ## 1-byte Folded Reload
	movl	%eax, 144(%r12)
	movq	-64(%rbp), %rdi         ## 8-byte Reload
LBB25_7:
	addq	%r15, %r14
	andl	$176, %r13d
	cmpl	$32, %r13d
	movq	%r15, %rdx
	cmoveq	%r14, %rdx
Ltmp221:
	movsbl	%al, %r9d
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r12, %r8
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp222:
## BB#8:
	testq	%rax, %rax
	jne	LBB25_10
## BB#9:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$5, %esi
Ltmp223:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp224:
LBB25_10:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB25_15:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB25_19:
Ltmp220:
	movq	%rax, %r14
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB25_12
LBB25_20:
Ltmp213:
	movq	%rax, %r14
	jmp	LBB25_13
LBB25_11:
Ltmp225:
	movq	%rax, %r14
LBB25_12:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB25_13:
	movq	%rbx, %r15
	movq	%r14, %rdi
	callq	___cxa_begin_catch
	movq	(%rbx), %rax
	addq	-24(%rax), %r15
Ltmp226:
	movq	%r15, %rdi
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp227:
## BB#14:
	callq	___cxa_end_catch
	jmp	LBB25_15
LBB25_16:
Ltmp228:
	movq	%rax, %rbx
Ltmp229:
	callq	___cxa_end_catch
Ltmp230:
## BB#17:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB25_18:
Ltmp231:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table25:
Lexception8:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	125                     ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	117                     ## Call site table length
Lset97 = Ltmp211-Lfunc_begin8           ## >> Call Site 1 <<
	.long	Lset97
Lset98 = Ltmp212-Ltmp211                ##   Call between Ltmp211 and Ltmp212
	.long	Lset98
Lset99 = Ltmp213-Lfunc_begin8           ##     jumps to Ltmp213
	.long	Lset99
	.byte	1                       ##   On action: 1
Lset100 = Ltmp214-Lfunc_begin8          ## >> Call Site 2 <<
	.long	Lset100
Lset101 = Ltmp215-Ltmp214               ##   Call between Ltmp214 and Ltmp215
	.long	Lset101
Lset102 = Ltmp225-Lfunc_begin8          ##     jumps to Ltmp225
	.long	Lset102
	.byte	1                       ##   On action: 1
Lset103 = Ltmp216-Lfunc_begin8          ## >> Call Site 3 <<
	.long	Lset103
Lset104 = Ltmp219-Ltmp216               ##   Call between Ltmp216 and Ltmp219
	.long	Lset104
Lset105 = Ltmp220-Lfunc_begin8          ##     jumps to Ltmp220
	.long	Lset105
	.byte	1                       ##   On action: 1
Lset106 = Ltmp221-Lfunc_begin8          ## >> Call Site 4 <<
	.long	Lset106
Lset107 = Ltmp224-Ltmp221               ##   Call between Ltmp221 and Ltmp224
	.long	Lset107
Lset108 = Ltmp225-Lfunc_begin8          ##     jumps to Ltmp225
	.long	Lset108
	.byte	1                       ##   On action: 1
Lset109 = Ltmp224-Lfunc_begin8          ## >> Call Site 5 <<
	.long	Lset109
Lset110 = Ltmp226-Ltmp224               ##   Call between Ltmp224 and Ltmp226
	.long	Lset110
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset111 = Ltmp226-Lfunc_begin8          ## >> Call Site 6 <<
	.long	Lset111
Lset112 = Ltmp227-Ltmp226               ##   Call between Ltmp226 and Ltmp227
	.long	Lset112
Lset113 = Ltmp228-Lfunc_begin8          ##     jumps to Ltmp228
	.long	Lset113
	.byte	0                       ##   On action: cleanup
Lset114 = Ltmp227-Lfunc_begin8          ## >> Call Site 7 <<
	.long	Lset114
Lset115 = Ltmp229-Ltmp227               ##   Call between Ltmp227 and Ltmp229
	.long	Lset115
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset116 = Ltmp229-Lfunc_begin8          ## >> Call Site 8 <<
	.long	Lset116
Lset117 = Ltmp230-Ltmp229               ##   Call between Ltmp229 and Ltmp230
	.long	Lset117
Lset118 = Ltmp231-Lfunc_begin8          ##     jumps to Ltmp231
	.long	Lset118
	.byte	1                       ##   On action: 1
Lset119 = Ltmp230-Lfunc_begin8          ## >> Call Site 9 <<
	.long	Lset119
Lset120 = Lfunc_end8-Ltmp230            ##   Call between Ltmp230 and Lfunc_end8
	.long	Lset120
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
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
## BB#0:
	pushq	%rbp
Ltmp243:
	.cfi_def_cfa_offset 16
Ltmp244:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp245:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp246:
	.cfi_offset %rbx, -56
Ltmp247:
	.cfi_offset %r12, -48
Ltmp248:
	.cfi_offset %r13, -40
Ltmp249:
	.cfi_offset %r14, -32
Ltmp250:
	.cfi_offset %r15, -24
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	LBB26_12
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
	jle	LBB26_3
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
	jne	LBB26_12
LBB26_3:
	testq	%r13, %r13
	jle	LBB26_6
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
Ltmp240:
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	*%rax
	movq	%rax, %r14
Ltmp241:
## BB#5:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	cmpq	%r13, %r14
	jne	LBB26_12
LBB26_6:
	subq	%r12, %r15
	testq	%r15, %r15
	jle	LBB26_8
## BB#7:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	*96(%rax)
	cmpq	%r15, %rax
	jne	LBB26_12
LBB26_8:
	movq	-80(%rbp), %rax         ## 8-byte Reload
	movq	$0, 24(%rax)
	jmp	LBB26_13
LBB26_12:
	xorl	%ebx, %ebx
LBB26_13:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB26_14:
Ltmp242:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table26:
Lexception9:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset121 = Lfunc_begin9-Lfunc_begin9     ## >> Call Site 1 <<
	.long	Lset121
Lset122 = Ltmp240-Lfunc_begin9          ##   Call between Lfunc_begin9 and Ltmp240
	.long	Lset122
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset123 = Ltmp240-Lfunc_begin9          ## >> Call Site 2 <<
	.long	Lset123
Lset124 = Ltmp241-Ltmp240               ##   Call between Ltmp240 and Ltmp241
	.long	Lset124
Lset125 = Ltmp242-Lfunc_begin9          ##     jumps to Ltmp242
	.long	Lset125
	.byte	0                       ##   On action: cleanup
Lset126 = Ltmp241-Lfunc_begin9          ## >> Call Site 3 <<
	.long	Lset126
Lset127 = Lfunc_end9-Ltmp241            ##   Call between Ltmp241 and Lfunc_end9
	.long	Lset127
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
	.section	__DATA,__data
	.globl	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE ## @_ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.weak_def_can_be_hidden	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	3
__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.quad	120
	.quad	0
	.quad	__ZTINSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.quad	__ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.quad	__ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.quad	-120
	.quad	-120
	.quad	__ZTINSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.quad	__ZTv0_n24_NSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.quad	__ZTv0_n24_NSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev

	.globl	__ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE ## @_ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.weak_def_can_be_hidden	__ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	4
__ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.quad	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+24
	.quad	__ZTCNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE+24
	.quad	__ZTCNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE+64
	.quad	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+64

	.globl	__ZTCNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE ## @_ZTCNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE
	.weak_def_can_be_hidden	__ZTCNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE
	.p2align	4
__ZTCNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE:
	.quad	120
	.quad	0
	.quad	__ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE
	.quad	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev
	.quad	-120
	.quad	-120
	.quad	__ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE
	.quad	__ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev

	.section	__TEXT,__const
	.globl	__ZTSNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE ## @_ZTSNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.weak_definition	__ZTSNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	4
__ZTSNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.asciz	"NSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE"

	.section	__DATA,__data
	.globl	__ZTINSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE ## @_ZTINSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.weak_definition	__ZTINSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	4
__ZTINSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.quad	__ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE

	.globl	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE ## @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.weak_def_can_be_hidden	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	3
__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.quad	0
	.quad	__ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.quad	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.quad	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6setbufEPcl
	.quad	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj
	.quad	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4syncEv
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl
	.quad	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv
	.quad	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl
	.quad	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi

	.section	__TEXT,__const
	.globl	__ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE ## @_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.weak_definition	__ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	4
__ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.asciz	"NSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE"

	.section	__DATA,__data
	.globl	__ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE ## @_ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.weak_definition	__ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	4
__ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.quad	__ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE


.subsections_via_symbols
