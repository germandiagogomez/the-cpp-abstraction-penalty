	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
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
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$2504, %rsp             ## imm = 0x9C8
Lcfi3:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movb	__ZGVZN10benchmarks4util16double_generatorEvE2rd(%rip), %al
	testb	%al, %al
	jne	LBB0_6
## BB#1:
	leaq	__ZGVZN10benchmarks4util16double_generatorEvE2rd(%rip), %rdi
	callq	___cxa_guard_acquire
	testl	%eax, %eax
	je	LBB0_6
## BB#2:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -2512(%rbp)
	movq	$0, -2496(%rbp)
	movb	$24, -2512(%rbp)
	movabsq	$7021803615734293551, %rax ## imm = 0x6172752F7665642F
	movq	%rax, -2511(%rbp)
	movl	$1836016750, -2503(%rbp) ## imm = 0x6D6F646E
	movb	$0, -2499(%rbp)
Ltmp0:
	leaq	__ZZN10benchmarks4util16double_generatorEvE2rd(%rip), %rdi
	leaq	-2512(%rbp), %rsi
	callq	__ZNSt3__113random_deviceC1ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
Ltmp1:
## BB#3:
	testb	$1, -2512(%rbp)
	je	LBB0_5
## BB#4:
	movq	-2496(%rbp), %rdi
	callq	__ZdlPv
LBB0_5:
	movq	__ZNSt3__113random_deviceD1Ev@GOTPCREL(%rip), %rdi
	leaq	__ZZN10benchmarks4util16double_generatorEvE2rd(%rip), %rsi
	movq	___dso_handle@GOTPCREL(%rip), %rdx
	callq	___cxa_atexit
	leaq	__ZGVZN10benchmarks4util16double_generatorEvE2rd(%rip), %rdi
	callq	___cxa_guard_release
LBB0_6:
	leaq	__ZZN10benchmarks4util16double_generatorEvE2rd(%rip), %rdi
	callq	__ZNSt3__113random_deviceclEv
                                        ## kill: %EAX<def> %EAX<kill> %RAX<def>
	movl	%eax, -2512(%rbp)
	movl	$1, %ecx
	xorl	%edx, %edx
	jmp	LBB0_7
	.p2align	4, 0x90
LBB0_12:                                ##   in Loop: Header=BB0_7 Depth=1
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
LBB0_7:                                 ## =>This Inner Loop Header: Depth=1
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
	jne	LBB0_12
## BB#8:
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
Ltmp2:
	movq	%rax, %rbx
	testb	$1, -2512(%rbp)
	je	LBB0_11
## BB#10:
	movq	-2496(%rbp), %rdi
	callq	__ZdlPv
LBB0_11:
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
	.asciz	"\234"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	26                      ## Call site table length
Lset0 = Ltmp0-Lfunc_begin0              ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp1-Ltmp0                     ##   Call between Ltmp0 and Ltmp1
	.long	Lset1
Lset2 = Ltmp2-Lfunc_begin0              ##     jumps to Ltmp2
	.long	Lset2
	.byte	0                       ##   On action: cleanup
Lset3 = Ltmp1-Lfunc_begin0              ## >> Call Site 2 <<
	.long	Lset3
Lset4 = Lfunc_end0-Ltmp1                ##   Call between Ltmp1 and Lfunc_end0
	.long	Lset4
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
Lcfi4:
	.cfi_def_cfa_offset 16
Lcfi5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi6:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$5048, %rsp             ## imm = 0x13B8
Lcfi7:
	.cfi_offset %rbx, -56
Lcfi8:
	.cfi_offset %r12, -48
Lcfi9:
	.cfi_offset %r13, -40
Lcfi10:
	.cfi_offset %r14, -32
Lcfi11:
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
Ltmp3:
	leaq	-5080(%rbp), %rdi
	callq	__ZN10benchmarks4util16double_generatorEv
Ltmp4:
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
Ltmp5:
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
Lset5 = Lfunc_begin1-Lfunc_begin1       ## >> Call Site 1 <<
	.long	Lset5
Lset6 = Ltmp3-Lfunc_begin1              ##   Call between Lfunc_begin1 and Ltmp3
	.long	Lset6
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset7 = Ltmp3-Lfunc_begin1              ## >> Call Site 2 <<
	.long	Lset7
Lset8 = Ltmp4-Ltmp3                     ##   Call between Ltmp3 and Ltmp4
	.long	Lset8
Lset9 = Ltmp5-Lfunc_begin1              ##     jumps to Ltmp5
	.long	Lset9
	.byte	0                       ##   On action: cleanup
Lset10 = Ltmp4-Lfunc_begin1             ## >> Call Site 3 <<
	.long	Lset10
Lset11 = Lfunc_end1-Ltmp4               ##   Call between Ltmp4 and Lfunc_end1
	.long	Lset11
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
Lcfi12:
	.cfi_def_cfa_offset 16
Lcfi13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi14:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$2504, %rsp             ## imm = 0x9C8
Lcfi15:
	.cfi_offset %rbx, -40
Lcfi16:
	.cfi_offset %r14, -32
Lcfi17:
	.cfi_offset %r15, -24
	movl	%edx, %ebx
	movl	%esi, %r15d
	movq	%rdi, %r14
	movb	__ZGVZN10benchmarks4util13int_generatorEiiE2rd(%rip), %al
	testb	%al, %al
	jne	LBB2_6
## BB#1:
	leaq	__ZGVZN10benchmarks4util13int_generatorEiiE2rd(%rip), %rdi
	callq	___cxa_guard_acquire
	testl	%eax, %eax
	je	LBB2_6
## BB#2:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -2528(%rbp)
	movq	$0, -2512(%rbp)
	movb	$24, -2528(%rbp)
	movabsq	$7021803615734293551, %rax ## imm = 0x6172752F7665642F
	movq	%rax, -2527(%rbp)
	movl	$1836016750, -2519(%rbp) ## imm = 0x6D6F646E
	movb	$0, -2515(%rbp)
Ltmp6:
	leaq	__ZZN10benchmarks4util13int_generatorEiiE2rd(%rip), %rdi
	leaq	-2528(%rbp), %rsi
	callq	__ZNSt3__113random_deviceC1ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
Ltmp7:
## BB#3:
	testb	$1, -2528(%rbp)
	je	LBB2_5
## BB#4:
	movq	-2512(%rbp), %rdi
	callq	__ZdlPv
LBB2_5:
	movq	__ZNSt3__113random_deviceD1Ev@GOTPCREL(%rip), %rdi
	leaq	__ZZN10benchmarks4util13int_generatorEiiE2rd(%rip), %rsi
	movq	___dso_handle@GOTPCREL(%rip), %rdx
	callq	___cxa_atexit
	leaq	__ZGVZN10benchmarks4util13int_generatorEiiE2rd(%rip), %rdi
	callq	___cxa_guard_release
LBB2_6:
	leaq	__ZZN10benchmarks4util13int_generatorEiiE2rd(%rip), %rdi
	callq	__ZNSt3__113random_deviceclEv
                                        ## kill: %EAX<def> %EAX<kill> %RAX<def>
	movl	%eax, -2528(%rbp)
	movl	$1, %ecx
	xorl	%edx, %edx
	jmp	LBB2_7
	.p2align	4, 0x90
LBB2_12:                                ##   in Loop: Header=BB2_7 Depth=1
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
LBB2_7:                                 ## =>This Inner Loop Header: Depth=1
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
	jne	LBB2_12
## BB#8:
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
Ltmp8:
	movq	%rax, %rbx
	testb	$1, -2528(%rbp)
	je	LBB2_11
## BB#10:
	movq	-2512(%rbp), %rdi
	callq	__ZdlPv
LBB2_11:
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
	.asciz	"\234"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	26                      ## Call site table length
Lset12 = Ltmp6-Lfunc_begin2             ## >> Call Site 1 <<
	.long	Lset12
Lset13 = Ltmp7-Ltmp6                    ##   Call between Ltmp6 and Ltmp7
	.long	Lset13
Lset14 = Ltmp8-Lfunc_begin2             ##     jumps to Ltmp8
	.long	Lset14
	.byte	0                       ##   On action: cleanup
Lset15 = Ltmp7-Lfunc_begin2             ## >> Call Site 2 <<
	.long	Lset15
Lset16 = Lfunc_end2-Ltmp7               ##   Call between Ltmp7 and Lfunc_end2
	.long	Lset16
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
Lcfi18:
	.cfi_def_cfa_offset 16
Lcfi19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi20:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$5048, %rsp             ## imm = 0x13B8
Lcfi21:
	.cfi_offset %rbx, -56
Lcfi22:
	.cfi_offset %r12, -48
Lcfi23:
	.cfi_offset %r13, -40
Lcfi24:
	.cfi_offset %r14, -32
Lcfi25:
	.cfi_offset %r15, -24
	movq	%rdi, %r15
	movq	$0, 16(%r15)
	movq	$0, 8(%r15)
	movq	$0, (%r15)
	testl	%esi, %esi
	je	LBB3_1
## BB#2:
	movl	%esi, %r12d
	leaq	(,%r12,4), %r14
	movq	%r14, %rdi
	callq	__Znwm
	movq	%rax, %rbx
	leaq	8(%r15), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	movq	%rbx, (%r15)
	leaq	(%rbx,%r12,4), %r13
	movq	%r13, 16(%r15)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	___bzero
	movq	%r13, 8(%r15)
	jmp	LBB3_3
LBB3_1:
	leaq	8(%r15), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
LBB3_3:
Ltmp9:
	leaq	-5080(%rbp), %rdi
	movl	$-2147483648, %esi      ## imm = 0x80000000
	movl	$2147483647, %edx       ## imm = 0x7FFFFFFF
	movq	%rbx, -48(%rbp)         ## 8-byte Spill
	callq	__ZN10benchmarks4util13int_generatorEii
Ltmp10:
## BB#4:
	leaq	-2568(%rbp), %rdi
	leaq	-5080(%rbp), %rsi
	movl	$2512, %edx             ## imm = 0x9D0
	callq	_memcpy
	cmpq	%r13, %rbx
	je	LBB3_8
## BB#5:
	leaq	-2560(%rbp), %r12
	leaq	-2568(%rbp), %rbx
	movq	-48(%rbp), %r14         ## 8-byte Reload
	.p2align	4, 0x90
LBB3_6:                                 ## =>This Inner Loop Header: Depth=1
Ltmp12:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
Ltmp13:
## BB#7:                                ##   in Loop: Header=BB3_6 Depth=1
	movl	%eax, (%r14)
	addq	$4, %r14
	cmpq	%r14, %r13
	jne	LBB3_6
LBB3_8:
	movq	%r15, %rax
	addq	$5048, %rsp             ## imm = 0x13B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB3_10:
Ltmp11:
	jmp	LBB3_11
LBB3_9:
Ltmp14:
LBB3_11:
	movq	%rax, %rbx
	cmpq	$0, -48(%rbp)           ## 8-byte Folded Reload
	je	LBB3_15
## BB#12:
	cmpq	-48(%rbp), %r13         ## 8-byte Folded Reload
	je	LBB3_14
## BB#13:
	leaq	-4(%r13), %rax
	subq	-48(%rbp), %rax         ## 8-byte Folded Reload
	notq	%rax
	andq	$-4, %rax
	addq	%r13, %rax
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	movq	%rax, (%rcx)
LBB3_14:
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
LBB3_15:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table3:
Lexception3:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\303\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	65                      ## Call site table length
Lset17 = Lfunc_begin3-Lfunc_begin3      ## >> Call Site 1 <<
	.long	Lset17
Lset18 = Ltmp9-Lfunc_begin3             ##   Call between Lfunc_begin3 and Ltmp9
	.long	Lset18
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset19 = Ltmp9-Lfunc_begin3             ## >> Call Site 2 <<
	.long	Lset19
Lset20 = Ltmp10-Ltmp9                   ##   Call between Ltmp9 and Ltmp10
	.long	Lset20
Lset21 = Ltmp11-Lfunc_begin3            ##     jumps to Ltmp11
	.long	Lset21
	.byte	0                       ##   On action: cleanup
Lset22 = Ltmp10-Lfunc_begin3            ## >> Call Site 3 <<
	.long	Lset22
Lset23 = Ltmp12-Ltmp10                  ##   Call between Ltmp10 and Ltmp12
	.long	Lset23
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset24 = Ltmp12-Lfunc_begin3            ## >> Call Site 4 <<
	.long	Lset24
Lset25 = Ltmp13-Ltmp12                  ##   Call between Ltmp12 and Ltmp13
	.long	Lset25
Lset26 = Ltmp14-Lfunc_begin3            ##     jumps to Ltmp14
	.long	Lset26
	.byte	0                       ##   On action: cleanup
Lset27 = Ltmp13-Lfunc_begin3            ## >> Call Site 5 <<
	.long	Lset27
Lset28 = Lfunc_end3-Ltmp13              ##   Call between Ltmp13 and Lfunc_end3
	.long	Lset28
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
Lcfi26:
	.cfi_def_cfa_offset 16
Lcfi27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi28:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$5048, %rsp             ## imm = 0x13B8
Lcfi29:
	.cfi_offset %rbx, -56
Lcfi30:
	.cfi_offset %r12, -48
Lcfi31:
	.cfi_offset %r13, -40
Lcfi32:
	.cfi_offset %r14, -32
Lcfi33:
	.cfi_offset %r15, -24
	movq	%rdi, %r15
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
	testl	%esi, %esi
	je	LBB4_4
## BB#1:
	js	LBB4_24
## BB#2:
	movslq	%esi, %r12
	leaq	(,%r12,4), %r14
Ltmp15:
	movq	%r14, %rdi
	callq	__Znwm
	movq	%rax, %rbx
Ltmp16:
## BB#3:
	movq	%rbx, -64(%rbp)
	leaq	(%rbx,%r12,4), %r13
	movq	%r13, -48(%rbp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	___bzero
	movq	%r13, -56(%rbp)
	jmp	LBB4_5
LBB4_4:
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
LBB4_5:
Ltmp20:
	leaq	-5088(%rbp), %rdi
	movl	$-2147483648, %esi      ## imm = 0x80000000
	movl	$2147483647, %edx       ## imm = 0x7FFFFFFF
	callq	__ZN10benchmarks4util13int_generatorEii
Ltmp21:
## BB#6:
	leaq	-2576(%rbp), %rdi
	leaq	-5088(%rbp), %rsi
	movl	$2512, %edx             ## imm = 0x9D0
	callq	_memcpy
	cmpq	%r13, %rbx
	je	LBB4_10
## BB#7:
	leaq	-2568(%rbp), %r14
	leaq	-2576(%rbp), %r12
	.p2align	4, 0x90
LBB4_8:                                 ## =>This Inner Loop Header: Depth=1
Ltmp23:
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
Ltmp24:
## BB#9:                                ##   in Loop: Header=BB4_8 Depth=1
	movl	%eax, (%rbx)
	addq	$4, %rbx
	cmpq	%rbx, %r13
	jne	LBB4_8
LBB4_10:
	movq	$0, 16(%r15)
	movq	$0, 8(%r15)
	movq	$0, (%r15)
	movq	-64(%rbp), %rbx
	movq	-56(%rbp), %r12
	cmpq	%r12, %rbx
	je	LBB4_19
## BB#11:
	leaq	-2575(%rbp), %r13
	leaq	-2576(%rbp), %r14
	.p2align	4, 0x90
LBB4_12:                                ## =>This Inner Loop Header: Depth=1
	movl	(%rbx), %esi
Ltmp26:
	movq	%r14, %rdi
	callq	__ZNSt3__19to_stringEi
Ltmp27:
## BB#13:                               ##   in Loop: Header=BB4_12 Depth=1
	movzbl	-2576(%rbp), %edx
	movl	%edx, %eax
	andb	$1, %al
	movq	-2560(%rbp), %rsi
	cmoveq	%r13, %rsi
	shrq	%rdx
	testb	%al, %al
	cmovneq	-2568(%rbp), %rdx
Ltmp29:
	movq	%r15, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm
Ltmp30:
## BB#14:                               ##   in Loop: Header=BB4_12 Depth=1
	testb	$1, -2576(%rbp)
	je	LBB4_16
## BB#15:                               ##   in Loop: Header=BB4_12 Depth=1
	movq	-2560(%rbp), %rdi
	callq	__ZdlPv
LBB4_16:                                ##   in Loop: Header=BB4_12 Depth=1
Ltmp32:
	movl	$32, %esi
	movq	%r15, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp33:
## BB#17:                               ##   in Loop: Header=BB4_12 Depth=1
	addq	$4, %rbx
	cmpq	%rbx, %r12
	jne	LBB4_12
## BB#18:
	movq	-64(%rbp), %rbx
LBB4_19:
	testq	%rbx, %rbx
	je	LBB4_23
## BB#20:
	movq	-56(%rbp), %rax
	cmpq	%rbx, %rax
	je	LBB4_22
## BB#21:
	leaq	-4(%rax), %rcx
	subq	%rbx, %rcx
	notq	%rcx
	andq	$-4, %rcx
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
LBB4_22:
	movq	%rbx, %rdi
	callq	__ZdlPv
LBB4_23:
	movq	%r15, %rax
	addq	$5048, %rsp             ## imm = 0x13B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB4_24:
Ltmp17:
	leaq	-64(%rbp), %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp18:
## BB#25:
LBB4_26:
Ltmp19:
	jmp	LBB4_36
LBB4_27:
Ltmp22:
	jmp	LBB4_36
LBB4_28:
Ltmp34:
	jmp	LBB4_32
LBB4_29:
Ltmp31:
	movq	%rax, %r14
	testb	$1, -2576(%rbp)
	je	LBB4_33
## BB#30:
	movq	-2560(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, (%r15)
	jne	LBB4_34
	jmp	LBB4_37
LBB4_31:
Ltmp28:
LBB4_32:
	movq	%rax, %r14
LBB4_33:
	testb	$1, (%r15)
	je	LBB4_37
LBB4_34:
	movq	16(%r15), %rdi
	callq	__ZdlPv
	jmp	LBB4_37
LBB4_35:
Ltmp25:
LBB4_36:
	movq	%rax, %r14
LBB4_37:
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB4_41
## BB#38:
	movq	-56(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB4_40
## BB#39:
	leaq	-4(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-4, %rcx
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
LBB4_40:
	callq	__ZdlPv
LBB4_41:
	movq	%r14, %rdi
	callq	__Unwind_Resume
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table4:
Lexception4:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\205\201\200\200"      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\202\001"              ## Call site table length
Lset29 = Ltmp15-Lfunc_begin4            ## >> Call Site 1 <<
	.long	Lset29
Lset30 = Ltmp16-Ltmp15                  ##   Call between Ltmp15 and Ltmp16
	.long	Lset30
Lset31 = Ltmp19-Lfunc_begin4            ##     jumps to Ltmp19
	.long	Lset31
	.byte	0                       ##   On action: cleanup
Lset32 = Ltmp16-Lfunc_begin4            ## >> Call Site 2 <<
	.long	Lset32
Lset33 = Ltmp20-Ltmp16                  ##   Call between Ltmp16 and Ltmp20
	.long	Lset33
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset34 = Ltmp20-Lfunc_begin4            ## >> Call Site 3 <<
	.long	Lset34
Lset35 = Ltmp21-Ltmp20                  ##   Call between Ltmp20 and Ltmp21
	.long	Lset35
Lset36 = Ltmp22-Lfunc_begin4            ##     jumps to Ltmp22
	.long	Lset36
	.byte	0                       ##   On action: cleanup
Lset37 = Ltmp21-Lfunc_begin4            ## >> Call Site 4 <<
	.long	Lset37
Lset38 = Ltmp23-Ltmp21                  ##   Call between Ltmp21 and Ltmp23
	.long	Lset38
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset39 = Ltmp23-Lfunc_begin4            ## >> Call Site 5 <<
	.long	Lset39
Lset40 = Ltmp24-Ltmp23                  ##   Call between Ltmp23 and Ltmp24
	.long	Lset40
Lset41 = Ltmp25-Lfunc_begin4            ##     jumps to Ltmp25
	.long	Lset41
	.byte	0                       ##   On action: cleanup
Lset42 = Ltmp26-Lfunc_begin4            ## >> Call Site 6 <<
	.long	Lset42
Lset43 = Ltmp27-Ltmp26                  ##   Call between Ltmp26 and Ltmp27
	.long	Lset43
Lset44 = Ltmp28-Lfunc_begin4            ##     jumps to Ltmp28
	.long	Lset44
	.byte	0                       ##   On action: cleanup
Lset45 = Ltmp29-Lfunc_begin4            ## >> Call Site 7 <<
	.long	Lset45
Lset46 = Ltmp30-Ltmp29                  ##   Call between Ltmp29 and Ltmp30
	.long	Lset46
Lset47 = Ltmp31-Lfunc_begin4            ##     jumps to Ltmp31
	.long	Lset47
	.byte	0                       ##   On action: cleanup
Lset48 = Ltmp32-Lfunc_begin4            ## >> Call Site 8 <<
	.long	Lset48
Lset49 = Ltmp33-Ltmp32                  ##   Call between Ltmp32 and Ltmp33
	.long	Lset49
Lset50 = Ltmp34-Lfunc_begin4            ##     jumps to Ltmp34
	.long	Lset50
	.byte	0                       ##   On action: cleanup
Lset51 = Ltmp17-Lfunc_begin4            ## >> Call Site 9 <<
	.long	Lset51
Lset52 = Ltmp18-Ltmp17                  ##   Call between Ltmp17 and Ltmp18
	.long	Lset52
Lset53 = Ltmp19-Lfunc_begin4            ##     jumps to Ltmp19
	.long	Lset53
	.byte	0                       ##   On action: cleanup
Lset54 = Ltmp18-Lfunc_begin4            ## >> Call Site 10 <<
	.long	Lset54
Lset55 = Lfunc_end4-Ltmp18              ##   Call between Ltmp18 and Lfunc_end4
	.long	Lset55
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2

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
Lcfi34:
	.cfi_def_cfa_offset 16
Lcfi35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi36:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Lcfi37:
	.cfi_offset %rbx, -56
Lcfi38:
	.cfi_offset %r12, -48
Lcfi39:
	.cfi_offset %r13, -40
Lcfi40:
	.cfi_offset %r14, -32
Lcfi41:
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	8(%r15), %r14
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
	movq	%r14, %rdi
	callq	_strlen
	movq	%rax, %r13
	cmpq	$-16, %r13
	jae	LBB5_55
## BB#1:
	cmpq	$23, %r13
	jae	LBB5_2
## BB#3:
	movl	%r13d, %eax
	addb	%al, %al
	movb	%al, -64(%rbp)
	leaq	-63(%rbp), %r12
	testq	%r13, %r13
	jne	LBB5_4
	jmp	LBB5_5
LBB5_2:
	movq	%r13, %rbx
	addq	$16, %rbx
	andq	$-16, %rbx
	movq	%rbx, %rdi
	callq	__Znwm
	movq	%rax, %r12
	movq	%r12, -48(%rbp)
	orq	$1, %rbx
	movq	%rbx, -64(%rbp)
	movq	%r13, -56(%rbp)
LBB5_4:
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	_memcpy
LBB5_5:
	movb	$0, (%r12,%r13)
Ltmp35:
	leaq	-64(%rbp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	movl	%eax, %r14d
Ltmp36:
## BB#6:
	testb	$1, -64(%rbp)
	je	LBB5_8
## BB#7:
	movq	-48(%rbp), %rdi
	callq	__ZdlPv
LBB5_8:
	movq	16(%r15), %r15
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
	movq	%r15, %rdi
	callq	_strlen
	movq	%rax, %r13
	cmpq	$-16, %r13
	jae	LBB5_55
## BB#9:
	cmpq	$23, %r13
	jae	LBB5_10
## BB#11:
	movl	%r13d, %eax
	addb	%al, %al
	movb	%al, -64(%rbp)
	leaq	-63(%rbp), %r12
	testq	%r13, %r13
	jne	LBB5_12
	jmp	LBB5_13
LBB5_10:
	movq	%r13, %rbx
	addq	$16, %rbx
	andq	$-16, %rbx
	movq	%rbx, %rdi
	callq	__Znwm
	movq	%rax, %r12
	movq	%r12, -48(%rbp)
	orq	$1, %rbx
	movq	%rbx, -64(%rbp)
	movq	%r13, -56(%rbp)
LBB5_12:
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	_memcpy
LBB5_13:
	movb	$0, (%r12,%r13)
Ltmp38:
	leaq	-64(%rbp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	movl	%eax, -76(%rbp)         ## 4-byte Spill
Ltmp39:
## BB#14:
	testb	$1, -64(%rbp)
	je	LBB5_16
## BB#15:
	movq	-48(%rbp), %rdi
	callq	__ZdlPv
LBB5_16:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
	movslq	%r14d, %rsi
Ltmp41:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE7reserveEm
Ltmp42:
## BB#17:
	testl	%r14d, %r14d
	jle	LBB5_18
## BB#30:
	movl	%r14d, %r15d
	xorl	%r14d, %r14d
	.p2align	4, 0x90
LBB5_31:                                ## =>This Inner Loop Header: Depth=1
Ltmp43:
	leaq	-112(%rbp), %rdi
	movl	-76(%rbp), %esi         ## 4-byte Reload
	callq	__ZN10benchmarks4util16generate_doublesEj
Ltmp44:
## BB#32:                               ##   in Loop: Header=BB5_31 Depth=1
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movq	%rax, %r13
	movq	-112(%rbp), %rbx
	movq	-104(%rbp), %r12
Ltmp46:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	leaq	-72(%rbp), %rdx
	callq	__ZNSt3__16__sortIRNS_7greaterIdEEPdEEvT0_S5_T_
Ltmp47:
## BB#33:                               ##   in Loop: Header=BB5_31 Depth=1
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	subq	%r13, %rax
	movabsq	$4835703278458516699, %rcx ## imm = 0x431BDE82D7B634DB
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$18, %rdx
	addq	%rax, %rdx
	movq	%rdx, -88(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	LBB5_35
## BB#34:                               ##   in Loop: Header=BB5_31 Depth=1
	movq	%rdx, (%rax)
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	testq	%rbx, %rbx
	jne	LBB5_37
	jmp	LBB5_40
	.p2align	4, 0x90
LBB5_35:                                ##   in Loop: Header=BB5_31 Depth=1
Ltmp49:
	leaq	-64(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	callq	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE21__push_back_slow_pathIRKS5_EEvOT_
Ltmp50:
## BB#36:                               ##   in Loop: Header=BB5_31 Depth=1
	testq	%rbx, %rbx
	je	LBB5_40
LBB5_37:                                ##   in Loop: Header=BB5_31 Depth=1
	cmpq	%rbx, %r12
	je	LBB5_39
## BB#38:                               ##   in Loop: Header=BB5_31 Depth=1
	leaq	-8(%r12), %rax
	subq	%rbx, %rax
	notq	%rax
	andq	$-8, %rax
	addq	%r12, %rax
	movq	%rax, -104(%rbp)
LBB5_39:                                ##   in Loop: Header=BB5_31 Depth=1
	movq	%rbx, %rdi
	callq	__ZdlPv
LBB5_40:                                ##   in Loop: Header=BB5_31 Depth=1
	incl	%r14d
	cmpl	%r15d, %r14d
	jl	LBB5_31
LBB5_18:
	leaq	-56(%rbp), %rbx
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
Ltmp52:
	leaq	-88(%rbp), %rdx
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
Ltmp53:
## BB#19:
	movq	(%rbx), %rax
	movq	-64(%rbp), %rcx
	subq	%rcx, %rax
	sarq	%rax
	andq	$-8, %rax
	movq	(%rcx,%rax), %rsi
Ltmp54:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp55:
## BB#20:
	movb	$32, -112(%rbp)
Ltmp56:
	leaq	-112(%rbp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp57:
## BB#21:
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_25
## BB#22:
	movq	-56(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_24
## BB#23:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
LBB5_24:
	callq	__ZdlPv
LBB5_25:
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB5_55:
	leaq	-64(%rbp), %rdi
	callq	__ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
LBB5_29:
Ltmp40:
	jmp	LBB5_27
LBB5_26:
Ltmp37:
LBB5_27:
	movq	%rax, %r14
	testb	$1, -64(%rbp)
	je	LBB5_54
## BB#28:
	movq	-48(%rbp), %rdi
	jmp	LBB5_53
LBB5_48:
Ltmp58:
	jmp	LBB5_49
LBB5_43:
Ltmp51:
	jmp	LBB5_44
LBB5_42:
Ltmp48:
LBB5_44:
	movq	%rax, %r14
	testq	%rbx, %rbx
	je	LBB5_50
## BB#45:
	cmpq	%rbx, %r12
	je	LBB5_47
## BB#46:
	leaq	-8(%r12), %rax
	subq	%rbx, %rax
	notq	%rax
	andq	$-8, %rax
	addq	%r12, %rax
	movq	%rax, -104(%rbp)
LBB5_47:
	movq	%rbx, %rdi
	callq	__ZdlPv
	jmp	LBB5_50
LBB5_41:
Ltmp45:
LBB5_49:
	movq	%rax, %r14
LBB5_50:
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_54
## BB#51:
	movq	-56(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_53
## BB#52:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
LBB5_53:
	callq	__ZdlPv
LBB5_54:
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
	.asciz	"\205\201\200\200"      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\202\001"              ## Call site table length
Lset56 = Lfunc_begin5-Lfunc_begin5      ## >> Call Site 1 <<
	.long	Lset56
Lset57 = Ltmp35-Lfunc_begin5            ##   Call between Lfunc_begin5 and Ltmp35
	.long	Lset57
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset58 = Ltmp35-Lfunc_begin5            ## >> Call Site 2 <<
	.long	Lset58
Lset59 = Ltmp36-Ltmp35                  ##   Call between Ltmp35 and Ltmp36
	.long	Lset59
Lset60 = Ltmp37-Lfunc_begin5            ##     jumps to Ltmp37
	.long	Lset60
	.byte	0                       ##   On action: cleanup
Lset61 = Ltmp36-Lfunc_begin5            ## >> Call Site 3 <<
	.long	Lset61
Lset62 = Ltmp38-Ltmp36                  ##   Call between Ltmp36 and Ltmp38
	.long	Lset62
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset63 = Ltmp38-Lfunc_begin5            ## >> Call Site 4 <<
	.long	Lset63
Lset64 = Ltmp39-Ltmp38                  ##   Call between Ltmp38 and Ltmp39
	.long	Lset64
Lset65 = Ltmp40-Lfunc_begin5            ##     jumps to Ltmp40
	.long	Lset65
	.byte	0                       ##   On action: cleanup
Lset66 = Ltmp41-Lfunc_begin5            ## >> Call Site 5 <<
	.long	Lset66
Lset67 = Ltmp42-Ltmp41                  ##   Call between Ltmp41 and Ltmp42
	.long	Lset67
Lset68 = Ltmp58-Lfunc_begin5            ##     jumps to Ltmp58
	.long	Lset68
	.byte	0                       ##   On action: cleanup
Lset69 = Ltmp43-Lfunc_begin5            ## >> Call Site 6 <<
	.long	Lset69
Lset70 = Ltmp44-Ltmp43                  ##   Call between Ltmp43 and Ltmp44
	.long	Lset70
Lset71 = Ltmp45-Lfunc_begin5            ##     jumps to Ltmp45
	.long	Lset71
	.byte	0                       ##   On action: cleanup
Lset72 = Ltmp46-Lfunc_begin5            ## >> Call Site 7 <<
	.long	Lset72
Lset73 = Ltmp47-Ltmp46                  ##   Call between Ltmp46 and Ltmp47
	.long	Lset73
Lset74 = Ltmp48-Lfunc_begin5            ##     jumps to Ltmp48
	.long	Lset74
	.byte	0                       ##   On action: cleanup
Lset75 = Ltmp49-Lfunc_begin5            ## >> Call Site 8 <<
	.long	Lset75
Lset76 = Ltmp50-Ltmp49                  ##   Call between Ltmp49 and Ltmp50
	.long	Lset76
Lset77 = Ltmp51-Lfunc_begin5            ##     jumps to Ltmp51
	.long	Lset77
	.byte	0                       ##   On action: cleanup
Lset78 = Ltmp52-Lfunc_begin5            ## >> Call Site 9 <<
	.long	Lset78
Lset79 = Ltmp57-Ltmp52                  ##   Call between Ltmp52 and Ltmp57
	.long	Lset79
Lset80 = Ltmp58-Lfunc_begin5            ##     jumps to Ltmp58
	.long	Lset80
	.byte	0                       ##   On action: cleanup
Lset81 = Ltmp57-Lfunc_begin5            ## >> Call Site 10 <<
	.long	Lset81
Lset82 = Lfunc_end5-Ltmp57              ##   Call between Ltmp57 and Lfunc_end5
	.long	Lset82
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE7reserveEm
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE7reserveEm
	.p2align	4, 0x90
__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE7reserveEm: ## @_ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE7reserveEm
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
## BB#0:
	pushq	%rbp
Lcfi42:
	.cfi_def_cfa_offset 16
Lcfi43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi44:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Lcfi45:
	.cfi_offset %rbx, -56
Lcfi46:
	.cfi_offset %r12, -48
Lcfi47:
	.cfi_offset %r13, -40
Lcfi48:
	.cfi_offset %r14, -32
Lcfi49:
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	(%rbx), %r14
	movq	16(%rbx), %rax
	subq	%r14, %rax
	sarq	$3, %rax
	cmpq	%r15, %rax
	jae	LBB6_8
## BB#1:
	movq	%r15, %rax
	shrq	$61, %rax
	jne	LBB6_2
## BB#5:
	movq	8(%rbx), %r12
	subq	%r14, %r12
	leaq	(,%r15,8), %rdi
	callq	__Znwm
	movq	%rax, %r13
	leaq	(%r13,%r15,8), %rax
	leaq	(%r13,%r12), %r15
	testq	%r12, %r12
	jle	LBB6_7
## BB#6:
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%rax, %r12
	callq	_memcpy
	movq	%r12, %rax
LBB6_7:
	movq	%r13, (%rbx)
	movq	%r15, 8(%rbx)
	movq	%rax, 16(%rbx)
	testq	%r14, %r14
	je	LBB6_8
## BB#9:
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
LBB6_8:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB6_2:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp59:
	leaq	L_.str.1(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp60:
## BB#3:
	movq	__ZTVSt12length_error@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	__ZTISt12length_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt12length_errorD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB6_4:
Ltmp61:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	__Unwind_Resume
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table6:
Lexception6:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset83 = Lfunc_begin6-Lfunc_begin6      ## >> Call Site 1 <<
	.long	Lset83
Lset84 = Ltmp59-Lfunc_begin6            ##   Call between Lfunc_begin6 and Ltmp59
	.long	Lset84
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset85 = Ltmp59-Lfunc_begin6            ## >> Call Site 2 <<
	.long	Lset85
Lset86 = Ltmp60-Ltmp59                  ##   Call between Ltmp59 and Ltmp60
	.long	Lset86
Lset87 = Ltmp61-Lfunc_begin6            ##     jumps to Ltmp61
	.long	Lset87
	.byte	0                       ##   On action: cleanup
Lset88 = Ltmp60-Lfunc_begin6            ## >> Call Site 3 <<
	.long	Lset88
Lset89 = Lfunc_end6-Ltmp60              ##   Call between Ltmp60 and Lfunc_end6
	.long	Lset89
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
Lcfi50:
	.cfi_def_cfa_offset 16
Lcfi51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi52:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Lcfi53:
	.cfi_offset %rbx, -56
Lcfi54:
	.cfi_offset %r12, -48
Lcfi55:
	.cfi_offset %r13, -40
Lcfi56:
	.cfi_offset %r14, -32
Lcfi57:
	.cfi_offset %r15, -24
	movq	%rdx, -48(%rbp)         ## 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %r13
	jmp	LBB8_2
LBB8_1:                                 ##   in Loop: Header=BB8_2 Depth=1
	leaq	8(%r12), %rdi
	movq	%r14, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_7greaterIdEEPdEEvT0_S5_T_
	movq	%r12, %r14
	.p2align	4, 0x90
LBB8_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB8_3 Depth 2
                                        ##       Child Loop BB8_6 Depth 3
                                        ##         Child Loop BB8_12 Depth 4
                                        ##         Child Loop BB8_36 Depth 4
                                        ##         Child Loop BB8_48 Depth 4
                                        ##           Child Loop BB8_49 Depth 5
                                        ##           Child Loop BB8_51 Depth 5
                                        ##         Child Loop BB8_17 Depth 4
                                        ##           Child Loop BB8_18 Depth 5
                                        ##           Child Loop BB8_20 Depth 5
	leaq	-8(%r14), %r15
	leaq	-16(%r14), %rax
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	movq	%r13, %rbx
LBB8_3:                                 ##   Parent Loop BB8_2 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB8_6 Depth 3
                                        ##         Child Loop BB8_12 Depth 4
                                        ##         Child Loop BB8_36 Depth 4
                                        ##         Child Loop BB8_48 Depth 4
                                        ##           Child Loop BB8_49 Depth 5
                                        ##           Child Loop BB8_51 Depth 5
                                        ##         Child Loop BB8_17 Depth 4
                                        ##           Child Loop BB8_18 Depth 5
                                        ##           Child Loop BB8_20 Depth 5
	movq	%rbx, %r13
	jmp	LBB8_6
	.p2align	4, 0x90
LBB8_4:                                 ##   in Loop: Header=BB8_6 Depth=3
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_7greaterIdEEPdEEvT0_S5_T_
	addq	$8, %r12
	movq	%r12, %rbx
	movq	%rbx, %r13
	jmp	LBB8_6
	.p2align	4, 0x90
LBB8_5:                                 ##   in Loop: Header=BB8_6 Depth=3
	movq	%rdx, %r13
LBB8_6:                                 ##   Parent Loop BB8_2 Depth=1
                                        ##     Parent Loop BB8_3 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB8_12 Depth 4
                                        ##         Child Loop BB8_36 Depth 4
                                        ##         Child Loop BB8_48 Depth 4
                                        ##           Child Loop BB8_49 Depth 5
                                        ##           Child Loop BB8_51 Depth 5
                                        ##         Child Loop BB8_17 Depth 4
                                        ##           Child Loop BB8_18 Depth 5
                                        ##           Child Loop BB8_20 Depth 5
	movq	%r14, %rcx
	subq	%r13, %rcx
	movq	%rcx, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	jbe	LBB8_55
## BB#7:                                ##   in Loop: Header=BB8_6 Depth=3
	cmpq	$247, %rcx
	jle	LBB8_58
## BB#8:                                ##   in Loop: Header=BB8_6 Depth=3
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rax, %rdx
	movabsq	$4611686018427387902, %rsi ## imm = 0x3FFFFFFFFFFFFFFE
	andq	%rsi, %rdx
	cmpq	$7993, %rcx             ## imm = 0x1F39
	leaq	(%r13,%rdx,4), %rbx
	jl	LBB8_30
## BB#9:                                ##   in Loop: Header=BB8_6 Depth=3
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
LBB8_10:                                ##   in Loop: Header=BB8_6 Depth=3
	movsd	(%r13), %xmm0           ## xmm0 = mem[0],zero
	movsd	(%rbx), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	LBB8_53
## BB#11:                               ##   in Loop: Header=BB8_6 Depth=3
	movq	-64(%rbp), %rcx         ## 8-byte Reload
	.p2align	4, 0x90
LBB8_12:                                ##   Parent Loop BB8_2 Depth=1
                                        ##     Parent Loop BB8_3 Depth=2
                                        ##       Parent Loop BB8_6 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	cmpq	%rcx, %r13
	je	LBB8_33
## BB#13:                               ##   in Loop: Header=BB8_12 Depth=4
	movsd	(%rcx), %xmm2           ## xmm2 = mem[0],zero
	addq	$-8, %rcx
	ucomisd	%xmm1, %xmm2
	jbe	LBB8_12
## BB#14:                               ##   in Loop: Header=BB8_6 Depth=3
	movsd	%xmm2, (%r13)
	movsd	%xmm0, 8(%rcx)
	addq	$8, %rcx
	incl	%eax
LBB8_15:                                ##   in Loop: Header=BB8_6 Depth=3
	leaq	8(%r13), %r12
	cmpq	%rcx, %r12
	jb	LBB8_17
	jmp	LBB8_23
	.p2align	4, 0x90
LBB8_16:                                ##   in Loop: Header=BB8_17 Depth=4
	movsd	%xmm2, (%rdx)
	movsd	%xmm1, (%rcx)
	incl	%eax
	cmpq	%rdx, %rbx
	cmoveq	%rcx, %rbx
LBB8_17:                                ##   Parent Loop BB8_2 Depth=1
                                        ##     Parent Loop BB8_3 Depth=2
                                        ##       Parent Loop BB8_6 Depth=3
                                        ## =>      This Loop Header: Depth=4
                                        ##           Child Loop BB8_18 Depth 5
                                        ##           Child Loop BB8_20 Depth 5
	movsd	(%rbx), %xmm0           ## xmm0 = mem[0],zero
	addq	$-8, %r12
	movq	%r12, %rdx
	.p2align	4, 0x90
LBB8_18:                                ##   Parent Loop BB8_2 Depth=1
                                        ##     Parent Loop BB8_3 Depth=2
                                        ##       Parent Loop BB8_6 Depth=3
                                        ##         Parent Loop BB8_17 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movsd	8(%rdx), %xmm1          ## xmm1 = mem[0],zero
	addq	$8, %rdx
	ucomisd	%xmm0, %xmm1
	ja	LBB8_18
## BB#19:                               ##   in Loop: Header=BB8_17 Depth=4
	leaq	8(%rdx), %r12
	.p2align	4, 0x90
LBB8_20:                                ##   Parent Loop BB8_2 Depth=1
                                        ##     Parent Loop BB8_3 Depth=2
                                        ##       Parent Loop BB8_6 Depth=3
                                        ##         Parent Loop BB8_17 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movsd	-8(%rcx), %xmm2         ## xmm2 = mem[0],zero
	addq	$-8, %rcx
	ucomisd	%xmm0, %xmm2
	jbe	LBB8_20
## BB#21:                               ##   in Loop: Header=BB8_17 Depth=4
	cmpq	%rcx, %rdx
	jbe	LBB8_16
## BB#22:                               ##   in Loop: Header=BB8_6 Depth=3
	movq	%rdx, %r12
LBB8_23:                                ##   in Loop: Header=BB8_6 Depth=3
	cmpq	%rbx, %r12
	je	LBB8_26
## BB#24:                               ##   in Loop: Header=BB8_6 Depth=3
	movsd	(%rbx), %xmm0           ## xmm0 = mem[0],zero
	movsd	(%r12), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB8_26
## BB#25:                               ##   in Loop: Header=BB8_6 Depth=3
	movsd	%xmm0, (%r12)
	movsd	%xmm1, (%rbx)
	incl	%eax
LBB8_26:                                ##   in Loop: Header=BB8_6 Depth=3
	testl	%eax, %eax
	jne	LBB8_29
## BB#27:                               ##   in Loop: Header=BB8_6 Depth=3
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
	jne	LBB8_54
## BB#28:                               ##   in Loop: Header=BB8_6 Depth=3
	testb	%r15b, %r15b
	movq	-56(%rbp), %r15         ## 8-byte Reload
	jne	LBB8_3
LBB8_29:                                ##   in Loop: Header=BB8_6 Depth=3
	movq	%r12, %rax
	subq	%r13, %rax
	movq	%r14, %rcx
	subq	%r12, %rcx
	cmpq	%rcx, %rax
	jl	LBB8_4
	jmp	LBB8_1
	.p2align	4, 0x90
LBB8_30:                                ##   in Loop: Header=BB8_6 Depth=3
	movsd	(%rbx), %xmm1           ## xmm1 = mem[0],zero
	movsd	(%r13), %xmm0           ## xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movsd	(%r15), %xmm2           ## xmm2 = mem[0],zero
	jbe	LBB8_38
## BB#31:                               ##   in Loop: Header=BB8_6 Depth=3
	ucomisd	%xmm1, %xmm2
	jbe	LBB8_41
## BB#32:                               ##   in Loop: Header=BB8_6 Depth=3
	movsd	%xmm2, (%r13)
	movsd	%xmm0, (%r15)
	movl	$1, %eax
	jmp	LBB8_10
	.p2align	4, 0x90
LBB8_33:                                ##   in Loop: Header=BB8_6 Depth=3
	leaq	8(%r13), %rax
	movsd	(%r15), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	LBB8_45
## BB#34:                               ##   in Loop: Header=BB8_6 Depth=3
	cmpq	%r15, %rax
	je	LBB8_104
## BB#35:                               ##   in Loop: Header=BB8_6 Depth=3
	leaq	16(%r13), %rax
	.p2align	4, 0x90
LBB8_36:                                ##   Parent Loop BB8_2 Depth=1
                                        ##     Parent Loop BB8_3 Depth=2
                                        ##       Parent Loop BB8_6 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movsd	-8(%rax), %xmm2         ## xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	ja	LBB8_44
## BB#37:                               ##   in Loop: Header=BB8_36 Depth=4
	addq	$8, %rax
	cmpq	%rax, %r14
	jne	LBB8_36
	jmp	LBB8_104
	.p2align	4, 0x90
LBB8_38:                                ##   in Loop: Header=BB8_6 Depth=3
	xorl	%eax, %eax
	ucomisd	%xmm1, %xmm2
	jbe	LBB8_10
## BB#39:                               ##   in Loop: Header=BB8_6 Depth=3
	movsd	%xmm2, (%rbx)
	movsd	%xmm1, (%r15)
	movsd	(%rbx), %xmm0           ## xmm0 = mem[0],zero
	movsd	(%r13), %xmm1           ## xmm1 = mem[0],zero
	movl	$1, %eax
	ucomisd	%xmm1, %xmm0
	jbe	LBB8_10
## BB#40:                               ##   in Loop: Header=BB8_6 Depth=3
	movsd	%xmm0, (%r13)
	movsd	%xmm1, (%rbx)
	jmp	LBB8_43
LBB8_41:                                ##   in Loop: Header=BB8_6 Depth=3
	movsd	%xmm1, (%r13)
	movsd	%xmm0, (%rbx)
	movsd	(%r15), %xmm1           ## xmm1 = mem[0],zero
	movl	$1, %eax
	ucomisd	%xmm0, %xmm1
	jbe	LBB8_10
## BB#42:                               ##   in Loop: Header=BB8_6 Depth=3
	movsd	%xmm1, (%rbx)
	movsd	%xmm0, (%r15)
LBB8_43:                                ##   in Loop: Header=BB8_6 Depth=3
	movl	$2, %eax
	jmp	LBB8_10
LBB8_44:                                ##   in Loop: Header=BB8_6 Depth=3
	movsd	%xmm1, -8(%rax)
	movsd	%xmm2, (%r15)
LBB8_45:                                ##   in Loop: Header=BB8_6 Depth=3
	cmpq	%r15, %rax
	je	LBB8_104
## BB#46:                               ##   in Loop: Header=BB8_6 Depth=3
	movq	%r15, %rcx
	jmp	LBB8_48
	.p2align	4, 0x90
LBB8_47:                                ##   in Loop: Header=BB8_48 Depth=4
	movsd	%xmm2, (%rdx)
	movsd	%xmm0, (%rcx)
LBB8_48:                                ##   Parent Loop BB8_2 Depth=1
                                        ##     Parent Loop BB8_3 Depth=2
                                        ##       Parent Loop BB8_6 Depth=3
                                        ## =>      This Loop Header: Depth=4
                                        ##           Child Loop BB8_49 Depth 5
                                        ##           Child Loop BB8_51 Depth 5
	movsd	(%r13), %xmm1           ## xmm1 = mem[0],zero
	.p2align	4, 0x90
LBB8_49:                                ##   Parent Loop BB8_2 Depth=1
                                        ##     Parent Loop BB8_3 Depth=2
                                        ##       Parent Loop BB8_6 Depth=3
                                        ##         Parent Loop BB8_48 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	addq	$8, %rax
	ucomisd	%xmm0, %xmm1
	jbe	LBB8_49
## BB#50:                               ##   in Loop: Header=BB8_48 Depth=4
	leaq	-8(%rax), %rdx
	.p2align	4, 0x90
LBB8_51:                                ##   Parent Loop BB8_2 Depth=1
                                        ##     Parent Loop BB8_3 Depth=2
                                        ##       Parent Loop BB8_6 Depth=3
                                        ##         Parent Loop BB8_48 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movsd	-8(%rcx), %xmm2         ## xmm2 = mem[0],zero
	addq	$-8, %rcx
	ucomisd	%xmm2, %xmm1
	ja	LBB8_51
## BB#52:                               ##   in Loop: Header=BB8_48 Depth=4
	cmpq	%rcx, %rdx
	jb	LBB8_47
	jmp	LBB8_5
LBB8_53:                                ##   in Loop: Header=BB8_6 Depth=3
	movq	%r15, %rcx
	jmp	LBB8_15
LBB8_54:                                ##   in Loop: Header=BB8_2 Depth=1
	testb	%r15b, %r15b
	movq	%r12, %r14
	je	LBB8_2
	jmp	LBB8_104
LBB8_55:
	leaq	LJTI8_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB8_56:
	movsd	(%r15), %xmm0           ## xmm0 = mem[0],zero
	movsd	(%r13), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB8_104
## BB#57:
	movsd	%xmm0, (%r13)
	movsd	%xmm1, (%r15)
	jmp	LBB8_104
LBB8_58:
	movsd	(%r13), %xmm1           ## xmm1 = mem[0],zero
	movsd	8(%r13), %xmm0          ## xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movsd	16(%r13), %xmm2         ## xmm2 = mem[0],zero
	jbe	LBB8_61
## BB#59:
	ucomisd	%xmm0, %xmm2
	jbe	LBB8_64
## BB#60:
	movsd	%xmm2, (%r13)
	jmp	LBB8_66
LBB8_61:
	ucomisd	%xmm0, %xmm2
	jbe	LBB8_75
## BB#62:
	movsd	%xmm2, 8(%r13)
	movsd	%xmm0, 16(%r13)
	ucomisd	%xmm1, %xmm2
	jbe	LBB8_76
## BB#63:
	movsd	%xmm2, (%r13)
	movsd	%xmm1, 8(%r13)
	jmp	LBB8_76
LBB8_64:
	movsd	%xmm0, (%r13)
	movsd	%xmm1, 8(%r13)
	ucomisd	%xmm1, %xmm2
	jbe	LBB8_75
## BB#65:
	movsd	%xmm2, 8(%r13)
LBB8_66:
	movsd	%xmm1, 16(%r13)
	movapd	%xmm1, %xmm0
	jmp	LBB8_76
LBB8_75:
	movapd	%xmm2, %xmm0
LBB8_76:
	leaq	24(%r13), %rcx
	cmpq	%r14, %rcx
	je	LBB8_104
## BB#77:
	movl	$24, %eax
	jmp	LBB8_83
	.p2align	4, 0x90
LBB8_78:                                ##   in Loop: Header=BB8_83 Depth=1
	addq	%r13, %rdx
	jmp	LBB8_80
	.p2align	4, 0x90
LBB8_79:                                ##   in Loop: Header=BB8_83 Depth=1
	movq	%r13, %rdx
LBB8_80:                                ##   in Loop: Header=BB8_83 Depth=1
	movsd	%xmm1, (%rdx)
LBB8_81:                                ##   in Loop: Header=BB8_83 Depth=1
	leaq	8(%rcx), %rdx
	cmpq	%r14, %rdx
	je	LBB8_104
## BB#82:                               ##   in Loop: Header=BB8_83 Depth=1
	movsd	(%rcx), %xmm0           ## xmm0 = mem[0],zero
	addq	$8, %rax
	movq	%rdx, %rcx
LBB8_83:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB8_85 Depth 2
	movsd	(%rcx), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB8_81
## BB#84:                               ##   in Loop: Header=BB8_83 Depth=1
	movq	%rax, %rdx
	.p2align	4, 0x90
LBB8_85:                                ##   Parent Loop BB8_83 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-8(%r13,%rdx), %rsi
	movq	%rsi, (%r13,%rdx)
	cmpq	$8, %rdx
	je	LBB8_79
## BB#86:                               ##   in Loop: Header=BB8_85 Depth=2
	ucomisd	-16(%r13,%rdx), %xmm1
	leaq	-8(%rdx), %rdx
	ja	LBB8_85
	jmp	LBB8_78
LBB8_68:
	movsd	(%r13), %xmm0           ## xmm0 = mem[0],zero
	movsd	8(%r13), %xmm1          ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movsd	(%r15), %xmm2           ## xmm2 = mem[0],zero
	jbe	LBB8_87
## BB#69:
	ucomisd	%xmm1, %xmm2
	jbe	LBB8_93
## BB#70:
	movsd	%xmm2, (%r13)
	movsd	%xmm0, (%r15)
	jmp	LBB8_104
LBB8_71:
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
LBB8_72:
	movsd	(%r13), %xmm1           ## xmm1 = mem[0],zero
	movsd	8(%r13), %xmm0          ## xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movsd	16(%r13), %xmm2         ## xmm2 = mem[0],zero
	jbe	LBB8_90
## BB#73:
	ucomisd	%xmm0, %xmm2
	jbe	LBB8_95
## BB#74:
	movsd	%xmm2, (%r13)
	jmp	LBB8_97
LBB8_87:
	ucomisd	%xmm1, %xmm2
	jbe	LBB8_104
## BB#88:
	movsd	%xmm2, 8(%r13)
	movsd	%xmm1, (%r15)
	movsd	(%r13), %xmm0           ## xmm0 = mem[0],zero
	movsd	8(%r13), %xmm1          ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB8_104
## BB#89:
	movsd	%xmm1, (%r13)
	movsd	%xmm0, 8(%r13)
	jmp	LBB8_104
LBB8_90:
	ucomisd	%xmm0, %xmm2
	jbe	LBB8_99
## BB#91:
	movsd	%xmm2, 8(%r13)
	movsd	%xmm0, 16(%r13)
	ucomisd	%xmm1, %xmm2
	jbe	LBB8_100
## BB#92:
	movsd	%xmm2, (%r13)
	movsd	%xmm1, 8(%r13)
	jmp	LBB8_100
LBB8_93:
	movsd	%xmm1, (%r13)
	movsd	%xmm0, 8(%r13)
	movsd	(%r15), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB8_104
## BB#94:
	movsd	%xmm1, 8(%r13)
	movsd	%xmm0, (%r15)
	jmp	LBB8_104
LBB8_95:
	movsd	%xmm0, (%r13)
	movsd	%xmm1, 8(%r13)
	ucomisd	%xmm1, %xmm2
	jbe	LBB8_99
## BB#96:
	movsd	%xmm2, 8(%r13)
LBB8_97:
	movsd	%xmm1, 16(%r13)
	movapd	%xmm1, %xmm0
	jmp	LBB8_100
LBB8_99:
	movapd	%xmm2, %xmm0
LBB8_100:
	movsd	(%r15), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB8_104
## BB#101:
	movsd	%xmm1, 16(%r13)
	movsd	%xmm0, (%r15)
	movsd	8(%r13), %xmm1          ## xmm1 = mem[0],zero
	movsd	16(%r13), %xmm0         ## xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB8_104
## BB#102:
	movsd	%xmm0, 8(%r13)
	movsd	%xmm1, 16(%r13)
	movsd	(%r13), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB8_104
## BB#103:
	movsd	%xmm0, (%r13)
	movsd	%xmm1, 8(%r13)
LBB8_104:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L8_0_set_104 = LBB8_104-LJTI8_0
L8_0_set_56 = LBB8_56-LJTI8_0
L8_0_set_68 = LBB8_68-LJTI8_0
L8_0_set_72 = LBB8_72-LJTI8_0
L8_0_set_71 = LBB8_71-LJTI8_0
LJTI8_0:
	.long	L8_0_set_104
	.long	L8_0_set_104
	.long	L8_0_set_56
	.long	L8_0_set_68
	.long	L8_0_set_72
	.long	L8_0_set_71
	.end_data_region

	.globl	__ZNSt3__17__sort5IRNS_7greaterIdEEPdEEjT0_S5_S5_S5_S5_T_
	.weak_def_can_be_hidden	__ZNSt3__17__sort5IRNS_7greaterIdEEPdEEjT0_S5_S5_S5_S5_T_
	.p2align	4, 0x90
__ZNSt3__17__sort5IRNS_7greaterIdEEPdEEjT0_S5_S5_S5_S5_T_: ## @_ZNSt3__17__sort5IRNS_7greaterIdEEPdEEjT0_S5_S5_S5_S5_T_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi58:
	.cfi_def_cfa_offset 16
Lcfi59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi60:
	.cfi_def_cfa_register %rbp
	movsd	(%rsi), %xmm0           ## xmm0 = mem[0],zero
	movsd	(%rdi), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movsd	(%rdx), %xmm2           ## xmm2 = mem[0],zero
	jbe	LBB9_1
## BB#5:
	ucomisd	%xmm0, %xmm2
	jbe	LBB9_7
## BB#6:
	movsd	%xmm2, (%rdi)
	movsd	%xmm1, (%rdx)
	movl	$1, %eax
	jmp	LBB9_9
LBB9_1:
	xorl	%eax, %eax
	ucomisd	%xmm0, %xmm2
	jbe	LBB9_2
## BB#3:
	movsd	%xmm2, (%rsi)
	movsd	%xmm0, (%rdx)
	movsd	(%rsi), %xmm1           ## xmm1 = mem[0],zero
	movsd	(%rdi), %xmm2           ## xmm2 = mem[0],zero
	movl	$1, %eax
	ucomisd	%xmm2, %xmm1
	jbe	LBB9_10
## BB#4:
	movsd	%xmm1, (%rdi)
	movsd	%xmm2, (%rsi)
	movsd	(%rdx), %xmm0           ## xmm0 = mem[0],zero
	movl	$2, %eax
	jmp	LBB9_10
LBB9_7:
	movsd	%xmm0, (%rdi)
	movsd	%xmm1, (%rsi)
	movsd	(%rdx), %xmm0           ## xmm0 = mem[0],zero
	movl	$1, %eax
	ucomisd	%xmm1, %xmm0
	jbe	LBB9_10
## BB#8:
	movsd	%xmm0, (%rsi)
	movsd	%xmm1, (%rdx)
	movl	$2, %eax
LBB9_9:
	movapd	%xmm1, %xmm0
	jmp	LBB9_10
LBB9_2:
	movapd	%xmm2, %xmm0
LBB9_10:
	movsd	(%rcx), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB9_16
## BB#11:
	movsd	%xmm1, (%rdx)
	movsd	%xmm0, (%rcx)
	movsd	(%rdx), %xmm0           ## xmm0 = mem[0],zero
	movsd	(%rsi), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB9_12
## BB#13:
	movsd	%xmm0, (%rsi)
	movsd	%xmm1, (%rdx)
	movsd	(%rsi), %xmm0           ## xmm0 = mem[0],zero
	movsd	(%rdi), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB9_14
## BB#15:
	movsd	%xmm0, (%rdi)
	movsd	%xmm1, (%rsi)
	addl	$3, %eax
	jmp	LBB9_16
LBB9_12:
	incl	%eax
	jmp	LBB9_16
LBB9_14:
	addl	$2, %eax
LBB9_16:
	movsd	(%r8), %xmm0            ## xmm0 = mem[0],zero
	movsd	(%rcx), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB9_24
## BB#17:
	movsd	%xmm0, (%rcx)
	movsd	%xmm1, (%r8)
	movsd	(%rcx), %xmm0           ## xmm0 = mem[0],zero
	movsd	(%rdx), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB9_18
## BB#19:
	movsd	%xmm0, (%rdx)
	movsd	%xmm1, (%rcx)
	movsd	(%rdx), %xmm0           ## xmm0 = mem[0],zero
	movsd	(%rsi), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB9_20
## BB#21:
	movsd	%xmm0, (%rsi)
	movsd	%xmm1, (%rdx)
	movsd	(%rsi), %xmm0           ## xmm0 = mem[0],zero
	movsd	(%rdi), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB9_22
## BB#23:
	movsd	%xmm0, (%rdi)
	movsd	%xmm1, (%rsi)
	addl	$4, %eax
LBB9_24:
	popq	%rbp
	retq
LBB9_18:
	incl	%eax
	popq	%rbp
	retq
LBB9_20:
	addl	$2, %eax
	popq	%rbp
	retq
LBB9_22:
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
Lcfi61:
	.cfi_def_cfa_offset 16
Lcfi62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi63:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Lcfi64:
	.cfi_offset %rbx, -24
	movq	%rdx, %r9
	movq	%rsi, %r10
	movq	%r10, %rax
	subq	%rdi, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	ja	LBB10_4
## BB#1:
	movb	$1, %bl
	leaq	LJTI10_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB10_2:
	movsd	-8(%r10), %xmm0         ## xmm0 = mem[0],zero
	movsd	(%rdi), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB10_51
## BB#3:
	movsd	%xmm0, (%rdi)
	movsd	%xmm1, -8(%r10)
	jmp	LBB10_51
LBB10_4:
	movsd	(%rdi), %xmm1           ## xmm1 = mem[0],zero
	movsd	8(%rdi), %xmm0          ## xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movsd	16(%rdi), %xmm2         ## xmm2 = mem[0],zero
	jbe	LBB10_14
## BB#5:
	ucomisd	%xmm0, %xmm2
	jbe	LBB10_23
## BB#6:
	movsd	%xmm2, (%rdi)
	jmp	LBB10_25
LBB10_7:
	movsd	(%rdi), %xmm0           ## xmm0 = mem[0],zero
	movsd	8(%rdi), %xmm1          ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movsd	-8(%r10), %xmm2         ## xmm2 = mem[0],zero
	jbe	LBB10_17
## BB#8:
	ucomisd	%xmm1, %xmm2
	jbe	LBB10_26
## BB#9:
	movsd	%xmm2, (%rdi)
	movsd	%xmm0, -8(%r10)
	jmp	LBB10_51
LBB10_10:
	leaq	16(%rdi), %rdx
	leaq	24(%rdi), %rcx
	addq	$-8, %r10
	leaq	8(%rdi), %rsi
	movq	%r10, %r8
	callq	__ZNSt3__17__sort5IRNS_7greaterIdEEPdEEjT0_S5_S5_S5_S5_T_
	jmp	LBB10_51
LBB10_11:
	movsd	(%rdi), %xmm1           ## xmm1 = mem[0],zero
	movsd	8(%rdi), %xmm0          ## xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movsd	16(%rdi), %xmm2         ## xmm2 = mem[0],zero
	jbe	LBB10_20
## BB#12:
	ucomisd	%xmm0, %xmm2
	jbe	LBB10_28
## BB#13:
	movsd	%xmm2, (%rdi)
	jmp	LBB10_30
LBB10_14:
	ucomisd	%xmm0, %xmm2
	jbe	LBB10_33
## BB#15:
	movsd	%xmm2, 8(%rdi)
	movsd	%xmm0, 16(%rdi)
	ucomisd	%xmm1, %xmm2
	jbe	LBB10_34
## BB#16:
	movsd	%xmm2, (%rdi)
	movsd	%xmm1, 8(%rdi)
	jmp	LBB10_34
LBB10_17:
	ucomisd	%xmm1, %xmm2
	jbe	LBB10_51
## BB#18:
	movsd	%xmm2, 8(%rdi)
	movsd	%xmm1, -8(%r10)
	movsd	(%rdi), %xmm0           ## xmm0 = mem[0],zero
	movsd	8(%rdi), %xmm1          ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB10_51
## BB#19:
	movsd	%xmm1, (%rdi)
	movsd	%xmm0, 8(%rdi)
	jmp	LBB10_51
LBB10_20:
	ucomisd	%xmm0, %xmm2
	jbe	LBB10_46
## BB#21:
	movsd	%xmm2, 8(%rdi)
	movsd	%xmm0, 16(%rdi)
	ucomisd	%xmm1, %xmm2
	jbe	LBB10_47
## BB#22:
	movsd	%xmm2, (%rdi)
	movsd	%xmm1, 8(%rdi)
	jmp	LBB10_47
LBB10_23:
	movsd	%xmm0, (%rdi)
	movsd	%xmm1, 8(%rdi)
	ucomisd	%xmm1, %xmm2
	jbe	LBB10_33
## BB#24:
	movsd	%xmm2, 8(%rdi)
LBB10_25:
	movsd	%xmm1, 16(%rdi)
	movapd	%xmm1, %xmm0
	jmp	LBB10_34
LBB10_33:
	movapd	%xmm2, %xmm0
LBB10_34:
	leaq	24(%rdi), %rax
	movb	$1, %r8b
	cmpq	%r10, %rax
	je	LBB10_43
## BB#35:
	xorl	%esi, %esi
	movl	$16, %ecx
	jmp	LBB10_39
	.p2align	4, 0x90
LBB10_36:                               ##   in Loop: Header=BB10_39 Depth=1
	movsd	%xmm1, (%rdi,%rbx)
	incl	%esi
	leaq	8(%rax), %rdx
	cmpq	%r10, %rdx
	sete	%bl
	cmpl	$8, %esi
	je	LBB10_44
LBB10_37:                               ##   in Loop: Header=BB10_39 Depth=1
	leaq	8(%rax), %rdx
	cmpq	%r10, %rdx
	je	LBB10_43
## BB#38:                               ##   in Loop: Header=BB10_39 Depth=1
	movsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	addq	$8, %rcx
	movq	%rdx, %rax
LBB10_39:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB10_41 Depth 2
	movsd	(%rax), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB10_37
## BB#40:                               ##   in Loop: Header=BB10_39 Depth=1
	movq	%rcx, %rdx
	.p2align	4, 0x90
LBB10_41:                               ##   Parent Loop BB10_39 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rbx
	movq	(%rdi,%rbx), %rdx
	movq	%rdx, 8(%rdi,%rbx)
	testq	%rbx, %rbx
	je	LBB10_36
## BB#42:                               ##   in Loop: Header=BB10_41 Depth=2
	leaq	-8(%rbx), %rdx
	ucomisd	-8(%rdi,%rbx), %xmm1
	ja	LBB10_41
	jmp	LBB10_36
LBB10_43:
                                        ## implicit-def: %BL
	jmp	LBB10_45
LBB10_26:
	movsd	%xmm1, (%rdi)
	movsd	%xmm0, 8(%rdi)
	movsd	-8(%r10), %xmm1         ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB10_51
## BB#27:
	movsd	%xmm1, 8(%rdi)
	movsd	%xmm0, -8(%r10)
	jmp	LBB10_51
LBB10_28:
	movsd	%xmm0, (%rdi)
	movsd	%xmm1, 8(%rdi)
	ucomisd	%xmm1, %xmm2
	jbe	LBB10_46
## BB#29:
	movsd	%xmm2, 8(%rdi)
LBB10_30:
	movsd	%xmm1, 16(%rdi)
	movapd	%xmm1, %xmm0
	jmp	LBB10_47
LBB10_46:
	movapd	%xmm2, %xmm0
LBB10_47:
	movsd	-8(%r10), %xmm1         ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB10_51
## BB#48:
	movsd	%xmm1, 16(%rdi)
	movsd	%xmm0, -8(%r10)
	movsd	8(%rdi), %xmm1          ## xmm1 = mem[0],zero
	movsd	16(%rdi), %xmm0         ## xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB10_51
## BB#49:
	movsd	%xmm0, 8(%rdi)
	movsd	%xmm1, 16(%rdi)
	movsd	(%rdi), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB10_51
## BB#50:
	movsd	%xmm0, (%rdi)
	movsd	%xmm1, 8(%rdi)
	jmp	LBB10_51
LBB10_44:
	xorl	%r8d, %r8d
LBB10_45:
	orb	%r8b, %bl
LBB10_51:
	andb	$1, %bl
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L10_0_set_51 = LBB10_51-LJTI10_0
L10_0_set_2 = LBB10_2-LJTI10_0
L10_0_set_7 = LBB10_7-LJTI10_0
L10_0_set_11 = LBB10_11-LJTI10_0
L10_0_set_10 = LBB10_10-LJTI10_0
LJTI10_0:
	.long	L10_0_set_51
	.long	L10_0_set_51
	.long	L10_0_set_2
	.long	L10_0_set_7
	.long	L10_0_set_11
	.long	L10_0_set_10
	.end_data_region

	.globl	__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	.weak_def_can_be_hidden	__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	.p2align	4, 0x90
__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE: ## @_ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi65:
	.cfi_def_cfa_offset 16
Lcfi66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi67:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
Lcfi68:
	.cfi_offset %rbx, -40
Lcfi69:
	.cfi_offset %r14, -32
Lcfi70:
	.cfi_offset %r15, -24
	movq	%rdx, %r8
	movl	(%r8), %eax
	movl	4(%r8), %r11d
	subl	%eax, %r11d
	je	LBB11_6
## BB#1:
	incl	%r11d
	je	LBB11_2
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
LBB11_4:                                ## =>This Inner Loop Header: Depth=1
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
	jae	LBB11_4
## BB#5:
	addl	(%r8), %eax
	jmp	LBB11_6
LBB11_2:
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
LBB11_6:
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
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
## BB#0:
	pushq	%rbp
Lcfi71:
	.cfi_def_cfa_offset 16
Lcfi72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi73:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Lcfi74:
	.cfi_offset %rbx, -56
Lcfi75:
	.cfi_offset %r12, -48
Lcfi76:
	.cfi_offset %r13, -40
Lcfi77:
	.cfi_offset %r14, -32
Lcfi78:
	.cfi_offset %r15, -24
	movq	%rsi, %r8
	movq	%rdi, %r13
	movq	(%r13), %rsi
	movq	8(%r13), %r12
	subq	%rsi, %r12
	movq	%r12, %r15
	sarq	$3, %r15
	leaq	1(%r15), %rax
	movq	%rax, %rcx
	shrq	$61, %rcx
	jne	LBB12_15
## BB#1:
	movabsq	$2305843009213693951, %rcx ## imm = 0x1FFFFFFFFFFFFFFF
	movq	16(%r13), %r14
	subq	%rsi, %r14
	movq	%r14, %rdx
	sarq	$3, %rdx
	movabsq	$1152921504606846974, %rdi ## imm = 0xFFFFFFFFFFFFFFE
	cmpq	%rdi, %rdx
	ja	LBB12_2
## BB#8:
	sarq	$2, %r14
	cmpq	%rax, %r14
	cmovbq	%rax, %r14
	testq	%r14, %r14
	je	LBB12_9
## BB#10:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	cmpq	%rcx, %r14
	jbe	LBB12_3
## BB#11:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp62:
	leaq	L_.str.1(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp63:
## BB#12:
	movq	__ZTVSt12length_error@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	__ZTISt12length_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt12length_errorD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB12_2:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	movq	%rcx, %r14
LBB12_3:
	leaq	(,%r14,8), %rdi
	callq	__Znwm
	movq	%rax, %rbx
	movq	-56(%rbp), %rsi         ## 8-byte Reload
	movq	-48(%rbp), %r8          ## 8-byte Reload
LBB12_4:
	leaq	(%rbx,%r14,8), %r14
	movq	(%r8), %rax
	movq	%rax, (%rbx,%r15,8)
	leaq	8(%rbx,%r15,8), %r15
	testq	%r12, %r12
	jle	LBB12_6
## BB#5:
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%rsi, %r12
	callq	_memcpy
	movq	%r12, %rsi
LBB12_6:
	movq	%rbx, (%r13)
	movq	%r15, 8(%r13)
	movq	%r14, 16(%r13)
	testq	%rsi, %rsi
	je	LBB12_14
## BB#7:
	movq	%rsi, %rdi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
LBB12_14:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB12_9:
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	jmp	LBB12_4
LBB12_15:
	movq	%r13, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
LBB12_13:
Ltmp64:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	__Unwind_Resume
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table12:
Lexception7:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset90 = Lfunc_begin7-Lfunc_begin7      ## >> Call Site 1 <<
	.long	Lset90
Lset91 = Ltmp62-Lfunc_begin7            ##   Call between Lfunc_begin7 and Ltmp62
	.long	Lset91
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset92 = Ltmp62-Lfunc_begin7            ## >> Call Site 2 <<
	.long	Lset92
Lset93 = Ltmp63-Ltmp62                  ##   Call between Ltmp62 and Ltmp63
	.long	Lset93
Lset94 = Ltmp64-Lfunc_begin7            ##     jumps to Ltmp64
	.long	Lset94
	.byte	0                       ##   On action: cleanup
Lset95 = Ltmp63-Lfunc_begin7            ## >> Call Site 3 <<
	.long	Lset95
Lset96 = Lfunc_end7-Ltmp63              ##   Call between Ltmp63 and Lfunc_end7
	.long	Lset96
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	.weak_def_can_be_hidden	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	.p2align	4, 0x90
__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_: ## @_ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi79:
	.cfi_def_cfa_offset 16
Lcfi80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi81:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Lcfi82:
	.cfi_offset %rbx, -56
Lcfi83:
	.cfi_offset %r12, -48
Lcfi84:
	.cfi_offset %r13, -40
Lcfi85:
	.cfi_offset %r14, -32
Lcfi86:
	.cfi_offset %r15, -24
	movq	%rdx, -48(%rbp)         ## 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %r13
	jmp	LBB13_2
LBB13_1:                                ##   in Loop: Header=BB13_2 Depth=1
	leaq	8(%r15), %rdi
	movq	%r14, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	movq	%r15, %r14
	.p2align	4, 0x90
LBB13_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB13_4 Depth 2
                                        ##       Child Loop BB13_32 Depth 3
                                        ##         Child Loop BB13_6 Depth 4
                                        ##         Child Loop BB13_14 Depth 4
                                        ##         Child Loop BB13_27 Depth 4
                                        ##           Child Loop BB13_28 Depth 5
                                        ##           Child Loop BB13_30 Depth 5
                                        ##       Child Loop BB13_41 Depth 3
                                        ##         Child Loop BB13_42 Depth 4
                                        ##         Child Loop BB13_44 Depth 4
	leaq	-8(%r14), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	leaq	-16(%r14), %rax
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	movq	%r13, %rbx
	jmp	LBB13_4
	.p2align	4, 0x90
LBB13_3:                                ##   in Loop: Header=BB13_4 Depth=2
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	addq	$8, %r15
	movq	%r15, %rbx
LBB13_4:                                ##   Parent Loop BB13_2 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB13_32 Depth 3
                                        ##         Child Loop BB13_6 Depth 4
                                        ##         Child Loop BB13_14 Depth 4
                                        ##         Child Loop BB13_27 Depth 4
                                        ##           Child Loop BB13_28 Depth 5
                                        ##           Child Loop BB13_30 Depth 5
                                        ##       Child Loop BB13_41 Depth 3
                                        ##         Child Loop BB13_42 Depth 4
                                        ##         Child Loop BB13_44 Depth 4
	movq	%rbx, %r13
	jmp	LBB13_32
	.p2align	4, 0x90
LBB13_5:                                ##   in Loop: Header=BB13_32 Depth=3
	movq	-64(%rbp), %rdx         ## 8-byte Reload
	.p2align	4, 0x90
LBB13_6:                                ##   Parent Loop BB13_2 Depth=1
                                        ##     Parent Loop BB13_4 Depth=2
                                        ##       Parent Loop BB13_32 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	cmpq	%rdx, %r13
	je	LBB13_11
## BB#7:                                ##   in Loop: Header=BB13_6 Depth=4
	movq	(%rdx), %rbx
	addq	$-8, %rdx
	cmpq	%rdi, %rbx
	jge	LBB13_6
	jmp	LBB13_38
	.p2align	4, 0x90
LBB13_8:                                ##   in Loop: Header=BB13_32 Depth=3
	movq	(%r12), %rcx
	movq	(%r13), %rax
	cmpq	%rax, %rcx
	movq	(%r15), %rdx
	jge	LBB13_16
## BB#9:                                ##   in Loop: Header=BB13_32 Depth=3
	cmpq	%rcx, %rdx
	jge	LBB13_19
## BB#10:                               ##   in Loop: Header=BB13_32 Depth=3
	movq	%rdx, (%r13)
	movq	%rax, (%r15)
	movl	$1, %eax
	jmp	LBB13_36
	.p2align	4, 0x90
LBB13_11:                               ##   in Loop: Header=BB13_32 Depth=3
	leaq	8(%r13), %rax
	movq	(%r15), %rdx
	cmpq	%rdx, %rsi
	jl	LBB13_25
## BB#12:                               ##   in Loop: Header=BB13_32 Depth=3
	cmpq	%r15, %rax
	je	LBB13_104
## BB#13:                               ##   in Loop: Header=BB13_32 Depth=3
	addq	$16, %r13
	movq	%r13, %rax
	.p2align	4, 0x90
LBB13_14:                               ##   Parent Loop BB13_2 Depth=1
                                        ##     Parent Loop BB13_4 Depth=2
                                        ##       Parent Loop BB13_32 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	-8(%rax), %rdi
	cmpq	%rdi, %rsi
	jl	LBB13_24
## BB#15:                               ##   in Loop: Header=BB13_14 Depth=4
	addq	$8, %rax
	cmpq	%rax, %r14
	jne	LBB13_14
	jmp	LBB13_104
	.p2align	4, 0x90
LBB13_16:                               ##   in Loop: Header=BB13_32 Depth=3
	cmpq	%rcx, %rdx
	jge	LBB13_22
## BB#17:                               ##   in Loop: Header=BB13_32 Depth=3
	movq	%rdx, (%r12)
	movq	%rcx, (%r15)
	movq	(%r12), %rax
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB13_23
## BB#18:                               ##   in Loop: Header=BB13_32 Depth=3
	movq	%rax, (%r13)
	movq	%rcx, (%r12)
	jmp	LBB13_21
LBB13_19:                               ##   in Loop: Header=BB13_32 Depth=3
	movq	%rcx, (%r13)
	movq	%rax, (%r12)
	movq	(%r15), %rcx
	cmpq	%rax, %rcx
	jge	LBB13_23
## BB#20:                               ##   in Loop: Header=BB13_32 Depth=3
	movq	%rcx, (%r12)
	movq	%rax, (%r15)
LBB13_21:                               ##   in Loop: Header=BB13_32 Depth=3
	movl	$2, %eax
	jmp	LBB13_36
LBB13_22:                               ##   in Loop: Header=BB13_32 Depth=3
	xorl	%eax, %eax
	jmp	LBB13_36
LBB13_23:                               ##   in Loop: Header=BB13_32 Depth=3
	movl	$1, %eax
	jmp	LBB13_36
LBB13_24:                               ##   in Loop: Header=BB13_32 Depth=3
	movq	%rdx, -8(%rax)
	movq	%rdi, (%r15)
LBB13_25:                               ##   in Loop: Header=BB13_32 Depth=3
	cmpq	%r15, %rax
	jne	LBB13_27
	jmp	LBB13_104
	.p2align	4, 0x90
LBB13_26:                               ##   in Loop: Header=BB13_27 Depth=4
	movq	%rbx, -8(%rax)
	movq	%rsi, (%r15)
LBB13_27:                               ##   Parent Loop BB13_2 Depth=1
                                        ##     Parent Loop BB13_4 Depth=2
                                        ##       Parent Loop BB13_32 Depth=3
                                        ## =>      This Loop Header: Depth=4
                                        ##           Child Loop BB13_28 Depth 5
                                        ##           Child Loop BB13_30 Depth 5
	movq	(%rcx), %rdi
	.p2align	4, 0x90
LBB13_28:                               ##   Parent Loop BB13_2 Depth=1
                                        ##     Parent Loop BB13_4 Depth=2
                                        ##       Parent Loop BB13_32 Depth=3
                                        ##         Parent Loop BB13_27 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movq	(%rax), %rsi
	addq	$8, %rax
	cmpq	%rsi, %rdi
	jge	LBB13_28
## BB#29:                               ##   in Loop: Header=BB13_27 Depth=4
	leaq	-8(%rax), %r13
	.p2align	4, 0x90
LBB13_30:                               ##   Parent Loop BB13_2 Depth=1
                                        ##     Parent Loop BB13_4 Depth=2
                                        ##       Parent Loop BB13_32 Depth=3
                                        ##         Parent Loop BB13_27 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movq	-8(%r15), %rbx
	addq	$-8, %r15
	cmpq	%rbx, %rdi
	jl	LBB13_30
## BB#31:                               ##   in Loop: Header=BB13_27 Depth=4
	cmpq	%r15, %r13
	jb	LBB13_26
LBB13_32:                               ##   Parent Loop BB13_2 Depth=1
                                        ##     Parent Loop BB13_4 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB13_6 Depth 4
                                        ##         Child Loop BB13_14 Depth 4
                                        ##         Child Loop BB13_27 Depth 4
                                        ##           Child Loop BB13_28 Depth 5
                                        ##           Child Loop BB13_30 Depth 5
	movq	%r14, %rcx
	subq	%r13, %rcx
	movq	%rcx, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	jbe	LBB13_55
## BB#33:                               ##   in Loop: Header=BB13_32 Depth=3
	cmpq	$247, %rcx
	movq	-56(%rbp), %r15         ## 8-byte Reload
	jle	LBB13_58
## BB#34:                               ##   in Loop: Header=BB13_32 Depth=3
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rax, %rdx
	movabsq	$4611686018427387902, %rsi ## imm = 0x3FFFFFFFFFFFFFFE
	andq	%rsi, %rdx
	cmpq	$7993, %rcx             ## imm = 0x1F39
	leaq	(%r13,%rdx,4), %r12
	jl	LBB13_8
## BB#35:                               ##   in Loop: Header=BB13_32 Depth=3
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
LBB13_36:                               ##   in Loop: Header=BB13_32 Depth=3
	movq	%r13, %rcx
	movq	(%rcx), %rsi
	movq	(%r12), %rdi
	cmpq	%rdi, %rsi
	jge	LBB13_5
## BB#37:                               ##   in Loop: Header=BB13_4 Depth=2
	movq	%r15, %rdx
	jmp	LBB13_39
	.p2align	4, 0x90
LBB13_38:                               ##   in Loop: Header=BB13_4 Depth=2
	movq	%rbx, (%rcx)
	movq	%rsi, 8(%rdx)
	addq	$8, %rdx
	incl	%eax
LBB13_39:                               ##   in Loop: Header=BB13_4 Depth=2
	leaq	8(%r13), %r15
	cmpq	%rdx, %r15
	jb	LBB13_41
	jmp	LBB13_47
	.p2align	4, 0x90
LBB13_40:                               ##   in Loop: Header=BB13_41 Depth=3
	movq	%rbx, (%rcx)
	movq	%rdi, (%rdx)
	incl	%eax
	cmpq	%rcx, %r12
	cmoveq	%rdx, %r12
LBB13_41:                               ##   Parent Loop BB13_2 Depth=1
                                        ##     Parent Loop BB13_4 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB13_42 Depth 4
                                        ##         Child Loop BB13_44 Depth 4
	movq	(%r12), %rsi
	addq	$-8, %r15
	movq	%r15, %rcx
	.p2align	4, 0x90
LBB13_42:                               ##   Parent Loop BB13_2 Depth=1
                                        ##     Parent Loop BB13_4 Depth=2
                                        ##       Parent Loop BB13_41 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	8(%rcx), %rdi
	addq	$8, %rcx
	cmpq	%rsi, %rdi
	jl	LBB13_42
## BB#43:                               ##   in Loop: Header=BB13_41 Depth=3
	leaq	8(%rcx), %r15
	.p2align	4, 0x90
LBB13_44:                               ##   Parent Loop BB13_2 Depth=1
                                        ##     Parent Loop BB13_4 Depth=2
                                        ##       Parent Loop BB13_41 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	-8(%rdx), %rbx
	addq	$-8, %rdx
	cmpq	%rsi, %rbx
	jge	LBB13_44
## BB#45:                               ##   in Loop: Header=BB13_41 Depth=3
	cmpq	%rdx, %rcx
	jbe	LBB13_40
## BB#46:                               ##   in Loop: Header=BB13_4 Depth=2
	movq	%rcx, %r15
LBB13_47:                               ##   in Loop: Header=BB13_4 Depth=2
	cmpq	%r12, %r15
	je	LBB13_50
## BB#48:                               ##   in Loop: Header=BB13_4 Depth=2
	movq	(%r12), %rcx
	movq	(%r15), %rdx
	cmpq	%rdx, %rcx
	jge	LBB13_50
## BB#49:                               ##   in Loop: Header=BB13_4 Depth=2
	movq	%rcx, (%r15)
	movq	%rdx, (%r12)
	incl	%eax
LBB13_50:                               ##   in Loop: Header=BB13_4 Depth=2
	testl	%eax, %eax
	jne	LBB13_53
## BB#51:                               ##   in Loop: Header=BB13_4 Depth=2
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
	jne	LBB13_54
## BB#52:                               ##   in Loop: Header=BB13_4 Depth=2
	testb	%r12b, %r12b
	jne	LBB13_4
LBB13_53:                               ##   in Loop: Header=BB13_4 Depth=2
	movq	%r15, %rax
	subq	%r13, %rax
	movq	%r14, %rcx
	subq	%r15, %rcx
	cmpq	%rcx, %rax
	jl	LBB13_3
	jmp	LBB13_1
LBB13_54:                               ##   in Loop: Header=BB13_2 Depth=1
	testb	%r12b, %r12b
	movq	%r15, %r14
	je	LBB13_2
	jmp	LBB13_104
LBB13_55:
	leaq	LJTI13_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	movq	-56(%rbp), %r8          ## 8-byte Reload
	jmpq	*%rax
LBB13_56:
	movq	-8(%r14), %rax
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB13_104
## BB#57:
	movq	%rax, (%r13)
	movq	%rcx, -8(%r14)
	jmp	LBB13_104
LBB13_58:
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rcx, %rax
	movq	16(%r13), %rdx
	jge	LBB13_61
## BB#59:
	cmpq	%rax, %rdx
	jge	LBB13_64
## BB#60:
	movq	%rdx, (%r13)
	jmp	LBB13_66
LBB13_61:
	cmpq	%rax, %rdx
	jge	LBB13_75
## BB#62:
	movq	%rdx, 8(%r13)
	movq	%rax, 16(%r13)
	cmpq	%rcx, %rdx
	jge	LBB13_76
## BB#63:
	movq	%rdx, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB13_76
LBB13_64:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	cmpq	%rcx, %rdx
	jge	LBB13_75
## BB#65:
	movq	%rdx, 8(%r13)
LBB13_66:
	movq	%rcx, 16(%r13)
	movq	%rcx, %rax
	jmp	LBB13_76
LBB13_75:
	movq	%rdx, %rax
LBB13_76:
	leaq	24(%r13), %rdx
	cmpq	%r14, %rdx
	je	LBB13_104
## BB#77:
	movl	$24, %ecx
	jmp	LBB13_83
	.p2align	4, 0x90
LBB13_78:                               ##   in Loop: Header=BB13_83 Depth=1
	addq	%r13, %rdi
	jmp	LBB13_80
	.p2align	4, 0x90
LBB13_79:                               ##   in Loop: Header=BB13_83 Depth=1
	movq	%r13, %rdi
LBB13_80:                               ##   in Loop: Header=BB13_83 Depth=1
	movq	%rsi, (%rdi)
LBB13_81:                               ##   in Loop: Header=BB13_83 Depth=1
	leaq	8(%rdx), %rsi
	cmpq	%r14, %rsi
	je	LBB13_104
## BB#82:                               ##   in Loop: Header=BB13_83 Depth=1
	movq	(%rdx), %rax
	addq	$8, %rcx
	movq	%rsi, %rdx
LBB13_83:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB13_85 Depth 2
	movq	(%rdx), %rsi
	cmpq	%rax, %rsi
	jge	LBB13_81
## BB#84:                               ##   in Loop: Header=BB13_83 Depth=1
	movq	%rcx, %rdi
	.p2align	4, 0x90
LBB13_85:                               ##   Parent Loop BB13_83 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, (%r13,%rdi)
	cmpq	$8, %rdi
	je	LBB13_79
## BB#86:                               ##   in Loop: Header=BB13_85 Depth=2
	movq	-16(%r13,%rdi), %rax
	addq	$-8, %rdi
	cmpq	%rax, %rsi
	jl	LBB13_85
	jmp	LBB13_78
LBB13_68:
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rax, %rcx
	movq	-8(%r14), %rdx
	jge	LBB13_87
## BB#69:
	cmpq	%rcx, %rdx
	jge	LBB13_93
## BB#70:
	movq	%rdx, (%r13)
	movq	%rax, -8(%r14)
	jmp	LBB13_104
LBB13_71:
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
LBB13_72:
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rcx, %rax
	movq	16(%r13), %rdx
	jge	LBB13_90
## BB#73:
	cmpq	%rax, %rdx
	jge	LBB13_95
## BB#74:
	movq	%rdx, (%r13)
	jmp	LBB13_97
LBB13_87:
	cmpq	%rcx, %rdx
	jge	LBB13_104
## BB#88:
	movq	%rdx, 8(%r13)
	movq	%rcx, -8(%r14)
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rax, %rcx
	jge	LBB13_104
## BB#89:
	movq	%rcx, (%r13)
	movq	%rax, 8(%r13)
	jmp	LBB13_104
LBB13_90:
	cmpq	%rax, %rdx
	jge	LBB13_99
## BB#91:
	movq	%rdx, 8(%r13)
	movq	%rax, 16(%r13)
	cmpq	%rcx, %rdx
	jge	LBB13_100
## BB#92:
	movq	%rdx, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB13_100
LBB13_93:
	movq	%rcx, (%r13)
	movq	%rax, 8(%r13)
	movq	-8(%r14), %rcx
	cmpq	%rax, %rcx
	jge	LBB13_104
## BB#94:
	movq	%rcx, 8(%r13)
	movq	%rax, -8(%r14)
	jmp	LBB13_104
LBB13_95:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	cmpq	%rcx, %rdx
	jge	LBB13_99
## BB#96:
	movq	%rdx, 8(%r13)
LBB13_97:
	movq	%rcx, 16(%r13)
	movq	%rcx, %rax
	jmp	LBB13_100
LBB13_99:
	movq	%rdx, %rax
LBB13_100:
	movq	-8(%r14), %rcx
	cmpq	%rax, %rcx
	jge	LBB13_104
## BB#101:
	movq	%rcx, 16(%r13)
	movq	%rax, -8(%r14)
	movq	8(%r13), %rcx
	movq	16(%r13), %rax
	cmpq	%rcx, %rax
	jge	LBB13_104
## BB#102:
	movq	%rax, 8(%r13)
	movq	%rcx, 16(%r13)
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB13_104
## BB#103:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
LBB13_104:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L13_0_set_104 = LBB13_104-LJTI13_0
L13_0_set_56 = LBB13_56-LJTI13_0
L13_0_set_68 = LBB13_68-LJTI13_0
L13_0_set_72 = LBB13_72-LJTI13_0
L13_0_set_71 = LBB13_71-LJTI13_0
LJTI13_0:
	.long	L13_0_set_104
	.long	L13_0_set_104
	.long	L13_0_set_56
	.long	L13_0_set_68
	.long	L13_0_set_72
	.long	L13_0_set_71
	.end_data_region

	.globl	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.weak_def_can_be_hidden	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.p2align	4, 0x90
__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_: ## @_ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi87:
	.cfi_def_cfa_offset 16
Lcfi88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi89:
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %r9
	movq	(%rdi), %r10
	cmpq	%r10, %r9
	movq	(%rdx), %r11
	jge	LBB14_1
## BB#5:
	cmpq	%r9, %r11
	jge	LBB14_7
## BB#6:
	movq	%r11, (%rdi)
	movq	%r10, (%rdx)
	movl	$1, %eax
	jmp	LBB14_9
LBB14_1:
	xorl	%eax, %eax
	cmpq	%r9, %r11
	jge	LBB14_2
## BB#3:
	movq	%r11, (%rsi)
	movq	%r9, (%rdx)
	movq	(%rsi), %r10
	movq	(%rdi), %r11
	movl	$1, %eax
	cmpq	%r11, %r10
	jge	LBB14_10
## BB#4:
	movq	%r10, (%rdi)
	movq	%r11, (%rsi)
	movq	(%rdx), %r9
	movl	$2, %eax
	jmp	LBB14_10
LBB14_7:
	movq	%r9, (%rdi)
	movq	%r10, (%rsi)
	movq	(%rdx), %r9
	movl	$1, %eax
	cmpq	%r10, %r9
	jge	LBB14_10
## BB#8:
	movq	%r9, (%rsi)
	movq	%r10, (%rdx)
	movl	$2, %eax
LBB14_9:
	movq	%r10, %r9
	jmp	LBB14_10
LBB14_2:
	movq	%r11, %r9
LBB14_10:
	movq	(%rcx), %r10
	cmpq	%r9, %r10
	jge	LBB14_16
## BB#11:
	movq	%r10, (%rdx)
	movq	%r9, (%rcx)
	movq	(%rdx), %r9
	movq	(%rsi), %r10
	cmpq	%r10, %r9
	jge	LBB14_12
## BB#13:
	movq	%r9, (%rsi)
	movq	%r10, (%rdx)
	movq	(%rsi), %r9
	movq	(%rdi), %r10
	cmpq	%r10, %r9
	jge	LBB14_14
## BB#15:
	movq	%r9, (%rdi)
	movq	%r10, (%rsi)
	addl	$3, %eax
	jmp	LBB14_16
LBB14_12:
	incl	%eax
	jmp	LBB14_16
LBB14_14:
	addl	$2, %eax
LBB14_16:
	movq	(%r8), %r9
	movq	(%rcx), %r10
	cmpq	%r10, %r9
	jge	LBB14_24
## BB#17:
	movq	%r9, (%rcx)
	movq	%r10, (%r8)
	movq	(%rcx), %r8
	movq	(%rdx), %r9
	cmpq	%r9, %r8
	jge	LBB14_18
## BB#19:
	movq	%r8, (%rdx)
	movq	%r9, (%rcx)
	movq	(%rdx), %rcx
	movq	(%rsi), %r8
	cmpq	%r8, %rcx
	jge	LBB14_20
## BB#21:
	movq	%rcx, (%rsi)
	movq	%r8, (%rdx)
	movq	(%rsi), %rcx
	movq	(%rdi), %rdx
	cmpq	%rdx, %rcx
	jge	LBB14_22
## BB#23:
	movq	%rcx, (%rdi)
	movq	%rdx, (%rsi)
	addl	$4, %eax
LBB14_24:
	popq	%rbp
	retq
LBB14_18:
	incl	%eax
	popq	%rbp
	retq
LBB14_20:
	addl	$2, %eax
	popq	%rbp
	retq
LBB14_22:
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
Lcfi90:
	.cfi_def_cfa_offset 16
Lcfi91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi92:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Lcfi93:
	.cfi_offset %rbx, -24
	movq	%rdx, %r9
	movq	%rsi, %r10
	movq	%r10, %rax
	subq	%rdi, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	ja	LBB15_4
## BB#1:
	movb	$1, %bl
	leaq	LJTI15_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB15_2:
	movq	-8(%r10), %rax
	movq	(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	LBB15_51
## BB#3:
	movq	%rax, (%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB15_51
LBB15_4:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rdx
	cmpq	%rcx, %rdx
	movq	16(%rdi), %rsi
	jge	LBB15_14
## BB#5:
	cmpq	%rdx, %rsi
	jge	LBB15_23
## BB#6:
	movq	%rsi, (%rdi)
	jmp	LBB15_25
LBB15_7:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	cmpq	%rcx, %rax
	movq	-8(%r10), %rdx
	jge	LBB15_17
## BB#8:
	cmpq	%rax, %rdx
	jge	LBB15_26
## BB#9:
	movq	%rdx, (%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB15_51
LBB15_10:
	leaq	16(%rdi), %rdx
	leaq	24(%rdi), %rcx
	addq	$-8, %r10
	leaq	8(%rdi), %rsi
	movq	%r10, %r8
	callq	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	jmp	LBB15_51
LBB15_11:
	movq	(%rdi), %rdx
	movq	8(%rdi), %rcx
	cmpq	%rdx, %rcx
	movq	16(%rdi), %rsi
	jge	LBB15_20
## BB#12:
	cmpq	%rcx, %rsi
	jge	LBB15_28
## BB#13:
	movq	%rsi, (%rdi)
	jmp	LBB15_30
LBB15_14:
	cmpq	%rdx, %rsi
	jge	LBB15_33
## BB#15:
	movq	%rsi, 8(%rdi)
	movq	%rdx, 16(%rdi)
	cmpq	%rcx, %rsi
	jge	LBB15_34
## BB#16:
	movq	%rsi, (%rdi)
	movq	%rcx, 8(%rdi)
	jmp	LBB15_34
LBB15_17:
	cmpq	%rax, %rdx
	jge	LBB15_51
## BB#18:
	movq	%rdx, 8(%rdi)
	movq	%rax, -8(%r10)
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	cmpq	%rax, %rcx
	jge	LBB15_51
## BB#19:
	movq	%rcx, (%rdi)
	movq	%rax, 8(%rdi)
	jmp	LBB15_51
LBB15_20:
	cmpq	%rcx, %rsi
	jge	LBB15_46
## BB#21:
	movq	%rsi, 8(%rdi)
	movq	%rcx, 16(%rdi)
	cmpq	%rdx, %rsi
	jge	LBB15_47
## BB#22:
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	jmp	LBB15_47
LBB15_23:
	movq	%rdx, (%rdi)
	movq	%rcx, 8(%rdi)
	cmpq	%rcx, %rsi
	jge	LBB15_33
## BB#24:
	movq	%rsi, 8(%rdi)
LBB15_25:
	movq	%rcx, 16(%rdi)
	movq	%rcx, %rdx
	jmp	LBB15_34
LBB15_33:
	movq	%rsi, %rdx
LBB15_34:
	leaq	24(%rdi), %rsi
	movb	$1, %r8b
	cmpq	%r10, %rsi
	je	LBB15_43
## BB#35:
	xorl	%r9d, %r9d
	jmp	LBB15_39
	.p2align	4, 0x90
LBB15_36:                               ##   in Loop: Header=BB15_39 Depth=1
	movq	%rbx, -8(%rcx)
	incl	%r9d
	leaq	8(%rsi), %rax
	cmpq	%r10, %rax
	sete	%bl
	cmpl	$8, %r9d
	je	LBB15_44
LBB15_37:                               ##   in Loop: Header=BB15_39 Depth=1
	leaq	8(%rsi), %rax
	cmpq	%r10, %rax
	je	LBB15_43
## BB#38:                               ##   in Loop: Header=BB15_39 Depth=1
	movq	(%rsi), %rdx
	movq	%rax, %rsi
LBB15_39:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB15_41 Depth 2
	movq	(%rsi), %rbx
	cmpq	%rdx, %rbx
	jge	LBB15_37
## BB#40:                               ##   in Loop: Header=BB15_39 Depth=1
	movq	%rsi, %rax
	.p2align	4, 0x90
LBB15_41:                               ##   Parent Loop BB15_39 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, %rcx
	movq	%rdx, (%rcx)
	leaq	-8(%rcx), %rax
	cmpq	%rdi, %rax
	je	LBB15_36
## BB#42:                               ##   in Loop: Header=BB15_41 Depth=2
	movq	-8(%rax), %rdx
	cmpq	%rdx, %rbx
	jl	LBB15_41
	jmp	LBB15_36
LBB15_43:
                                        ## implicit-def: %BL
	jmp	LBB15_45
LBB15_26:
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	movq	-8(%r10), %rax
	cmpq	%rcx, %rax
	jge	LBB15_51
## BB#27:
	movq	%rax, 8(%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB15_51
LBB15_28:
	movq	%rcx, (%rdi)
	movq	%rdx, 8(%rdi)
	cmpq	%rdx, %rsi
	jge	LBB15_46
## BB#29:
	movq	%rsi, 8(%rdi)
LBB15_30:
	movq	%rdx, 16(%rdi)
	movq	%rdx, %rcx
	jmp	LBB15_47
LBB15_46:
	movq	%rsi, %rcx
LBB15_47:
	movq	-8(%r10), %rax
	cmpq	%rcx, %rax
	jge	LBB15_51
## BB#48:
	movq	%rax, 16(%rdi)
	movq	%rcx, -8(%r10)
	movq	8(%rdi), %rcx
	movq	16(%rdi), %rax
	cmpq	%rcx, %rax
	jge	LBB15_51
## BB#49:
	movq	%rax, 8(%rdi)
	movq	%rcx, 16(%rdi)
	movq	(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	LBB15_51
## BB#50:
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	jmp	LBB15_51
LBB15_44:
	xorl	%r8d, %r8d
LBB15_45:
	orb	%r8b, %bl
LBB15_51:
	andb	$1, %bl
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L15_0_set_51 = LBB15_51-LJTI15_0
L15_0_set_2 = LBB15_2-LJTI15_0
L15_0_set_7 = LBB15_7-LJTI15_0
L15_0_set_11 = LBB15_11-LJTI15_0
L15_0_set_10 = LBB15_10-LJTI15_0
LJTI15_0:
	.long	L15_0_set_51
	.long	L15_0_set_51
	.long	L15_0_set_2
	.long	L15_0_set_7
	.long	L15_0_set_11
	.long	L15_0_set_10
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
Lcfi94:
	.cfi_def_cfa_offset 16
Lcfi95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi96:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Lcfi97:
	.cfi_offset %rbx, -56
Lcfi98:
	.cfi_offset %r12, -48
Lcfi99:
	.cfi_offset %r13, -40
Lcfi100:
	.cfi_offset %r14, -32
Lcfi101:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
Ltmp65:
	leaq	-80(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp66:
## BB#1:
	cmpb	$0, -80(%rbp)
	je	LBB16_10
## BB#2:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %r12
	movq	40(%rbx,%rax), %rdi
	movl	8(%rbx,%rax), %r13d
	movl	144(%rbx,%rax), %eax
	cmpl	$-1, %eax
	jne	LBB16_7
## BB#3:
Ltmp68:
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	leaq	-56(%rbp), %rdi
	movq	%r12, %rsi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp69:
## BB#4:
Ltmp70:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-56(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp71:
## BB#5:
	movq	(%rax), %rcx
Ltmp72:
	movl	$32, %esi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movb	%al, -41(%rbp)          ## 1-byte Spill
Ltmp73:
## BB#6:
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	-41(%rbp), %eax         ## 1-byte Folded Reload
	movl	%eax, 144(%r12)
	movq	-64(%rbp), %rdi         ## 8-byte Reload
LBB16_7:
	addq	%r15, %r14
	andl	$176, %r13d
	cmpl	$32, %r13d
	movq	%r15, %rdx
	cmoveq	%r14, %rdx
Ltmp75:
	movsbl	%al, %r9d
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r12, %r8
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp76:
## BB#8:
	testq	%rax, %rax
	jne	LBB16_10
## BB#9:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$5, %esi
Ltmp78:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp79:
LBB16_10:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB16_11:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB16_12:
Ltmp80:
	jmp	LBB16_15
LBB16_13:
Ltmp74:
	movq	%rax, %r14
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB16_16
LBB16_14:
Ltmp77:
LBB16_15:
	movq	%rax, %r14
LBB16_16:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	jmp	LBB16_18
LBB16_17:
Ltmp67:
	movq	%rax, %r14
LBB16_18:
	movq	%r14, %rdi
	callq	___cxa_begin_catch
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	addq	-24(%rax), %rdi
Ltmp81:
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp82:
## BB#19:
	callq	___cxa_end_catch
	jmp	LBB16_11
LBB16_20:
Ltmp83:
	movq	%rax, %rbx
Ltmp84:
	callq	___cxa_end_catch
Ltmp85:
## BB#21:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB16_22:
Ltmp86:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table16:
Lexception8:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\213\201"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\202\001"              ## Call site table length
Lset97 = Ltmp65-Lfunc_begin8            ## >> Call Site 1 <<
	.long	Lset97
Lset98 = Ltmp66-Ltmp65                  ##   Call between Ltmp65 and Ltmp66
	.long	Lset98
Lset99 = Ltmp67-Lfunc_begin8            ##     jumps to Ltmp67
	.long	Lset99
	.byte	1                       ##   On action: 1
Lset100 = Ltmp68-Lfunc_begin8           ## >> Call Site 2 <<
	.long	Lset100
Lset101 = Ltmp69-Ltmp68                 ##   Call between Ltmp68 and Ltmp69
	.long	Lset101
Lset102 = Ltmp77-Lfunc_begin8           ##     jumps to Ltmp77
	.long	Lset102
	.byte	1                       ##   On action: 1
Lset103 = Ltmp70-Lfunc_begin8           ## >> Call Site 3 <<
	.long	Lset103
Lset104 = Ltmp73-Ltmp70                 ##   Call between Ltmp70 and Ltmp73
	.long	Lset104
Lset105 = Ltmp74-Lfunc_begin8           ##     jumps to Ltmp74
	.long	Lset105
	.byte	1                       ##   On action: 1
Lset106 = Ltmp75-Lfunc_begin8           ## >> Call Site 4 <<
	.long	Lset106
Lset107 = Ltmp76-Ltmp75                 ##   Call between Ltmp75 and Ltmp76
	.long	Lset107
Lset108 = Ltmp77-Lfunc_begin8           ##     jumps to Ltmp77
	.long	Lset108
	.byte	1                       ##   On action: 1
Lset109 = Ltmp78-Lfunc_begin8           ## >> Call Site 5 <<
	.long	Lset109
Lset110 = Ltmp79-Ltmp78                 ##   Call between Ltmp78 and Ltmp79
	.long	Lset110
Lset111 = Ltmp80-Lfunc_begin8           ##     jumps to Ltmp80
	.long	Lset111
	.byte	1                       ##   On action: 1
Lset112 = Ltmp79-Lfunc_begin8           ## >> Call Site 6 <<
	.long	Lset112
Lset113 = Ltmp81-Ltmp79                 ##   Call between Ltmp79 and Ltmp81
	.long	Lset113
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset114 = Ltmp81-Lfunc_begin8           ## >> Call Site 7 <<
	.long	Lset114
Lset115 = Ltmp82-Ltmp81                 ##   Call between Ltmp81 and Ltmp82
	.long	Lset115
Lset116 = Ltmp83-Lfunc_begin8           ##     jumps to Ltmp83
	.long	Lset116
	.byte	0                       ##   On action: cleanup
Lset117 = Ltmp82-Lfunc_begin8           ## >> Call Site 8 <<
	.long	Lset117
Lset118 = Ltmp84-Ltmp82                 ##   Call between Ltmp82 and Ltmp84
	.long	Lset118
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset119 = Ltmp84-Lfunc_begin8           ## >> Call Site 9 <<
	.long	Lset119
Lset120 = Ltmp85-Ltmp84                 ##   Call between Ltmp84 and Ltmp85
	.long	Lset120
Lset121 = Ltmp86-Lfunc_begin8           ##     jumps to Ltmp86
	.long	Lset121
	.byte	1                       ##   On action: 1
Lset122 = Ltmp85-Lfunc_begin8           ## >> Call Site 10 <<
	.long	Lset122
Lset123 = Lfunc_end8-Ltmp85             ##   Call between Ltmp85 and Lfunc_end8
	.long	Lset123
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
Lcfi102:
	.cfi_def_cfa_offset 16
Lcfi103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi104:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Lcfi105:
	.cfi_offset %rbx, -56
Lcfi106:
	.cfi_offset %r12, -48
Lcfi107:
	.cfi_offset %r13, -40
Lcfi108:
	.cfi_offset %r14, -32
Lcfi109:
	.cfi_offset %r15, -24
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rdi, %r13
	testq	%r13, %r13
	je	LBB17_17
## BB#1:
	movl	%r9d, -44(%rbp)         ## 4-byte Spill
	movq	%r12, %rax
	subq	%rsi, %rax
	movq	24(%r14), %rcx
	xorl	%r15d, %r15d
	subq	%rax, %rcx
	cmovgq	%rcx, %r15
	movq	%rdx, -104(%rbp)        ## 8-byte Spill
	movq	%rdx, %rbx
	subq	%rsi, %rbx
	testq	%rbx, %rbx
	jle	LBB17_3
## BB#2:
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%rbx, %rdx
	callq	*96(%rax)
	cmpq	%rbx, %rax
	jne	LBB17_17
LBB17_3:
	testq	%r15, %r15
	jle	LBB17_13
## BB#4:
	movq	%r12, -88(%rbp)         ## 8-byte Spill
	movq	%r14, -96(%rbp)         ## 8-byte Spill
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movq	$0, -64(%rbp)
	cmpq	$23, %r15
	jae	LBB17_8
## BB#5:
	movl	%r15d, %eax
	addb	%al, %al
	movb	%al, -80(%rbp)
	leaq	-79(%rbp), %r14
	movq	%r14, %r12
	jmp	LBB17_9
LBB17_8:
	leaq	16(%r15), %rbx
	andq	$-16, %rbx
	movq	%rbx, %rdi
	callq	__Znwm
	movq	%rax, %r12
	movq	%r12, -64(%rbp)
	orq	$1, %rbx
	movq	%rbx, -80(%rbp)
	movq	%r15, -72(%rbp)
	leaq	-79(%rbp), %r14
LBB17_9:
	movl	-44(%rbp), %eax         ## 4-byte Reload
	movzbl	%al, %esi
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	_memset
	movb	$0, (%r12,%r15)
	testb	$1, -80(%rbp)
	cmovneq	-64(%rbp), %r14
	movq	(%r13), %rax
Ltmp87:
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	*96(%rax)
	movq	%rax, %rbx
Ltmp88:
## BB#10:
	testb	$1, -80(%rbp)
	movq	-96(%rbp), %r14         ## 8-byte Reload
	movq	-88(%rbp), %r12         ## 8-byte Reload
	je	LBB17_12
## BB#11:
	movq	-64(%rbp), %rdi
	callq	__ZdlPv
LBB17_12:
	cmpq	%r15, %rbx
	jne	LBB17_17
LBB17_13:
	movq	-104(%rbp), %rsi        ## 8-byte Reload
	subq	%rsi, %r12
	testq	%r12, %r12
	jle	LBB17_15
## BB#14:
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	*96(%rax)
	cmpq	%r12, %rax
	jne	LBB17_17
LBB17_15:
	movq	$0, 24(%r14)
	jmp	LBB17_18
LBB17_17:
	xorl	%r13d, %r13d
LBB17_18:
	movq	%r13, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB17_19:
Ltmp89:
	movq	%rax, %rbx
	testb	$1, -80(%rbp)
	je	LBB17_21
## BB#20:
	movq	-64(%rbp), %rdi
	callq	__ZdlPv
LBB17_21:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table17:
Lexception9:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset124 = Lfunc_begin9-Lfunc_begin9     ## >> Call Site 1 <<
	.long	Lset124
Lset125 = Ltmp87-Lfunc_begin9           ##   Call between Lfunc_begin9 and Ltmp87
	.long	Lset125
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset126 = Ltmp87-Lfunc_begin9           ## >> Call Site 2 <<
	.long	Lset126
Lset127 = Ltmp88-Ltmp87                 ##   Call between Ltmp87 and Ltmp88
	.long	Lset127
Lset128 = Ltmp89-Lfunc_begin9           ##     jumps to Ltmp89
	.long	Lset128
	.byte	0                       ##   On action: cleanup
Lset129 = Ltmp88-Lfunc_begin9           ## >> Call Site 3 <<
	.long	Lset129
Lset130 = Lfunc_end9-Ltmp88             ##   Call between Ltmp88 and Lfunc_end9
	.long	Lset130
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
	.asciz	"allocator<T>::allocate(size_t n) 'n' exceeds maximum supported size"


.subsections_via_symbols
