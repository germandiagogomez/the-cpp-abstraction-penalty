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
	subq	$3320, %rsp             ## imm = 0xCF8
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
	movq	%rsi, %r15
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	8(%r15), %rbx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -3360(%rbp)
	movq	$0, -3344(%rbp)
	movq	%rbx, %rdi
	callq	_strlen
	leaq	-3360(%rbp), %r14
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
Ltmp69:
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r14, %rdi
	callq	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	movl	%eax, %r12d
Ltmp70:
## BB#1:
	leaq	-3360(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	16(%r15), %rbx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -3360(%rbp)
	movq	$0, -3344(%rbp)
	movq	%rbx, %rdi
	callq	_strlen
	leaq	-3360(%rbp), %r15
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
Ltmp72:
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r15, %rdi
	callq	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	movl	%eax, %ebx
Ltmp73:
## BB#2:
	leaq	-3360(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -704(%rbp)
	movq	$0, -688(%rbp)
	testl	%r12d, %r12d
	movq	%rbx, %rax
	movq	%rax, -712(%rbp)        ## 8-byte Spill
	je	LBB5_5
## BB#3:
	movslq	%r12d, %rbx
	leaq	(,%rbx,8), %rdi
Ltmp75:
	callq	__Znwm
Ltmp76:
## BB#4:
	leaq	(%rax,%rbx,8), %rcx
	movq	%rax, -704(%rbp)
	movq	%rax, -696(%rbp)
	movq	%rcx, -688(%rbp)
	movq	-712(%rbp), %rbx        ## 8-byte Reload
LBB5_5:
	leal	-1(%rbx), %edx
Ltmp77:
	leaq	-3360(%rbp), %rdi
	xorl	%esi, %esi
	callq	__ZN10benchmarks4util13int_generatorEii
Ltmp78:
## BB#6:
	testl	%r12d, %r12d
	jle	LBB5_7
## BB#19:
	movq	-712(%rbp), %rbx        ## 8-byte Reload
	movslq	%ebx, %r13
	leaq	(,%r13,8), %rax
	leaq	(%rax,%rax,2), %rax
	movq	%rax, -760(%rbp)        ## 8-byte Spill
	leaq	-1(%r13), %rax
	movq	%rax, -752(%rbp)        ## 8-byte Spill
	movl	%ebx, %eax
	andl	$3, %eax
	movq	%rax, -744(%rbp)        ## 8-byte Spill
	negq	%rax
	movq	%rax, -736(%rbp)        ## 8-byte Spill
	xorl	%r14d, %r14d
	xorps	%xmm0, %xmm0
	movq	__ZTV16non_trivial_type@GOTPCREL(%rip), %r15
	addq	$16, %r15
	movq	__ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rax
	addq	$8, %rax
	movq	%rax, -720(%rbp)        ## 8-byte Spill
	movl	%r12d, -724(%rbp)       ## 4-byte Spill
	movq	%r13, -816(%rbp)        ## 8-byte Spill
LBB5_20:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_27 Depth 2
                                        ##     Child Loop BB5_29 Depth 2
                                        ##     Child Loop BB5_35 Depth 2
                                        ##     Child Loop BB5_37 Depth 2
                                        ##     Child Loop BB5_42 Depth 2
                                        ##     Child Loop BB5_45 Depth 2
                                        ##     Child Loop BB5_79 Depth 2
                                        ##     Child Loop BB5_84 Depth 2
	movaps	%xmm0, -672(%rbp)
	movq	$0, -656(%rbp)
	testl	%ebx, %ebx
	je	LBB5_21
## BB#22:                               ##   in Loop: Header=BB5_20 Depth=1
	jns	LBB5_24
## BB#23:                               ##   in Loop: Header=BB5_20 Depth=1
Ltmp80:
	leaq	-672(%rbp), %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp81:
LBB5_24:                                ##   in Loop: Header=BB5_20 Depth=1
Ltmp82:
	movq	-760(%rbp), %rdi        ## 8-byte Reload
	callq	__Znwm
	movq	%rax, %rcx
Ltmp83:
## BB#25:                               ##   in Loop: Header=BB5_20 Depth=1
	cmpq	$0, -744(%rbp)          ## 8-byte Folded Reload
	movq	%rcx, -664(%rbp)
	movq	%rcx, -672(%rbp)
	leaq	(%r13,%r13,2), %rbx
	leaq	(%rcx,%rbx,8), %rax
	movq	%rax, -656(%rbp)
	movq	%r13, %rsi
	je	LBB5_28
## BB#26:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-736(%rbp), %rax        ## 8-byte Reload
	movq	%r13, %rsi
	.p2align	4, 0x90
LBB5_27:                                ##   Parent Loop BB5_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	$0, 16(%rcx)
	movq	$0, 8(%rcx)
	movq	%r15, (%rcx)
	movq	-664(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, -664(%rbp)
	decq	%rsi
	incq	%rax
	jne	LBB5_27
LBB5_28:                                ##   in Loop: Header=BB5_20 Depth=1
	cmpq	$3, -752(%rbp)          ## 8-byte Folded Reload
	xorps	%xmm0, %xmm0
	jb	LBB5_30
	.p2align	4, 0x90
LBB5_29:                                ##   Parent Loop BB5_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	$0, 16(%rcx)
	movq	$0, 8(%rcx)
	movq	%r15, (%rcx)
	movq	-664(%rbp), %rcx
	leaq	24(%rcx), %rax
	movq	%rax, -664(%rbp)
	movq	$0, 40(%rcx)
	movq	$0, 32(%rcx)
	movq	%r15, 24(%rcx)
	leaq	48(%rcx), %rax
	movq	%rax, -664(%rbp)
	movq	$0, 64(%rcx)
	movq	$0, 56(%rcx)
	movq	%r15, 48(%rcx)
	leaq	72(%rcx), %rax
	movq	%rax, -664(%rbp)
	movq	$0, 88(%rcx)
	movq	$0, 80(%rcx)
	movq	%r15, 72(%rcx)
	addq	$96, %rcx
	movq	%rcx, -664(%rbp)
	addq	$-4, %rsi
	jne	LBB5_29
LBB5_30:                                ##   in Loop: Header=BB5_20 Depth=1
	movaps	%xmm0, -640(%rbp)
	movq	$0, -624(%rbp)
	movq	-712(%rbp), %rax        ## 8-byte Reload
	testl	%eax, %eax
	jns	LBB5_32
## BB#31:                               ##   in Loop: Header=BB5_20 Depth=1
Ltmp85:
	leaq	-640(%rbp), %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp86:
LBB5_32:                                ##   in Loop: Header=BB5_20 Depth=1
Ltmp87:
	movq	-760(%rbp), %rdi        ## 8-byte Reload
	callq	__Znwm
	movq	%rax, %rcx
Ltmp88:
## BB#33:                               ##   in Loop: Header=BB5_20 Depth=1
	cmpq	$0, -744(%rbp)          ## 8-byte Folded Reload
	movq	%rcx, -632(%rbp)
	movq	%rcx, -640(%rbp)
	leaq	(%rcx,%rbx,8), %rax
	movq	%rax, -624(%rbp)
	movq	%r13, %rsi
	je	LBB5_36
## BB#34:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-736(%rbp), %rax        ## 8-byte Reload
	movq	%r13, %rsi
	.p2align	4, 0x90
LBB5_35:                                ##   Parent Loop BB5_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	$0, 16(%rcx)
	movq	$0, 8(%rcx)
	movq	%r15, (%rcx)
	movq	-632(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, -632(%rbp)
	decq	%rsi
	incq	%rax
	jne	LBB5_35
LBB5_36:                                ##   in Loop: Header=BB5_20 Depth=1
	cmpq	$3, -752(%rbp)          ## 8-byte Folded Reload
	movq	-712(%rbp), %rbx        ## 8-byte Reload
	jb	LBB5_38
	.p2align	4, 0x90
LBB5_37:                                ##   Parent Loop BB5_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	$0, 16(%rcx)
	movq	$0, 8(%rcx)
	movq	%r15, (%rcx)
	movq	-632(%rbp), %rcx
	leaq	24(%rcx), %rax
	movq	%rax, -632(%rbp)
	movq	$0, 40(%rcx)
	movq	$0, 32(%rcx)
	movq	%r15, 24(%rcx)
	leaq	48(%rcx), %rax
	movq	%rax, -632(%rbp)
	movq	$0, 64(%rcx)
	movq	$0, 56(%rcx)
	movq	%r15, 48(%rcx)
	leaq	72(%rcx), %rax
	movq	%rax, -632(%rbp)
	movq	$0, 88(%rcx)
	movq	$0, 80(%rcx)
	movq	%r15, 72(%rcx)
	addq	$96, %rcx
	movq	%rcx, -632(%rbp)
	addq	$-4, %rsi
	jne	LBB5_37
	jmp	LBB5_38
	.p2align	4, 0x90
LBB5_21:                                ##   in Loop: Header=BB5_20 Depth=1
	movaps	%xmm0, -640(%rbp)
	movq	$0, -624(%rbp)
LBB5_38:                                ##   in Loop: Header=BB5_20 Depth=1
Ltmp90:
	leaq	-808(%rbp), %rdi
	movl	%ebx, %esi
	callq	__ZN10benchmarks4util13generate_intsEj
Ltmp91:
## BB#39:                               ##   in Loop: Header=BB5_20 Depth=1
Ltmp93:
	leaq	-784(%rbp), %rdi
	movl	%ebx, %esi
	callq	__ZN10benchmarks4util16generate_doublesEj
Ltmp94:
## BB#40:                               ##   in Loop: Header=BB5_20 Depth=1
	testl	%ebx, %ebx
	je	LBB5_43
## BB#41:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-672(%rbp), %rax
	movq	-808(%rbp), %rcx
	movq	-784(%rbp), %rdx
	addq	$16, %rax
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB5_42:                                ##   Parent Loop BB5_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rcx,%rsi,4), %edi
	movq	(%rdx,%rsi,8), %rbx
	movl	%edi, -8(%rax)
	movq	%rbx, (%rax)
	incq	%rsi
	addq	$24, %rax
	cmpq	%r13, %rsi
	jb	LBB5_42
LBB5_43:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	%r15, -848(%rbp)
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movq	%rax, %r12
	movq	-672(%rbp), %rax
	movq	-664(%rbp), %rcx
	cmpq	%rcx, %rax
	je	LBB5_46
## BB#44:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-640(%rbp), %rdx
	addq	$8, %rdx
	.p2align	4, 0x90
LBB5_45:                                ##   Parent Loop BB5_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	8(%rax), %rsi
	movq	16(%rax), %rdi
	movq	%rdi, 8(%rdx)
	movq	%rsi, (%rdx)
	addq	$24, %rax
	addq	$24, %rdx
	cmpq	%rax, %rcx
	jne	LBB5_45
LBB5_46:                                ##   in Loop: Header=BB5_20 Depth=1
	leaq	-3360(%rbp), %rdi
	leaq	-3352(%rbp), %rsi
	movq	%rdi, %rdx
	callq	__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	cltq
	movq	-640(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movq	16(%rcx,%rax,8), %rdx
	movq	%rdx, -608(%rbp)
	movq	8(%rcx,%rax,8), %rax
	movq	%rax, -616(%rbp)
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	subq	%r12, %rax
	movabsq	$4835703278458516699, %rcx ## imm = 0x431BDE82D7B634DB
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$18, %rdx
	addq	%rax, %rdx
	movq	%rdx, -824(%rbp)
	movq	-616(%rbp), %rax
	movq	-608(%rbp), %rcx
	leaq	-840(%rbp), %rsi
	movq	%rcx, 8(%rsi)
	movq	%rax, (%rsi)
	movq	-696(%rbp), %rax
	cmpq	-688(%rbp), %rax
	leaq	-608(%rbp), %rbx
	je	LBB5_58
## BB#47:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	%rdx, (%rax)
	addq	$8, %rax
	movq	%rax, -696(%rbp)
	jmp	LBB5_59
	.p2align	4, 0x90
LBB5_58:                                ##   in Loop: Header=BB5_20 Depth=1
Ltmp96:
	leaq	-704(%rbp), %rdi
	leaq	-824(%rbp), %rsi
	callq	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE21__push_back_slow_pathIRKS5_EEvOT_
Ltmp97:
LBB5_59:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	__ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	leaq	24(%rcx), %rax
	movq	%rax, -616(%rbp)
	leaq	64(%rcx), %rax
	movq	%rax, -200(%rbp)
Ltmp99:
	leaq	-200(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp100:
## BB#60:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	$0, -64(%rbp)
	movl	$-1, -56(%rbp)
	movq	%rbx, %rdi
	movq	__ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rax
	leaq	24(%rax), %rbx
	movq	%rbx, -616(%rbp)
	leaq	64(%rax), %r12
	movq	%r12, -200(%rbp)
Ltmp102:
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
Ltmp103:
## BB#61:                               ##   in Loop: Header=BB5_20 Depth=1
	cmpq	$0, -488(%rbp)
	je	LBB5_62
LBB5_67:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	-616(%rbp), %rax
	movq	-24(%rax), %rax
	leaq	-616(%rbp,%rax), %rdi
	movl	-584(%rbp,%rax), %esi
	orl	$4, %esi
Ltmp107:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp108:
	jmp	LBB5_68
	.p2align	4, 0x90
LBB5_62:                                ##   in Loop: Header=BB5_20 Depth=1
Ltmp105:
	leaq	L_.str.1(%rip), %rdi
	leaq	L_.str.2(%rip), %rsi
	callq	_fopen
Ltmp106:
## BB#63:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	%rax, -488(%rbp)
	testq	%rax, %rax
	je	LBB5_67
## BB#64:                               ##   in Loop: Header=BB5_20 Depth=1
	movl	$16, -216(%rbp)
LBB5_68:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	%r14, %r13
	movl	-840(%rbp), %esi
Ltmp110:
	leaq	-616(%rbp), %r14
	movq	%r14, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp111:
## BB#69:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	%rbx, -616(%rbp)
	movq	%r12, -200(%rbp)
	leaq	-608(%rbp), %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	movq	-720(%rbp), %rsi        ## 8-byte Reload
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	leaq	-200(%rbp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	-784(%rbp), %rdi
	testq	%rdi, %rdi
	movl	-724(%rbp), %r12d       ## 4-byte Reload
	movq	%r13, %r14
	movq	-816(%rbp), %r13        ## 8-byte Reload
	je	LBB5_73
## BB#70:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-776(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_72
## BB#71:                               ##   in Loop: Header=BB5_20 Depth=1
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -776(%rbp)
LBB5_72:                                ##   in Loop: Header=BB5_20 Depth=1
	callq	__ZdlPv
LBB5_73:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	-808(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_77
## BB#74:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-800(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_76
## BB#75:                               ##   in Loop: Header=BB5_20 Depth=1
	leaq	-4(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-4, %rcx
	addq	%rax, %rcx
	movq	%rcx, -800(%rbp)
LBB5_76:                                ##   in Loop: Header=BB5_20 Depth=1
	callq	__ZdlPv
LBB5_77:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	-640(%rbp), %rbx
	testq	%rbx, %rbx
	je	LBB5_82
## BB#78:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-632(%rbp), %rax
	cmpq	%rbx, %rax
	je	LBB5_81
	.p2align	4, 0x90
LBB5_79:                                ##   Parent Loop BB5_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	leaq	-24(%rax), %rdi
	movq	%rdi, -632(%rbp)
	movq	-24(%rax), %rax
	callq	*(%rax)
	movq	-632(%rbp), %rax
	cmpq	%rbx, %rax
	jne	LBB5_79
## BB#80:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-640(%rbp), %rbx
LBB5_81:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	%rbx, %rdi
	callq	__ZdlPv
LBB5_82:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	-672(%rbp), %rbx
	testq	%rbx, %rbx
	je	LBB5_87
## BB#83:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-664(%rbp), %rax
	cmpq	%rbx, %rax
	je	LBB5_86
	.p2align	4, 0x90
LBB5_84:                                ##   Parent Loop BB5_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	leaq	-24(%rax), %rdi
	movq	%rdi, -664(%rbp)
	movq	-24(%rax), %rax
	callq	*(%rax)
	movq	-664(%rbp), %rax
	cmpq	%rbx, %rax
	jne	LBB5_84
## BB#85:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-672(%rbp), %rbx
LBB5_86:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	%rbx, %rdi
	callq	__ZdlPv
LBB5_87:                                ##   in Loop: Header=BB5_20 Depth=1
	incl	%r14d
	cmpl	%r12d, %r14d
	movq	-712(%rbp), %rbx        ## 8-byte Reload
	xorps	%xmm0, %xmm0
	jl	LBB5_20
LBB5_7:
	leaq	-696(%rbp), %rbx
	movq	-704(%rbp), %rdi
	movq	-696(%rbp), %rsi
	leaq	-616(%rbp), %rdx
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	movq	(%rbx), %rax
	movq	-704(%rbp), %rcx
	subq	%rcx, %rax
	sarq	%rax
	andq	$-8, %rax
	movq	(%rcx,%rax), %rsi
Ltmp113:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp114:
## BB#8:
	movb	$32, -616(%rbp)
Ltmp115:
	leaq	-616(%rbp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp116:
## BB#9:
	movq	-704(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_13
## BB#10:
	movq	-696(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_12
## BB#11:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -696(%rbp)
LBB5_12:
	callq	__ZdlPv
LBB5_13:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB5_14
## BB#110:
	xorl	%eax, %eax
	addq	$3320, %rsp             ## imm = 0xCF8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB5_14:
	callq	___stack_chk_fail
LBB5_111:
Ltmp117:
	jmp	LBB5_112
LBB5_17:
Ltmp74:
	jmp	LBB5_16
LBB5_15:
Ltmp71:
LBB5_16:
	movq	%rax, %r14
	leaq	-3360(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	%r14, %rdi
	callq	__Unwind_Resume
LBB5_18:
Ltmp79:
LBB5_112:
	movq	%rax, %r14
	jmp	LBB5_113
LBB5_88:
Ltmp98:
	movq	%rax, %r14
	jmp	LBB5_94
LBB5_90:
Ltmp112:
	movq	%rax, %r14
	movq	%rbx, -616(%rbp)
	movq	%r12, -200(%rbp)
	jmp	LBB5_91
LBB5_53:
Ltmp89:
	movq	%rax, %r14
	movq	-640(%rbp), %rbx
	testq	%rbx, %rbx
	je	LBB5_107
## BB#54:
	movq	-632(%rbp), %rax
	cmpq	%rbx, %rax
	je	LBB5_106
	.p2align	4, 0x90
LBB5_55:                                ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rdi
	movq	%rdi, -632(%rbp)
	movq	-24(%rax), %rax
	callq	*(%rax)
	movq	-632(%rbp), %rax
	cmpq	%rbx, %rax
	jne	LBB5_55
	jmp	LBB5_105
LBB5_65:
Ltmp104:
	movq	%rax, %r14
	jmp	LBB5_92
LBB5_48:
Ltmp84:
	movq	%rax, %r14
	movq	-672(%rbp), %rbx
	testq	%rbx, %rbx
	je	LBB5_113
## BB#49:
	movq	-664(%rbp), %rax
	cmpq	%rbx, %rax
	je	LBB5_52
	.p2align	4, 0x90
LBB5_50:                                ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rdi
	movq	%rdi, -664(%rbp)
	movq	-24(%rax), %rax
	callq	*(%rax)
	movq	-664(%rbp), %rax
	cmpq	%rbx, %rax
	jne	LBB5_50
	jmp	LBB5_51
LBB5_89:
Ltmp101:
	movq	%rax, %r14
	jmp	LBB5_93
LBB5_57:
Ltmp95:
	movq	%rax, %r14
	jmp	LBB5_98
LBB5_66:
Ltmp109:
	movq	%rax, %r14
LBB5_91:
	leaq	-608(%rbp), %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
LBB5_92:
	leaq	-616(%rbp), %rdi
	movq	-720(%rbp), %rsi        ## 8-byte Reload
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
LBB5_93:
	leaq	-200(%rbp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
LBB5_94:
	movq	-784(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_98
## BB#95:
	movq	-776(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_97
## BB#96:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -776(%rbp)
LBB5_97:
	callq	__ZdlPv
LBB5_98:
	movq	-808(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_102
## BB#99:
	movq	-800(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_101
## BB#100:
	leaq	-4(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-4, %rcx
	addq	%rax, %rcx
	movq	%rcx, -800(%rbp)
LBB5_101:
	callq	__ZdlPv
	jmp	LBB5_102
LBB5_56:
Ltmp92:
	movq	%rax, %r14
LBB5_102:
	movq	-640(%rbp), %rbx
	testq	%rbx, %rbx
	je	LBB5_107
## BB#103:
	movq	-632(%rbp), %rax
	cmpq	%rbx, %rax
	je	LBB5_106
	.p2align	4, 0x90
LBB5_104:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rdi
	movq	%rdi, -632(%rbp)
	movq	-24(%rax), %rax
	callq	*(%rax)
	movq	-632(%rbp), %rax
	cmpq	%rbx, %rax
	jne	LBB5_104
LBB5_105:
	movq	-640(%rbp), %rbx
LBB5_106:
	movq	%rbx, %rdi
	callq	__ZdlPv
LBB5_107:
	movq	-672(%rbp), %rbx
	testq	%rbx, %rbx
	je	LBB5_113
## BB#108:
	movq	-664(%rbp), %rax
	cmpq	%rbx, %rax
	je	LBB5_52
	.p2align	4, 0x90
LBB5_109:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rdi
	movq	%rdi, -664(%rbp)
	movq	-24(%rax), %rax
	callq	*(%rax)
	movq	-664(%rbp), %rax
	cmpq	%rbx, %rax
	jne	LBB5_109
LBB5_51:
	movq	-672(%rbp), %rbx
LBB5_52:
	movq	%rbx, %rdi
	callq	__ZdlPv
LBB5_113:
	movq	-704(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_117
## BB#114:
	movq	-696(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_116
## BB#115:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -696(%rbp)
LBB5_116:
	callq	__ZdlPv
LBB5_117:
	movq	%r14, %rdi
	callq	__Unwind_Resume
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table5:
Lexception5:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.ascii	"\340\001"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\335\001"              ## Call site table length
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
Lset62 = Ltmp78-Ltmp75                  ##   Call between Ltmp75 and Ltmp78
	.long	Lset62
Lset63 = Ltmp79-Lfunc_begin5            ##     jumps to Ltmp79
	.long	Lset63
	.byte	0                       ##   On action: cleanup
Lset64 = Ltmp80-Lfunc_begin5            ## >> Call Site 6 <<
	.long	Lset64
Lset65 = Ltmp83-Ltmp80                  ##   Call between Ltmp80 and Ltmp83
	.long	Lset65
Lset66 = Ltmp84-Lfunc_begin5            ##     jumps to Ltmp84
	.long	Lset66
	.byte	0                       ##   On action: cleanup
Lset67 = Ltmp85-Lfunc_begin5            ## >> Call Site 7 <<
	.long	Lset67
Lset68 = Ltmp88-Ltmp85                  ##   Call between Ltmp85 and Ltmp88
	.long	Lset68
Lset69 = Ltmp89-Lfunc_begin5            ##     jumps to Ltmp89
	.long	Lset69
	.byte	0                       ##   On action: cleanup
Lset70 = Ltmp90-Lfunc_begin5            ## >> Call Site 8 <<
	.long	Lset70
Lset71 = Ltmp91-Ltmp90                  ##   Call between Ltmp90 and Ltmp91
	.long	Lset71
Lset72 = Ltmp92-Lfunc_begin5            ##     jumps to Ltmp92
	.long	Lset72
	.byte	0                       ##   On action: cleanup
Lset73 = Ltmp93-Lfunc_begin5            ## >> Call Site 9 <<
	.long	Lset73
Lset74 = Ltmp94-Ltmp93                  ##   Call between Ltmp93 and Ltmp94
	.long	Lset74
Lset75 = Ltmp95-Lfunc_begin5            ##     jumps to Ltmp95
	.long	Lset75
	.byte	0                       ##   On action: cleanup
Lset76 = Ltmp96-Lfunc_begin5            ## >> Call Site 10 <<
	.long	Lset76
Lset77 = Ltmp97-Ltmp96                  ##   Call between Ltmp96 and Ltmp97
	.long	Lset77
Lset78 = Ltmp98-Lfunc_begin5            ##     jumps to Ltmp98
	.long	Lset78
	.byte	0                       ##   On action: cleanup
Lset79 = Ltmp99-Lfunc_begin5            ## >> Call Site 11 <<
	.long	Lset79
Lset80 = Ltmp100-Ltmp99                 ##   Call between Ltmp99 and Ltmp100
	.long	Lset80
Lset81 = Ltmp101-Lfunc_begin5           ##     jumps to Ltmp101
	.long	Lset81
	.byte	0                       ##   On action: cleanup
Lset82 = Ltmp102-Lfunc_begin5           ## >> Call Site 12 <<
	.long	Lset82
Lset83 = Ltmp103-Ltmp102                ##   Call between Ltmp102 and Ltmp103
	.long	Lset83
Lset84 = Ltmp104-Lfunc_begin5           ##     jumps to Ltmp104
	.long	Lset84
	.byte	0                       ##   On action: cleanup
Lset85 = Ltmp107-Lfunc_begin5           ## >> Call Site 13 <<
	.long	Lset85
Lset86 = Ltmp106-Ltmp107                ##   Call between Ltmp107 and Ltmp106
	.long	Lset86
Lset87 = Ltmp109-Lfunc_begin5           ##     jumps to Ltmp109
	.long	Lset87
	.byte	0                       ##   On action: cleanup
Lset88 = Ltmp110-Lfunc_begin5           ## >> Call Site 14 <<
	.long	Lset88
Lset89 = Ltmp111-Ltmp110                ##   Call between Ltmp110 and Ltmp111
	.long	Lset89
Lset90 = Ltmp112-Lfunc_begin5           ##     jumps to Ltmp112
	.long	Lset90
	.byte	0                       ##   On action: cleanup
Lset91 = Ltmp111-Lfunc_begin5           ## >> Call Site 15 <<
	.long	Lset91
Lset92 = Ltmp113-Ltmp111                ##   Call between Ltmp111 and Ltmp113
	.long	Lset92
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset93 = Ltmp113-Lfunc_begin5           ## >> Call Site 16 <<
	.long	Lset93
Lset94 = Ltmp116-Ltmp113                ##   Call between Ltmp113 and Ltmp116
	.long	Lset94
Lset95 = Ltmp117-Lfunc_begin5           ##     jumps to Ltmp117
	.long	Lset95
	.byte	0                       ##   On action: cleanup
Lset96 = Ltmp116-Lfunc_begin5           ## >> Call Site 17 <<
	.long	Lset96
Lset97 = Lfunc_end5-Ltmp116             ##   Call between Ltmp116 and Lfunc_end5
	.long	Lset97
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN16non_trivial_typeD1Ev
	.weak_def_can_be_hidden	__ZN16non_trivial_typeD1Ev
	.p2align	4, 0x90
__ZN16non_trivial_typeD1Ev:             ## @_ZN16non_trivial_typeD1Ev
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
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.p2align	4, 0x90
__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev: ## @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
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
	pushq	%r14
	pushq	%rbx
Ltmp132:
	.cfi_offset %rbx, -32
Ltmp133:
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	movq	__ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, (%rbx)
	addq	$64, %rax
	movq	%rax, 416(%rbx)
	leaq	8(%rbx), %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	416(%rbx), %r14
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev ## TAILCALL
	.cfi_endproc

	.private_extern	___clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## BB#0:
	pushq	%rax
	callq	___cxa_begin_catch
	callq	__ZSt9terminatev

	.globl	__ZN16non_trivial_typeD0Ev
	.weak_def_can_be_hidden	__ZN16non_trivial_typeD0Ev
	.p2align	4, 0x90
__ZN16non_trivial_typeD0Ev:             ## @_ZN16non_trivial_typeD0Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp134:
	.cfi_def_cfa_offset 16
Ltmp135:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp136:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
	.cfi_endproc

	.globl	__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	.weak_def_can_be_hidden	__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	.p2align	4, 0x90
__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE: ## @_ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp137:
	.cfi_def_cfa_offset 16
Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp139:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
Ltmp140:
	.cfi_offset %rbx, -40
Ltmp141:
	.cfi_offset %r14, -32
Ltmp142:
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

	.globl	__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.p2align	4, 0x90
__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev: ## @_ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp143:
	.cfi_def_cfa_offset 16
Ltmp144:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp145:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Ltmp146:
	.cfi_offset %rbx, -32
Ltmp147:
	.cfi_offset %r14, -24
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	leaq	(%rdi,%rax), %rbx
	movq	__ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rcx
	leaq	24(%rcx), %rdx
	movq	%rdx, (%rdi,%rax)
	leaq	416(%rdi,%rax), %r14
	addq	$64, %rcx
	movq	%rcx, 416(%rdi,%rax)
	leaq	8(%rdi,%rax), %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev ## TAILCALL
	.cfi_endproc

	.globl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev
	.weak_def_can_be_hidden	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev
	.p2align	4, 0x90
__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev: ## @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp148:
	.cfi_def_cfa_offset 16
Ltmp149:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp150:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Ltmp151:
	.cfi_offset %rbx, -32
Ltmp152:
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	movq	__ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, (%rbx)
	leaq	416(%rbx), %r14
	addq	$64, %rax
	movq	%rax, 416(%rbx)
	leaq	8(%rbx), %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
	.cfi_endproc

	.globl	__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev
	.weak_def_can_be_hidden	__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev
	.p2align	4, 0x90
__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev: ## @_ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev
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
	pushq	%r14
	pushq	%rbx
Ltmp156:
	.cfi_offset %rbx, -32
Ltmp157:
	.cfi_offset %r14, -24
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	leaq	(%rdi,%rax), %rbx
	movq	__ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rcx
	leaq	24(%rcx), %rdx
	movq	%rdx, (%rdi,%rax)
	leaq	416(%rdi,%rax), %r14
	addq	$64, %rcx
	movq	%rcx, 416(%rdi,%rax)
	leaq	8(%rdi,%rax), %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp158:
	.cfi_def_cfa_offset 16
Ltmp159:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp160:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev ## TAILCALL
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
## BB#0:
	pushq	%rbp
Ltmp167:
	.cfi_def_cfa_offset 16
Ltmp168:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp169:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp170:
	.cfi_offset %rbx, -40
Ltmp171:
	.cfi_offset %r14, -32
Ltmp172:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movq	__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	120(%rbx), %r14
	testq	%r14, %r14
	je	LBB15_5
## BB#1:
Ltmp161:
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
Ltmp162:
## BB#2:
	movq	%r14, %rdi
	callq	_fclose
	testl	%eax, %eax
	jne	LBB15_5
## BB#3:
	movq	$0, 120(%rbx)
LBB15_5:
	movzwl	400(%rbx), %eax
	movl	%eax, %ecx
	shrl	$8, %ecx
	testb	%al, %al
	je	LBB15_8
## BB#6:
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB15_8
## BB#7:
	callq	__ZdaPv
	movb	401(%rbx), %cl
LBB15_8:
	testb	%cl, %cl
	je	LBB15_11
## BB#9:
	movq	104(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB15_11
## BB#10:
	callq	__ZdaPv
LBB15_11:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev ## TAILCALL
LBB15_4:
Ltmp163:
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	_fclose
	movq	%r15, %rdi
	callq	___cxa_begin_catch
Ltmp164:
	callq	___cxa_end_catch
Ltmp165:
	jmp	LBB15_5
LBB15_12:
Ltmp166:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	callq	___clang_call_terminate
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table15:
Lexception6:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\257\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset98 = Ltmp161-Lfunc_begin6           ## >> Call Site 1 <<
	.long	Lset98
Lset99 = Ltmp162-Ltmp161                ##   Call between Ltmp161 and Ltmp162
	.long	Lset99
Lset100 = Ltmp163-Lfunc_begin6          ##     jumps to Ltmp163
	.long	Lset100
	.byte	1                       ##   On action: 1
Lset101 = Ltmp162-Lfunc_begin6          ## >> Call Site 2 <<
	.long	Lset101
Lset102 = Ltmp164-Ltmp162               ##   Call between Ltmp162 and Ltmp164
	.long	Lset102
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset103 = Ltmp164-Lfunc_begin6          ## >> Call Site 3 <<
	.long	Lset103
Lset104 = Ltmp165-Ltmp164               ##   Call between Ltmp164 and Ltmp165
	.long	Lset104
Lset105 = Ltmp166-Lfunc_begin6          ##     jumps to Ltmp166
	.long	Lset105
	.byte	1                       ##   On action: 1
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp173:
	.cfi_def_cfa_offset 16
Ltmp174:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp175:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Ltmp176:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp177:
	.cfi_def_cfa_offset 16
Ltmp178:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp179:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Ltmp180:
	.cfi_offset %rbx, -32
Ltmp181:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rbx), %rax
	callq	*48(%rax)
	movq	__ZNSt3__17codecvtIcc11__mbstate_tE2idE@GOTPCREL(%rip), %rsi
	movq	%r14, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
	movq	%rax, 128(%rbx)
	movq	(%rax), %rcx
	movzbl	402(%rbx), %r14d
	movq	%rax, %rdi
	callq	*56(%rcx)
	movb	%al, 402(%rbx)
	movzbl	%al, %ecx
	cmpl	%ecx, %r14d
	je	LBB17_10
## BB#1:
	movq	$0, 56(%rbx)
	movq	$0, 48(%rbx)
	movq	$0, 40(%rbx)
	movq	$0, 32(%rbx)
	movq	$0, 24(%rbx)
	movq	$0, 16(%rbx)
	movzwl	400(%rbx), %ecx
	testb	%al, %al
	je	LBB17_6
## BB#2:
	movl	%ecx, %eax
	shrl	$8, %eax
	testb	%cl, %cl
	je	LBB17_5
## BB#3:
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB17_5
## BB#4:
	callq	__ZdaPv
	movb	401(%rbx), %al
LBB17_5:
	movb	%al, 400(%rbx)
	movq	112(%rbx), %rax
	movq	%rax, 96(%rbx)
	movq	104(%rbx), %rax
	movq	%rax, 64(%rbx)
	movb	$0, 401(%rbx)
	movq	$0, 112(%rbx)
	movq	$0, 104(%rbx)
	jmp	LBB17_10
LBB17_6:
	testb	%cl, %cl
	je	LBB17_7
LBB17_9:
	movq	96(%rbx), %rdi
	movq	%rdi, 112(%rbx)
	callq	__Znam
	movq	%rax, 104(%rbx)
	movb	$1, 401(%rbx)
	jmp	LBB17_10
LBB17_7:
	movq	64(%rbx), %rax
	leaq	88(%rbx), %rcx
	cmpq	%rcx, %rax
	je	LBB17_9
## BB#8:
	movq	96(%rbx), %rdi
	movq	%rdi, 112(%rbx)
	movq	%rax, 104(%rbx)
	movb	$0, 401(%rbx)
	callq	__Znam
	movq	%rax, 64(%rbx)
	movb	$1, 400(%rbx)
LBB17_10:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl
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
	pushq	%r12
	pushq	%rbx
Ltmp185:
	.cfi_offset %rbx, -48
Ltmp186:
	.cfi_offset %r12, -40
Ltmp187:
	.cfi_offset %r14, -32
Ltmp188:
	.cfi_offset %r15, -24
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	$0, 56(%rbx)
	movq	$0, 48(%rbx)
	movq	$0, 40(%rbx)
	movq	$0, 32(%rbx)
	movq	$0, 24(%rbx)
	movq	$0, 16(%rbx)
	movl	400(%rbx), %ecx
	movl	%ecx, %eax
	shrl	$8, %eax
	testb	%cl, %cl
	je	LBB18_3
## BB#1:
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB18_3
## BB#2:
	callq	__ZdaPv
	movb	401(%rbx), %al
LBB18_3:
	testb	%al, %al
	je	LBB18_6
## BB#4:
	movq	104(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB18_6
## BB#5:
	callq	__ZdaPv
LBB18_6:
	movq	%r15, 96(%rbx)
	cmpq	$9, %r15
	jb	LBB18_12
## BB#7:
	movb	402(%rbx), %r12b
	testq	%r14, %r14
	je	LBB18_11
## BB#8:
	testb	%r12b, %r12b
	je	LBB18_11
## BB#9:
	movq	%r14, 64(%rbx)
	movb	$0, 400(%rbx)
	jmp	LBB18_10
LBB18_12:
	leaq	88(%rbx), %rax
	movq	%rax, 64(%rbx)
	movq	$8, 96(%rbx)
	movb	$0, 400(%rbx)
	movb	402(%rbx), %r12b
	jmp	LBB18_13
LBB18_11:
	movq	%r15, %rdi
	callq	__Znam
	movq	%rax, 64(%rbx)
	movb	$1, 400(%rbx)
LBB18_13:
	testb	%r12b, %r12b
	je	LBB18_14
LBB18_10:
	movb	$0, 401(%rbx)
	movq	$0, 112(%rbx)
	movq	$0, 104(%rbx)
LBB18_18:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB18_14:
	cmpq	$8, %r15
	movl	$8, %edi
	cmovgeq	%r15, %rdi
	movq	%rdi, 112(%rbx)
	testq	%r14, %r14
	je	LBB18_17
## BB#15:
	cmpq	$8, %rdi
	jb	LBB18_17
## BB#16:
	movq	%r14, 104(%rbx)
	movb	$0, 401(%rbx)
	jmp	LBB18_18
LBB18_17:
	callq	__Znam
	movq	%rax, 104(%rbx)
	movb	$1, 401(%rbx)
	jmp	LBB18_18
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp189:
	.cfi_def_cfa_offset 16
Ltmp190:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp191:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp192:
	.cfi_offset %rbx, -56
Ltmp193:
	.cfi_offset %r12, -48
Ltmp194:
	.cfi_offset %r13, -40
Ltmp195:
	.cfi_offset %r14, -32
Ltmp196:
	.cfi_offset %r15, -24
	movl	%ecx, %r15d
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	128(%r14), %rdi
	testq	%rdi, %rdi
	je	LBB19_10
## BB#1:
	movq	(%rdi), %rax
	callq	*48(%rax)
	movl	%eax, %r13d
	cmpq	$0, 120(%r14)
	je	LBB19_5
## BB#2:
	testq	%r12, %r12
	je	LBB19_4
## BB#3:
	testl	%r13d, %r13d
	jle	LBB19_5
LBB19_4:
	movq	(%r14), %rax
	movq	%r14, %rdi
	callq	*48(%rax)
	testl	%eax, %eax
	jne	LBB19_5
## BB#6:
	cmpl	$3, %r15d
	jae	LBB19_5
## BB#7:
	movq	120(%r14), %rdi
	movslq	%r13d, %rax
	imulq	%rax, %r12
	xorl	%esi, %esi
	testl	%eax, %eax
	cmovgq	%r12, %rsi
	movl	%r15d, %edx
	callq	_fseeko
	testl	%eax, %eax
	je	LBB19_8
LBB19_5:
	movq	$0, 120(%rbx)
	movq	$0, 112(%rbx)
	movq	$0, 104(%rbx)
	movq	$0, 96(%rbx)
	movq	$0, 88(%rbx)
	movq	$0, 80(%rbx)
	movq	$0, 72(%rbx)
	movq	$0, 64(%rbx)
	movq	$0, 56(%rbx)
	movq	$0, 48(%rbx)
	movq	$0, 40(%rbx)
	movq	$0, 32(%rbx)
	movq	$0, 24(%rbx)
	movq	$0, 16(%rbx)
	movq	$0, 8(%rbx)
	movq	$0, (%rbx)
	movq	$-1, 128(%rbx)
LBB19_9:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB19_8:
	movq	120(%r14), %rdi
	callq	_ftello
	addq	$136, %r14
	movl	$16, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	rep;movsq
	movq	%rax, 128(%rbx)
	jmp	LBB19_9
LBB19_10:
	movl	$8, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	__ZNSt8bad_castC1Ev
	movq	__ZTISt8bad_cast@GOTPCREL(%rip), %rsi
	movq	__ZNSt8bad_castD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp197:
	.cfi_def_cfa_offset 16
Ltmp198:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp199:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp200:
	.cfi_offset %rbx, -40
Ltmp201:
	.cfi_offset %r14, -32
Ltmp202:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpq	$0, 120(%r14)
	je	LBB20_2
## BB#1:
	movq	(%r14), %rax
	movq	%r14, %rdi
	callq	*48(%rax)
	testl	%eax, %eax
	jne	LBB20_2
## BB#3:
	leaq	16(%rbp), %r15
	movq	120(%r14), %rdi
	movq	128(%r15), %rsi
	xorl	%edx, %edx
	callq	_fseeko
	testl	%eax, %eax
	je	LBB20_4
LBB20_2:
	movq	$0, 120(%rbx)
	movq	$0, 112(%rbx)
	movq	$0, 104(%rbx)
	movq	$0, 96(%rbx)
	movq	$0, 88(%rbx)
	movq	$0, 80(%rbx)
	movq	$0, 72(%rbx)
	movq	$0, 64(%rbx)
	movq	$0, 56(%rbx)
	movq	$0, 48(%rbx)
	movq	$0, 40(%rbx)
	movq	$0, 32(%rbx)
	movq	$0, 24(%rbx)
	movq	$0, 16(%rbx)
	movq	$0, 8(%rbx)
	movq	$0, (%rbx)
	movq	$-1, 128(%rbx)
LBB20_5:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB20_4:
	addq	$136, %r14
	movl	$16, %ecx
	movq	%r14, %rdi
	movq	%r15, %rsi
	rep;movsq
	movl	$136, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_memcpy
	jmp	LBB20_5
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp203:
	.cfi_def_cfa_offset 16
Ltmp204:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp205:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
Ltmp206:
	.cfi_offset %rbx, -56
Ltmp207:
	.cfi_offset %r12, -48
Ltmp208:
	.cfi_offset %r13, -40
Ltmp209:
	.cfi_offset %r14, -32
Ltmp210:
	.cfi_offset %r15, -24
	movq	%rdi, %r15
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	xorl	%r13d, %r13d
	cmpq	$0, 120(%r15)
	je	LBB21_24
## BB#1:
	movq	128(%r15), %rax
	testq	%rax, %rax
	je	LBB21_27
## BB#2:
	movl	396(%r15), %ecx
	testb	$16, %cl
	jne	LBB21_6
## BB#3:
	testb	$8, %cl
	je	LBB21_23
## BB#4:
	leaq	264(%r15), %rsi
	leaq	-176(%rbp), %rdi
	movl	$16, %ecx
	rep;movsq
	cmpb	$0, 402(%r15)
	je	LBB21_13
## BB#5:
	movq	32(%r15), %r14
	subq	24(%r15), %r14
	jmp	LBB21_17
LBB21_6:
	movq	48(%r15), %rax
	cmpq	40(%r15), %rax
	je	LBB21_8
## BB#7:
	movq	(%r15), %rax
	movl	$-1, %r13d
	movl	$-1, %esi
	movq	%r15, %rdi
	callq	*104(%rax)
	cmpl	$-1, %eax
	je	LBB21_24
LBB21_8:
	leaq	136(%r15), %r14
	movl	$-1, %r13d
	.p2align	4, 0x90
LBB21_9:                                ## =>This Inner Loop Header: Depth=1
	movq	64(%r15), %rdx
	movq	128(%r15), %rdi
	movq	96(%r15), %rcx
	addq	%rdx, %rcx
	movq	(%rdi), %rax
	movq	%r14, %rsi
	leaq	-176(%rbp), %r8
	callq	*40(%rax)
	movl	%eax, %ebx
	movq	-176(%rbp), %r12
	movq	64(%r15), %rdi
	movq	120(%r15), %rcx
	subq	%rdi, %r12
	movl	$1, %esi
	movq	%r12, %rdx
	callq	_fwrite
	cmpq	%r12, %rax
	jne	LBB21_24
## BB#10:                               ##   in Loop: Header=BB21_9 Depth=1
	cmpl	$1, %ebx
	je	LBB21_9
## BB#11:
	cmpl	$2, %ebx
	je	LBB21_24
## BB#12:
	movq	120(%r15), %rdi
	callq	_fflush
	testl	%eax, %eax
	jne	LBB21_24
	jmp	LBB21_23
LBB21_13:
	movq	(%rax), %rcx
	movq	%rax, %rdi
	callq	*48(%rcx)
	movq	72(%r15), %rcx
	movq	80(%r15), %r14
	subq	%rcx, %r14
	testl	%eax, %eax
	jle	LBB21_15
## BB#14:
	cltq
	movq	32(%r15), %rcx
	subq	24(%r15), %rcx
	imulq	%rax, %rcx
	addq	%rcx, %r14
LBB21_17:
	xorl	%ebx, %ebx
LBB21_18:
	movq	120(%r15), %rdi
	negq	%r14
	movl	$1, %edx
	movq	%r14, %rsi
	callq	_fseeko
	testl	%eax, %eax
	je	LBB21_20
## BB#19:
	movl	$-1, %r13d
	jmp	LBB21_24
LBB21_20:
	testb	%bl, %bl
	je	LBB21_22
## BB#21:
	leaq	136(%r15), %rdi
	leaq	-176(%rbp), %rsi
	movl	$16, %ecx
	rep;movsq
LBB21_22:
	movq	64(%r15), %rax
	movq	%rax, 80(%r15)
	movq	%rax, 72(%r15)
	movl	$0, 396(%r15)
	movq	$0, 32(%r15)
	movq	$0, 24(%r15)
	movq	$0, 16(%r15)
LBB21_23:
	xorl	%r13d, %r13d
LBB21_24:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB21_26
## BB#25:
	movl	%r13d, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB21_15:
	movq	24(%r15), %r8
	cmpq	32(%r15), %r8
	je	LBB21_17
## BB#16:
	movq	64(%r15), %rdx
	movq	128(%r15), %rdi
	subq	16(%r15), %r8
	movq	(%rdi), %rax
	leaq	-176(%rbp), %rsi
	callq	*64(%rax)
	cltq
	addq	72(%r15), %r14
	subq	%rax, %r14
	subq	64(%r15), %r14
	movb	$1, %bl
	jmp	LBB21_18
LBB21_26:
	callq	___stack_chk_fail
LBB21_27:
	movl	$8, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	__ZNSt8bad_castC1Ev
	movq	__ZTISt8bad_cast@GOTPCREL(%rip), %rsi
	movq	__ZNSt8bad_castD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp211:
	.cfi_def_cfa_offset 16
Ltmp212:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp213:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp214:
	.cfi_offset %rbx, -56
Ltmp215:
	.cfi_offset %r12, -48
Ltmp216:
	.cfi_offset %r13, -40
Ltmp217:
	.cfi_offset %r14, -32
Ltmp218:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movl	$-1, %eax
	cmpq	$0, 120(%rbx)
	je	LBB22_28
## BB#1:
	testb	$8, 396(%rbx)
	jne	LBB22_2
## BB#3:
	movq	$0, 56(%rbx)
	movq	$0, 48(%rbx)
	movq	$0, 40(%rbx)
	cmpb	$0, 402(%rbx)
	je	LBB22_5
## BB#4:
	movq	64(%rbx), %rax
	movq	96(%rbx), %rsi
	jmp	LBB22_6
LBB22_2:
	leaq	24(%rbx), %r13
	movq	24(%rbx), %rsi
	xorl	%eax, %eax
	jmp	LBB22_7
LBB22_5:
	movq	104(%rbx), %rax
	movq	112(%rbx), %rsi
LBB22_6:
	addq	%rax, %rsi
	movq	%rax, 16(%rbx)
	leaq	24(%rbx), %r13
	movq	%rsi, 24(%rbx)
	movq	%rsi, 32(%rbx)
	movl	$8, 396(%rbx)
	movb	$1, %al
LBB22_7:
	testq	%rsi, %rsi
	jne	LBB22_9
## BB#8:
	leaq	-40(%rbp), %rsi
	leaq	-41(%rbp), %rcx
	movq	%rcx, 16(%rbx)
	movq	%rsi, 24(%rbx)
	movq	%rsi, 32(%rbx)
LBB22_9:
	testb	%al, %al
	je	LBB22_11
## BB#10:
	movq	32(%rbx), %rax
	xorl	%r14d, %r14d
	jmp	LBB22_12
LBB22_11:
	movq	32(%rbx), %rax
	movq	%rax, %rcx
	subq	16(%rbx), %rcx
	movq	%rcx, %rdx
	shrq	$63, %rdx
	addq	%rcx, %rdx
	sarq	%rdx
	cmpq	$4, %rdx
	movl	$4, %r14d
	cmovbeq	%rdx, %r14
LBB22_12:
	cmpq	%rax, %rsi
	je	LBB22_13
## BB#25:
	movzbl	(%rsi), %eax
	leaq	16(%rbx), %r12
LBB22_26:
	leaq	-41(%rbp), %rcx
	cmpq	%rcx, (%r12)
	jne	LBB22_28
## BB#27:
	movq	$0, (%r12)
	movq	$0, 24(%rbx)
	movq	$0, 32(%rbx)
LBB22_28:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB22_13:
	leaq	16(%rbx), %r12
	movq	16(%rbx), %rdi
	subq	%r14, %rsi
	movq	%r14, %rdx
	callq	_memmove
	cmpb	$0, 402(%rbx)
	je	LBB22_16
## BB#14:
	movq	16(%rbx), %rdi
	movq	32(%rbx), %rdx
	subq	%r14, %rdx
	subq	%rdi, %rdx
	addq	%r14, %rdi
	movq	120(%rbx), %rcx
	movl	$1, %esi
	callq	_fread
	movq	%rax, %rcx
	movl	$-1, %eax
	testq	%rcx, %rcx
	je	LBB22_26
## BB#15:
	movq	16(%rbx), %rax
	leaq	(%rax,%r14), %rdx
	addq	%rdx, %rcx
	movq	%rdx, 24(%rbx)
	movq	%rcx, 32(%rbx)
	movzbl	(%rax,%r14), %eax
	jmp	LBB22_26
LBB22_16:
	movq	64(%rbx), %rdi
	movq	72(%rbx), %rsi
	movq	80(%rbx), %rdx
	subq	%rsi, %rdx
	callq	_memmove
	movq	64(%rbx), %rdx
	movq	80(%rbx), %rax
	subq	72(%rbx), %rax
	addq	%rdx, %rax
	movq	%rax, 72(%rbx)
	leaq	88(%rbx), %rcx
	cmpq	%rcx, %rdx
	je	LBB22_17
## BB#18:
	movq	96(%rbx), %rcx
	jmp	LBB22_19
LBB22_17:
	movl	$8, %ecx
LBB22_19:
	addq	%rcx, %rdx
	movq	%rdx, 80(%rbx)
	movq	112(%rbx), %rcx
	subq	%r14, %rcx
	subq	%rax, %rdx
	cmpq	%rcx, %rdx
	cmovaeq	%rcx, %rdx
	leaq	264(%rbx), %rdi
	leaq	136(%rbx), %r15
	movl	$16, %ecx
	movq	%r15, %rsi
	rep;movsq
	movq	120(%rbx), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	callq	_fread
	movq	%rax, %rcx
	movl	$-1, %eax
	testq	%rcx, %rcx
	je	LBB22_26
## BB#20:
	movq	128(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB22_29
## BB#21:
	leaq	72(%rbx), %r8
	addq	72(%rbx), %rcx
	movq	%rcx, 80(%rbx)
	movq	16(%rbx), %rax
	movq	64(%rbx), %rdx
	leaq	(%rax,%r14), %r9
	addq	112(%rbx), %rax
	movq	(%rdi), %r10
	leaq	-56(%rbp), %r11
	movq	%r15, %rsi
	pushq	%r11
	pushq	%rax
	callq	*32(%r10)
	addq	$16, %rsp
	cmpl	$3, %eax
	jne	LBB22_23
## BB#22:
	movq	64(%rbx), %rax
	movq	80(%rbx), %rcx
	movq	%rax, 16(%rbx)
	movq	%rax, (%r13)
	movq	%rcx, 32(%rbx)
	movzbl	(%rax), %eax
	jmp	LBB22_26
LBB22_23:
	movq	-56(%rbp), %rcx
	addq	(%r12), %r14
	movl	$-1, %eax
	cmpq	%r14, %rcx
	je	LBB22_26
## BB#24:
	movq	%r14, 24(%rbx)
	movq	%rcx, 32(%rbx)
	movzbl	(%r14), %eax
	jmp	LBB22_26
LBB22_29:
	movl	$8, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	__ZNSt8bad_castC1Ev
	movq	__ZTISt8bad_cast@GOTPCREL(%rip), %rsi
	movq	__ZNSt8bad_castD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp219:
	.cfi_def_cfa_offset 16
Ltmp220:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp221:
	.cfi_def_cfa_register %rbp
	movl	$-1, %eax
	cmpq	$0, 120(%rdi)
	je	LBB23_7
## BB#1:
	movq	24(%rdi), %rcx
	cmpq	%rcx, 16(%rdi)
	jae	LBB23_7
## BB#2:
	cmpl	$-1, %esi
	je	LBB23_3
## BB#4:
	testb	$16, 392(%rdi)
	jne	LBB23_6
## BB#5:
	cmpb	-1(%rcx), %sil
	jne	LBB23_7
LBB23_6:
	decq	%rcx
	movq	%rcx, 24(%rdi)
	movb	%sil, (%rcx)
	movl	%esi, %eax
LBB23_7:
	popq	%rbp
	retq
LBB23_3:
	decq	%rcx
	movq	%rcx, 24(%rdi)
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp222:
	.cfi_def_cfa_offset 16
Ltmp223:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp224:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Ltmp225:
	.cfi_offset %rbx, -56
Ltmp226:
	.cfi_offset %r12, -48
Ltmp227:
	.cfi_offset %r13, -40
Ltmp228:
	.cfi_offset %r14, -32
Ltmp229:
	.cfi_offset %r15, -24
	movl	%esi, %r14d
	movq	%rdi, %r12
	movl	$-1, %eax
	cmpq	$0, 120(%r12)
	je	LBB24_31
## BB#1:
	testb	$16, 396(%r12)
	jne	LBB24_2
## BB#3:
	movq	$0, 32(%r12)
	movq	$0, 24(%r12)
	movq	$0, 16(%r12)
	movq	96(%r12), %rcx
	cmpq	$9, %rcx
	jb	LBB24_8
## BB#4:
	cmpb	$0, 402(%r12)
	je	LBB24_7
## BB#5:
	movq	64(%r12), %rax
	jmp	LBB24_6
LBB24_2:
	leaq	40(%r12), %r15
	movq	40(%r12), %rax
	movq	56(%r12), %r13
	leaq	56(%r12), %rdx
	movq	%rax, %rsi
	jmp	LBB24_10
LBB24_8:
	leaq	40(%r12), %r15
	movq	$0, 56(%r12)
	movq	$0, 48(%r12)
	movq	$0, 40(%r12)
	leaq	56(%r12), %rdx
	xorl	%eax, %eax
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	jmp	LBB24_9
LBB24_7:
	movq	104(%r12), %rax
	movq	112(%r12), %rcx
LBB24_6:
	leaq	-1(%rax,%rcx), %r13
	movq	%rax, 48(%r12)
	leaq	40(%r12), %r15
	movq	%rax, 40(%r12)
	leaq	56(%r12), %rdx
	movq	%r13, 56(%r12)
	movq	%rax, %rsi
LBB24_9:
	movl	$16, 396(%r12)
LBB24_10:
	cmpl	$-1, %r14d
	movq	48(%r12), %rcx
	je	LBB24_14
## BB#11:
	testq	%rcx, %rcx
	jne	LBB24_13
## BB#12:
	leaq	-40(%rbp), %rax
	leaq	-41(%rbp), %rcx
	movq	%rcx, 48(%r12)
	movq	%rcx, 40(%r12)
	movq	%rax, 56(%r12)
LBB24_13:
	movb	%r14b, (%rcx)
	movq	48(%r12), %rcx
	incq	%rcx
	movq	%rcx, 48(%r12)
	movq	40(%r12), %rax
LBB24_14:
	movq	%rcx, %rbx
	subq	%rax, %rbx
	je	LBB24_18
## BB#15:
	movq	%rsi, -88(%rbp)         ## 8-byte Spill
	movq	%rdx, -96(%rbp)         ## 8-byte Spill
	cmpb	$0, 402(%r12)
	je	LBB24_19
## BB#16:
	movq	120(%r12), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	_fwrite
	movq	%rax, %rcx
	movl	$-1, %eax
	cmpq	%rbx, %rcx
	jne	LBB24_31
LBB24_17:
	movq	-88(%rbp), %rax         ## 8-byte Reload
	movq	%rax, 48(%r12)
	movq	%rax, (%r15)
	movq	-96(%rbp), %rax         ## 8-byte Reload
	movq	%r13, (%rax)
LBB24_18:
	xorl	%eax, %eax
	cmpl	$-1, %r14d
	cmovnel	%r14d, %eax
	jmp	LBB24_31
LBB24_19:
	movq	%r13, -80(%rbp)         ## 8-byte Spill
	movq	%r15, -64(%rbp)         ## 8-byte Spill
	movq	64(%r12), %r9
	movq	%r9, -72(%rbp)
	movq	128(%r12), %rdi
	testq	%rdi, %rdi
	je	LBB24_32
## BB#20:
	leaq	136(%r12), %r15
	movq	96(%r12), %rbx
	addq	%r9, %rbx
	movq	(%rdi), %r10
	leaq	-72(%rbp), %r11
	leaq	-56(%rbp), %r8
	movq	%r15, %rsi
	movq	%rax, %rdx
	pushq	%r11
	pushq	%rbx
	jmp	LBB24_21
	.p2align	4, 0x90
LBB24_29:                               ##   in Loop: Header=BB24_21 Depth=1
	movq	64(%r12), %r9
	movq	96(%r12), %rax
	addq	%r9, %rax
	movq	(%rdi), %r10
	movq	%r15, %rsi
	leaq	-56(%rbp), %r8
	leaq	-72(%rbp), %rbx
	pushq	%rbx
	pushq	%rax
LBB24_21:                               ## =>This Inner Loop Header: Depth=1
	callq	*24(%r10)
	addq	$16, %rsp
	movl	%eax, %r13d
	movq	40(%r12), %rdi
	cmpq	%rdi, -56(%rbp)
	je	LBB24_30
## BB#22:                               ##   in Loop: Header=BB24_21 Depth=1
	cmpl	$3, %r13d
	je	LBB24_23
## BB#25:                               ##   in Loop: Header=BB24_21 Depth=1
	movl	%r13d, %eax
	orl	$1, %eax
	cmpl	$1, %eax
	jne	LBB24_30
## BB#26:                               ##   in Loop: Header=BB24_21 Depth=1
	movq	-72(%rbp), %rbx
	movq	64(%r12), %rdi
	movq	120(%r12), %rcx
	subq	%rdi, %rbx
	movl	$1, %esi
	movq	%rbx, %rdx
	callq	_fwrite
	cmpq	%rbx, %rax
	jne	LBB24_30
## BB#27:                               ##   in Loop: Header=BB24_21 Depth=1
	cmpl	$1, %r13d
	jne	LBB24_24
## BB#28:                               ##   in Loop: Header=BB24_21 Depth=1
	movq	-56(%rbp), %rdx
	movq	48(%r12), %rax
	movq	-64(%rbp), %rcx         ## 8-byte Reload
	movq	%rdx, (%rcx)
	movq	%rax, 56(%r12)
	subl	%edx, %eax
	movslq	%eax, %rcx
	addq	%rdx, %rcx
	movq	%rcx, 48(%r12)
	movq	128(%r12), %rdi
	testq	%rdi, %rdi
	jne	LBB24_29
LBB24_32:
	movl	$8, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	__ZNSt8bad_castC1Ev
	movq	__ZTISt8bad_cast@GOTPCREL(%rip), %rsi
	movq	__ZNSt8bad_castD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB24_23:
	movq	48(%r12), %rbx
	movq	120(%r12), %rcx
	subq	%rdi, %rbx
	movl	$1, %esi
	movq	%rbx, %rdx
	callq	_fwrite
	cmpq	%rbx, %rax
	jne	LBB24_30
LBB24_24:
	movq	-64(%rbp), %r15         ## 8-byte Reload
	movq	-80(%rbp), %r13         ## 8-byte Reload
	jmp	LBB24_17
LBB24_30:
	movl	$-1, %eax
LBB24_31:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
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
Ltmp230:
	.cfi_def_cfa_offset 16
Ltmp231:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp232:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp233:
	.cfi_offset %rbx, -56
Ltmp234:
	.cfi_offset %r12, -48
Ltmp235:
	.cfi_offset %r13, -40
Ltmp236:
	.cfi_offset %r14, -32
Ltmp237:
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
	je	LBB25_2
## BB#1:
	movq	%r12, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	movq	(%r12), %rdx
LBB25_2:
	movq	16(%r12), %r14
	subq	%rdx, %r14
	movq	%r14, %rax
	sarq	$3, %rax
	movabsq	$1152921504606846975, %rcx ## imm = 0xFFFFFFFFFFFFFFF
	cmpq	%rcx, %rax
	movq	%r15, -48(%rbp)         ## 8-byte Spill
	jae	LBB25_3
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
	jne	LBB25_5
	jmp	LBB25_6
LBB25_3:
	movabsq	$2305843009213693951, %r14 ## imm = 0x1FFFFFFFFFFFFFFF
	movq	8(%r12), %r15
	movq	%r15, %r13
	subq	%rdx, %r13
	sarq	$3, %r13
LBB25_5:
	leaq	(,%r14,8), %rdi
	movq	%rdx, %rbx
	callq	__Znwm
	movq	%rbx, %rdx
	movq	%r14, %rcx
LBB25_6:
	leaq	(%rax,%r13,8), %rbx
	leaq	(%rax,%rcx,8), %rsi
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rcx, (%rax,%r13,8)
	leaq	8(%rax,%r13,8), %r13
	subq	%rdx, %r15
	subq	%r15, %rbx
	testq	%r15, %r15
	jle	LBB25_8
## BB#7:
	movq	%rbx, %rdi
	movq	%rdx, %r14
	movq	%rsi, -48(%rbp)         ## 8-byte Spill
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	_memcpy
	movq	-48(%rbp), %rsi         ## 8-byte Reload
	movq	%r14, %rdx
LBB25_8:
	movq	%rbx, (%r12)
	movq	%r13, 8(%r12)
	movq	%rsi, 16(%r12)
	testq	%rdx, %rdx
	je	LBB25_9
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
LBB25_9:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
## BB#0:
	pushq	%rbp
Ltmp247:
	.cfi_def_cfa_offset 16
Ltmp248:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp249:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp250:
	.cfi_offset %rbx, -40
Ltmp251:
	.cfi_offset %r14, -32
Ltmp252:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
	movq	__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	leaq	96(%rbx), %rdi
	movq	$0, 80(%rbx)
	movq	$0, 72(%rbx)
	movq	$0, 64(%rbx)
	movl	$307, %esi              ## imm = 0x133
	callq	___bzero
	leaq	8(%rbx), %r14
	leaq	-32(%rbp), %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16localeC1ERKS0_
Ltmp238:
	movq	__ZNSt3__17codecvtIcc11__mbstate_tE2idE@GOTPCREL(%rip), %rsi
	movq	%r15, %rdi
	callq	__ZNKSt3__16locale9has_facetERNS0_2idE
	movl	%eax, %r15d
Ltmp239:
## BB#1:
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	testb	%r15b, %r15b
	je	LBB26_4
## BB#2:
	leaq	-32(%rbp), %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16localeC1ERKS0_
Ltmp241:
	movq	__ZNSt3__17codecvtIcc11__mbstate_tE2idE@GOTPCREL(%rip), %rsi
	movq	%r15, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp242:
## BB#3:
	movq	%rax, 128(%rbx)
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movq	128(%rbx), %rdi
	movq	(%rdi), %rax
	callq	*56(%rax)
	movb	%al, 402(%rbx)
LBB26_4:
	movq	(%rbx), %rax
	movq	24(%rax), %rax
Ltmp244:
	xorl	%esi, %esi
	movl	$4096, %edx             ## imm = 0x1000
	movq	%rbx, %rdi
	callq	*%rax
Ltmp245:
## BB#5:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB26_9:
Ltmp243:
	movq	%rax, %r14
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB26_7
LBB26_6:
Ltmp246:
	movq	%rax, %r14
LBB26_7:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	callq	__Unwind_Resume
LBB26_8:
Ltmp240:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table26:
Lexception7:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\326\200\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	78                      ## Call site table length
Lset106 = Lfunc_begin7-Lfunc_begin7     ## >> Call Site 1 <<
	.long	Lset106
Lset107 = Ltmp238-Lfunc_begin7          ##   Call between Lfunc_begin7 and Ltmp238
	.long	Lset107
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset108 = Ltmp238-Lfunc_begin7          ## >> Call Site 2 <<
	.long	Lset108
Lset109 = Ltmp239-Ltmp238               ##   Call between Ltmp238 and Ltmp239
	.long	Lset109
Lset110 = Ltmp240-Lfunc_begin7          ##     jumps to Ltmp240
	.long	Lset110
	.byte	1                       ##   On action: 1
Lset111 = Ltmp241-Lfunc_begin7          ## >> Call Site 3 <<
	.long	Lset111
Lset112 = Ltmp242-Ltmp241               ##   Call between Ltmp241 and Ltmp242
	.long	Lset112
Lset113 = Ltmp243-Lfunc_begin7          ##     jumps to Ltmp243
	.long	Lset113
	.byte	0                       ##   On action: cleanup
Lset114 = Ltmp242-Lfunc_begin7          ## >> Call Site 4 <<
	.long	Lset114
Lset115 = Ltmp244-Ltmp242               ##   Call between Ltmp242 and Ltmp244
	.long	Lset115
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset116 = Ltmp244-Lfunc_begin7          ## >> Call Site 5 <<
	.long	Lset116
Lset117 = Ltmp245-Ltmp244               ##   Call between Ltmp244 and Ltmp245
	.long	Lset117
Lset118 = Ltmp246-Lfunc_begin7          ##     jumps to Ltmp246
	.long	Lset118
	.byte	0                       ##   On action: cleanup
Lset119 = Ltmp245-Lfunc_begin7          ## >> Call Site 6 <<
	.long	Lset119
Lset120 = Lfunc_end7-Ltmp245            ##   Call between Ltmp245 and Lfunc_end7
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
	.globl	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	.weak_def_can_be_hidden	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	.p2align	4, 0x90
__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_: ## @_ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp253:
	.cfi_def_cfa_offset 16
Ltmp254:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp255:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp256:
	.cfi_offset %rbx, -56
Ltmp257:
	.cfi_offset %r12, -48
Ltmp258:
	.cfi_offset %r13, -40
Ltmp259:
	.cfi_offset %r14, -32
Ltmp260:
	.cfi_offset %r15, -24
	movq	%rdx, -48(%rbp)         ## 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %r13
	jmp	LBB27_2
LBB27_1:                                ##   in Loop: Header=BB27_2 Depth=1
	leaq	8(%r15), %rdi
	movq	%r14, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	movq	%r15, %r14
	.p2align	4, 0x90
LBB27_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB27_4 Depth 2
                                        ##       Child Loop BB27_32 Depth 3
                                        ##         Child Loop BB27_6 Depth 4
                                        ##         Child Loop BB27_14 Depth 4
                                        ##         Child Loop BB27_27 Depth 4
                                        ##           Child Loop BB27_28 Depth 5
                                        ##           Child Loop BB27_30 Depth 5
                                        ##       Child Loop BB27_41 Depth 3
                                        ##         Child Loop BB27_42 Depth 4
                                        ##         Child Loop BB27_44 Depth 4
	leaq	-8(%r14), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	leaq	-16(%r14), %rax
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	movq	%r13, %rbx
	jmp	LBB27_4
	.p2align	4, 0x90
LBB27_3:                                ##   in Loop: Header=BB27_4 Depth=2
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	addq	$8, %r15
	movq	%r15, %rbx
LBB27_4:                                ##   Parent Loop BB27_2 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB27_32 Depth 3
                                        ##         Child Loop BB27_6 Depth 4
                                        ##         Child Loop BB27_14 Depth 4
                                        ##         Child Loop BB27_27 Depth 4
                                        ##           Child Loop BB27_28 Depth 5
                                        ##           Child Loop BB27_30 Depth 5
                                        ##       Child Loop BB27_41 Depth 3
                                        ##         Child Loop BB27_42 Depth 4
                                        ##         Child Loop BB27_44 Depth 4
	movq	%rbx, %r13
	jmp	LBB27_32
	.p2align	4, 0x90
LBB27_5:                                ##   in Loop: Header=BB27_32 Depth=3
	movq	-64(%rbp), %rdx         ## 8-byte Reload
	.p2align	4, 0x90
LBB27_6:                                ##   Parent Loop BB27_2 Depth=1
                                        ##     Parent Loop BB27_4 Depth=2
                                        ##       Parent Loop BB27_32 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	cmpq	%rdx, %r13
	je	LBB27_11
## BB#7:                                ##   in Loop: Header=BB27_6 Depth=4
	movq	(%rdx), %rbx
	addq	$-8, %rdx
	cmpq	%rdi, %rbx
	jge	LBB27_6
	jmp	LBB27_38
	.p2align	4, 0x90
LBB27_8:                                ##   in Loop: Header=BB27_32 Depth=3
	movq	(%r12), %rcx
	movq	(%r13), %rax
	cmpq	%rax, %rcx
	movq	(%r15), %rdx
	jge	LBB27_16
## BB#9:                                ##   in Loop: Header=BB27_32 Depth=3
	cmpq	%rcx, %rdx
	jge	LBB27_19
## BB#10:                               ##   in Loop: Header=BB27_32 Depth=3
	movq	%rdx, (%r13)
	movq	%rax, (%r15)
	movl	$1, %eax
	jmp	LBB27_36
	.p2align	4, 0x90
LBB27_11:                               ##   in Loop: Header=BB27_32 Depth=3
	leaq	8(%r13), %rax
	movq	(%r15), %rdx
	cmpq	%rdx, %rsi
	jl	LBB27_25
## BB#12:                               ##   in Loop: Header=BB27_32 Depth=3
	cmpq	%r15, %rax
	je	LBB27_87
## BB#13:                               ##   in Loop: Header=BB27_32 Depth=3
	addq	$16, %r13
	movq	%r13, %rax
	.p2align	4, 0x90
LBB27_14:                               ##   Parent Loop BB27_2 Depth=1
                                        ##     Parent Loop BB27_4 Depth=2
                                        ##       Parent Loop BB27_32 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	-8(%rax), %rdi
	cmpq	%rdi, %rsi
	jl	LBB27_24
## BB#15:                               ##   in Loop: Header=BB27_14 Depth=4
	addq	$8, %rax
	cmpq	%rax, %r14
	jne	LBB27_14
	jmp	LBB27_87
	.p2align	4, 0x90
LBB27_16:                               ##   in Loop: Header=BB27_32 Depth=3
	cmpq	%rcx, %rdx
	jge	LBB27_22
## BB#17:                               ##   in Loop: Header=BB27_32 Depth=3
	movq	%rdx, (%r12)
	movq	%rcx, (%r15)
	movq	(%r12), %rax
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB27_23
## BB#18:                               ##   in Loop: Header=BB27_32 Depth=3
	movq	%rax, (%r13)
	movq	%rcx, (%r12)
	jmp	LBB27_21
LBB27_19:                               ##   in Loop: Header=BB27_32 Depth=3
	movq	%rcx, (%r13)
	movq	%rax, (%r12)
	movq	(%r15), %rcx
	cmpq	%rax, %rcx
	jge	LBB27_23
## BB#20:                               ##   in Loop: Header=BB27_32 Depth=3
	movq	%rcx, (%r12)
	movq	%rax, (%r15)
LBB27_21:                               ##   in Loop: Header=BB27_32 Depth=3
	movl	$2, %eax
	jmp	LBB27_36
LBB27_22:                               ##   in Loop: Header=BB27_32 Depth=3
	xorl	%eax, %eax
	jmp	LBB27_36
LBB27_23:                               ##   in Loop: Header=BB27_32 Depth=3
	movl	$1, %eax
	jmp	LBB27_36
LBB27_24:                               ##   in Loop: Header=BB27_32 Depth=3
	movq	%rdx, -8(%rax)
	movq	%rdi, (%r15)
LBB27_25:                               ##   in Loop: Header=BB27_32 Depth=3
	cmpq	%r15, %rax
	jne	LBB27_27
	jmp	LBB27_87
	.p2align	4, 0x90
LBB27_26:                               ##   in Loop: Header=BB27_27 Depth=4
	movq	%rbx, -8(%rax)
	movq	%rsi, (%r15)
LBB27_27:                               ##   Parent Loop BB27_2 Depth=1
                                        ##     Parent Loop BB27_4 Depth=2
                                        ##       Parent Loop BB27_32 Depth=3
                                        ## =>      This Loop Header: Depth=4
                                        ##           Child Loop BB27_28 Depth 5
                                        ##           Child Loop BB27_30 Depth 5
	movq	(%rcx), %rdi
	.p2align	4, 0x90
LBB27_28:                               ##   Parent Loop BB27_2 Depth=1
                                        ##     Parent Loop BB27_4 Depth=2
                                        ##       Parent Loop BB27_32 Depth=3
                                        ##         Parent Loop BB27_27 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movq	(%rax), %rsi
	addq	$8, %rax
	cmpq	%rsi, %rdi
	jge	LBB27_28
## BB#29:                               ##   in Loop: Header=BB27_27 Depth=4
	leaq	-8(%rax), %r13
	.p2align	4, 0x90
LBB27_30:                               ##   Parent Loop BB27_2 Depth=1
                                        ##     Parent Loop BB27_4 Depth=2
                                        ##       Parent Loop BB27_32 Depth=3
                                        ##         Parent Loop BB27_27 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movq	-8(%r15), %rbx
	addq	$-8, %r15
	cmpq	%rbx, %rdi
	jl	LBB27_30
## BB#31:                               ##   in Loop: Header=BB27_27 Depth=4
	cmpq	%r15, %r13
	jb	LBB27_26
LBB27_32:                               ##   Parent Loop BB27_2 Depth=1
                                        ##     Parent Loop BB27_4 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB27_6 Depth 4
                                        ##         Child Loop BB27_14 Depth 4
                                        ##         Child Loop BB27_27 Depth 4
                                        ##           Child Loop BB27_28 Depth 5
                                        ##           Child Loop BB27_30 Depth 5
	movq	%r14, %rcx
	subq	%r13, %rcx
	movq	%rcx, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	jbe	LBB27_55
## BB#33:                               ##   in Loop: Header=BB27_32 Depth=3
	cmpq	$247, %rcx
	movq	-56(%rbp), %r15         ## 8-byte Reload
	jle	LBB27_58
## BB#34:                               ##   in Loop: Header=BB27_32 Depth=3
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rax, %rdx
	movabsq	$4611686018427387902, %rsi ## imm = 0x3FFFFFFFFFFFFFFE
	andq	%rsi, %rdx
	leaq	(%r13,%rdx,4), %r12
	cmpq	$7993, %rcx             ## imm = 0x1F39
	jl	LBB27_8
## BB#35:                               ##   in Loop: Header=BB27_32 Depth=3
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
LBB27_36:                               ##   in Loop: Header=BB27_32 Depth=3
	movq	%r13, %rcx
	movq	(%rcx), %rsi
	movq	(%r12), %rdi
	cmpq	%rdi, %rsi
	jge	LBB27_5
## BB#37:                               ##   in Loop: Header=BB27_4 Depth=2
	movq	%r15, %rdx
	jmp	LBB27_39
	.p2align	4, 0x90
LBB27_38:                               ##   in Loop: Header=BB27_4 Depth=2
	movq	%rbx, (%rcx)
	movq	%rsi, 8(%rdx)
	addq	$8, %rdx
	incl	%eax
LBB27_39:                               ##   in Loop: Header=BB27_4 Depth=2
	leaq	8(%r13), %r15
	cmpq	%rdx, %r15
	jb	LBB27_41
	jmp	LBB27_47
	.p2align	4, 0x90
LBB27_40:                               ##   in Loop: Header=BB27_41 Depth=3
	movq	%rbx, (%rcx)
	movq	%rdi, (%rdx)
	incl	%eax
	cmpq	%rcx, %r12
	cmoveq	%rdx, %r12
LBB27_41:                               ##   Parent Loop BB27_2 Depth=1
                                        ##     Parent Loop BB27_4 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB27_42 Depth 4
                                        ##         Child Loop BB27_44 Depth 4
	movq	(%r12), %rsi
	addq	$-8, %r15
	movq	%r15, %rcx
	.p2align	4, 0x90
LBB27_42:                               ##   Parent Loop BB27_2 Depth=1
                                        ##     Parent Loop BB27_4 Depth=2
                                        ##       Parent Loop BB27_41 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	8(%rcx), %rdi
	addq	$8, %rcx
	cmpq	%rsi, %rdi
	jl	LBB27_42
## BB#43:                               ##   in Loop: Header=BB27_41 Depth=3
	leaq	8(%rcx), %r15
	.p2align	4, 0x90
LBB27_44:                               ##   Parent Loop BB27_2 Depth=1
                                        ##     Parent Loop BB27_4 Depth=2
                                        ##       Parent Loop BB27_41 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	-8(%rdx), %rbx
	addq	$-8, %rdx
	cmpq	%rsi, %rbx
	jge	LBB27_44
## BB#45:                               ##   in Loop: Header=BB27_41 Depth=3
	cmpq	%rdx, %rcx
	jbe	LBB27_40
## BB#46:                               ##   in Loop: Header=BB27_4 Depth=2
	movq	%rcx, %r15
LBB27_47:                               ##   in Loop: Header=BB27_4 Depth=2
	cmpq	%r12, %r15
	je	LBB27_50
## BB#48:                               ##   in Loop: Header=BB27_4 Depth=2
	movq	(%r12), %rcx
	movq	(%r15), %rdx
	cmpq	%rdx, %rcx
	jge	LBB27_50
## BB#49:                               ##   in Loop: Header=BB27_4 Depth=2
	movq	%rcx, (%r15)
	movq	%rdx, (%r12)
	incl	%eax
LBB27_50:                               ##   in Loop: Header=BB27_4 Depth=2
	testl	%eax, %eax
	jne	LBB27_53
## BB#51:                               ##   in Loop: Header=BB27_4 Depth=2
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
	jne	LBB27_54
## BB#52:                               ##   in Loop: Header=BB27_4 Depth=2
	testb	%r12b, %r12b
	jne	LBB27_4
LBB27_53:                               ##   in Loop: Header=BB27_4 Depth=2
	movq	%r15, %rax
	subq	%r13, %rax
	movq	%r14, %rcx
	subq	%r15, %rcx
	cmpq	%rcx, %rax
	jl	LBB27_3
	jmp	LBB27_1
LBB27_54:                               ##   in Loop: Header=BB27_2 Depth=1
	testb	%r12b, %r12b
	movq	%r15, %r14
	je	LBB27_2
	jmp	LBB27_87
LBB27_55:
	leaq	LJTI27_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	movq	-56(%rbp), %r8          ## 8-byte Reload
	jmpq	*%rax
LBB27_56:
	movq	-8(%r14), %rax
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB27_87
## BB#57:
	movq	%rax, (%r13)
	movq	%rcx, -8(%r14)
	jmp	LBB27_87
LBB27_58:
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rcx, %rax
	movq	16(%r13), %rdx
	jge	LBB27_61
## BB#59:
	cmpq	%rax, %rdx
	jge	LBB27_64
## BB#60:
	movq	%rdx, (%r13)
	jmp	LBB27_66
LBB27_61:
	cmpq	%rax, %rdx
	jge	LBB27_75
## BB#62:
	movq	%rdx, 8(%r13)
	movq	%rax, 16(%r13)
	cmpq	%rcx, %rdx
	jge	LBB27_76
## BB#63:
	movq	%rdx, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB27_76
LBB27_64:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	cmpq	%rcx, %rdx
	jge	LBB27_75
## BB#65:
	movq	%rdx, 8(%r13)
LBB27_66:
	movq	%rcx, 16(%r13)
	movq	%rcx, %rax
	jmp	LBB27_76
LBB27_75:
	movq	%rdx, %rax
LBB27_76:
	leaq	24(%r13), %rdx
	cmpq	%r14, %rdx
	je	LBB27_87
## BB#77:
	movl	$24, %ecx
	jmp	LBB27_79
	.p2align	4, 0x90
LBB27_78:                               ##   in Loop: Header=BB27_79 Depth=1
	movq	(%rdx), %rax
	addq	$8, %rcx
	movq	%rsi, %rdx
LBB27_79:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB27_81 Depth 2
	movq	(%rdx), %rsi
	cmpq	%rax, %rsi
	jge	LBB27_86
## BB#80:                               ##   in Loop: Header=BB27_79 Depth=1
	movq	%rcx, %rdi
	.p2align	4, 0x90
LBB27_81:                               ##   Parent Loop BB27_79 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, (%r13,%rdi)
	cmpq	$8, %rdi
	je	LBB27_84
## BB#82:                               ##   in Loop: Header=BB27_81 Depth=2
	movq	-16(%r13,%rdi), %rax
	addq	$-8, %rdi
	cmpq	%rax, %rsi
	jl	LBB27_81
## BB#83:                               ##   in Loop: Header=BB27_79 Depth=1
	addq	%r13, %rdi
	jmp	LBB27_85
	.p2align	4, 0x90
LBB27_84:                               ##   in Loop: Header=BB27_79 Depth=1
	movq	%r13, %rdi
LBB27_85:                               ##   in Loop: Header=BB27_79 Depth=1
	movq	%rsi, (%rdi)
LBB27_86:                               ##   in Loop: Header=BB27_79 Depth=1
	leaq	8(%rdx), %rsi
	cmpq	%r14, %rsi
	jne	LBB27_78
LBB27_87:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB27_68:
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rax, %rcx
	movq	-8(%r14), %rdx
	jge	LBB27_88
## BB#69:
	cmpq	%rcx, %rdx
	jge	LBB27_94
## BB#70:
	movq	%rdx, (%r13)
	movq	%rax, -8(%r14)
	jmp	LBB27_87
LBB27_71:
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
LBB27_72:
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rcx, %rax
	movq	16(%r13), %rdx
	jge	LBB27_91
## BB#73:
	cmpq	%rax, %rdx
	jge	LBB27_96
## BB#74:
	movq	%rdx, (%r13)
	jmp	LBB27_98
LBB27_88:
	cmpq	%rcx, %rdx
	jge	LBB27_87
## BB#89:
	movq	%rdx, 8(%r13)
	movq	%rcx, -8(%r14)
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rax, %rcx
	jge	LBB27_87
## BB#90:
	movq	%rcx, (%r13)
	movq	%rax, 8(%r13)
	jmp	LBB27_87
LBB27_91:
	cmpq	%rax, %rdx
	jge	LBB27_100
## BB#92:
	movq	%rdx, 8(%r13)
	movq	%rax, 16(%r13)
	cmpq	%rcx, %rdx
	jge	LBB27_101
## BB#93:
	movq	%rdx, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB27_101
LBB27_94:
	movq	%rcx, (%r13)
	movq	%rax, 8(%r13)
	movq	-8(%r14), %rcx
	cmpq	%rax, %rcx
	jge	LBB27_87
## BB#95:
	movq	%rcx, 8(%r13)
	movq	%rax, -8(%r14)
	jmp	LBB27_87
LBB27_96:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	cmpq	%rcx, %rdx
	jge	LBB27_100
## BB#97:
	movq	%rdx, 8(%r13)
LBB27_98:
	movq	%rcx, 16(%r13)
	movq	%rcx, %rax
	jmp	LBB27_101
LBB27_100:
	movq	%rdx, %rax
LBB27_101:
	movq	-8(%r14), %rcx
	cmpq	%rax, %rcx
	jge	LBB27_87
## BB#102:
	movq	%rcx, 16(%r13)
	movq	%rax, -8(%r14)
	movq	8(%r13), %rcx
	movq	16(%r13), %rax
	cmpq	%rcx, %rax
	jge	LBB27_87
## BB#103:
	movq	%rax, 8(%r13)
	movq	%rcx, 16(%r13)
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB27_87
## BB#104:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB27_87
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L27_0_set_87 = LBB27_87-LJTI27_0
L27_0_set_56 = LBB27_56-LJTI27_0
L27_0_set_68 = LBB27_68-LJTI27_0
L27_0_set_72 = LBB27_72-LJTI27_0
L27_0_set_71 = LBB27_71-LJTI27_0
LJTI27_0:
	.long	L27_0_set_87
	.long	L27_0_set_87
	.long	L27_0_set_56
	.long	L27_0_set_68
	.long	L27_0_set_72
	.long	L27_0_set_71
	.end_data_region

	.globl	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.weak_def_can_be_hidden	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.p2align	4, 0x90
__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_: ## @_ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp261:
	.cfi_def_cfa_offset 16
Ltmp262:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp263:
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %r9
	movq	(%rdi), %r10
	cmpq	%r10, %r9
	movq	(%rdx), %r11
	jge	LBB28_1
## BB#5:
	cmpq	%r9, %r11
	jge	LBB28_7
## BB#6:
	movq	%r11, (%rdi)
	movq	%r10, (%rdx)
	movl	$1, %eax
	jmp	LBB28_9
LBB28_1:
	xorl	%eax, %eax
	cmpq	%r9, %r11
	jge	LBB28_2
## BB#3:
	movq	%r11, (%rsi)
	movq	%r9, (%rdx)
	movq	(%rsi), %r10
	movq	(%rdi), %r11
	movl	$1, %eax
	cmpq	%r11, %r10
	jge	LBB28_10
## BB#4:
	movq	%r10, (%rdi)
	movq	%r11, (%rsi)
	movq	(%rdx), %r9
	movl	$2, %eax
	jmp	LBB28_10
LBB28_7:
	movq	%r9, (%rdi)
	movq	%r10, (%rsi)
	movq	(%rdx), %r9
	movl	$1, %eax
	cmpq	%r10, %r9
	jge	LBB28_10
## BB#8:
	movq	%r9, (%rsi)
	movq	%r10, (%rdx)
	movl	$2, %eax
LBB28_9:
	movq	%r10, %r9
	jmp	LBB28_10
LBB28_2:
	movq	%r11, %r9
LBB28_10:
	movq	(%rcx), %r10
	cmpq	%r9, %r10
	jge	LBB28_16
## BB#11:
	movq	%r10, (%rdx)
	movq	%r9, (%rcx)
	movq	(%rdx), %r9
	movq	(%rsi), %r10
	cmpq	%r10, %r9
	jge	LBB28_12
## BB#13:
	movq	%r9, (%rsi)
	movq	%r10, (%rdx)
	movq	(%rsi), %r9
	movq	(%rdi), %r10
	cmpq	%r10, %r9
	jge	LBB28_14
## BB#15:
	movq	%r9, (%rdi)
	movq	%r10, (%rsi)
	addl	$3, %eax
	jmp	LBB28_16
LBB28_12:
	incl	%eax
	jmp	LBB28_16
LBB28_14:
	addl	$2, %eax
LBB28_16:
	movq	(%r8), %r9
	movq	(%rcx), %r10
	cmpq	%r10, %r9
	jge	LBB28_24
## BB#17:
	movq	%r9, (%rcx)
	movq	%r10, (%r8)
	movq	(%rcx), %r8
	movq	(%rdx), %r9
	cmpq	%r9, %r8
	jge	LBB28_18
## BB#19:
	movq	%r8, (%rdx)
	movq	%r9, (%rcx)
	movq	(%rdx), %rcx
	movq	(%rsi), %r8
	cmpq	%r8, %rcx
	jge	LBB28_20
## BB#21:
	movq	%rcx, (%rsi)
	movq	%r8, (%rdx)
	movq	(%rsi), %rcx
	movq	(%rdi), %rdx
	cmpq	%rdx, %rcx
	jge	LBB28_22
## BB#23:
	movq	%rcx, (%rdi)
	movq	%rdx, (%rsi)
	addl	$4, %eax
LBB28_24:
	popq	%rbp
	retq
LBB28_18:
	incl	%eax
	popq	%rbp
	retq
LBB28_20:
	addl	$2, %eax
	popq	%rbp
	retq
LBB28_22:
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
Ltmp264:
	.cfi_def_cfa_offset 16
Ltmp265:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp266:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Ltmp267:
	.cfi_offset %rbx, -24
	movq	%rdx, %r9
	movq	%rsi, %r10
	movq	%r10, %rax
	subq	%rdi, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	ja	LBB29_4
## BB#1:
	movb	$1, %bl
	leaq	LJTI29_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB29_2:
	movq	-8(%r10), %rax
	movq	(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	LBB29_50
## BB#3:
	movq	%rax, (%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB29_50
LBB29_4:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rdx
	cmpq	%rcx, %rdx
	movq	16(%rdi), %rsi
	jge	LBB29_14
## BB#5:
	cmpq	%rdx, %rsi
	jge	LBB29_23
## BB#6:
	movq	%rsi, (%rdi)
	jmp	LBB29_25
LBB29_7:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	cmpq	%rcx, %rax
	movq	-8(%r10), %rdx
	jge	LBB29_17
## BB#8:
	cmpq	%rax, %rdx
	jge	LBB29_26
## BB#9:
	movq	%rdx, (%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB29_50
LBB29_10:
	leaq	16(%rdi), %rdx
	leaq	24(%rdi), %rcx
	addq	$-8, %r10
	leaq	8(%rdi), %rsi
	movq	%r10, %r8
	callq	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	jmp	LBB29_50
LBB29_11:
	movq	(%rdi), %rdx
	movq	8(%rdi), %rcx
	cmpq	%rdx, %rcx
	movq	16(%rdi), %rsi
	jge	LBB29_20
## BB#12:
	cmpq	%rcx, %rsi
	jge	LBB29_28
## BB#13:
	movq	%rsi, (%rdi)
	jmp	LBB29_30
LBB29_14:
	cmpq	%rdx, %rsi
	jge	LBB29_33
## BB#15:
	movq	%rsi, 8(%rdi)
	movq	%rdx, 16(%rdi)
	cmpq	%rcx, %rsi
	jge	LBB29_34
## BB#16:
	movq	%rsi, (%rdi)
	movq	%rcx, 8(%rdi)
	jmp	LBB29_34
LBB29_17:
	cmpq	%rax, %rdx
	jge	LBB29_50
## BB#18:
	movq	%rdx, 8(%rdi)
	movq	%rax, -8(%r10)
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	cmpq	%rax, %rcx
	jge	LBB29_50
## BB#19:
	movq	%rcx, (%rdi)
	movq	%rax, 8(%rdi)
	jmp	LBB29_50
LBB29_20:
	cmpq	%rcx, %rsi
	jge	LBB29_45
## BB#21:
	movq	%rsi, 8(%rdi)
	movq	%rcx, 16(%rdi)
	cmpq	%rdx, %rsi
	jge	LBB29_46
## BB#22:
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	jmp	LBB29_46
LBB29_23:
	movq	%rdx, (%rdi)
	movq	%rcx, 8(%rdi)
	cmpq	%rcx, %rsi
	jge	LBB29_33
## BB#24:
	movq	%rsi, 8(%rdi)
LBB29_25:
	movq	%rcx, 16(%rdi)
	movq	%rcx, %rdx
	jmp	LBB29_34
LBB29_33:
	movq	%rsi, %rdx
LBB29_34:
	leaq	24(%rdi), %rsi
	movb	$1, %r8b
	cmpq	%r10, %rsi
	je	LBB29_44
## BB#35:
	xorl	%r9d, %r9d
	jmp	LBB29_37
	.p2align	4, 0x90
LBB29_36:                               ##   in Loop: Header=BB29_37 Depth=1
	movq	(%rsi), %rdx
	movq	%rax, %rsi
LBB29_37:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB29_39 Depth 2
	movq	(%rsi), %rbx
	cmpq	%rdx, %rbx
	jge	LBB29_42
## BB#38:                               ##   in Loop: Header=BB29_37 Depth=1
	movq	%rsi, %rax
	.p2align	4, 0x90
LBB29_39:                               ##   Parent Loop BB29_37 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, %rcx
	movq	%rdx, (%rcx)
	leaq	-8(%rcx), %rax
	cmpq	%rdi, %rax
	je	LBB29_41
## BB#40:                               ##   in Loop: Header=BB29_39 Depth=2
	movq	-8(%rax), %rdx
	cmpq	%rdx, %rbx
	jl	LBB29_39
LBB29_41:                               ##   in Loop: Header=BB29_37 Depth=1
	movq	%rbx, -8(%rcx)
	incl	%r9d
	leaq	8(%rsi), %rax
	cmpq	%r10, %rax
	sete	%bl
	cmpl	$8, %r9d
	je	LBB29_43
LBB29_42:                               ##   in Loop: Header=BB29_37 Depth=1
	leaq	8(%rsi), %rax
	cmpq	%r10, %rax
	jne	LBB29_36
	jmp	LBB29_44
LBB29_26:
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	movq	-8(%r10), %rax
	cmpq	%rcx, %rax
	jge	LBB29_50
## BB#27:
	movq	%rax, 8(%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB29_50
LBB29_28:
	movq	%rcx, (%rdi)
	movq	%rdx, 8(%rdi)
	cmpq	%rdx, %rsi
	jge	LBB29_45
## BB#29:
	movq	%rsi, 8(%rdi)
LBB29_30:
	movq	%rdx, 16(%rdi)
	movq	%rdx, %rcx
	jmp	LBB29_46
LBB29_45:
	movq	%rsi, %rcx
LBB29_46:
	movq	-8(%r10), %rax
	cmpq	%rcx, %rax
	jge	LBB29_50
## BB#47:
	movq	%rax, 16(%rdi)
	movq	%rcx, -8(%r10)
	movq	8(%rdi), %rcx
	movq	16(%rdi), %rax
	cmpq	%rcx, %rax
	jge	LBB29_50
## BB#48:
	movq	%rax, 8(%rdi)
	movq	%rcx, 16(%rdi)
	movq	(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	LBB29_50
## BB#49:
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	jmp	LBB29_50
LBB29_43:
	xorl	%r8d, %r8d
LBB29_44:
	orb	%r8b, %bl
LBB29_50:
	andb	$1, %bl
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L29_0_set_50 = LBB29_50-LJTI29_0
L29_0_set_2 = LBB29_2-LJTI29_0
L29_0_set_7 = LBB29_7-LJTI29_0
L29_0_set_11 = LBB29_11-LJTI29_0
L29_0_set_10 = LBB29_10-LJTI29_0
LJTI29_0:
	.long	L29_0_set_50
	.long	L29_0_set_50
	.long	L29_0_set_2
	.long	L29_0_set_7
	.long	L29_0_set_11
	.long	L29_0_set_10
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
Ltmp289:
	.cfi_def_cfa_offset 16
Ltmp290:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp291:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp292:
	.cfi_offset %rbx, -56
Ltmp293:
	.cfi_offset %r12, -48
Ltmp294:
	.cfi_offset %r13, -40
Ltmp295:
	.cfi_offset %r14, -32
Ltmp296:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
Ltmp268:
	leaq	-80(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp269:
## BB#1:
	cmpb	$0, -80(%rbp)
	je	LBB30_10
## BB#2:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %r12
	movq	40(%rbx,%rax), %rdi
	movl	8(%rbx,%rax), %r13d
	movl	144(%rbx,%rax), %eax
	cmpl	$-1, %eax
	jne	LBB30_7
## BB#3:
Ltmp271:
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	leaq	-56(%rbp), %rdi
	movq	%r12, %rsi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp272:
## BB#4:
Ltmp273:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-56(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp274:
## BB#5:
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp275:
	movl	$32, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movb	%al, -41(%rbp)          ## 1-byte Spill
Ltmp276:
## BB#6:
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	-41(%rbp), %eax         ## 1-byte Folded Reload
	movl	%eax, 144(%r12)
	movq	-64(%rbp), %rdi         ## 8-byte Reload
LBB30_7:
	addq	%r15, %r14
	andl	$176, %r13d
	cmpl	$32, %r13d
	movq	%r15, %rdx
	cmoveq	%r14, %rdx
Ltmp278:
	movsbl	%al, %r9d
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r12, %r8
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp279:
## BB#8:
	testq	%rax, %rax
	jne	LBB30_10
## BB#9:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$5, %esi
Ltmp280:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp281:
LBB30_10:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB30_15:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB30_19:
Ltmp277:
	movq	%rax, %r14
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB30_12
LBB30_20:
Ltmp270:
	movq	%rax, %r14
	jmp	LBB30_13
LBB30_11:
Ltmp282:
	movq	%rax, %r14
LBB30_12:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB30_13:
	movq	%rbx, %r15
	movq	%r14, %rdi
	callq	___cxa_begin_catch
	movq	(%rbx), %rax
	addq	-24(%rax), %r15
Ltmp283:
	movq	%r15, %rdi
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp284:
## BB#14:
	callq	___cxa_end_catch
	jmp	LBB30_15
LBB30_16:
Ltmp285:
	movq	%rax, %rbx
Ltmp286:
	callq	___cxa_end_catch
Ltmp287:
## BB#17:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB30_18:
Ltmp288:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table30:
Lexception8:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	125                     ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	117                     ## Call site table length
Lset121 = Ltmp268-Lfunc_begin8          ## >> Call Site 1 <<
	.long	Lset121
Lset122 = Ltmp269-Ltmp268               ##   Call between Ltmp268 and Ltmp269
	.long	Lset122
Lset123 = Ltmp270-Lfunc_begin8          ##     jumps to Ltmp270
	.long	Lset123
	.byte	1                       ##   On action: 1
Lset124 = Ltmp271-Lfunc_begin8          ## >> Call Site 2 <<
	.long	Lset124
Lset125 = Ltmp272-Ltmp271               ##   Call between Ltmp271 and Ltmp272
	.long	Lset125
Lset126 = Ltmp282-Lfunc_begin8          ##     jumps to Ltmp282
	.long	Lset126
	.byte	1                       ##   On action: 1
Lset127 = Ltmp273-Lfunc_begin8          ## >> Call Site 3 <<
	.long	Lset127
Lset128 = Ltmp276-Ltmp273               ##   Call between Ltmp273 and Ltmp276
	.long	Lset128
Lset129 = Ltmp277-Lfunc_begin8          ##     jumps to Ltmp277
	.long	Lset129
	.byte	1                       ##   On action: 1
Lset130 = Ltmp278-Lfunc_begin8          ## >> Call Site 4 <<
	.long	Lset130
Lset131 = Ltmp281-Ltmp278               ##   Call between Ltmp278 and Ltmp281
	.long	Lset131
Lset132 = Ltmp282-Lfunc_begin8          ##     jumps to Ltmp282
	.long	Lset132
	.byte	1                       ##   On action: 1
Lset133 = Ltmp281-Lfunc_begin8          ## >> Call Site 5 <<
	.long	Lset133
Lset134 = Ltmp283-Ltmp281               ##   Call between Ltmp281 and Ltmp283
	.long	Lset134
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset135 = Ltmp283-Lfunc_begin8          ## >> Call Site 6 <<
	.long	Lset135
Lset136 = Ltmp284-Ltmp283               ##   Call between Ltmp283 and Ltmp284
	.long	Lset136
Lset137 = Ltmp285-Lfunc_begin8          ##     jumps to Ltmp285
	.long	Lset137
	.byte	0                       ##   On action: cleanup
Lset138 = Ltmp284-Lfunc_begin8          ## >> Call Site 7 <<
	.long	Lset138
Lset139 = Ltmp286-Ltmp284               ##   Call between Ltmp284 and Ltmp286
	.long	Lset139
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset140 = Ltmp286-Lfunc_begin8          ## >> Call Site 8 <<
	.long	Lset140
Lset141 = Ltmp287-Ltmp286               ##   Call between Ltmp286 and Ltmp287
	.long	Lset141
Lset142 = Ltmp288-Lfunc_begin8          ##     jumps to Ltmp288
	.long	Lset142
	.byte	1                       ##   On action: 1
Lset143 = Ltmp287-Lfunc_begin8          ## >> Call Site 9 <<
	.long	Lset143
Lset144 = Lfunc_end8-Ltmp287            ##   Call between Ltmp287 and Lfunc_end8
	.long	Lset144
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
Ltmp300:
	.cfi_def_cfa_offset 16
Ltmp301:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp302:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp303:
	.cfi_offset %rbx, -56
Ltmp304:
	.cfi_offset %r12, -48
Ltmp305:
	.cfi_offset %r13, -40
Ltmp306:
	.cfi_offset %r14, -32
Ltmp307:
	.cfi_offset %r15, -24
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	LBB31_12
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
	jle	LBB31_3
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
	jne	LBB31_12
LBB31_3:
	testq	%r13, %r13
	jle	LBB31_6
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
Ltmp297:
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	*%rax
	movq	%rax, %r14
Ltmp298:
## BB#5:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	cmpq	%r13, %r14
	jne	LBB31_12
LBB31_6:
	subq	%r12, %r15
	testq	%r15, %r15
	jle	LBB31_8
## BB#7:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	*96(%rax)
	cmpq	%r15, %rax
	jne	LBB31_12
LBB31_8:
	movq	-80(%rbp), %rax         ## 8-byte Reload
	movq	$0, 24(%rax)
	jmp	LBB31_13
LBB31_12:
	xorl	%ebx, %ebx
LBB31_13:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB31_14:
Ltmp299:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table31:
Lexception9:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset145 = Lfunc_begin9-Lfunc_begin9     ## >> Call Site 1 <<
	.long	Lset145
Lset146 = Ltmp297-Lfunc_begin9          ##   Call between Lfunc_begin9 and Ltmp297
	.long	Lset146
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset147 = Ltmp297-Lfunc_begin9          ## >> Call Site 2 <<
	.long	Lset147
Lset148 = Ltmp298-Ltmp297               ##   Call between Ltmp297 and Ltmp298
	.long	Lset148
Lset149 = Ltmp299-Lfunc_begin9          ##     jumps to Ltmp299
	.long	Lset149
	.byte	0                       ##   On action: cleanup
Lset150 = Ltmp298-Lfunc_begin9          ## >> Call Site 3 <<
	.long	Lset150
Lset151 = Lfunc_end9-Ltmp298            ##   Call between Ltmp298 and Lfunc_end9
	.long	Lset151
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
	.asciz	"do_not_optimize_away.txt"

	.section	__DATA,__data
	.globl	__ZTV16non_trivial_type ## @_ZTV16non_trivial_type
	.weak_def_can_be_hidden	__ZTV16non_trivial_type
	.p2align	3
__ZTV16non_trivial_type:
	.quad	0
	.quad	__ZTI16non_trivial_type
	.quad	__ZN16non_trivial_typeD1Ev
	.quad	__ZN16non_trivial_typeD0Ev

	.section	__TEXT,__const
	.globl	__ZTS16non_trivial_type ## @_ZTS16non_trivial_type
	.weak_definition	__ZTS16non_trivial_type
	.p2align	4
__ZTS16non_trivial_type:
	.asciz	"16non_trivial_type"

	.section	__DATA,__data
	.globl	__ZTI16non_trivial_type ## @_ZTI16non_trivial_type
	.weak_definition	__ZTI16non_trivial_type
	.p2align	3
__ZTI16non_trivial_type:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTS16non_trivial_type

	.globl	__ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE ## @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.weak_def_can_be_hidden	__ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.p2align	3
__ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE:
	.quad	416
	.quad	0
	.quad	__ZTINSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.quad	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev
	.quad	-416
	.quad	-416
	.quad	__ZTINSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.quad	__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev

	.globl	__ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE ## @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.weak_def_can_be_hidden	__ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.p2align	4
__ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE:
	.quad	__ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE+24
	.quad	__ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE+24
	.quad	__ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE+64
	.quad	__ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE+64

	.globl	__ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE ## @_ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE
	.p2align	4
__ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE:
	.quad	416
	.quad	0
	.quad	__ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE
	.quad	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev
	.quad	-416
	.quad	-416
	.quad	__ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE
	.quad	__ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev

	.section	__TEXT,__const
	.globl	__ZTSNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE ## @_ZTSNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.weak_definition	__ZTSNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.p2align	4
__ZTSNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE:
	.asciz	"NSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE"

	.section	__DATA,__data
	.globl	__ZTINSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE ## @_ZTINSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.weak_definition	__ZTINSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.p2align	4
__ZTINSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.quad	__ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE

	.globl	__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE ## @_ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.weak_def_can_be_hidden	__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.p2align	3
__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE:
	.quad	0
	.quad	__ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi

	.section	__TEXT,__const
	.globl	__ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE ## @_ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.weak_definition	__ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.p2align	4
__ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE:
	.asciz	"NSt3__113basic_filebufIcNS_11char_traitsIcEEEE"

	.section	__DATA,__data
	.globl	__ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE ## @_ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.weak_definition	__ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.p2align	4
__ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.quad	__ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE

	.section	__TEXT,__cstring,cstring_literals
L_.str.2:                               ## @.str.2
	.asciz	"w"


.subsections_via_symbols
