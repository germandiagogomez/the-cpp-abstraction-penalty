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
	.globl	__Z12read_numbersRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	4, 0x90
__Z12read_numbersRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE: ## @_Z12read_numbersRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
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
	subq	$296, %rsp              ## imm = 0x128
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
	movq	%rdi, %r15
	leaq	-216(%rbp), %rdi
	leaq	-320(%rbp), %r13
	movq	__ZTCNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE@GOTPCREL(%rip), %rax
	leaq	64(%rax), %rcx
	movq	%rcx, -216(%rbp)
	addq	$24, %rax
	movd	%rax, %xmm0
	movdqa	%xmm0, -336(%rbp)
Ltmp35:
	movq	%r13, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp36:
## BB#1:
	movq	$0, -80(%rbp)
	movl	$-1, -72(%rbp)
	movq	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %r14
	leaq	24(%r14), %rbx
	movq	%rbx, -336(%rbp)
	addq	$64, %r14
	movq	%r14, -216(%rbp)
Ltmp38:
	movq	%r13, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp39:
## BB#2:
	movq	%rbx, -56(%rbp)         ## 8-byte Spill
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %r12
	addq	$16, %r12
	movq	%r12, -320(%rbp)
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, -240(%rbp)
	movdqa	%xmm0, -256(%rbp)
	movl	$8, -224(%rbp)
Ltmp41:
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE
Ltmp42:
## BB#3:
	movl	$0, -44(%rbp)
	xorl	%ebx, %ebx
	leaq	-336(%rbp), %r15
	leaq	-44(%rbp), %r13
	jmp	LBB5_4
	.p2align	4, 0x90
LBB5_6:                                 ##   in Loop: Header=BB5_4 Depth=1
	incl	%ebx
LBB5_4:                                 ## =>This Inner Loop Header: Depth=1
Ltmp44:
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi
Ltmp45:
## BB#5:                                ##   in Loop: Header=BB5_4 Depth=1
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	je	LBB5_6
## BB#16:
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -336(%rbp)
	movq	%r14, -216(%rbp)
	movq	%r12, -320(%rbp)
	testb	$1, -256(%rbp)
	je	LBB5_18
## BB#17:
	movq	-240(%rbp), %rdi
	callq	__ZdlPv
LBB5_18:
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
Ltmp43:
	movq	%rax, %r15
	testb	$1, -256(%rbp)
	jne	LBB5_9
	jmp	LBB5_10
LBB5_12:
Ltmp40:
	movq	%rax, %r15
	jmp	LBB5_13
LBB5_11:
Ltmp37:
	movq	%rax, %r15
	jmp	LBB5_14
LBB5_15:
Ltmp46:
	movq	%rax, %r15
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -336(%rbp)
	movq	%r14, -216(%rbp)
	movq	%r12, -320(%rbp)
	testb	$1, -256(%rbp)
	je	LBB5_10
LBB5_9:
	movq	-240(%rbp), %rdi
	callq	__ZdlPv
LBB5_10:
	leaq	-320(%rbp), %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
LBB5_13:
	movq	__ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	-336(%rbp), %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
LBB5_14:
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
Lset56 = Ltmp35-Lfunc_begin5            ## >> Call Site 1 <<
	.long	Lset56
Lset57 = Ltmp36-Ltmp35                  ##   Call between Ltmp35 and Ltmp36
	.long	Lset57
Lset58 = Ltmp37-Lfunc_begin5            ##     jumps to Ltmp37
	.long	Lset58
	.byte	0                       ##   On action: cleanup
Lset59 = Ltmp38-Lfunc_begin5            ## >> Call Site 2 <<
	.long	Lset59
Lset60 = Ltmp39-Ltmp38                  ##   Call between Ltmp38 and Ltmp39
	.long	Lset60
Lset61 = Ltmp40-Lfunc_begin5            ##     jumps to Ltmp40
	.long	Lset61
	.byte	0                       ##   On action: cleanup
Lset62 = Ltmp41-Lfunc_begin5            ## >> Call Site 3 <<
	.long	Lset62
Lset63 = Ltmp42-Ltmp41                  ##   Call between Ltmp41 and Ltmp42
	.long	Lset63
Lset64 = Ltmp43-Lfunc_begin5            ##     jumps to Ltmp43
	.long	Lset64
	.byte	0                       ##   On action: cleanup
Lset65 = Ltmp44-Lfunc_begin5            ## >> Call Site 4 <<
	.long	Lset65
Lset66 = Ltmp45-Ltmp44                  ##   Call between Ltmp44 and Ltmp45
	.long	Lset66
Lset67 = Ltmp46-Lfunc_begin5            ##     jumps to Ltmp46
	.long	Lset67
	.byte	0                       ##   On action: cleanup
Lset68 = Ltmp45-Lfunc_begin5            ## >> Call Site 5 <<
	.long	Lset68
Lset69 = Lfunc_end5-Ltmp45              ##   Call between Ltmp45 and Lfunc_end5
	.long	Lset69
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
Lcfi42:
	.cfi_def_cfa_offset 16
Lcfi43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi44:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Lcfi45:
	.cfi_offset %rbx, -40
Lcfi46:
	.cfi_offset %r14, -32
Lcfi47:
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
	testb	$1, 80(%rbx)
	je	LBB6_2
## BB#1:
	movq	96(%rbx), %rdi
	callq	__ZdlPv
LBB6_2:
	movq	%r15, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev ## TAILCALL
	.cfi_endproc

	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
## BB#0:
	pushq	%rbp
Lcfi48:
	.cfi_def_cfa_offset 16
Lcfi49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi50:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Lcfi51:
	.cfi_offset %rbx, -56
Lcfi52:
	.cfi_offset %r12, -48
Lcfi53:
	.cfi_offset %r13, -40
Lcfi54:
	.cfi_offset %r14, -32
Lcfi55:
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
	jae	LBB7_51
## BB#1:
	cmpq	$23, %r13
	jae	LBB7_2
## BB#3:
	movl	%r13d, %eax
	addb	%al, %al
	movb	%al, -64(%rbp)
	leaq	-63(%rbp), %r12
	testq	%r13, %r13
	jne	LBB7_4
	jmp	LBB7_5
LBB7_2:
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
LBB7_4:
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	_memcpy
LBB7_5:
	movb	$0, (%r12,%r13)
Ltmp47:
	leaq	-64(%rbp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	movl	%eax, %r14d
Ltmp48:
## BB#6:
	testb	$1, -64(%rbp)
	je	LBB7_8
## BB#7:
	movq	-48(%rbp), %rdi
	callq	__ZdlPv
LBB7_8:
	movq	16(%r15), %r15
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
	movq	%r15, %rdi
	callq	_strlen
	movq	%rax, %r13
	cmpq	$-16, %r13
	jae	LBB7_51
## BB#9:
	cmpq	$23, %r13
	jae	LBB7_10
## BB#11:
	movl	%r13d, %eax
	addb	%al, %al
	movb	%al, -64(%rbp)
	leaq	-63(%rbp), %r12
	testq	%r13, %r13
	jne	LBB7_12
	jmp	LBB7_13
LBB7_10:
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
LBB7_12:
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	_memcpy
LBB7_13:
	movb	$0, (%r12,%r13)
Ltmp50:
	leaq	-64(%rbp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	movl	%eax, %r15d
Ltmp51:
## BB#14:
	testb	$1, -64(%rbp)
	je	LBB7_16
## BB#15:
	movq	-48(%rbp), %rdi
	callq	__ZdlPv
LBB7_16:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
	movslq	%r14d, %rsi
Ltmp53:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE7reserveEm
Ltmp54:
## BB#17:
	testl	%r14d, %r14d
	jle	LBB7_18
## BB#30:
	xorl	%r13d, %r13d
	leaq	-96(%rbp), %rbx
	.p2align	4, 0x90
LBB7_31:                                ## =>This Inner Loop Header: Depth=1
Ltmp55:
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	__ZN10benchmarks4util20generate_ints_stringEi
Ltmp56:
## BB#32:                               ##   in Loop: Header=BB7_31 Depth=1
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movq	%rax, %r12
Ltmp58:
	movq	%rbx, %rdi
	callq	__Z12read_numbersRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
Ltmp59:
## BB#33:                               ##   in Loop: Header=BB7_31 Depth=1
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
	je	LBB7_35
## BB#34:                               ##   in Loop: Header=BB7_31 Depth=1
	movq	%rdx, (%rax)
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	testb	$1, -96(%rbp)
	jne	LBB7_37
	jmp	LBB7_38
	.p2align	4, 0x90
LBB7_35:                                ##   in Loop: Header=BB7_31 Depth=1
Ltmp61:
	leaq	-64(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	callq	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE21__push_back_slow_pathIRKS5_EEvOT_
Ltmp62:
## BB#36:                               ##   in Loop: Header=BB7_31 Depth=1
	testb	$1, -96(%rbp)
	je	LBB7_38
LBB7_37:                                ##   in Loop: Header=BB7_31 Depth=1
	movq	-80(%rbp), %rdi
	callq	__ZdlPv
LBB7_38:                                ##   in Loop: Header=BB7_31 Depth=1
	incl	%r13d
	cmpl	%r14d, %r13d
	jl	LBB7_31
LBB7_18:
	leaq	-56(%rbp), %rbx
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
Ltmp64:
	leaq	-72(%rbp), %rdx
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
Ltmp65:
## BB#19:
	movq	(%rbx), %rax
	movq	-64(%rbp), %rcx
	subq	%rcx, %rax
	sarq	%rax
	andq	$-8, %rax
	movq	(%rcx,%rax), %rsi
Ltmp66:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp67:
## BB#20:
	movb	$32, -96(%rbp)
Ltmp68:
	leaq	-96(%rbp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp69:
## BB#21:
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB7_25
## BB#22:
	movq	-56(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB7_24
## BB#23:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
LBB7_24:
	callq	__ZdlPv
LBB7_25:
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB7_51:
	leaq	-64(%rbp), %rdi
	callq	__ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
LBB7_29:
Ltmp52:
	jmp	LBB7_27
LBB7_26:
Ltmp49:
LBB7_27:
	movq	%rax, %rbx
	testb	$1, -64(%rbp)
	je	LBB7_50
## BB#28:
	movq	-48(%rbp), %rdi
	jmp	LBB7_49
LBB7_44:
Ltmp70:
	jmp	LBB7_45
LBB7_41:
Ltmp63:
	jmp	LBB7_42
LBB7_40:
Ltmp60:
LBB7_42:
	movq	%rax, %rbx
	testb	$1, -96(%rbp)
	je	LBB7_46
## BB#43:
	movq	-80(%rbp), %rdi
	callq	__ZdlPv
	jmp	LBB7_46
LBB7_39:
Ltmp57:
LBB7_45:
	movq	%rax, %rbx
LBB7_46:
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB7_50
## BB#47:
	movq	-56(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB7_49
## BB#48:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
LBB7_49:
	callq	__ZdlPv
LBB7_50:
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
Lset70 = Lfunc_begin6-Lfunc_begin6      ## >> Call Site 1 <<
	.long	Lset70
Lset71 = Ltmp47-Lfunc_begin6            ##   Call between Lfunc_begin6 and Ltmp47
	.long	Lset71
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset72 = Ltmp47-Lfunc_begin6            ## >> Call Site 2 <<
	.long	Lset72
Lset73 = Ltmp48-Ltmp47                  ##   Call between Ltmp47 and Ltmp48
	.long	Lset73
Lset74 = Ltmp49-Lfunc_begin6            ##     jumps to Ltmp49
	.long	Lset74
	.byte	0                       ##   On action: cleanup
Lset75 = Ltmp48-Lfunc_begin6            ## >> Call Site 3 <<
	.long	Lset75
Lset76 = Ltmp50-Ltmp48                  ##   Call between Ltmp48 and Ltmp50
	.long	Lset76
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset77 = Ltmp50-Lfunc_begin6            ## >> Call Site 4 <<
	.long	Lset77
Lset78 = Ltmp51-Ltmp50                  ##   Call between Ltmp50 and Ltmp51
	.long	Lset78
Lset79 = Ltmp52-Lfunc_begin6            ##     jumps to Ltmp52
	.long	Lset79
	.byte	0                       ##   On action: cleanup
Lset80 = Ltmp53-Lfunc_begin6            ## >> Call Site 5 <<
	.long	Lset80
Lset81 = Ltmp54-Ltmp53                  ##   Call between Ltmp53 and Ltmp54
	.long	Lset81
Lset82 = Ltmp70-Lfunc_begin6            ##     jumps to Ltmp70
	.long	Lset82
	.byte	0                       ##   On action: cleanup
Lset83 = Ltmp55-Lfunc_begin6            ## >> Call Site 6 <<
	.long	Lset83
Lset84 = Ltmp56-Ltmp55                  ##   Call between Ltmp55 and Ltmp56
	.long	Lset84
Lset85 = Ltmp57-Lfunc_begin6            ##     jumps to Ltmp57
	.long	Lset85
	.byte	0                       ##   On action: cleanup
Lset86 = Ltmp58-Lfunc_begin6            ## >> Call Site 7 <<
	.long	Lset86
Lset87 = Ltmp59-Ltmp58                  ##   Call between Ltmp58 and Ltmp59
	.long	Lset87
Lset88 = Ltmp60-Lfunc_begin6            ##     jumps to Ltmp60
	.long	Lset88
	.byte	0                       ##   On action: cleanup
Lset89 = Ltmp61-Lfunc_begin6            ## >> Call Site 8 <<
	.long	Lset89
Lset90 = Ltmp62-Ltmp61                  ##   Call between Ltmp61 and Ltmp62
	.long	Lset90
Lset91 = Ltmp63-Lfunc_begin6            ##     jumps to Ltmp63
	.long	Lset91
	.byte	0                       ##   On action: cleanup
Lset92 = Ltmp64-Lfunc_begin6            ## >> Call Site 9 <<
	.long	Lset92
Lset93 = Ltmp69-Ltmp64                  ##   Call between Ltmp64 and Ltmp69
	.long	Lset93
Lset94 = Ltmp70-Lfunc_begin6            ##     jumps to Ltmp70
	.long	Lset94
	.byte	0                       ##   On action: cleanup
Lset95 = Ltmp69-Lfunc_begin6            ## >> Call Site 10 <<
	.long	Lset95
Lset96 = Lfunc_end6-Ltmp69              ##   Call between Ltmp69 and Lfunc_end6
	.long	Lset96
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE7reserveEm
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE7reserveEm
	.p2align	4, 0x90
__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE7reserveEm: ## @_ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE7reserveEm
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
## BB#0:
	pushq	%rbp
Lcfi56:
	.cfi_def_cfa_offset 16
Lcfi57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi58:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Lcfi59:
	.cfi_offset %rbx, -56
Lcfi60:
	.cfi_offset %r12, -48
Lcfi61:
	.cfi_offset %r13, -40
Lcfi62:
	.cfi_offset %r14, -32
Lcfi63:
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	(%rbx), %r14
	movq	16(%rbx), %rax
	subq	%r14, %rax
	sarq	$3, %rax
	cmpq	%r15, %rax
	jae	LBB8_8
## BB#1:
	movq	%r15, %rax
	shrq	$61, %rax
	jne	LBB8_2
## BB#5:
	movq	8(%rbx), %r12
	subq	%r14, %r12
	leaq	(,%r15,8), %rdi
	callq	__Znwm
	movq	%rax, %r13
	leaq	(%r13,%r15,8), %rax
	leaq	(%r13,%r12), %r15
	testq	%r12, %r12
	jle	LBB8_7
## BB#6:
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%rax, %r12
	callq	_memcpy
	movq	%r12, %rax
LBB8_7:
	movq	%r13, (%rbx)
	movq	%r15, 8(%rbx)
	movq	%rax, 16(%rbx)
	testq	%r14, %r14
	je	LBB8_8
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
LBB8_8:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB8_2:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp71:
	leaq	L_.str.1(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp72:
## BB#3:
	movq	__ZTVSt12length_error@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	__ZTISt12length_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt12length_errorD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB8_4:
Ltmp73:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	__Unwind_Resume
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table8:
Lexception7:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset97 = Lfunc_begin7-Lfunc_begin7      ## >> Call Site 1 <<
	.long	Lset97
Lset98 = Ltmp71-Lfunc_begin7            ##   Call between Lfunc_begin7 and Ltmp71
	.long	Lset98
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset99 = Ltmp71-Lfunc_begin7            ## >> Call Site 2 <<
	.long	Lset99
Lset100 = Ltmp72-Ltmp71                 ##   Call between Ltmp71 and Ltmp72
	.long	Lset100
Lset101 = Ltmp73-Lfunc_begin7           ##     jumps to Ltmp73
	.long	Lset101
	.byte	0                       ##   On action: cleanup
Lset102 = Ltmp72-Lfunc_begin7           ## >> Call Site 3 <<
	.long	Lset102
Lset103 = Lfunc_end7-Ltmp72             ##   Call between Ltmp72 and Lfunc_end7
	.long	Lset103
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
Lcfi64:
	.cfi_def_cfa_offset 16
Lcfi65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi66:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Lcfi67:
	.cfi_offset %rbx, -40
Lcfi68:
	.cfi_offset %r14, -32
Lcfi69:
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
	testb	$1, 80(%rdi,%rax)
	je	LBB10_2
## BB#1:
	movq	96(%r15), %rdi
	callq	__ZdlPv
LBB10_2:
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
Lcfi70:
	.cfi_def_cfa_offset 16
Lcfi71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi72:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Lcfi73:
	.cfi_offset %rbx, -40
Lcfi74:
	.cfi_offset %r14, -32
Lcfi75:
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
	testb	$1, 80(%rbx)
	je	LBB11_2
## BB#1:
	movq	96(%rbx), %rdi
	callq	__ZdlPv
LBB11_2:
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
Lcfi76:
	.cfi_def_cfa_offset 16
Lcfi77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi78:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Lcfi79:
	.cfi_offset %rbx, -40
Lcfi80:
	.cfi_offset %r14, -32
Lcfi81:
	.cfi_offset %r15, -24
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	leaq	(%rdi,%rax), %rbx
	movq	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rcx
	leaq	24(%rcx), %rdx
	movq	%rdx, (%rdi,%rax)
	leaq	120(%rdi,%rax), %r14
	addq	$64, %rcx
	movq	%rcx, 120(%rdi,%rax)
	leaq	16(%rdi,%rax), %r15
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, 16(%rdi,%rax)
	testb	$1, 80(%rdi,%rax)
	je	LBB12_2
## BB#1:
	movq	96(%rbx), %rdi
	callq	__ZdlPv
LBB12_2:
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

	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi82:
	.cfi_def_cfa_offset 16
Lcfi83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi84:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Lcfi85:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	testb	$1, 64(%rbx)
	je	LBB13_2
## BB#1:
	movq	80(%rbx), %rdi
	callq	__ZdlPv
LBB13_2:
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
Lcfi86:
	.cfi_def_cfa_offset 16
Lcfi87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi88:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Lcfi89:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	testb	$1, 64(%rbx)
	je	LBB14_2
## BB#1:
	movq	80(%rbx), %rdi
	callq	__ZdlPv
LBB14_2:
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
Lcfi90:
	.cfi_def_cfa_offset 16
Lcfi91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi92:
	.cfi_def_cfa_register %rbp
	movq	48(%rsi), %r10
	movq	88(%rsi), %r9
	cmpq	%r10, %r9
	jae	LBB15_2
## BB#1:
	movq	%r10, 88(%rsi)
	movq	%r10, %r9
LBB15_2:
	movl	%r8d, %eax
	andl	$24, %eax
	je	LBB15_3
## BB#4:
	cmpl	$1, %ecx
	jne	LBB15_6
## BB#5:
	cmpl	$24, %eax
	je	LBB15_3
LBB15_6:
	testl	%ecx, %ecx
	je	LBB15_7
## BB#8:
	cmpl	$2, %ecx
	je	LBB15_12
## BB#9:
	cmpl	$1, %ecx
	jne	LBB15_3
## BB#10:
	testb	$8, %r8b
	jne	LBB15_11
## BB#15:
	movq	%r10, %rcx
	subq	40(%rsi), %rcx
	addq	%rdx, %rcx
	jns	LBB15_17
	jmp	LBB15_3
LBB15_7:
	xorl	%ecx, %ecx
	addq	%rdx, %rcx
	jns	LBB15_17
	jmp	LBB15_3
LBB15_12:
	testb	$1, 64(%rsi)
	jne	LBB15_13
## BB#14:
	leaq	64(%rsi), %rax
	incq	%rax
	movq	%r9, %rcx
	subq	%rax, %rcx
	addq	%rdx, %rcx
	jns	LBB15_17
	jmp	LBB15_3
LBB15_11:
	movq	24(%rsi), %rcx
	subq	16(%rsi), %rcx
	addq	%rdx, %rcx
	jns	LBB15_17
	jmp	LBB15_3
LBB15_13:
	movq	%r9, %rcx
	subq	80(%rsi), %rcx
	addq	%rdx, %rcx
	js	LBB15_3
LBB15_17:
	testb	$1, 64(%rsi)
	jne	LBB15_18
## BB#19:
	leaq	64(%rsi), %rdx
	incq	%rdx
	jmp	LBB15_20
LBB15_18:
	movq	80(%rsi), %rdx
LBB15_20:
	movq	%r9, %rax
	subq	%rdx, %rax
	cmpq	%rcx, %rax
	jge	LBB15_21
LBB15_3:
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
LBB15_31:
	movq	%rdi, %rax
	popq	%rbp
	retq
LBB15_21:
	testq	%rcx, %rcx
	je	LBB15_26
## BB#22:
	testb	$8, %r8b
	je	LBB15_24
## BB#23:
	cmpq	$0, 24(%rsi)
	je	LBB15_3
LBB15_24:
	testb	$16, %r8b
	je	LBB15_26
## BB#25:
	testq	%r10, %r10
	je	LBB15_3
LBB15_26:
	testb	$8, %r8b
	je	LBB15_28
## BB#27:
	movq	16(%rsi), %rax
	addq	%rcx, %rax
	movq	%rax, 24(%rsi)
	movq	%r9, 32(%rsi)
LBB15_28:
	testb	$16, %r8b
	je	LBB15_30
## BB#29:
	movslq	%ecx, %rax
	addq	40(%rsi), %rax
	movq	%rax, 48(%rsi)
LBB15_30:
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
	jmp	LBB15_31
	.cfi_endproc

	.private_extern	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi93:
	.cfi_def_cfa_offset 16
Lcfi94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi95:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Lcfi96:
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
Lcfi97:
	.cfi_def_cfa_offset 16
Lcfi98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi99:
	.cfi_def_cfa_register %rbp
	movq	48(%rdi), %rax
	movq	88(%rdi), %rcx
	cmpq	%rax, %rcx
	jae	LBB17_2
## BB#1:
	movq	%rax, 88(%rdi)
	movq	%rax, %rcx
LBB17_2:
	movl	$-1, %eax
	testb	$8, 96(%rdi)
	je	LBB17_7
## BB#3:
	movq	32(%rdi), %rdx
	cmpq	%rcx, %rdx
	jae	LBB17_5
## BB#4:
	movq	%rcx, 32(%rdi)
	movq	%rcx, %rdx
LBB17_5:
	movq	24(%rdi), %rcx
	cmpq	%rdx, %rcx
	jae	LBB17_7
## BB#6:
	movzbl	(%rcx), %eax
LBB17_7:
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
Lcfi100:
	.cfi_def_cfa_offset 16
Lcfi101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi102:
	.cfi_def_cfa_register %rbp
	movq	48(%rdi), %rax
	movq	88(%rdi), %rcx
	cmpq	%rax, %rcx
	jae	LBB18_2
## BB#1:
	movq	%rax, 88(%rdi)
	movq	%rax, %rcx
LBB18_2:
	movq	24(%rdi), %rdx
	movl	$-1, %eax
	cmpq	%rdx, 16(%rdi)
	jae	LBB18_8
## BB#3:
	cmpl	$-1, %esi
	je	LBB18_4
## BB#5:
	testb	$16, 96(%rdi)
	jne	LBB18_7
## BB#6:
	cmpb	-1(%rdx), %sil
	jne	LBB18_8
LBB18_7:
	decq	%rdx
	movq	%rdx, 24(%rdi)
	movq	%rcx, 32(%rdi)
	movb	%sil, (%rdx)
	movl	%esi, %eax
LBB18_8:
	popq	%rbp
	retq
LBB18_4:
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
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
## BB#0:
	pushq	%rbp
Lcfi103:
	.cfi_def_cfa_offset 16
Lcfi104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi105:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Lcfi106:
	.cfi_offset %rbx, -56
Lcfi107:
	.cfi_offset %r12, -48
Lcfi108:
	.cfi_offset %r13, -40
Lcfi109:
	.cfi_offset %r14, -32
Lcfi110:
	.cfi_offset %r15, -24
	movl	%esi, %r14d
	movq	%rdi, %rbx
	cmpl	$-1, %r14d
	je	LBB19_1
## BB#2:
	movq	24(%rbx), %r15
	movq	48(%rbx), %r13
	subq	16(%rbx), %r15
	movq	56(%rbx), %rax
	cmpq	%rax, %r13
	je	LBB19_4
## BB#3:
	leaq	88(%rbx), %rcx
	movq	88(%rbx), %rdi
	leaq	96(%rbx), %rdx
	jmp	LBB19_14
LBB19_1:
	xorl	%r12d, %r12d
	jmp	LBB19_21
LBB19_4:
	movl	$-1, %r12d
	testb	$16, 96(%rbx)
	je	LBB19_21
## BB#5:
	movq	40(%rbx), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	movq	88(%rbx), %rax
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	leaq	64(%rbx), %rdi
Ltmp74:
	xorl	%esi, %esi
	movq	%rdi, -48(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp75:
## BB#6:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	testb	$1, (%rax)
	movq	%rax, %rdi
	jne	LBB19_8
## BB#7:
	movl	$22, %esi
	jmp	LBB19_9
LBB19_8:
	movq	(%rdi), %rsi
	andq	$-2, %rsi
	decq	%rsi
LBB19_9:
Ltmp76:
	xorl	%edx, %edx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc
Ltmp77:
## BB#10:
	movq	-56(%rbp), %rax         ## 8-byte Reload
	subq	%rax, %r13
	leaq	88(%rbx), %rcx
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	subq	%rax, %rdi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	movzbl	(%rdx), %eax
	testb	$1, %al
	movq	%rdx, %rsi
	jne	LBB19_11
## BB#12:
	incq	%rsi
	shrq	%rax
	jmp	LBB19_13
LBB19_11:
	movq	72(%rbx), %rax
	movq	80(%rbx), %rsi
LBB19_13:
	leaq	96(%rbx), %rdx
	addq	%rsi, %rax
	movq	%rsi, 40(%rbx)
	movq	%rax, 56(%rbx)
	movslq	%r13d, %r13
	addq	%rsi, %r13
	movq	%r13, 48(%rbx)
	addq	%rsi, %rdi
	movq	%rdi, 88(%rbx)
LBB19_14:
	leaq	1(%r13), %rsi
	movq	%rsi, -72(%rbp)
	cmpq	%rdi, %rsi
	leaq	-72(%rbp), %rdi
	cmovbq	%rcx, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, (%rcx)
	testb	$8, (%rdx)
	je	LBB19_19
## BB#15:
	testb	$1, 64(%rbx)
	jne	LBB19_16
## BB#17:
	leaq	64(%rbx), %rcx
	incq	%rcx
	jmp	LBB19_18
LBB19_16:
	movq	80(%rbx), %rcx
LBB19_18:
	addq	%rcx, %r15
	movq	%rcx, 16(%rbx)
	movq	%r15, 24(%rbx)
	movq	%rdi, 32(%rbx)
LBB19_19:
	cmpq	%rax, %r13
	je	LBB19_23
## BB#20:
	movq	%rsi, 48(%rbx)
	movb	%r14b, (%r13)
	movzbl	%r14b, %r12d
LBB19_21:
	movl	%r12d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB19_23:
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
LBB19_22:
Ltmp78:
	movq	%rax, %rdi
	callq	___cxa_begin_catch
	callq	___cxa_end_catch
	jmp	LBB19_21
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table19:
Lexception8:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\242\200\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	26                      ## Call site table length
Lset104 = Ltmp74-Lfunc_begin8           ## >> Call Site 1 <<
	.long	Lset104
Lset105 = Ltmp77-Ltmp74                 ##   Call between Ltmp74 and Ltmp77
	.long	Lset105
Lset106 = Ltmp78-Lfunc_begin8           ##     jumps to Ltmp78
	.long	Lset106
	.byte	1                       ##   On action: 1
Lset107 = Ltmp77-Lfunc_begin8           ## >> Call Site 2 <<
	.long	Lset107
Lset108 = Lfunc_end8-Ltmp77             ##   Call between Ltmp77 and Lfunc_end8
	.long	Lset108
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
Lcfi111:
	.cfi_def_cfa_offset 16
Lcfi112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi113:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
Lcfi114:
	.cfi_offset %rbx, -40
Lcfi115:
	.cfi_offset %r14, -32
Lcfi116:
	.cfi_offset %r15, -24
	movq	%rdx, %r8
	movl	(%r8), %eax
	movl	4(%r8), %r11d
	subl	%eax, %r11d
	je	LBB20_6
## BB#1:
	incl	%r11d
	je	LBB20_2
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
LBB20_4:                                ## =>This Inner Loop Header: Depth=1
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
	jae	LBB20_4
## BB#5:
	addl	(%r8), %eax
	jmp	LBB20_6
LBB20_2:
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
LBB20_6:
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
Lcfi117:
	.cfi_def_cfa_offset 16
Lcfi118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi119:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Lcfi120:
	.cfi_offset %rbx, -40
Lcfi121:
	.cfi_offset %r14, -32
Lcfi122:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	leaq	64(%rbx), %r14
	movq	%r14, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
	movq	$0, 88(%rbx)
	movl	96(%rbx), %eax
	testb	$8, %al
	je	LBB21_5
## BB#1:
	movzbl	(%r14), %ecx
	testb	$1, %cl
	jne	LBB21_2
## BB#3:
	shrq	%rcx
	leaq	1(%r14,%rcx), %rcx
	leaq	1(%r14), %rdx
	jmp	LBB21_4
LBB21_2:
	movq	80(%rbx), %rdx
	movq	72(%rbx), %rcx
	addq	%rdx, %rcx
LBB21_4:
	movq	%rcx, 88(%rbx)
	movq	%rdx, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	%rcx, 32(%rbx)
LBB21_5:
	testb	$16, %al
	je	LBB21_14
## BB#6:
	movzbl	(%r14), %r15d
	testb	$1, %r15b
	jne	LBB21_8
## BB#7:
	shrq	%r15
	leaq	1(%r14,%r15), %rax
	movq	%rax, 88(%rbx)
	movl	$22, %esi
	jmp	LBB21_9
LBB21_8:
	movq	72(%rbx), %r15
	movq	80(%rbx), %rax
	addq	%r15, %rax
	movq	%rax, 88(%rbx)
	movq	64(%rbx), %rsi
	andq	$-2, %rsi
	decq	%rsi
LBB21_9:
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc
	movzbl	(%r14), %eax
	testb	$1, %al
	jne	LBB21_10
## BB#11:
	incq	%r14
	shrq	%rax
	jmp	LBB21_12
LBB21_10:
	movq	72(%rbx), %rax
	movq	80(%rbx), %r14
LBB21_12:
	movq	%r14, %rcx
	addq	%rax, %r14
	movq	%rcx, 48(%rbx)
	movq	%rcx, 40(%rbx)
	movq	%r14, 56(%rbx)
	testb	$3, 96(%rbx)
	je	LBB21_14
## BB#13:
	movslq	%r15d, %rax
	addq	%rax, %rcx
	movq	%rcx, 48(%rbx)
LBB21_14:
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
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
## BB#0:
	pushq	%rbp
Lcfi123:
	.cfi_def_cfa_offset 16
Lcfi124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi125:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Lcfi126:
	.cfi_offset %rbx, -56
Lcfi127:
	.cfi_offset %r12, -48
Lcfi128:
	.cfi_offset %r13, -40
Lcfi129:
	.cfi_offset %r14, -32
Lcfi130:
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
	jne	LBB22_15
## BB#1:
	movabsq	$2305843009213693951, %rcx ## imm = 0x1FFFFFFFFFFFFFFF
	movq	16(%r13), %r14
	subq	%rsi, %r14
	movq	%r14, %rdx
	sarq	$3, %rdx
	movabsq	$1152921504606846974, %rdi ## imm = 0xFFFFFFFFFFFFFFE
	cmpq	%rdi, %rdx
	ja	LBB22_2
## BB#8:
	sarq	$2, %r14
	cmpq	%rax, %r14
	cmovbq	%rax, %r14
	testq	%r14, %r14
	je	LBB22_9
## BB#10:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	cmpq	%rcx, %r14
	jbe	LBB22_3
## BB#11:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp79:
	leaq	L_.str.1(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp80:
## BB#12:
	movq	__ZTVSt12length_error@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	__ZTISt12length_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt12length_errorD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB22_2:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	movq	%rcx, %r14
LBB22_3:
	leaq	(,%r14,8), %rdi
	callq	__Znwm
	movq	%rax, %rbx
	movq	-56(%rbp), %rsi         ## 8-byte Reload
	movq	-48(%rbp), %r8          ## 8-byte Reload
LBB22_4:
	leaq	(%rbx,%r14,8), %r14
	movq	(%r8), %rax
	movq	%rax, (%rbx,%r15,8)
	leaq	8(%rbx,%r15,8), %r15
	testq	%r12, %r12
	jle	LBB22_6
## BB#5:
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%rsi, %r12
	callq	_memcpy
	movq	%r12, %rsi
LBB22_6:
	movq	%rbx, (%r13)
	movq	%r15, 8(%r13)
	movq	%r14, 16(%r13)
	testq	%rsi, %rsi
	je	LBB22_14
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
LBB22_14:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB22_9:
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	jmp	LBB22_4
LBB22_15:
	movq	%r13, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
LBB22_13:
Ltmp81:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	__Unwind_Resume
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table22:
Lexception9:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset109 = Lfunc_begin9-Lfunc_begin9     ## >> Call Site 1 <<
	.long	Lset109
Lset110 = Ltmp79-Lfunc_begin9           ##   Call between Lfunc_begin9 and Ltmp79
	.long	Lset110
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset111 = Ltmp79-Lfunc_begin9           ## >> Call Site 2 <<
	.long	Lset111
Lset112 = Ltmp80-Ltmp79                 ##   Call between Ltmp79 and Ltmp80
	.long	Lset112
Lset113 = Ltmp81-Lfunc_begin9           ##     jumps to Ltmp81
	.long	Lset113
	.byte	0                       ##   On action: cleanup
Lset114 = Ltmp80-Lfunc_begin9           ## >> Call Site 3 <<
	.long	Lset114
Lset115 = Lfunc_end9-Ltmp80             ##   Call between Ltmp80 and Lfunc_end9
	.long	Lset115
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
Lcfi131:
	.cfi_def_cfa_offset 16
Lcfi132:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi133:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Lcfi134:
	.cfi_offset %rbx, -56
Lcfi135:
	.cfi_offset %r12, -48
Lcfi136:
	.cfi_offset %r13, -40
Lcfi137:
	.cfi_offset %r14, -32
Lcfi138:
	.cfi_offset %r15, -24
	movq	%rdx, -48(%rbp)         ## 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %r13
	jmp	LBB23_2
LBB23_1:                                ##   in Loop: Header=BB23_2 Depth=1
	leaq	8(%r15), %rdi
	movq	%r14, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	movq	%r15, %r14
	.p2align	4, 0x90
LBB23_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB23_4 Depth 2
                                        ##       Child Loop BB23_32 Depth 3
                                        ##         Child Loop BB23_6 Depth 4
                                        ##         Child Loop BB23_14 Depth 4
                                        ##         Child Loop BB23_27 Depth 4
                                        ##           Child Loop BB23_28 Depth 5
                                        ##           Child Loop BB23_30 Depth 5
                                        ##       Child Loop BB23_41 Depth 3
                                        ##         Child Loop BB23_42 Depth 4
                                        ##         Child Loop BB23_44 Depth 4
	leaq	-8(%r14), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	leaq	-16(%r14), %rax
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	movq	%r13, %rbx
	jmp	LBB23_4
	.p2align	4, 0x90
LBB23_3:                                ##   in Loop: Header=BB23_4 Depth=2
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	addq	$8, %r15
	movq	%r15, %rbx
LBB23_4:                                ##   Parent Loop BB23_2 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB23_32 Depth 3
                                        ##         Child Loop BB23_6 Depth 4
                                        ##         Child Loop BB23_14 Depth 4
                                        ##         Child Loop BB23_27 Depth 4
                                        ##           Child Loop BB23_28 Depth 5
                                        ##           Child Loop BB23_30 Depth 5
                                        ##       Child Loop BB23_41 Depth 3
                                        ##         Child Loop BB23_42 Depth 4
                                        ##         Child Loop BB23_44 Depth 4
	movq	%rbx, %r13
	jmp	LBB23_32
	.p2align	4, 0x90
LBB23_5:                                ##   in Loop: Header=BB23_32 Depth=3
	movq	-64(%rbp), %rdx         ## 8-byte Reload
	.p2align	4, 0x90
LBB23_6:                                ##   Parent Loop BB23_2 Depth=1
                                        ##     Parent Loop BB23_4 Depth=2
                                        ##       Parent Loop BB23_32 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	cmpq	%rdx, %r13
	je	LBB23_11
## BB#7:                                ##   in Loop: Header=BB23_6 Depth=4
	movq	(%rdx), %rbx
	addq	$-8, %rdx
	cmpq	%rdi, %rbx
	jge	LBB23_6
	jmp	LBB23_38
	.p2align	4, 0x90
LBB23_8:                                ##   in Loop: Header=BB23_32 Depth=3
	movq	(%r12), %rcx
	movq	(%r13), %rax
	cmpq	%rax, %rcx
	movq	(%r15), %rdx
	jge	LBB23_16
## BB#9:                                ##   in Loop: Header=BB23_32 Depth=3
	cmpq	%rcx, %rdx
	jge	LBB23_19
## BB#10:                               ##   in Loop: Header=BB23_32 Depth=3
	movq	%rdx, (%r13)
	movq	%rax, (%r15)
	movl	$1, %eax
	jmp	LBB23_36
	.p2align	4, 0x90
LBB23_11:                               ##   in Loop: Header=BB23_32 Depth=3
	leaq	8(%r13), %rax
	movq	(%r15), %rdx
	cmpq	%rdx, %rsi
	jl	LBB23_25
## BB#12:                               ##   in Loop: Header=BB23_32 Depth=3
	cmpq	%r15, %rax
	je	LBB23_104
## BB#13:                               ##   in Loop: Header=BB23_32 Depth=3
	addq	$16, %r13
	movq	%r13, %rax
	.p2align	4, 0x90
LBB23_14:                               ##   Parent Loop BB23_2 Depth=1
                                        ##     Parent Loop BB23_4 Depth=2
                                        ##       Parent Loop BB23_32 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	-8(%rax), %rdi
	cmpq	%rdi, %rsi
	jl	LBB23_24
## BB#15:                               ##   in Loop: Header=BB23_14 Depth=4
	addq	$8, %rax
	cmpq	%rax, %r14
	jne	LBB23_14
	jmp	LBB23_104
	.p2align	4, 0x90
LBB23_16:                               ##   in Loop: Header=BB23_32 Depth=3
	cmpq	%rcx, %rdx
	jge	LBB23_22
## BB#17:                               ##   in Loop: Header=BB23_32 Depth=3
	movq	%rdx, (%r12)
	movq	%rcx, (%r15)
	movq	(%r12), %rax
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB23_23
## BB#18:                               ##   in Loop: Header=BB23_32 Depth=3
	movq	%rax, (%r13)
	movq	%rcx, (%r12)
	jmp	LBB23_21
LBB23_19:                               ##   in Loop: Header=BB23_32 Depth=3
	movq	%rcx, (%r13)
	movq	%rax, (%r12)
	movq	(%r15), %rcx
	cmpq	%rax, %rcx
	jge	LBB23_23
## BB#20:                               ##   in Loop: Header=BB23_32 Depth=3
	movq	%rcx, (%r12)
	movq	%rax, (%r15)
LBB23_21:                               ##   in Loop: Header=BB23_32 Depth=3
	movl	$2, %eax
	jmp	LBB23_36
LBB23_22:                               ##   in Loop: Header=BB23_32 Depth=3
	xorl	%eax, %eax
	jmp	LBB23_36
LBB23_23:                               ##   in Loop: Header=BB23_32 Depth=3
	movl	$1, %eax
	jmp	LBB23_36
LBB23_24:                               ##   in Loop: Header=BB23_32 Depth=3
	movq	%rdx, -8(%rax)
	movq	%rdi, (%r15)
LBB23_25:                               ##   in Loop: Header=BB23_32 Depth=3
	cmpq	%r15, %rax
	jne	LBB23_27
	jmp	LBB23_104
	.p2align	4, 0x90
LBB23_26:                               ##   in Loop: Header=BB23_27 Depth=4
	movq	%rbx, -8(%rax)
	movq	%rsi, (%r15)
LBB23_27:                               ##   Parent Loop BB23_2 Depth=1
                                        ##     Parent Loop BB23_4 Depth=2
                                        ##       Parent Loop BB23_32 Depth=3
                                        ## =>      This Loop Header: Depth=4
                                        ##           Child Loop BB23_28 Depth 5
                                        ##           Child Loop BB23_30 Depth 5
	movq	(%rcx), %rdi
	.p2align	4, 0x90
LBB23_28:                               ##   Parent Loop BB23_2 Depth=1
                                        ##     Parent Loop BB23_4 Depth=2
                                        ##       Parent Loop BB23_32 Depth=3
                                        ##         Parent Loop BB23_27 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movq	(%rax), %rsi
	addq	$8, %rax
	cmpq	%rsi, %rdi
	jge	LBB23_28
## BB#29:                               ##   in Loop: Header=BB23_27 Depth=4
	leaq	-8(%rax), %r13
	.p2align	4, 0x90
LBB23_30:                               ##   Parent Loop BB23_2 Depth=1
                                        ##     Parent Loop BB23_4 Depth=2
                                        ##       Parent Loop BB23_32 Depth=3
                                        ##         Parent Loop BB23_27 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movq	-8(%r15), %rbx
	addq	$-8, %r15
	cmpq	%rbx, %rdi
	jl	LBB23_30
## BB#31:                               ##   in Loop: Header=BB23_27 Depth=4
	cmpq	%r15, %r13
	jb	LBB23_26
LBB23_32:                               ##   Parent Loop BB23_2 Depth=1
                                        ##     Parent Loop BB23_4 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB23_6 Depth 4
                                        ##         Child Loop BB23_14 Depth 4
                                        ##         Child Loop BB23_27 Depth 4
                                        ##           Child Loop BB23_28 Depth 5
                                        ##           Child Loop BB23_30 Depth 5
	movq	%r14, %rcx
	subq	%r13, %rcx
	movq	%rcx, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	jbe	LBB23_55
## BB#33:                               ##   in Loop: Header=BB23_32 Depth=3
	cmpq	$247, %rcx
	movq	-56(%rbp), %r15         ## 8-byte Reload
	jle	LBB23_58
## BB#34:                               ##   in Loop: Header=BB23_32 Depth=3
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rax, %rdx
	movabsq	$4611686018427387902, %rsi ## imm = 0x3FFFFFFFFFFFFFFE
	andq	%rsi, %rdx
	cmpq	$7993, %rcx             ## imm = 0x1F39
	leaq	(%r13,%rdx,4), %r12
	jl	LBB23_8
## BB#35:                               ##   in Loop: Header=BB23_32 Depth=3
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
LBB23_36:                               ##   in Loop: Header=BB23_32 Depth=3
	movq	%r13, %rcx
	movq	(%rcx), %rsi
	movq	(%r12), %rdi
	cmpq	%rdi, %rsi
	jge	LBB23_5
## BB#37:                               ##   in Loop: Header=BB23_4 Depth=2
	movq	%r15, %rdx
	jmp	LBB23_39
	.p2align	4, 0x90
LBB23_38:                               ##   in Loop: Header=BB23_4 Depth=2
	movq	%rbx, (%rcx)
	movq	%rsi, 8(%rdx)
	addq	$8, %rdx
	incl	%eax
LBB23_39:                               ##   in Loop: Header=BB23_4 Depth=2
	leaq	8(%r13), %r15
	cmpq	%rdx, %r15
	jb	LBB23_41
	jmp	LBB23_47
	.p2align	4, 0x90
LBB23_40:                               ##   in Loop: Header=BB23_41 Depth=3
	movq	%rbx, (%rcx)
	movq	%rdi, (%rdx)
	incl	%eax
	cmpq	%rcx, %r12
	cmoveq	%rdx, %r12
LBB23_41:                               ##   Parent Loop BB23_2 Depth=1
                                        ##     Parent Loop BB23_4 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB23_42 Depth 4
                                        ##         Child Loop BB23_44 Depth 4
	movq	(%r12), %rsi
	addq	$-8, %r15
	movq	%r15, %rcx
	.p2align	4, 0x90
LBB23_42:                               ##   Parent Loop BB23_2 Depth=1
                                        ##     Parent Loop BB23_4 Depth=2
                                        ##       Parent Loop BB23_41 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	8(%rcx), %rdi
	addq	$8, %rcx
	cmpq	%rsi, %rdi
	jl	LBB23_42
## BB#43:                               ##   in Loop: Header=BB23_41 Depth=3
	leaq	8(%rcx), %r15
	.p2align	4, 0x90
LBB23_44:                               ##   Parent Loop BB23_2 Depth=1
                                        ##     Parent Loop BB23_4 Depth=2
                                        ##       Parent Loop BB23_41 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	-8(%rdx), %rbx
	addq	$-8, %rdx
	cmpq	%rsi, %rbx
	jge	LBB23_44
## BB#45:                               ##   in Loop: Header=BB23_41 Depth=3
	cmpq	%rdx, %rcx
	jbe	LBB23_40
## BB#46:                               ##   in Loop: Header=BB23_4 Depth=2
	movq	%rcx, %r15
LBB23_47:                               ##   in Loop: Header=BB23_4 Depth=2
	cmpq	%r12, %r15
	je	LBB23_50
## BB#48:                               ##   in Loop: Header=BB23_4 Depth=2
	movq	(%r12), %rcx
	movq	(%r15), %rdx
	cmpq	%rdx, %rcx
	jge	LBB23_50
## BB#49:                               ##   in Loop: Header=BB23_4 Depth=2
	movq	%rcx, (%r15)
	movq	%rdx, (%r12)
	incl	%eax
LBB23_50:                               ##   in Loop: Header=BB23_4 Depth=2
	testl	%eax, %eax
	jne	LBB23_53
## BB#51:                               ##   in Loop: Header=BB23_4 Depth=2
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
	jne	LBB23_54
## BB#52:                               ##   in Loop: Header=BB23_4 Depth=2
	testb	%r12b, %r12b
	jne	LBB23_4
LBB23_53:                               ##   in Loop: Header=BB23_4 Depth=2
	movq	%r15, %rax
	subq	%r13, %rax
	movq	%r14, %rcx
	subq	%r15, %rcx
	cmpq	%rcx, %rax
	jl	LBB23_3
	jmp	LBB23_1
LBB23_54:                               ##   in Loop: Header=BB23_2 Depth=1
	testb	%r12b, %r12b
	movq	%r15, %r14
	je	LBB23_2
	jmp	LBB23_104
LBB23_55:
	leaq	LJTI23_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	movq	-56(%rbp), %r8          ## 8-byte Reload
	jmpq	*%rax
LBB23_56:
	movq	-8(%r14), %rax
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB23_104
## BB#57:
	movq	%rax, (%r13)
	movq	%rcx, -8(%r14)
	jmp	LBB23_104
LBB23_58:
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rcx, %rax
	movq	16(%r13), %rdx
	jge	LBB23_61
## BB#59:
	cmpq	%rax, %rdx
	jge	LBB23_64
## BB#60:
	movq	%rdx, (%r13)
	jmp	LBB23_66
LBB23_61:
	cmpq	%rax, %rdx
	jge	LBB23_75
## BB#62:
	movq	%rdx, 8(%r13)
	movq	%rax, 16(%r13)
	cmpq	%rcx, %rdx
	jge	LBB23_76
## BB#63:
	movq	%rdx, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB23_76
LBB23_64:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	cmpq	%rcx, %rdx
	jge	LBB23_75
## BB#65:
	movq	%rdx, 8(%r13)
LBB23_66:
	movq	%rcx, 16(%r13)
	movq	%rcx, %rax
	jmp	LBB23_76
LBB23_75:
	movq	%rdx, %rax
LBB23_76:
	leaq	24(%r13), %rdx
	cmpq	%r14, %rdx
	je	LBB23_104
## BB#77:
	movl	$24, %ecx
	jmp	LBB23_83
	.p2align	4, 0x90
LBB23_78:                               ##   in Loop: Header=BB23_83 Depth=1
	addq	%r13, %rdi
	jmp	LBB23_80
	.p2align	4, 0x90
LBB23_79:                               ##   in Loop: Header=BB23_83 Depth=1
	movq	%r13, %rdi
LBB23_80:                               ##   in Loop: Header=BB23_83 Depth=1
	movq	%rsi, (%rdi)
LBB23_81:                               ##   in Loop: Header=BB23_83 Depth=1
	leaq	8(%rdx), %rsi
	cmpq	%r14, %rsi
	je	LBB23_104
## BB#82:                               ##   in Loop: Header=BB23_83 Depth=1
	movq	(%rdx), %rax
	addq	$8, %rcx
	movq	%rsi, %rdx
LBB23_83:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB23_85 Depth 2
	movq	(%rdx), %rsi
	cmpq	%rax, %rsi
	jge	LBB23_81
## BB#84:                               ##   in Loop: Header=BB23_83 Depth=1
	movq	%rcx, %rdi
	.p2align	4, 0x90
LBB23_85:                               ##   Parent Loop BB23_83 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, (%r13,%rdi)
	cmpq	$8, %rdi
	je	LBB23_79
## BB#86:                               ##   in Loop: Header=BB23_85 Depth=2
	movq	-16(%r13,%rdi), %rax
	addq	$-8, %rdi
	cmpq	%rax, %rsi
	jl	LBB23_85
	jmp	LBB23_78
LBB23_68:
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rax, %rcx
	movq	-8(%r14), %rdx
	jge	LBB23_87
## BB#69:
	cmpq	%rcx, %rdx
	jge	LBB23_93
## BB#70:
	movq	%rdx, (%r13)
	movq	%rax, -8(%r14)
	jmp	LBB23_104
LBB23_71:
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
LBB23_72:
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rcx, %rax
	movq	16(%r13), %rdx
	jge	LBB23_90
## BB#73:
	cmpq	%rax, %rdx
	jge	LBB23_95
## BB#74:
	movq	%rdx, (%r13)
	jmp	LBB23_97
LBB23_87:
	cmpq	%rcx, %rdx
	jge	LBB23_104
## BB#88:
	movq	%rdx, 8(%r13)
	movq	%rcx, -8(%r14)
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rax, %rcx
	jge	LBB23_104
## BB#89:
	movq	%rcx, (%r13)
	movq	%rax, 8(%r13)
	jmp	LBB23_104
LBB23_90:
	cmpq	%rax, %rdx
	jge	LBB23_99
## BB#91:
	movq	%rdx, 8(%r13)
	movq	%rax, 16(%r13)
	cmpq	%rcx, %rdx
	jge	LBB23_100
## BB#92:
	movq	%rdx, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB23_100
LBB23_93:
	movq	%rcx, (%r13)
	movq	%rax, 8(%r13)
	movq	-8(%r14), %rcx
	cmpq	%rax, %rcx
	jge	LBB23_104
## BB#94:
	movq	%rcx, 8(%r13)
	movq	%rax, -8(%r14)
	jmp	LBB23_104
LBB23_95:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	cmpq	%rcx, %rdx
	jge	LBB23_99
## BB#96:
	movq	%rdx, 8(%r13)
LBB23_97:
	movq	%rcx, 16(%r13)
	movq	%rcx, %rax
	jmp	LBB23_100
LBB23_99:
	movq	%rdx, %rax
LBB23_100:
	movq	-8(%r14), %rcx
	cmpq	%rax, %rcx
	jge	LBB23_104
## BB#101:
	movq	%rcx, 16(%r13)
	movq	%rax, -8(%r14)
	movq	8(%r13), %rcx
	movq	16(%r13), %rax
	cmpq	%rcx, %rax
	jge	LBB23_104
## BB#102:
	movq	%rax, 8(%r13)
	movq	%rcx, 16(%r13)
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB23_104
## BB#103:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
LBB23_104:
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
L23_0_set_104 = LBB23_104-LJTI23_0
L23_0_set_56 = LBB23_56-LJTI23_0
L23_0_set_68 = LBB23_68-LJTI23_0
L23_0_set_72 = LBB23_72-LJTI23_0
L23_0_set_71 = LBB23_71-LJTI23_0
LJTI23_0:
	.long	L23_0_set_104
	.long	L23_0_set_104
	.long	L23_0_set_56
	.long	L23_0_set_68
	.long	L23_0_set_72
	.long	L23_0_set_71
	.end_data_region

	.globl	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.weak_def_can_be_hidden	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.p2align	4, 0x90
__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_: ## @_ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi139:
	.cfi_def_cfa_offset 16
Lcfi140:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi141:
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %r9
	movq	(%rdi), %r10
	cmpq	%r10, %r9
	movq	(%rdx), %r11
	jge	LBB24_1
## BB#5:
	cmpq	%r9, %r11
	jge	LBB24_7
## BB#6:
	movq	%r11, (%rdi)
	movq	%r10, (%rdx)
	movl	$1, %eax
	jmp	LBB24_9
LBB24_1:
	xorl	%eax, %eax
	cmpq	%r9, %r11
	jge	LBB24_2
## BB#3:
	movq	%r11, (%rsi)
	movq	%r9, (%rdx)
	movq	(%rsi), %r10
	movq	(%rdi), %r11
	movl	$1, %eax
	cmpq	%r11, %r10
	jge	LBB24_10
## BB#4:
	movq	%r10, (%rdi)
	movq	%r11, (%rsi)
	movq	(%rdx), %r9
	movl	$2, %eax
	jmp	LBB24_10
LBB24_7:
	movq	%r9, (%rdi)
	movq	%r10, (%rsi)
	movq	(%rdx), %r9
	movl	$1, %eax
	cmpq	%r10, %r9
	jge	LBB24_10
## BB#8:
	movq	%r9, (%rsi)
	movq	%r10, (%rdx)
	movl	$2, %eax
LBB24_9:
	movq	%r10, %r9
	jmp	LBB24_10
LBB24_2:
	movq	%r11, %r9
LBB24_10:
	movq	(%rcx), %r10
	cmpq	%r9, %r10
	jge	LBB24_16
## BB#11:
	movq	%r10, (%rdx)
	movq	%r9, (%rcx)
	movq	(%rdx), %r9
	movq	(%rsi), %r10
	cmpq	%r10, %r9
	jge	LBB24_12
## BB#13:
	movq	%r9, (%rsi)
	movq	%r10, (%rdx)
	movq	(%rsi), %r9
	movq	(%rdi), %r10
	cmpq	%r10, %r9
	jge	LBB24_14
## BB#15:
	movq	%r9, (%rdi)
	movq	%r10, (%rsi)
	addl	$3, %eax
	jmp	LBB24_16
LBB24_12:
	incl	%eax
	jmp	LBB24_16
LBB24_14:
	addl	$2, %eax
LBB24_16:
	movq	(%r8), %r9
	movq	(%rcx), %r10
	cmpq	%r10, %r9
	jge	LBB24_24
## BB#17:
	movq	%r9, (%rcx)
	movq	%r10, (%r8)
	movq	(%rcx), %r8
	movq	(%rdx), %r9
	cmpq	%r9, %r8
	jge	LBB24_18
## BB#19:
	movq	%r8, (%rdx)
	movq	%r9, (%rcx)
	movq	(%rdx), %rcx
	movq	(%rsi), %r8
	cmpq	%r8, %rcx
	jge	LBB24_20
## BB#21:
	movq	%rcx, (%rsi)
	movq	%r8, (%rdx)
	movq	(%rsi), %rcx
	movq	(%rdi), %rdx
	cmpq	%rdx, %rcx
	jge	LBB24_22
## BB#23:
	movq	%rcx, (%rdi)
	movq	%rdx, (%rsi)
	addl	$4, %eax
LBB24_24:
	popq	%rbp
	retq
LBB24_18:
	incl	%eax
	popq	%rbp
	retq
LBB24_20:
	addl	$2, %eax
	popq	%rbp
	retq
LBB24_22:
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
Lcfi142:
	.cfi_def_cfa_offset 16
Lcfi143:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi144:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Lcfi145:
	.cfi_offset %rbx, -24
	movq	%rdx, %r9
	movq	%rsi, %r10
	movq	%r10, %rax
	subq	%rdi, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	ja	LBB25_4
## BB#1:
	movb	$1, %bl
	leaq	LJTI25_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB25_2:
	movq	-8(%r10), %rax
	movq	(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	LBB25_51
## BB#3:
	movq	%rax, (%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB25_51
LBB25_4:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rdx
	cmpq	%rcx, %rdx
	movq	16(%rdi), %rsi
	jge	LBB25_14
## BB#5:
	cmpq	%rdx, %rsi
	jge	LBB25_23
## BB#6:
	movq	%rsi, (%rdi)
	jmp	LBB25_25
LBB25_7:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	cmpq	%rcx, %rax
	movq	-8(%r10), %rdx
	jge	LBB25_17
## BB#8:
	cmpq	%rax, %rdx
	jge	LBB25_26
## BB#9:
	movq	%rdx, (%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB25_51
LBB25_10:
	leaq	16(%rdi), %rdx
	leaq	24(%rdi), %rcx
	addq	$-8, %r10
	leaq	8(%rdi), %rsi
	movq	%r10, %r8
	callq	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	jmp	LBB25_51
LBB25_11:
	movq	(%rdi), %rdx
	movq	8(%rdi), %rcx
	cmpq	%rdx, %rcx
	movq	16(%rdi), %rsi
	jge	LBB25_20
## BB#12:
	cmpq	%rcx, %rsi
	jge	LBB25_28
## BB#13:
	movq	%rsi, (%rdi)
	jmp	LBB25_30
LBB25_14:
	cmpq	%rdx, %rsi
	jge	LBB25_33
## BB#15:
	movq	%rsi, 8(%rdi)
	movq	%rdx, 16(%rdi)
	cmpq	%rcx, %rsi
	jge	LBB25_34
## BB#16:
	movq	%rsi, (%rdi)
	movq	%rcx, 8(%rdi)
	jmp	LBB25_34
LBB25_17:
	cmpq	%rax, %rdx
	jge	LBB25_51
## BB#18:
	movq	%rdx, 8(%rdi)
	movq	%rax, -8(%r10)
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	cmpq	%rax, %rcx
	jge	LBB25_51
## BB#19:
	movq	%rcx, (%rdi)
	movq	%rax, 8(%rdi)
	jmp	LBB25_51
LBB25_20:
	cmpq	%rcx, %rsi
	jge	LBB25_46
## BB#21:
	movq	%rsi, 8(%rdi)
	movq	%rcx, 16(%rdi)
	cmpq	%rdx, %rsi
	jge	LBB25_47
## BB#22:
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	jmp	LBB25_47
LBB25_23:
	movq	%rdx, (%rdi)
	movq	%rcx, 8(%rdi)
	cmpq	%rcx, %rsi
	jge	LBB25_33
## BB#24:
	movq	%rsi, 8(%rdi)
LBB25_25:
	movq	%rcx, 16(%rdi)
	movq	%rcx, %rdx
	jmp	LBB25_34
LBB25_33:
	movq	%rsi, %rdx
LBB25_34:
	leaq	24(%rdi), %rsi
	movb	$1, %r8b
	cmpq	%r10, %rsi
	je	LBB25_43
## BB#35:
	xorl	%r9d, %r9d
	jmp	LBB25_39
	.p2align	4, 0x90
LBB25_36:                               ##   in Loop: Header=BB25_39 Depth=1
	movq	%rbx, -8(%rcx)
	incl	%r9d
	leaq	8(%rsi), %rax
	cmpq	%r10, %rax
	sete	%bl
	cmpl	$8, %r9d
	je	LBB25_44
LBB25_37:                               ##   in Loop: Header=BB25_39 Depth=1
	leaq	8(%rsi), %rax
	cmpq	%r10, %rax
	je	LBB25_43
## BB#38:                               ##   in Loop: Header=BB25_39 Depth=1
	movq	(%rsi), %rdx
	movq	%rax, %rsi
LBB25_39:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB25_41 Depth 2
	movq	(%rsi), %rbx
	cmpq	%rdx, %rbx
	jge	LBB25_37
## BB#40:                               ##   in Loop: Header=BB25_39 Depth=1
	movq	%rsi, %rax
	.p2align	4, 0x90
LBB25_41:                               ##   Parent Loop BB25_39 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, %rcx
	movq	%rdx, (%rcx)
	leaq	-8(%rcx), %rax
	cmpq	%rdi, %rax
	je	LBB25_36
## BB#42:                               ##   in Loop: Header=BB25_41 Depth=2
	movq	-8(%rax), %rdx
	cmpq	%rdx, %rbx
	jl	LBB25_41
	jmp	LBB25_36
LBB25_43:
                                        ## implicit-def: %BL
	jmp	LBB25_45
LBB25_26:
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	movq	-8(%r10), %rax
	cmpq	%rcx, %rax
	jge	LBB25_51
## BB#27:
	movq	%rax, 8(%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB25_51
LBB25_28:
	movq	%rcx, (%rdi)
	movq	%rdx, 8(%rdi)
	cmpq	%rdx, %rsi
	jge	LBB25_46
## BB#29:
	movq	%rsi, 8(%rdi)
LBB25_30:
	movq	%rdx, 16(%rdi)
	movq	%rdx, %rcx
	jmp	LBB25_47
LBB25_46:
	movq	%rsi, %rcx
LBB25_47:
	movq	-8(%r10), %rax
	cmpq	%rcx, %rax
	jge	LBB25_51
## BB#48:
	movq	%rax, 16(%rdi)
	movq	%rcx, -8(%r10)
	movq	8(%rdi), %rcx
	movq	16(%rdi), %rax
	cmpq	%rcx, %rax
	jge	LBB25_51
## BB#49:
	movq	%rax, 8(%rdi)
	movq	%rcx, 16(%rdi)
	movq	(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	LBB25_51
## BB#50:
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	jmp	LBB25_51
LBB25_44:
	xorl	%r8d, %r8d
LBB25_45:
	orb	%r8b, %bl
LBB25_51:
	andb	$1, %bl
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L25_0_set_51 = LBB25_51-LJTI25_0
L25_0_set_2 = LBB25_2-LJTI25_0
L25_0_set_7 = LBB25_7-LJTI25_0
L25_0_set_11 = LBB25_11-LJTI25_0
L25_0_set_10 = LBB25_10-LJTI25_0
LJTI25_0:
	.long	L25_0_set_51
	.long	L25_0_set_51
	.long	L25_0_set_2
	.long	L25_0_set_7
	.long	L25_0_set_11
	.long	L25_0_set_10
	.end_data_region

	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	4, 0x90
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
## BB#0:
	pushq	%rbp
Lcfi146:
	.cfi_def_cfa_offset 16
Lcfi147:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi148:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Lcfi149:
	.cfi_offset %rbx, -56
Lcfi150:
	.cfi_offset %r12, -48
Lcfi151:
	.cfi_offset %r13, -40
Lcfi152:
	.cfi_offset %r14, -32
Lcfi153:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
Ltmp82:
	leaq	-80(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp83:
## BB#1:
	cmpb	$0, -80(%rbp)
	je	LBB26_10
## BB#2:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %r12
	movq	40(%rbx,%rax), %rdi
	movl	8(%rbx,%rax), %r13d
	movl	144(%rbx,%rax), %eax
	cmpl	$-1, %eax
	jne	LBB26_7
## BB#3:
Ltmp85:
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	leaq	-56(%rbp), %rdi
	movq	%r12, %rsi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp86:
## BB#4:
Ltmp87:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-56(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp88:
## BB#5:
	movq	(%rax), %rcx
Ltmp89:
	movl	$32, %esi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movb	%al, -41(%rbp)          ## 1-byte Spill
Ltmp90:
## BB#6:
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	-41(%rbp), %eax         ## 1-byte Folded Reload
	movl	%eax, 144(%r12)
	movq	-64(%rbp), %rdi         ## 8-byte Reload
LBB26_7:
	addq	%r15, %r14
	andl	$176, %r13d
	cmpl	$32, %r13d
	movq	%r15, %rdx
	cmoveq	%r14, %rdx
Ltmp92:
	movsbl	%al, %r9d
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r12, %r8
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp93:
## BB#8:
	testq	%rax, %rax
	jne	LBB26_10
## BB#9:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$5, %esi
Ltmp95:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp96:
LBB26_10:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB26_11:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB26_12:
Ltmp97:
	jmp	LBB26_15
LBB26_13:
Ltmp91:
	movq	%rax, %r14
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB26_16
LBB26_14:
Ltmp94:
LBB26_15:
	movq	%rax, %r14
LBB26_16:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	jmp	LBB26_18
LBB26_17:
Ltmp84:
	movq	%rax, %r14
LBB26_18:
	movq	%r14, %rdi
	callq	___cxa_begin_catch
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	addq	-24(%rax), %rdi
Ltmp98:
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp99:
## BB#19:
	callq	___cxa_end_catch
	jmp	LBB26_11
LBB26_20:
Ltmp100:
	movq	%rax, %rbx
Ltmp101:
	callq	___cxa_end_catch
Ltmp102:
## BB#21:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB26_22:
Ltmp103:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table26:
Lexception10:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\213\201"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\202\001"              ## Call site table length
Lset116 = Ltmp82-Lfunc_begin10          ## >> Call Site 1 <<
	.long	Lset116
Lset117 = Ltmp83-Ltmp82                 ##   Call between Ltmp82 and Ltmp83
	.long	Lset117
Lset118 = Ltmp84-Lfunc_begin10          ##     jumps to Ltmp84
	.long	Lset118
	.byte	1                       ##   On action: 1
Lset119 = Ltmp85-Lfunc_begin10          ## >> Call Site 2 <<
	.long	Lset119
Lset120 = Ltmp86-Ltmp85                 ##   Call between Ltmp85 and Ltmp86
	.long	Lset120
Lset121 = Ltmp94-Lfunc_begin10          ##     jumps to Ltmp94
	.long	Lset121
	.byte	1                       ##   On action: 1
Lset122 = Ltmp87-Lfunc_begin10          ## >> Call Site 3 <<
	.long	Lset122
Lset123 = Ltmp90-Ltmp87                 ##   Call between Ltmp87 and Ltmp90
	.long	Lset123
Lset124 = Ltmp91-Lfunc_begin10          ##     jumps to Ltmp91
	.long	Lset124
	.byte	1                       ##   On action: 1
Lset125 = Ltmp92-Lfunc_begin10          ## >> Call Site 4 <<
	.long	Lset125
Lset126 = Ltmp93-Ltmp92                 ##   Call between Ltmp92 and Ltmp93
	.long	Lset126
Lset127 = Ltmp94-Lfunc_begin10          ##     jumps to Ltmp94
	.long	Lset127
	.byte	1                       ##   On action: 1
Lset128 = Ltmp95-Lfunc_begin10          ## >> Call Site 5 <<
	.long	Lset128
Lset129 = Ltmp96-Ltmp95                 ##   Call between Ltmp95 and Ltmp96
	.long	Lset129
Lset130 = Ltmp97-Lfunc_begin10          ##     jumps to Ltmp97
	.long	Lset130
	.byte	1                       ##   On action: 1
Lset131 = Ltmp96-Lfunc_begin10          ## >> Call Site 6 <<
	.long	Lset131
Lset132 = Ltmp98-Ltmp96                 ##   Call between Ltmp96 and Ltmp98
	.long	Lset132
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset133 = Ltmp98-Lfunc_begin10          ## >> Call Site 7 <<
	.long	Lset133
Lset134 = Ltmp99-Ltmp98                 ##   Call between Ltmp98 and Ltmp99
	.long	Lset134
Lset135 = Ltmp100-Lfunc_begin10         ##     jumps to Ltmp100
	.long	Lset135
	.byte	0                       ##   On action: cleanup
Lset136 = Ltmp99-Lfunc_begin10          ## >> Call Site 8 <<
	.long	Lset136
Lset137 = Ltmp101-Ltmp99                ##   Call between Ltmp99 and Ltmp101
	.long	Lset137
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset138 = Ltmp101-Lfunc_begin10         ## >> Call Site 9 <<
	.long	Lset138
Lset139 = Ltmp102-Ltmp101               ##   Call between Ltmp101 and Ltmp102
	.long	Lset139
Lset140 = Ltmp103-Lfunc_begin10         ##     jumps to Ltmp103
	.long	Lset140
	.byte	1                       ##   On action: 1
Lset141 = Ltmp102-Lfunc_begin10         ## >> Call Site 10 <<
	.long	Lset141
Lset142 = Lfunc_end10-Ltmp102           ##   Call between Ltmp102 and Lfunc_end10
	.long	Lset142
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
Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception11
## BB#0:
	pushq	%rbp
Lcfi154:
	.cfi_def_cfa_offset 16
Lcfi155:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi156:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Lcfi157:
	.cfi_offset %rbx, -56
Lcfi158:
	.cfi_offset %r12, -48
Lcfi159:
	.cfi_offset %r13, -40
Lcfi160:
	.cfi_offset %r14, -32
Lcfi161:
	.cfi_offset %r15, -24
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rdi, %r13
	testq	%r13, %r13
	je	LBB27_17
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
	jle	LBB27_3
## BB#2:
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%rbx, %rdx
	callq	*96(%rax)
	cmpq	%rbx, %rax
	jne	LBB27_17
LBB27_3:
	testq	%r15, %r15
	jle	LBB27_13
## BB#4:
	movq	%r12, -88(%rbp)         ## 8-byte Spill
	movq	%r14, -96(%rbp)         ## 8-byte Spill
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movq	$0, -64(%rbp)
	cmpq	$23, %r15
	jae	LBB27_8
## BB#5:
	movl	%r15d, %eax
	addb	%al, %al
	movb	%al, -80(%rbp)
	leaq	-79(%rbp), %r14
	movq	%r14, %r12
	jmp	LBB27_9
LBB27_8:
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
LBB27_9:
	movl	-44(%rbp), %eax         ## 4-byte Reload
	movzbl	%al, %esi
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	_memset
	movb	$0, (%r12,%r15)
	testb	$1, -80(%rbp)
	cmovneq	-64(%rbp), %r14
	movq	(%r13), %rax
Ltmp104:
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	*96(%rax)
	movq	%rax, %rbx
Ltmp105:
## BB#10:
	testb	$1, -80(%rbp)
	movq	-96(%rbp), %r14         ## 8-byte Reload
	movq	-88(%rbp), %r12         ## 8-byte Reload
	je	LBB27_12
## BB#11:
	movq	-64(%rbp), %rdi
	callq	__ZdlPv
LBB27_12:
	cmpq	%r15, %rbx
	jne	LBB27_17
LBB27_13:
	movq	-104(%rbp), %rsi        ## 8-byte Reload
	subq	%rsi, %r12
	testq	%r12, %r12
	jle	LBB27_15
## BB#14:
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	*96(%rax)
	cmpq	%r12, %rax
	jne	LBB27_17
LBB27_15:
	movq	$0, 24(%r14)
	jmp	LBB27_18
LBB27_17:
	xorl	%r13d, %r13d
LBB27_18:
	movq	%r13, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB27_19:
Ltmp106:
	movq	%rax, %rbx
	testb	$1, -80(%rbp)
	je	LBB27_21
## BB#20:
	movq	-64(%rbp), %rdi
	callq	__ZdlPv
LBB27_21:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table27:
Lexception11:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset143 = Lfunc_begin11-Lfunc_begin11   ## >> Call Site 1 <<
	.long	Lset143
Lset144 = Ltmp104-Lfunc_begin11         ##   Call between Lfunc_begin11 and Ltmp104
	.long	Lset144
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset145 = Ltmp104-Lfunc_begin11         ## >> Call Site 2 <<
	.long	Lset145
Lset146 = Ltmp105-Ltmp104               ##   Call between Ltmp104 and Ltmp105
	.long	Lset146
Lset147 = Ltmp106-Lfunc_begin11         ##     jumps to Ltmp106
	.long	Lset147
	.byte	0                       ##   On action: cleanup
Lset148 = Ltmp105-Lfunc_begin11         ## >> Call Site 3 <<
	.long	Lset148
Lset149 = Lfunc_end11-Ltmp105           ##   Call between Ltmp105 and Lfunc_end11
	.long	Lset149
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

	.section	__TEXT,__cstring,cstring_literals
L_.str.1:                               ## @.str.1
	.asciz	"allocator<T>::allocate(size_t n) 'n' exceeds maximum supported size"


.subsections_via_symbols
