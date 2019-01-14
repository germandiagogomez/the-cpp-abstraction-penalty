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
	subq	$5304, %rsp             ## imm = 0x14B8
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
	movq	%rsi, %r14
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	8(%r14), %r15
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -2624(%rbp)
	movq	$0, -2608(%rbp)
	movq	%r15, %rdi
	callq	_strlen
	movq	%rax, %r13
	cmpq	$-16, %r13
	jae	LBB5_93
## BB#1:
	cmpq	$23, %r13
	jae	LBB5_3
## BB#2:
	movl	%r13d, %eax
	addb	%al, %al
	movb	%al, -2624(%rbp)
	leaq	-2623(%rbp), %r12
	testq	%r13, %r13
	jne	LBB5_4
	jmp	LBB5_5
LBB5_3:
	movq	%r13, %rbx
	addq	$16, %rbx
	andq	$-16, %rbx
	movq	%rbx, %rdi
	callq	__Znwm
	movq	%rax, %r12
	movq	%r12, -2608(%rbp)
	orq	$1, %rbx
	movq	%rbx, -2624(%rbp)
	movq	%r13, -2616(%rbp)
LBB5_4:
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	_memcpy
LBB5_5:
	movb	$0, (%r12,%r13)
Ltmp35:
	leaq	-2624(%rbp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	movl	%eax, -2628(%rbp)       ## 4-byte Spill
Ltmp36:
## BB#6:
	testb	$1, -2624(%rbp)
	je	LBB5_8
## BB#7:
	movq	-2608(%rbp), %rdi
	callq	__ZdlPv
LBB5_8:
	movq	16(%r14), %r14
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -2624(%rbp)
	movq	$0, -2608(%rbp)
	movq	%r14, %rdi
	callq	_strlen
	movq	%rax, %r12
	cmpq	$-16, %r12
	jae	LBB5_93
## BB#9:
	cmpq	$23, %r12
	jae	LBB5_11
## BB#10:
	movl	%r12d, %eax
	addb	%al, %al
	movb	%al, -2624(%rbp)
	leaq	-2623(%rbp), %r15
	testq	%r12, %r12
	jne	LBB5_12
	jmp	LBB5_13
LBB5_11:
	movq	%r12, %rbx
	addq	$16, %rbx
	andq	$-16, %rbx
	movq	%rbx, %rdi
	callq	__Znwm
	movq	%rax, %r15
	movq	%r15, -2608(%rbp)
	orq	$1, %rbx
	movq	%rbx, -2624(%rbp)
	movq	%r12, -2616(%rbp)
LBB5_12:
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	_memcpy
LBB5_13:
	movb	$0, (%r15,%r12)
Ltmp38:
	leaq	-2624(%rbp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	movl	%eax, %ebx
Ltmp39:
## BB#14:
	testb	$1, -2624(%rbp)
	je	LBB5_16
## BB#15:
	movq	-2608(%rbp), %rdi
	callq	__ZdlPv
LBB5_16:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -2688(%rbp)
	movq	$0, -2672(%rbp)
	movslq	-2628(%rbp), %rsi       ## 4-byte Folded Reload
Ltmp41:
	leaq	-2688(%rbp), %rdi
	callq	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE7reserveEm
Ltmp42:
## BB#17:
	leal	-1(%rbx), %edx
Ltmp44:
	leaq	-5336(%rbp), %rdi
	xorl	%esi, %esi
	callq	__ZN10benchmarks4util13int_generatorEii
Ltmp45:
## BB#18:
	cmpl	$0, -2628(%rbp)         ## 4-byte Folded Reload
	jle	LBB5_78
## BB#19:
	movslq	%ebx, %r12
	movq	%r12, %r14
	shlq	$4, %r14
	xorl	%r13d, %r13d
	xorps	%xmm0, %xmm0
	movq	__ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rax
	addq	$8, %rax
	movq	%rax, -2728(%rbp)       ## 8-byte Spill
	movq	%rbx, -2816(%rbp)       ## 8-byte Spill
	movq	%r14, -2808(%rbp)       ## 8-byte Spill
	movq	%r12, -2800(%rbp)       ## 8-byte Spill
	.p2align	4, 0x90
LBB5_20:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_30 Depth 2
	testl	%ebx, %ebx
	movaps	%xmm0, -2656(%rbp)
	movq	$0, -2640(%rbp)
	je	LBB5_25
## BB#21:                               ##   in Loop: Header=BB5_20 Depth=1
	js	LBB5_89
## BB#22:                               ##   in Loop: Header=BB5_20 Depth=1
Ltmp46:
	movq	%rbx, %r15
	movq	%r14, %rdi
	callq	__Znwm
Ltmp47:
## BB#23:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	%rax, -2656(%rbp)
	movq	%rax, %rbx
	addq	%r14, %rbx
	movq	%rbx, -2640(%rbp)
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	___bzero
	movq	%rbx, -2648(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -2720(%rbp)
	movq	$0, -2704(%rbp)
Ltmp49:
	movq	%r14, %rdi
	callq	__Znwm
Ltmp50:
## BB#24:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	%rax, -2720(%rbp)
	movq	%rax, %rbx
	addq	%r14, %rbx
	movq	%rbx, -2704(%rbp)
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	___bzero
	movq	%rbx, -2712(%rbp)
	movq	%r15, %rbx
	jmp	LBB5_26
	.p2align	4, 0x90
LBB5_25:                                ##   in Loop: Header=BB5_20 Depth=1
	movaps	%xmm0, -2720(%rbp)
	movq	$0, -2704(%rbp)
LBB5_26:                                ##   in Loop: Header=BB5_20 Depth=1
Ltmp55:
	leaq	-2792(%rbp), %rdi
	movl	%ebx, %esi
	callq	__ZN10benchmarks4util13generate_intsEj
Ltmp56:
## BB#27:                               ##   in Loop: Header=BB5_20 Depth=1
Ltmp58:
	leaq	-2768(%rbp), %rdi
	movl	%ebx, %esi
	callq	__ZN10benchmarks4util16generate_doublesEj
Ltmp59:
## BB#28:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	%r13, -2824(%rbp)       ## 8-byte Spill
	testl	%ebx, %ebx
	xorps	%xmm0, %xmm0
	je	LBB5_31
## BB#29:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-2792(%rbp), %r8
	movq	-2768(%rbp), %rcx
	movl	$8, %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB5_30:                                ##   Parent Loop BB5_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%r8,%rsi,4), %edi
	movq	(%rcx,%rsi,8), %rbx
	movq	-2656(%rbp), %rax
	movl	%edi, -8(%rax,%rdx)
	movq	%rbx, (%rax,%rdx)
	incq	%rsi
	addq	$16, %rdx
	cmpq	%r12, %rsi
	jb	LBB5_30
LBB5_31:                                ##   in Loop: Header=BB5_20 Depth=1
	movaps	%xmm0, -2624(%rbp)
	movq	$0, -2608(%rbp)
	movq	-2720(%rbp), %r13
	movq	-2712(%rbp), %r14
	subq	%r13, %r14
	movq	%r14, %rbx
	sarq	$4, %rbx
	je	LBB5_36
## BB#32:                               ##   in Loop: Header=BB5_20 Depth=1
	movabsq	$1152921504606846975, %rax ## imm = 0xFFFFFFFFFFFFFFF
	cmpq	%rax, %rbx
	ja	LBB5_91
## BB#33:                               ##   in Loop: Header=BB5_20 Depth=1
Ltmp61:
	movq	%r14, %rdi
	callq	__Znwm
	movq	%rax, %r15
Ltmp62:
## BB#34:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	%r15, -2616(%rbp)
	movq	%r15, -2624(%rbp)
	shlq	$4, %rbx
	addq	%r15, %rbx
	movq	%rbx, -2608(%rbp)
	testq	%r14, %r14
	jle	LBB5_36
## BB#35:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	_memcpy
	addq	%r14, %r15
	movq	%r15, -2616(%rbp)
LBB5_36:                                ##   in Loop: Header=BB5_20 Depth=1
	leaq	-2600(%rbp), %rax
	movq	$0, 16(%rax)
	movq	$0, 8(%rax)
	movq	$0, (%rax)
	movq	-2656(%rbp), %r13
	movq	-2648(%rbp), %r15
	subq	%r13, %r15
	movq	%r15, %rbx
	sarq	$4, %rbx
	je	LBB5_41
## BB#37:                               ##   in Loop: Header=BB5_20 Depth=1
	movabsq	$1152921504606846975, %rax ## imm = 0xFFFFFFFFFFFFFFF
	cmpq	%rax, %rbx
	ja	LBB5_87
## BB#38:                               ##   in Loop: Header=BB5_20 Depth=1
Ltmp67:
	movq	%r15, %rdi
	callq	__Znwm
	movq	%rax, %r14
Ltmp68:
## BB#39:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	%r14, -2592(%rbp)
	movq	%r14, -2600(%rbp)
	shlq	$4, %rbx
	addq	%r14, %rbx
	movq	%rbx, -2584(%rbp)
	testq	%r15, %r15
	jle	LBB5_41
## BB#40:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	_memcpy
	addq	%r15, %r14
	movq	%r14, -2592(%rbp)
LBB5_41:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	-2816(%rbp), %r14       ## 8-byte Reload
	movl	%r14d, -2576(%rbp)
	movl	$2512, %edx             ## imm = 0x9D0
	leaq	-2568(%rbp), %r15
	movq	%r15, %rdi
	leaq	-5336(%rbp), %rsi
	callq	_memcpy
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movq	%rax, %rbx
	movq	-2624(%rbp), %rdi
	movq	-2600(%rbp), %rsi
	movslq	-2576(%rbp), %rdx
	shlq	$4, %rdx
	callq	_memcpy
Ltmp73:
	movq	%r15, %rdi
	leaq	-2560(%rbp), %rsi
	movq	%r15, %rdx
	callq	__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
Ltmp74:
## BB#42:                               ##   in Loop: Header=BB5_20 Depth=1
	cltq
	movq	-2624(%rbp), %rcx
	shlq	$4, %rax
	movl	(%rcx,%rax), %r15d
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	subq	%rbx, %rax
	movabsq	$4835703278458516699, %rcx ## imm = 0x431BDE82D7B634DB
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$18, %rdx
	addq	%rax, %rdx
	movq	%rdx, -2744(%rbp)
	movq	-2600(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_46
## BB#43:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-2592(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_45
## BB#44:                               ##   in Loop: Header=BB5_20 Depth=1
	leaq	-16(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-16, %rcx
	addq	%rax, %rcx
	movq	%rcx, -2592(%rbp)
LBB5_45:                                ##   in Loop: Header=BB5_20 Depth=1
	callq	__ZdlPv
LBB5_46:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	-2624(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_50
## BB#47:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-2616(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_49
## BB#48:                               ##   in Loop: Header=BB5_20 Depth=1
	leaq	-16(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-16, %rcx
	addq	%rax, %rcx
	movq	%rcx, -2616(%rbp)
LBB5_49:                                ##   in Loop: Header=BB5_20 Depth=1
	callq	__ZdlPv
LBB5_50:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	-2680(%rbp), %rax
	cmpq	-2672(%rbp), %rax
	je	LBB5_52
## BB#51:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-2744(%rbp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	%rax, -2680(%rbp)
	jmp	LBB5_53
	.p2align	4, 0x90
LBB5_52:                                ##   in Loop: Header=BB5_20 Depth=1
Ltmp76:
	leaq	-2688(%rbp), %rdi
	leaq	-2744(%rbp), %rsi
	callq	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE21__push_back_slow_pathIRKS5_EEvOT_
Ltmp77:
LBB5_53:                                ##   in Loop: Header=BB5_20 Depth=1
	movl	%r15d, -2732(%rbp)      ## 4-byte Spill
	movq	__ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	leaq	24(%rcx), %rax
	movq	%rax, -2624(%rbp)
	leaq	64(%rcx), %rax
	movq	%rax, -2208(%rbp)
Ltmp79:
	leaq	-2208(%rbp), %rdi
	leaq	-2616(%rbp), %r13
	movq	%r13, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp80:
## BB#54:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	$0, -2072(%rbp)
	movl	$-1, -2064(%rbp)
	movq	__ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rax
	leaq	24(%rax), %rbx
	movq	%rbx, -2624(%rbp)
	leaq	64(%rax), %r15
	movq	%r15, -2208(%rbp)
Ltmp82:
	movq	%r13, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
Ltmp83:
## BB#55:                               ##   in Loop: Header=BB5_20 Depth=1
	cmpq	$0, -2496(%rbp)
	movq	-2824(%rbp), %r13       ## 8-byte Reload
	je	LBB5_57
LBB5_56:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	-2624(%rbp), %rax
	movq	-24(%rax), %rax
	leaq	-2624(%rbp,%rax), %rdi
	movl	-2592(%rbp,%rax), %esi
	orl	$4, %esi
Ltmp87:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp88:
	jmp	LBB5_60
	.p2align	4, 0x90
LBB5_57:                                ##   in Loop: Header=BB5_20 Depth=1
Ltmp85:
	leaq	L_.str.1(%rip), %rdi
	leaq	L_.str.3(%rip), %rsi
	callq	_fopen
Ltmp86:
## BB#58:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	%rax, -2496(%rbp)
	testq	%rax, %rax
	je	LBB5_56
## BB#59:                               ##   in Loop: Header=BB5_20 Depth=1
	movl	$16, -2224(%rbp)
LBB5_60:                                ##   in Loop: Header=BB5_20 Depth=1
Ltmp90:
	movq	%r13, %r12
	movq	%r14, %r13
	leaq	-2624(%rbp), %r14
	movq	%r14, %rdi
	movl	-2732(%rbp), %esi       ## 4-byte Reload
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp91:
## BB#61:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	%rbx, -2624(%rbp)
	movq	%r15, -2208(%rbp)
	leaq	-2616(%rbp), %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	movq	-2728(%rbp), %rsi       ## 8-byte Reload
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	leaq	-2208(%rbp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	-2768(%rbp), %rdi
	testq	%rdi, %rdi
	movq	-2808(%rbp), %r14       ## 8-byte Reload
	movq	%r13, %rbx
	movq	%r12, %r13
	movq	-2800(%rbp), %r12       ## 8-byte Reload
	je	LBB5_65
## BB#62:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-2760(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_64
## BB#63:                               ##   in Loop: Header=BB5_20 Depth=1
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -2760(%rbp)
LBB5_64:                                ##   in Loop: Header=BB5_20 Depth=1
	callq	__ZdlPv
LBB5_65:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	-2792(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_69
## BB#66:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-2784(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_68
## BB#67:                               ##   in Loop: Header=BB5_20 Depth=1
	leaq	-4(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-4, %rcx
	addq	%rax, %rcx
	movq	%rcx, -2784(%rbp)
LBB5_68:                                ##   in Loop: Header=BB5_20 Depth=1
	callq	__ZdlPv
LBB5_69:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	-2720(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_73
## BB#70:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-2712(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_72
## BB#71:                               ##   in Loop: Header=BB5_20 Depth=1
	leaq	-16(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-16, %rcx
	addq	%rax, %rcx
	movq	%rcx, -2712(%rbp)
LBB5_72:                                ##   in Loop: Header=BB5_20 Depth=1
	callq	__ZdlPv
LBB5_73:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	-2656(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_77
## BB#74:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-2648(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_76
## BB#75:                               ##   in Loop: Header=BB5_20 Depth=1
	leaq	-16(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-16, %rcx
	addq	%rax, %rcx
	movq	%rcx, -2648(%rbp)
LBB5_76:                                ##   in Loop: Header=BB5_20 Depth=1
	callq	__ZdlPv
LBB5_77:                                ##   in Loop: Header=BB5_20 Depth=1
	incl	%r13d
	cmpl	-2628(%rbp), %r13d      ## 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	jl	LBB5_20
LBB5_78:
	leaq	-2680(%rbp), %rbx
	movq	-2688(%rbp), %rdi
	movq	-2680(%rbp), %rsi
Ltmp93:
	leaq	-2656(%rbp), %rdx
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
Ltmp94:
## BB#79:
	movq	(%rbx), %rax
	movq	-2688(%rbp), %rcx
	subq	%rcx, %rax
	sarq	%rax
	andq	$-8, %rax
	movq	(%rcx,%rax), %rsi
Ltmp95:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp96:
## BB#80:
	movb	$32, -2624(%rbp)
Ltmp97:
	leaq	-2624(%rbp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp98:
## BB#81:
	movq	-2688(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_85
## BB#82:
	movq	-2680(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_84
## BB#83:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -2680(%rbp)
LBB5_84:
	callq	__ZdlPv
LBB5_85:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB5_94
## BB#86:
	xorl	%eax, %eax
	addq	$5304, %rsp             ## imm = 0x14B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB5_87:
Ltmp70:
	leaq	-2600(%rbp), %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp71:
## BB#88:
LBB5_89:
Ltmp52:
	leaq	-2656(%rbp), %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp53:
## BB#90:
LBB5_91:
Ltmp64:
	leaq	-2624(%rbp), %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp65:
## BB#92:
LBB5_93:
	leaq	-2624(%rbp), %rdi
	callq	__ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
LBB5_94:
	callq	___stack_chk_fail
LBB5_95:
Ltmp66:
	movq	%rax, %r14
	movq	-2624(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_131
## BB#96:
	movq	-2616(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_98
## BB#97:
	leaq	-16(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-16, %rcx
	addq	%rax, %rcx
	movq	%rcx, -2616(%rbp)
LBB5_98:
	callq	__ZdlPv
	jmp	LBB5_131
LBB5_99:
Ltmp54:
	movq	%rax, %r14
	jmp	LBB5_143
LBB5_100:
Ltmp72:
	jmp	LBB5_119
LBB5_101:
Ltmp43:
	jmp	LBB5_112
LBB5_102:
Ltmp40:
	jmp	LBB5_104
LBB5_103:
Ltmp37:
LBB5_104:
	movq	%rax, %r14
	testb	$1, -2624(%rbp)
	je	LBB5_151
## BB#105:
	movq	-2608(%rbp), %rdi
	jmp	LBB5_150
LBB5_106:
Ltmp99:
	jmp	LBB5_112
LBB5_107:
Ltmp78:
	movq	%rax, %r14
	jmp	LBB5_131
LBB5_108:
Ltmp63:
	movq	%rax, %r14
	jmp	LBB5_131
LBB5_109:
Ltmp51:
	movq	%rax, %r14
	jmp	LBB5_143
LBB5_110:
Ltmp69:
	movq	%rax, %r14
	jmp	LBB5_123
LBB5_111:
Ltmp48:
LBB5_112:
	movq	%rax, %r14
	jmp	LBB5_147
LBB5_113:
Ltmp84:
	movq	%rax, %r14
	jmp	LBB5_129
LBB5_114:
Ltmp81:
	movq	%rax, %r14
	jmp	LBB5_130
LBB5_115:
Ltmp92:
	movq	%rax, %r14
	movq	%rbx, -2624(%rbp)
	movq	%r15, -2208(%rbp)
	jmp	LBB5_128
LBB5_116:
Ltmp57:
	movq	%rax, %r14
	jmp	LBB5_139
LBB5_117:
Ltmp60:
	movq	%rax, %r14
	jmp	LBB5_135
LBB5_118:
Ltmp75:
LBB5_119:
	movq	%rax, %r14
	movq	-2600(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_123
## BB#120:
	movq	-2592(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_122
## BB#121:
	leaq	-16(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-16, %rcx
	addq	%rax, %rcx
	movq	%rcx, -2592(%rbp)
LBB5_122:
	callq	__ZdlPv
LBB5_123:
	movq	-2624(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_131
## BB#124:
	movq	-2616(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_126
## BB#125:
	leaq	-16(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-16, %rcx
	addq	%rax, %rcx
	movq	%rcx, -2616(%rbp)
LBB5_126:
	callq	__ZdlPv
	jmp	LBB5_131
LBB5_127:
Ltmp89:
	movq	%rax, %r14
LBB5_128:
	leaq	-2616(%rbp), %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
LBB5_129:
	leaq	-2624(%rbp), %rdi
	movq	-2728(%rbp), %rsi       ## 8-byte Reload
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
LBB5_130:
	leaq	-2208(%rbp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
LBB5_131:
	movq	-2768(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_135
## BB#132:
	movq	-2760(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_134
## BB#133:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -2760(%rbp)
LBB5_134:
	callq	__ZdlPv
LBB5_135:
	movq	-2792(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_139
## BB#136:
	movq	-2784(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_138
## BB#137:
	leaq	-4(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-4, %rcx
	addq	%rax, %rcx
	movq	%rcx, -2784(%rbp)
LBB5_138:
	callq	__ZdlPv
LBB5_139:
	movq	-2720(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_143
## BB#140:
	movq	-2712(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_142
## BB#141:
	leaq	-16(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-16, %rcx
	addq	%rax, %rcx
	movq	%rcx, -2712(%rbp)
LBB5_142:
	callq	__ZdlPv
LBB5_143:
	movq	-2656(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_147
## BB#144:
	movq	-2648(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_146
## BB#145:
	leaq	-16(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-16, %rcx
	addq	%rax, %rcx
	movq	%rcx, -2648(%rbp)
LBB5_146:
	callq	__ZdlPv
LBB5_147:
	movq	-2688(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_151
## BB#148:
	movq	-2680(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_150
## BB#149:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -2680(%rbp)
LBB5_150:
	callq	__ZdlPv
LBB5_151:
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
	.asciz	"\342\202\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\337\002"              ## Call site table length
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
Lset68 = Ltmp43-Lfunc_begin5            ##     jumps to Ltmp43
	.long	Lset68
	.byte	0                       ##   On action: cleanup
Lset69 = Ltmp44-Lfunc_begin5            ## >> Call Site 6 <<
	.long	Lset69
Lset70 = Ltmp45-Ltmp44                  ##   Call between Ltmp44 and Ltmp45
	.long	Lset70
Lset71 = Ltmp99-Lfunc_begin5            ##     jumps to Ltmp99
	.long	Lset71
	.byte	0                       ##   On action: cleanup
Lset72 = Ltmp46-Lfunc_begin5            ## >> Call Site 7 <<
	.long	Lset72
Lset73 = Ltmp47-Ltmp46                  ##   Call between Ltmp46 and Ltmp47
	.long	Lset73
Lset74 = Ltmp48-Lfunc_begin5            ##     jumps to Ltmp48
	.long	Lset74
	.byte	0                       ##   On action: cleanup
Lset75 = Ltmp47-Lfunc_begin5            ## >> Call Site 8 <<
	.long	Lset75
Lset76 = Ltmp49-Ltmp47                  ##   Call between Ltmp47 and Ltmp49
	.long	Lset76
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset77 = Ltmp49-Lfunc_begin5            ## >> Call Site 9 <<
	.long	Lset77
Lset78 = Ltmp50-Ltmp49                  ##   Call between Ltmp49 and Ltmp50
	.long	Lset78
Lset79 = Ltmp51-Lfunc_begin5            ##     jumps to Ltmp51
	.long	Lset79
	.byte	0                       ##   On action: cleanup
Lset80 = Ltmp50-Lfunc_begin5            ## >> Call Site 10 <<
	.long	Lset80
Lset81 = Ltmp55-Ltmp50                  ##   Call between Ltmp50 and Ltmp55
	.long	Lset81
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset82 = Ltmp55-Lfunc_begin5            ## >> Call Site 11 <<
	.long	Lset82
Lset83 = Ltmp56-Ltmp55                  ##   Call between Ltmp55 and Ltmp56
	.long	Lset83
Lset84 = Ltmp57-Lfunc_begin5            ##     jumps to Ltmp57
	.long	Lset84
	.byte	0                       ##   On action: cleanup
Lset85 = Ltmp58-Lfunc_begin5            ## >> Call Site 12 <<
	.long	Lset85
Lset86 = Ltmp59-Ltmp58                  ##   Call between Ltmp58 and Ltmp59
	.long	Lset86
Lset87 = Ltmp60-Lfunc_begin5            ##     jumps to Ltmp60
	.long	Lset87
	.byte	0                       ##   On action: cleanup
Lset88 = Ltmp61-Lfunc_begin5            ## >> Call Site 13 <<
	.long	Lset88
Lset89 = Ltmp62-Ltmp61                  ##   Call between Ltmp61 and Ltmp62
	.long	Lset89
Lset90 = Ltmp63-Lfunc_begin5            ##     jumps to Ltmp63
	.long	Lset90
	.byte	0                       ##   On action: cleanup
Lset91 = Ltmp62-Lfunc_begin5            ## >> Call Site 14 <<
	.long	Lset91
Lset92 = Ltmp67-Ltmp62                  ##   Call between Ltmp62 and Ltmp67
	.long	Lset92
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset93 = Ltmp67-Lfunc_begin5            ## >> Call Site 15 <<
	.long	Lset93
Lset94 = Ltmp68-Ltmp67                  ##   Call between Ltmp67 and Ltmp68
	.long	Lset94
Lset95 = Ltmp69-Lfunc_begin5            ##     jumps to Ltmp69
	.long	Lset95
	.byte	0                       ##   On action: cleanup
Lset96 = Ltmp68-Lfunc_begin5            ## >> Call Site 16 <<
	.long	Lset96
Lset97 = Ltmp73-Ltmp68                  ##   Call between Ltmp68 and Ltmp73
	.long	Lset97
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset98 = Ltmp73-Lfunc_begin5            ## >> Call Site 17 <<
	.long	Lset98
Lset99 = Ltmp74-Ltmp73                  ##   Call between Ltmp73 and Ltmp74
	.long	Lset99
Lset100 = Ltmp75-Lfunc_begin5           ##     jumps to Ltmp75
	.long	Lset100
	.byte	0                       ##   On action: cleanup
Lset101 = Ltmp76-Lfunc_begin5           ## >> Call Site 18 <<
	.long	Lset101
Lset102 = Ltmp77-Ltmp76                 ##   Call between Ltmp76 and Ltmp77
	.long	Lset102
Lset103 = Ltmp78-Lfunc_begin5           ##     jumps to Ltmp78
	.long	Lset103
	.byte	0                       ##   On action: cleanup
Lset104 = Ltmp79-Lfunc_begin5           ## >> Call Site 19 <<
	.long	Lset104
Lset105 = Ltmp80-Ltmp79                 ##   Call between Ltmp79 and Ltmp80
	.long	Lset105
Lset106 = Ltmp81-Lfunc_begin5           ##     jumps to Ltmp81
	.long	Lset106
	.byte	0                       ##   On action: cleanup
Lset107 = Ltmp82-Lfunc_begin5           ## >> Call Site 20 <<
	.long	Lset107
Lset108 = Ltmp83-Ltmp82                 ##   Call between Ltmp82 and Ltmp83
	.long	Lset108
Lset109 = Ltmp84-Lfunc_begin5           ##     jumps to Ltmp84
	.long	Lset109
	.byte	0                       ##   On action: cleanup
Lset110 = Ltmp87-Lfunc_begin5           ## >> Call Site 21 <<
	.long	Lset110
Lset111 = Ltmp86-Ltmp87                 ##   Call between Ltmp87 and Ltmp86
	.long	Lset111
Lset112 = Ltmp89-Lfunc_begin5           ##     jumps to Ltmp89
	.long	Lset112
	.byte	0                       ##   On action: cleanup
Lset113 = Ltmp90-Lfunc_begin5           ## >> Call Site 22 <<
	.long	Lset113
Lset114 = Ltmp91-Ltmp90                 ##   Call between Ltmp90 and Ltmp91
	.long	Lset114
Lset115 = Ltmp92-Lfunc_begin5           ##     jumps to Ltmp92
	.long	Lset115
	.byte	0                       ##   On action: cleanup
Lset116 = Ltmp93-Lfunc_begin5           ## >> Call Site 23 <<
	.long	Lset116
Lset117 = Ltmp98-Ltmp93                 ##   Call between Ltmp93 and Ltmp98
	.long	Lset117
Lset118 = Ltmp99-Lfunc_begin5           ##     jumps to Ltmp99
	.long	Lset118
	.byte	0                       ##   On action: cleanup
Lset119 = Ltmp70-Lfunc_begin5           ## >> Call Site 24 <<
	.long	Lset119
Lset120 = Ltmp71-Ltmp70                 ##   Call between Ltmp70 and Ltmp71
	.long	Lset120
Lset121 = Ltmp72-Lfunc_begin5           ##     jumps to Ltmp72
	.long	Lset121
	.byte	0                       ##   On action: cleanup
Lset122 = Ltmp52-Lfunc_begin5           ## >> Call Site 25 <<
	.long	Lset122
Lset123 = Ltmp53-Ltmp52                 ##   Call between Ltmp52 and Ltmp53
	.long	Lset123
Lset124 = Ltmp54-Lfunc_begin5           ##     jumps to Ltmp54
	.long	Lset124
	.byte	0                       ##   On action: cleanup
Lset125 = Ltmp64-Lfunc_begin5           ## >> Call Site 26 <<
	.long	Lset125
Lset126 = Ltmp65-Ltmp64                 ##   Call between Ltmp64 and Ltmp65
	.long	Lset126
Lset127 = Ltmp66-Lfunc_begin5           ##     jumps to Ltmp66
	.long	Lset127
	.byte	0                       ##   On action: cleanup
Lset128 = Ltmp65-Lfunc_begin5           ## >> Call Site 27 <<
	.long	Lset128
Lset129 = Lfunc_end5-Ltmp65             ##   Call between Ltmp65 and Lfunc_end5
	.long	Lset129
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
Ltmp100:
	leaq	L_.str.2(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp101:
## BB#3:
	movq	__ZTVSt12length_error@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	__ZTISt12length_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt12length_errorD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB6_4:
Ltmp102:
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
Lset130 = Lfunc_begin6-Lfunc_begin6     ## >> Call Site 1 <<
	.long	Lset130
Lset131 = Ltmp100-Lfunc_begin6          ##   Call between Lfunc_begin6 and Ltmp100
	.long	Lset131
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset132 = Ltmp100-Lfunc_begin6          ## >> Call Site 2 <<
	.long	Lset132
Lset133 = Ltmp101-Ltmp100               ##   Call between Ltmp100 and Ltmp101
	.long	Lset133
Lset134 = Ltmp102-Lfunc_begin6          ##     jumps to Ltmp102
	.long	Lset134
	.byte	0                       ##   On action: cleanup
Lset135 = Ltmp101-Lfunc_begin6          ## >> Call Site 3 <<
	.long	Lset135
Lset136 = Lfunc_end6-Ltmp101            ##   Call between Ltmp101 and Lfunc_end6
	.long	Lset136
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.p2align	4, 0x90
__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev: ## @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
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
	pushq	%r14
	pushq	%rbx
Lcfi53:
	.cfi_offset %rbx, -32
Lcfi54:
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

	.globl	__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	.weak_def_can_be_hidden	__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	.p2align	4, 0x90
__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE: ## @_ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi55:
	.cfi_def_cfa_offset 16
Lcfi56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi57:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
Lcfi58:
	.cfi_offset %rbx, -40
Lcfi59:
	.cfi_offset %r14, -32
Lcfi60:
	.cfi_offset %r15, -24
	movq	%rdx, %r8
	movl	(%r8), %eax
	movl	4(%r8), %r11d
	subl	%eax, %r11d
	je	LBB9_6
## BB#1:
	incl	%r11d
	je	LBB9_2
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
LBB9_4:                                 ## =>This Inner Loop Header: Depth=1
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
	jae	LBB9_4
## BB#5:
	addl	(%r8), %eax
	jmp	LBB9_6
LBB9_2:
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
LBB9_6:
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
Lcfi61:
	.cfi_def_cfa_offset 16
Lcfi62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi63:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Lcfi64:
	.cfi_offset %rbx, -32
Lcfi65:
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
Lcfi66:
	.cfi_def_cfa_offset 16
Lcfi67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi68:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Lcfi69:
	.cfi_offset %rbx, -32
Lcfi70:
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
Lcfi71:
	.cfi_def_cfa_offset 16
Lcfi72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi73:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Lcfi74:
	.cfi_offset %rbx, -32
Lcfi75:
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
Lcfi76:
	.cfi_def_cfa_offset 16
Lcfi77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi78:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev ## TAILCALL
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
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
	pushq	%rbx
	pushq	%rax
Lcfi82:
	.cfi_offset %rbx, -40
Lcfi83:
	.cfi_offset %r14, -32
Lcfi84:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movq	__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	120(%rbx), %r14
	testq	%r14, %r14
	je	LBB14_5
## BB#1:
Ltmp103:
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
Ltmp104:
## BB#2:
	movq	%r14, %rdi
	callq	_fclose
	testl	%eax, %eax
	jne	LBB14_5
## BB#3:
	movq	$0, 120(%rbx)
LBB14_5:
	cmpb	$0, 400(%rbx)
	je	LBB14_8
## BB#6:
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB14_8
## BB#7:
	callq	__ZdaPv
LBB14_8:
	cmpb	$0, 401(%rbx)
	je	LBB14_11
## BB#9:
	movq	104(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB14_11
## BB#10:
	callq	__ZdaPv
LBB14_11:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev ## TAILCALL
LBB14_4:
Ltmp105:
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	_fclose
	movq	%r15, %rdi
	callq	___cxa_begin_catch
Ltmp106:
	callq	___cxa_end_catch
Ltmp107:
	jmp	LBB14_5
LBB14_12:
Ltmp108:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	callq	___clang_call_terminate
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table14:
Lexception7:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\257\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset137 = Ltmp103-Lfunc_begin7          ## >> Call Site 1 <<
	.long	Lset137
Lset138 = Ltmp104-Ltmp103               ##   Call between Ltmp103 and Ltmp104
	.long	Lset138
Lset139 = Ltmp105-Lfunc_begin7          ##     jumps to Ltmp105
	.long	Lset139
	.byte	1                       ##   On action: 1
Lset140 = Ltmp104-Lfunc_begin7          ## >> Call Site 2 <<
	.long	Lset140
Lset141 = Ltmp106-Ltmp104               ##   Call between Ltmp104 and Ltmp106
	.long	Lset141
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset142 = Ltmp106-Lfunc_begin7          ## >> Call Site 3 <<
	.long	Lset142
Lset143 = Ltmp107-Ltmp106               ##   Call between Ltmp106 and Ltmp107
	.long	Lset143
Lset144 = Ltmp108-Lfunc_begin7          ##     jumps to Ltmp108
	.long	Lset144
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
Lcfi85:
	.cfi_def_cfa_offset 16
Lcfi86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi87:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Lcfi88:
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
Lcfi89:
	.cfi_def_cfa_offset 16
Lcfi90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi91:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Lcfi92:
	.cfi_offset %rbx, -32
Lcfi93:
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
	je	LBB16_10
## BB#1:
	movq	$0, 56(%rbx)
	movq	$0, 48(%rbx)
	movq	$0, 40(%rbx)
	movq	$0, 32(%rbx)
	movq	$0, 24(%rbx)
	movq	$0, 16(%rbx)
	movb	400(%rbx), %cl
	testb	%al, %al
	je	LBB16_6
## BB#2:
	testb	%cl, %cl
	je	LBB16_5
## BB#3:
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB16_5
## BB#4:
	callq	__ZdaPv
LBB16_5:
	movb	401(%rbx), %al
	movb	%al, 400(%rbx)
	movq	112(%rbx), %rax
	movq	%rax, 96(%rbx)
	movq	104(%rbx), %rax
	movq	%rax, 64(%rbx)
	movb	$0, 401(%rbx)
	movq	$0, 112(%rbx)
	movq	$0, 104(%rbx)
	jmp	LBB16_10
LBB16_6:
	testb	%cl, %cl
	je	LBB16_7
LBB16_9:
	movq	96(%rbx), %rdi
	movq	%rdi, 112(%rbx)
	callq	__Znam
	movq	%rax, 104(%rbx)
	movb	$1, 401(%rbx)
	jmp	LBB16_10
LBB16_7:
	movq	64(%rbx), %rax
	leaq	88(%rbx), %rcx
	cmpq	%rcx, %rax
	je	LBB16_9
## BB#8:
	movq	96(%rbx), %rdi
	movq	%rdi, 112(%rbx)
	movq	%rax, 104(%rbx)
	movb	$0, 401(%rbx)
	callq	__Znam
	movq	%rax, 64(%rbx)
	movb	$1, 400(%rbx)
LBB16_10:
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
Lcfi94:
	.cfi_def_cfa_offset 16
Lcfi95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi96:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Lcfi97:
	.cfi_offset %rbx, -48
Lcfi98:
	.cfi_offset %r12, -40
Lcfi99:
	.cfi_offset %r14, -32
Lcfi100:
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
	cmpb	$0, 400(%rbx)
	je	LBB17_3
## BB#1:
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB17_3
## BB#2:
	callq	__ZdaPv
LBB17_3:
	cmpb	$0, 401(%rbx)
	je	LBB17_6
## BB#4:
	movq	104(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB17_6
## BB#5:
	callq	__ZdaPv
LBB17_6:
	movq	%r15, 96(%rbx)
	cmpq	$9, %r15
	jb	LBB17_12
## BB#7:
	movb	402(%rbx), %r12b
	testq	%r14, %r14
	je	LBB17_11
## BB#8:
	testb	%r12b, %r12b
	je	LBB17_11
## BB#9:
	movq	%r14, 64(%rbx)
	movb	$0, 400(%rbx)
	jmp	LBB17_10
LBB17_12:
	leaq	88(%rbx), %rax
	movq	%rax, 64(%rbx)
	movq	$8, 96(%rbx)
	movb	$0, 400(%rbx)
	movb	402(%rbx), %r12b
	testb	%r12b, %r12b
	jne	LBB17_10
	jmp	LBB17_14
LBB17_11:
	movq	%r15, %rdi
	callq	__Znam
	movq	%rax, 64(%rbx)
	movb	$1, 400(%rbx)
	testb	%r12b, %r12b
	je	LBB17_14
LBB17_10:
	movb	$0, 401(%rbx)
	movq	$0, 112(%rbx)
	movq	$0, 104(%rbx)
LBB17_18:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB17_14:
	cmpq	$7, %r15
	movl	$8, %edi
	cmovgq	%r15, %rdi
	movq	%rdi, 112(%rbx)
	testq	%r14, %r14
	je	LBB17_17
## BB#15:
	cmpq	$8, %rdi
	jb	LBB17_17
## BB#16:
	movq	%r14, 104(%rbx)
	movb	$0, 401(%rbx)
	jmp	LBB17_18
LBB17_17:
	callq	__Znam
	movq	%rax, 104(%rbx)
	movb	$1, 401(%rbx)
	jmp	LBB17_18
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi101:
	.cfi_def_cfa_offset 16
Lcfi102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi103:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Lcfi104:
	.cfi_offset %rbx, -56
Lcfi105:
	.cfi_offset %r12, -48
Lcfi106:
	.cfi_offset %r13, -40
Lcfi107:
	.cfi_offset %r14, -32
Lcfi108:
	.cfi_offset %r15, -24
	movl	%ecx, %r15d
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	128(%r14), %rdi
	testq	%rdi, %rdi
	je	LBB18_10
## BB#1:
	movq	(%rdi), %rax
	callq	*48(%rax)
	movl	%eax, %r13d
	cmpq	$0, 120(%r14)
	je	LBB18_5
## BB#2:
	testq	%r12, %r12
	je	LBB18_4
## BB#3:
	testl	%r13d, %r13d
	jle	LBB18_5
LBB18_4:
	movq	(%r14), %rax
	movq	%r14, %rdi
	callq	*48(%rax)
	testl	%eax, %eax
	jne	LBB18_5
## BB#6:
	cmpl	$3, %r15d
	jae	LBB18_5
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
	je	LBB18_8
LBB18_5:
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
LBB18_9:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB18_8:
	movq	120(%r14), %rdi
	callq	_ftello
	addq	$136, %r14
	movl	$16, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	rep;movsq
	movq	%rax, 128(%rbx)
	jmp	LBB18_9
LBB18_10:
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
Lcfi109:
	.cfi_def_cfa_offset 16
Lcfi110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi111:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Lcfi112:
	.cfi_offset %rbx, -40
Lcfi113:
	.cfi_offset %r14, -32
Lcfi114:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpq	$0, 120(%r14)
	je	LBB19_2
## BB#1:
	movq	(%r14), %rax
	movq	%r14, %rdi
	callq	*48(%rax)
	testl	%eax, %eax
	jne	LBB19_2
## BB#3:
	leaq	16(%rbp), %r15
	movq	120(%r14), %rdi
	movq	128(%r15), %rsi
	xorl	%edx, %edx
	callq	_fseeko
	testl	%eax, %eax
	je	LBB19_4
LBB19_2:
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
LBB19_5:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB19_4:
	addq	$136, %r14
	movl	$16, %ecx
	movq	%r14, %rdi
	movq	%r15, %rsi
	rep;movsq
	movl	$136, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_memcpy
	jmp	LBB19_5
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi115:
	.cfi_def_cfa_offset 16
Lcfi116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi117:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
Lcfi118:
	.cfi_offset %rbx, -56
Lcfi119:
	.cfi_offset %r12, -48
Lcfi120:
	.cfi_offset %r13, -40
Lcfi121:
	.cfi_offset %r14, -32
Lcfi122:
	.cfi_offset %r15, -24
	movq	%rdi, %r15
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	xorl	%r13d, %r13d
	cmpq	$0, 120(%r15)
	je	LBB20_24
## BB#1:
	movq	128(%r15), %rax
	testq	%rax, %rax
	je	LBB20_27
## BB#2:
	movl	396(%r15), %ecx
	testb	$16, %cl
	jne	LBB20_6
## BB#3:
	testb	$8, %cl
	je	LBB20_23
## BB#4:
	leaq	264(%r15), %rsi
	leaq	-176(%rbp), %rdi
	movl	$16, %ecx
	rep;movsq
	cmpb	$0, 402(%r15)
	je	LBB20_13
## BB#5:
	movq	32(%r15), %r14
	subq	24(%r15), %r14
	jmp	LBB20_17
LBB20_6:
	movq	48(%r15), %rax
	cmpq	40(%r15), %rax
	je	LBB20_8
## BB#7:
	movq	(%r15), %rax
	movl	$-1, %r13d
	movl	$-1, %esi
	movq	%r15, %rdi
	callq	*104(%rax)
	cmpl	$-1, %eax
	je	LBB20_24
LBB20_8:
	leaq	136(%r15), %r14
	movl	$-1, %r13d
	.p2align	4, 0x90
LBB20_9:                                ## =>This Inner Loop Header: Depth=1
	movq	64(%r15), %rdx
	movq	128(%r15), %rdi
	movq	96(%r15), %rcx
	addq	%rdx, %rcx
	movq	(%rdi), %rax
	movq	%r14, %rsi
	leaq	-176(%rbp), %r8
	callq	*40(%rax)
	movl	%eax, %r12d
	movq	-176(%rbp), %rbx
	movq	64(%r15), %rdi
	movq	120(%r15), %rcx
	subq	%rdi, %rbx
	movl	$1, %esi
	movq	%rbx, %rdx
	callq	_fwrite
	cmpq	%rbx, %rax
	jne	LBB20_24
## BB#10:                               ##   in Loop: Header=BB20_9 Depth=1
	cmpl	$1, %r12d
	je	LBB20_9
## BB#11:
	cmpl	$2, %r12d
	je	LBB20_24
## BB#12:
	movq	120(%r15), %rdi
	callq	_fflush
	testl	%eax, %eax
	jne	LBB20_24
	jmp	LBB20_23
LBB20_13:
	movq	(%rax), %rcx
	movq	%rax, %rdi
	callq	*48(%rcx)
	movq	72(%r15), %rcx
	movq	80(%r15), %r14
	subq	%rcx, %r14
	testl	%eax, %eax
	jle	LBB20_15
## BB#14:
	cltq
	movq	32(%r15), %rcx
	subq	24(%r15), %rcx
	imulq	%rax, %rcx
	addq	%rcx, %r14
LBB20_17:
	xorl	%ebx, %ebx
LBB20_18:
	movq	120(%r15), %rdi
	negq	%r14
	movl	$1, %edx
	movq	%r14, %rsi
	callq	_fseeko
	testl	%eax, %eax
	je	LBB20_20
## BB#19:
	movl	$-1, %r13d
	jmp	LBB20_24
LBB20_20:
	testb	%bl, %bl
	je	LBB20_22
## BB#21:
	leaq	136(%r15), %rdi
	leaq	-176(%rbp), %rsi
	movl	$16, %ecx
	rep;movsq
LBB20_22:
	movq	64(%r15), %rax
	movq	%rax, 80(%r15)
	movq	%rax, 72(%r15)
	movl	$0, 396(%r15)
	movq	$0, 32(%r15)
	movq	$0, 24(%r15)
	movq	$0, 16(%r15)
LBB20_23:
	xorl	%r13d, %r13d
LBB20_24:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB20_26
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
LBB20_15:
	movq	24(%r15), %r8
	cmpq	32(%r15), %r8
	je	LBB20_17
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
	jmp	LBB20_18
LBB20_26:
	callq	___stack_chk_fail
LBB20_27:
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
	movq	%rdi, %rbx
	cmpq	$0, 120(%rbx)
	je	LBB21_1
## BB#2:
	testb	$8, 396(%rbx)
	jne	LBB21_3
## BB#4:
	movq	$0, 56(%rbx)
	movq	$0, 48(%rbx)
	movq	$0, 40(%rbx)
	cmpb	$0, 402(%rbx)
	je	LBB21_6
## BB#5:
	movq	64(%rbx), %rax
	movq	96(%rbx), %rsi
	jmp	LBB21_7
LBB21_1:
	movl	$-1, %eax
	jmp	LBB21_34
LBB21_3:
	leaq	24(%rbx), %r13
	movq	24(%rbx), %rsi
	xorl	%eax, %eax
	testq	%rsi, %rsi
	jne	LBB21_10
	jmp	LBB21_9
LBB21_6:
	movq	104(%rbx), %rax
	movq	112(%rbx), %rsi
LBB21_7:
	addq	%rax, %rsi
	movq	%rax, 16(%rbx)
	leaq	24(%rbx), %r13
	movq	%rsi, 24(%rbx)
	movq	%rsi, 32(%rbx)
	movl	$8, 396(%rbx)
	movb	$1, %al
	testq	%rsi, %rsi
	jne	LBB21_10
LBB21_9:
	leaq	-40(%rbp), %rsi
	leaq	-41(%rbp), %rcx
	movq	%rcx, 16(%rbx)
	movq	%rsi, 24(%rbx)
	movq	%rsi, 32(%rbx)
LBB21_10:
	testb	%al, %al
	je	LBB21_12
## BB#11:
	movq	32(%rbx), %rax
	xorl	%r14d, %r14d
	cmpq	%rax, %rsi
	jne	LBB21_31
	jmp	LBB21_14
LBB21_12:
	movq	32(%rbx), %rax
	movq	%rax, %rcx
	subq	16(%rbx), %rcx
	movq	%rcx, %rdx
	shrq	$63, %rdx
	addq	%rcx, %rdx
	sarq	%rdx
	cmpq	$4, %rdx
	movl	$4, %r14d
	cmovbq	%rdx, %r14
	cmpq	%rax, %rsi
	je	LBB21_14
LBB21_31:
	movzbl	(%rsi), %eax
	leaq	16(%rbx), %r12
LBB21_32:
	leaq	-41(%rbp), %rcx
	cmpq	%rcx, (%r12)
	jne	LBB21_34
## BB#33:
	movq	$0, (%r12)
	movq	$0, 24(%rbx)
	movq	$0, 32(%rbx)
LBB21_34:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB21_14:
	leaq	16(%rbx), %r12
	movq	16(%rbx), %rdi
	subq	%r14, %rsi
	movq	%r14, %rdx
	callq	_memmove
	cmpb	$0, 402(%rbx)
	je	LBB21_18
## BB#15:
	movq	16(%rbx), %rdi
	movq	32(%rbx), %rdx
	subq	%r14, %rdx
	subq	%rdi, %rdx
	addq	%r14, %rdi
	movq	120(%rbx), %rcx
	movl	$1, %esi
	callq	_fread
	testq	%rax, %rax
	je	LBB21_16
## BB#17:
	movq	16(%rbx), %rcx
	leaq	(%rcx,%r14), %rdx
	addq	%rdx, %rax
	movq	%rdx, 24(%rbx)
	movq	%rax, 32(%rbx)
	movzbl	(%rcx,%r14), %eax
	jmp	LBB21_32
LBB21_18:
	movq	72(%rbx), %rsi
	movq	80(%rbx), %rax
	movq	%rax, %rdx
	subq	%rsi, %rdx
	je	LBB21_20
## BB#19:
	movq	64(%rbx), %rdi
	callq	_memmove
	movq	72(%rbx), %rsi
	movq	80(%rbx), %rax
LBB21_20:
	movq	64(%rbx), %rdx
	subq	%rsi, %rax
	addq	%rdx, %rax
	movq	%rax, 72(%rbx)
	leaq	88(%rbx), %rcx
	cmpq	%rcx, %rdx
	je	LBB21_21
## BB#22:
	movq	96(%rbx), %rcx
	jmp	LBB21_23
LBB21_16:
	movl	$-1, %eax
	jmp	LBB21_32
LBB21_21:
	movl	$8, %ecx
LBB21_23:
	addq	%rcx, %rdx
	movq	%rdx, 80(%rbx)
	movq	112(%rbx), %rcx
	subq	%r14, %rcx
	subq	%rax, %rdx
	cmpq	%rcx, %rdx
	cmovaeq	%rcx, %rdx
	leaq	136(%rbx), %r15
	leaq	264(%rbx), %rdi
	movl	$16, %ecx
	movq	%r15, %rsi
	rep;movsq
	movq	120(%rbx), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	callq	_fread
	testq	%rax, %rax
	je	LBB21_24
## BB#25:
	movq	128(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB21_35
## BB#26:
	leaq	72(%rbx), %r8
	addq	72(%rbx), %rax
	movq	%rax, 80(%rbx)
	movq	16(%rbx), %r10
	movq	64(%rbx), %rdx
	leaq	(%r10,%r14), %r9
	addq	112(%rbx), %r10
	movq	(%rdi), %r11
	movq	%r15, %rsi
	movq	%rax, %rcx
	leaq	-56(%rbp), %rax
	pushq	%rax
	pushq	%r10
	callq	*32(%r11)
	addq	$16, %rsp
	cmpl	$3, %eax
	jne	LBB21_28
## BB#27:
	movq	64(%rbx), %rax
	movq	80(%rbx), %rcx
	movq	%rax, 16(%rbx)
	movq	%rax, (%r13)
	movq	%rcx, 32(%rbx)
	movzbl	(%rax), %eax
	jmp	LBB21_32
LBB21_24:
	movl	$-1, %eax
	jmp	LBB21_32
LBB21_28:
	movq	-56(%rbp), %rax
	addq	(%r12), %r14
	cmpq	%r14, %rax
	je	LBB21_29
## BB#30:
	movq	%r14, 24(%rbx)
	movq	%rax, 32(%rbx)
	movzbl	(%r14), %eax
	jmp	LBB21_32
LBB21_29:
	movl	$-1, %eax
	jmp	LBB21_32
LBB21_35:
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
Lcfi131:
	.cfi_def_cfa_offset 16
Lcfi132:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi133:
	.cfi_def_cfa_register %rbp
	movl	$-1, %eax
	cmpq	$0, 120(%rdi)
	je	LBB22_7
## BB#1:
	movq	24(%rdi), %rcx
	cmpq	%rcx, 16(%rdi)
	jae	LBB22_7
## BB#2:
	cmpl	$-1, %esi
	je	LBB22_3
## BB#4:
	testb	$16, 392(%rdi)
	jne	LBB22_6
## BB#5:
	cmpb	-1(%rcx), %sil
	jne	LBB22_7
LBB22_6:
	decq	%rcx
	movq	%rcx, 24(%rdi)
	movb	%sil, (%rcx)
	movl	%esi, %eax
LBB22_7:
	popq	%rbp
	retq
LBB22_3:
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
Lcfi134:
	.cfi_def_cfa_offset 16
Lcfi135:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi136:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Lcfi137:
	.cfi_offset %rbx, -56
Lcfi138:
	.cfi_offset %r12, -48
Lcfi139:
	.cfi_offset %r13, -40
Lcfi140:
	.cfi_offset %r14, -32
Lcfi141:
	.cfi_offset %r15, -24
	movl	%esi, %r14d
	movq	%rdi, %r12
	cmpq	$0, 120(%r12)
	je	LBB23_30
## BB#1:
	testb	$16, 396(%r12)
	jne	LBB23_2
## BB#3:
	movq	$0, 32(%r12)
	movq	$0, 24(%r12)
	movq	$0, 16(%r12)
	movq	96(%r12), %rcx
	cmpq	$9, %rcx
	jb	LBB23_8
## BB#4:
	cmpb	$0, 402(%r12)
	je	LBB23_7
## BB#5:
	movq	64(%r12), %rax
	jmp	LBB23_6
LBB23_2:
	leaq	40(%r12), %r15
	movq	40(%r12), %rax
	movq	56(%r12), %r13
	leaq	56(%r12), %rdx
	movq	%rax, %rsi
	jmp	LBB23_10
LBB23_8:
	leaq	40(%r12), %r15
	movq	$0, 56(%r12)
	movq	$0, 48(%r12)
	movq	$0, 40(%r12)
	leaq	56(%r12), %rdx
	xorl	%eax, %eax
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	jmp	LBB23_9
LBB23_7:
	movq	104(%r12), %rax
	movq	112(%r12), %rcx
LBB23_6:
	leaq	-1(%rax,%rcx), %r13
	movq	%rax, 48(%r12)
	leaq	40(%r12), %r15
	movq	%rax, 40(%r12)
	leaq	56(%r12), %rdx
	movq	%r13, 56(%r12)
	movq	%rax, %rsi
LBB23_9:
	movl	$16, 396(%r12)
LBB23_10:
	cmpl	$-1, %r14d
	movq	48(%r12), %rcx
	je	LBB23_14
## BB#11:
	testq	%rcx, %rcx
	jne	LBB23_13
## BB#12:
	leaq	-40(%rbp), %rax
	leaq	-41(%rbp), %rcx
	movq	%rcx, 48(%r12)
	movq	%rcx, 40(%r12)
	movq	%rax, 56(%r12)
LBB23_13:
	movb	%r14b, (%rcx)
	movq	48(%r12), %rcx
	incq	%rcx
	movq	%rcx, 48(%r12)
	movq	40(%r12), %rax
LBB23_14:
	movq	%rcx, %rbx
	subq	%rax, %rbx
	je	LBB23_18
## BB#15:
	movq	%rsi, -88(%rbp)         ## 8-byte Spill
	movq	%rdx, -96(%rbp)         ## 8-byte Spill
	cmpb	$0, 402(%r12)
	je	LBB23_19
## BB#16:
	movq	120(%r12), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	_fwrite
	movq	%rax, %rcx
	movl	$-1, %eax
	cmpq	%rbx, %rcx
	jne	LBB23_31
LBB23_17:
	movq	-88(%rbp), %rax         ## 8-byte Reload
	movq	%rax, 48(%r12)
	movq	%rax, (%r15)
	movq	-96(%rbp), %rax         ## 8-byte Reload
	movq	%r13, (%rax)
LBB23_18:
	xorl	%eax, %eax
	cmpl	$-1, %r14d
	cmovnel	%r14d, %eax
	jmp	LBB23_31
LBB23_19:
	movq	%r13, -80(%rbp)         ## 8-byte Spill
	movq	%r15, -64(%rbp)         ## 8-byte Spill
	movq	64(%r12), %r9
	movq	%r9, -72(%rbp)
	movq	128(%r12), %rdi
	testq	%rdi, %rdi
	je	LBB23_32
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
	jmp	LBB23_21
	.p2align	4, 0x90
LBB23_29:                               ##   in Loop: Header=BB23_21 Depth=1
	movq	64(%r12), %r9
	movq	96(%r12), %rax
	addq	%r9, %rax
	movq	(%rdi), %r10
	movq	%r15, %rsi
	leaq	-56(%rbp), %r8
	leaq	-72(%rbp), %rbx
	pushq	%rbx
	pushq	%rax
LBB23_21:                               ## =>This Inner Loop Header: Depth=1
	callq	*24(%r10)
	addq	$16, %rsp
	movl	%eax, %r13d
	movq	40(%r12), %rdi
	cmpq	%rdi, -56(%rbp)
	je	LBB23_30
## BB#22:                               ##   in Loop: Header=BB23_21 Depth=1
	cmpl	$3, %r13d
	je	LBB23_23
## BB#25:                               ##   in Loop: Header=BB23_21 Depth=1
	movl	%r13d, %eax
	orl	$1, %eax
	cmpl	$1, %eax
	jne	LBB23_30
## BB#26:                               ##   in Loop: Header=BB23_21 Depth=1
	movq	-72(%rbp), %rbx
	movq	64(%r12), %rdi
	movq	120(%r12), %rcx
	subq	%rdi, %rbx
	movl	$1, %esi
	movq	%rbx, %rdx
	callq	_fwrite
	cmpq	%rbx, %rax
	jne	LBB23_30
## BB#27:                               ##   in Loop: Header=BB23_21 Depth=1
	cmpl	$1, %r13d
	jne	LBB23_24
## BB#28:                               ##   in Loop: Header=BB23_21 Depth=1
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
	jne	LBB23_29
LBB23_32:
	movl	$8, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	__ZNSt8bad_castC1Ev
	movq	__ZTISt8bad_cast@GOTPCREL(%rip), %rsi
	movq	__ZNSt8bad_castD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB23_23:
	movq	48(%r12), %rbx
	movq	120(%r12), %rcx
	subq	%rdi, %rbx
	movl	$1, %esi
	movq	%rbx, %rdx
	callq	_fwrite
	cmpq	%rbx, %rax
	jne	LBB23_30
LBB23_24:
	movq	-64(%rbp), %r15         ## 8-byte Reload
	movq	-80(%rbp), %r13         ## 8-byte Reload
	jmp	LBB23_17
LBB23_30:
	movl	$-1, %eax
LBB23_31:
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
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
## BB#0:
	pushq	%rbp
Lcfi142:
	.cfi_def_cfa_offset 16
Lcfi143:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi144:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Lcfi145:
	.cfi_offset %rbx, -56
Lcfi146:
	.cfi_offset %r12, -48
Lcfi147:
	.cfi_offset %r13, -40
Lcfi148:
	.cfi_offset %r14, -32
Lcfi149:
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
	jne	LBB24_15
## BB#1:
	movabsq	$2305843009213693951, %rcx ## imm = 0x1FFFFFFFFFFFFFFF
	movq	16(%r13), %r14
	subq	%rsi, %r14
	movq	%r14, %rdx
	sarq	$3, %rdx
	movabsq	$1152921504606846974, %rdi ## imm = 0xFFFFFFFFFFFFFFE
	cmpq	%rdi, %rdx
	ja	LBB24_2
## BB#8:
	sarq	$2, %r14
	cmpq	%rax, %r14
	cmovbq	%rax, %r14
	testq	%r14, %r14
	je	LBB24_9
## BB#10:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	cmpq	%rcx, %r14
	jbe	LBB24_3
## BB#11:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp109:
	leaq	L_.str.2(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp110:
## BB#12:
	movq	__ZTVSt12length_error@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	__ZTISt12length_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt12length_errorD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB24_2:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	movq	%rcx, %r14
LBB24_3:
	leaq	(,%r14,8), %rdi
	callq	__Znwm
	movq	%rax, %rbx
	movq	-56(%rbp), %rsi         ## 8-byte Reload
	movq	-48(%rbp), %r8          ## 8-byte Reload
LBB24_4:
	leaq	(%rbx,%r14,8), %r14
	movq	(%r8), %rax
	movq	%rax, (%rbx,%r15,8)
	leaq	8(%rbx,%r15,8), %r15
	testq	%r12, %r12
	jle	LBB24_6
## BB#5:
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%rsi, %r12
	callq	_memcpy
	movq	%r12, %rsi
LBB24_6:
	movq	%rbx, (%r13)
	movq	%r15, 8(%r13)
	movq	%r14, 16(%r13)
	testq	%rsi, %rsi
	je	LBB24_14
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
LBB24_14:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB24_9:
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	jmp	LBB24_4
LBB24_15:
	movq	%r13, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
LBB24_13:
Ltmp111:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	__Unwind_Resume
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table24:
Lexception8:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset145 = Lfunc_begin8-Lfunc_begin8     ## >> Call Site 1 <<
	.long	Lset145
Lset146 = Ltmp109-Lfunc_begin8          ##   Call between Lfunc_begin8 and Ltmp109
	.long	Lset146
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset147 = Ltmp109-Lfunc_begin8          ## >> Call Site 2 <<
	.long	Lset147
Lset148 = Ltmp110-Ltmp109               ##   Call between Ltmp109 and Ltmp110
	.long	Lset148
Lset149 = Ltmp111-Lfunc_begin8          ##     jumps to Ltmp111
	.long	Lset149
	.byte	0                       ##   On action: cleanup
Lset150 = Ltmp110-Lfunc_begin8          ## >> Call Site 3 <<
	.long	Lset150
Lset151 = Lfunc_end8-Ltmp110            ##   Call between Ltmp110 and Lfunc_end8
	.long	Lset151
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
## BB#0:
	pushq	%rbp
Lcfi150:
	.cfi_def_cfa_offset 16
Lcfi151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi152:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Lcfi153:
	.cfi_offset %rbx, -40
Lcfi154:
	.cfi_offset %r14, -32
Lcfi155:
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
Ltmp112:
	movq	__ZNSt3__17codecvtIcc11__mbstate_tE2idE@GOTPCREL(%rip), %rsi
	movq	%r15, %rdi
	callq	__ZNKSt3__16locale9has_facetERNS0_2idE
	movl	%eax, %r15d
Ltmp113:
## BB#1:
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	testb	%r15b, %r15b
	je	LBB25_4
## BB#2:
	leaq	-32(%rbp), %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16localeC1ERKS0_
Ltmp115:
	movq	__ZNSt3__17codecvtIcc11__mbstate_tE2idE@GOTPCREL(%rip), %rsi
	movq	%r15, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp116:
## BB#3:
	movq	%rax, 128(%rbx)
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movq	128(%rbx), %rdi
	movq	(%rdi), %rax
	callq	*56(%rax)
	movb	%al, 402(%rbx)
LBB25_4:
	movq	(%rbx), %rax
Ltmp118:
	xorl	%esi, %esi
	movl	$4096, %edx             ## imm = 0x1000
	movq	%rbx, %rdi
	callq	*24(%rax)
Ltmp119:
## BB#5:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB25_9:
Ltmp117:
	movq	%rax, %r14
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB25_7
LBB25_6:
Ltmp120:
	movq	%rax, %r14
LBB25_7:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	callq	__Unwind_Resume
LBB25_8:
Ltmp114:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table25:
Lexception9:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\326\200\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	78                      ## Call site table length
Lset152 = Lfunc_begin9-Lfunc_begin9     ## >> Call Site 1 <<
	.long	Lset152
Lset153 = Ltmp112-Lfunc_begin9          ##   Call between Lfunc_begin9 and Ltmp112
	.long	Lset153
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset154 = Ltmp112-Lfunc_begin9          ## >> Call Site 2 <<
	.long	Lset154
Lset155 = Ltmp113-Ltmp112               ##   Call between Ltmp112 and Ltmp113
	.long	Lset155
Lset156 = Ltmp114-Lfunc_begin9          ##     jumps to Ltmp114
	.long	Lset156
	.byte	1                       ##   On action: 1
Lset157 = Ltmp115-Lfunc_begin9          ## >> Call Site 3 <<
	.long	Lset157
Lset158 = Ltmp116-Ltmp115               ##   Call between Ltmp115 and Ltmp116
	.long	Lset158
Lset159 = Ltmp117-Lfunc_begin9          ##     jumps to Ltmp117
	.long	Lset159
	.byte	0                       ##   On action: cleanup
Lset160 = Ltmp116-Lfunc_begin9          ## >> Call Site 4 <<
	.long	Lset160
Lset161 = Ltmp118-Ltmp116               ##   Call between Ltmp116 and Ltmp118
	.long	Lset161
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset162 = Ltmp118-Lfunc_begin9          ## >> Call Site 5 <<
	.long	Lset162
Lset163 = Ltmp119-Ltmp118               ##   Call between Ltmp118 and Ltmp119
	.long	Lset163
Lset164 = Ltmp120-Lfunc_begin9          ##     jumps to Ltmp120
	.long	Lset164
	.byte	0                       ##   On action: cleanup
Lset165 = Ltmp119-Lfunc_begin9          ## >> Call Site 6 <<
	.long	Lset165
Lset166 = Lfunc_end9-Ltmp119            ##   Call between Ltmp119 and Lfunc_end9
	.long	Lset166
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
Lcfi156:
	.cfi_def_cfa_offset 16
Lcfi157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi158:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Lcfi159:
	.cfi_offset %rbx, -56
Lcfi160:
	.cfi_offset %r12, -48
Lcfi161:
	.cfi_offset %r13, -40
Lcfi162:
	.cfi_offset %r14, -32
Lcfi163:
	.cfi_offset %r15, -24
	movq	%rdx, -48(%rbp)         ## 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %r13
	jmp	LBB26_2
LBB26_1:                                ##   in Loop: Header=BB26_2 Depth=1
	leaq	8(%r15), %rdi
	movq	%r14, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	movq	%r15, %r14
	.p2align	4, 0x90
LBB26_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB26_4 Depth 2
                                        ##       Child Loop BB26_32 Depth 3
                                        ##         Child Loop BB26_6 Depth 4
                                        ##         Child Loop BB26_14 Depth 4
                                        ##         Child Loop BB26_27 Depth 4
                                        ##           Child Loop BB26_28 Depth 5
                                        ##           Child Loop BB26_30 Depth 5
                                        ##       Child Loop BB26_41 Depth 3
                                        ##         Child Loop BB26_42 Depth 4
                                        ##         Child Loop BB26_44 Depth 4
	leaq	-8(%r14), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	leaq	-16(%r14), %rax
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	movq	%r13, %rbx
	jmp	LBB26_4
	.p2align	4, 0x90
LBB26_3:                                ##   in Loop: Header=BB26_4 Depth=2
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	addq	$8, %r15
	movq	%r15, %rbx
LBB26_4:                                ##   Parent Loop BB26_2 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB26_32 Depth 3
                                        ##         Child Loop BB26_6 Depth 4
                                        ##         Child Loop BB26_14 Depth 4
                                        ##         Child Loop BB26_27 Depth 4
                                        ##           Child Loop BB26_28 Depth 5
                                        ##           Child Loop BB26_30 Depth 5
                                        ##       Child Loop BB26_41 Depth 3
                                        ##         Child Loop BB26_42 Depth 4
                                        ##         Child Loop BB26_44 Depth 4
	movq	%rbx, %r13
	jmp	LBB26_32
	.p2align	4, 0x90
LBB26_5:                                ##   in Loop: Header=BB26_32 Depth=3
	movq	-64(%rbp), %rdx         ## 8-byte Reload
	.p2align	4, 0x90
LBB26_6:                                ##   Parent Loop BB26_2 Depth=1
                                        ##     Parent Loop BB26_4 Depth=2
                                        ##       Parent Loop BB26_32 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	cmpq	%rdx, %r13
	je	LBB26_11
## BB#7:                                ##   in Loop: Header=BB26_6 Depth=4
	movq	(%rdx), %rbx
	addq	$-8, %rdx
	cmpq	%rdi, %rbx
	jge	LBB26_6
	jmp	LBB26_38
	.p2align	4, 0x90
LBB26_8:                                ##   in Loop: Header=BB26_32 Depth=3
	movq	(%r12), %rcx
	movq	(%r13), %rax
	cmpq	%rax, %rcx
	movq	(%r15), %rdx
	jge	LBB26_16
## BB#9:                                ##   in Loop: Header=BB26_32 Depth=3
	cmpq	%rcx, %rdx
	jge	LBB26_19
## BB#10:                               ##   in Loop: Header=BB26_32 Depth=3
	movq	%rdx, (%r13)
	movq	%rax, (%r15)
	movl	$1, %eax
	jmp	LBB26_36
	.p2align	4, 0x90
LBB26_11:                               ##   in Loop: Header=BB26_32 Depth=3
	leaq	8(%r13), %rax
	movq	(%r15), %rdx
	cmpq	%rdx, %rsi
	jl	LBB26_25
## BB#12:                               ##   in Loop: Header=BB26_32 Depth=3
	cmpq	%r15, %rax
	je	LBB26_104
## BB#13:                               ##   in Loop: Header=BB26_32 Depth=3
	addq	$16, %r13
	movq	%r13, %rax
	.p2align	4, 0x90
LBB26_14:                               ##   Parent Loop BB26_2 Depth=1
                                        ##     Parent Loop BB26_4 Depth=2
                                        ##       Parent Loop BB26_32 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	-8(%rax), %rdi
	cmpq	%rdi, %rsi
	jl	LBB26_24
## BB#15:                               ##   in Loop: Header=BB26_14 Depth=4
	addq	$8, %rax
	cmpq	%rax, %r14
	jne	LBB26_14
	jmp	LBB26_104
	.p2align	4, 0x90
LBB26_16:                               ##   in Loop: Header=BB26_32 Depth=3
	cmpq	%rcx, %rdx
	jge	LBB26_22
## BB#17:                               ##   in Loop: Header=BB26_32 Depth=3
	movq	%rdx, (%r12)
	movq	%rcx, (%r15)
	movq	(%r12), %rax
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB26_23
## BB#18:                               ##   in Loop: Header=BB26_32 Depth=3
	movq	%rax, (%r13)
	movq	%rcx, (%r12)
	jmp	LBB26_21
LBB26_19:                               ##   in Loop: Header=BB26_32 Depth=3
	movq	%rcx, (%r13)
	movq	%rax, (%r12)
	movq	(%r15), %rcx
	cmpq	%rax, %rcx
	jge	LBB26_23
## BB#20:                               ##   in Loop: Header=BB26_32 Depth=3
	movq	%rcx, (%r12)
	movq	%rax, (%r15)
LBB26_21:                               ##   in Loop: Header=BB26_32 Depth=3
	movl	$2, %eax
	jmp	LBB26_36
LBB26_22:                               ##   in Loop: Header=BB26_32 Depth=3
	xorl	%eax, %eax
	jmp	LBB26_36
LBB26_23:                               ##   in Loop: Header=BB26_32 Depth=3
	movl	$1, %eax
	jmp	LBB26_36
LBB26_24:                               ##   in Loop: Header=BB26_32 Depth=3
	movq	%rdx, -8(%rax)
	movq	%rdi, (%r15)
LBB26_25:                               ##   in Loop: Header=BB26_32 Depth=3
	cmpq	%r15, %rax
	jne	LBB26_27
	jmp	LBB26_104
	.p2align	4, 0x90
LBB26_26:                               ##   in Loop: Header=BB26_27 Depth=4
	movq	%rbx, -8(%rax)
	movq	%rsi, (%r15)
LBB26_27:                               ##   Parent Loop BB26_2 Depth=1
                                        ##     Parent Loop BB26_4 Depth=2
                                        ##       Parent Loop BB26_32 Depth=3
                                        ## =>      This Loop Header: Depth=4
                                        ##           Child Loop BB26_28 Depth 5
                                        ##           Child Loop BB26_30 Depth 5
	movq	(%rcx), %rdi
	.p2align	4, 0x90
LBB26_28:                               ##   Parent Loop BB26_2 Depth=1
                                        ##     Parent Loop BB26_4 Depth=2
                                        ##       Parent Loop BB26_32 Depth=3
                                        ##         Parent Loop BB26_27 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movq	(%rax), %rsi
	addq	$8, %rax
	cmpq	%rsi, %rdi
	jge	LBB26_28
## BB#29:                               ##   in Loop: Header=BB26_27 Depth=4
	leaq	-8(%rax), %r13
	.p2align	4, 0x90
LBB26_30:                               ##   Parent Loop BB26_2 Depth=1
                                        ##     Parent Loop BB26_4 Depth=2
                                        ##       Parent Loop BB26_32 Depth=3
                                        ##         Parent Loop BB26_27 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movq	-8(%r15), %rbx
	addq	$-8, %r15
	cmpq	%rbx, %rdi
	jl	LBB26_30
## BB#31:                               ##   in Loop: Header=BB26_27 Depth=4
	cmpq	%r15, %r13
	jb	LBB26_26
LBB26_32:                               ##   Parent Loop BB26_2 Depth=1
                                        ##     Parent Loop BB26_4 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB26_6 Depth 4
                                        ##         Child Loop BB26_14 Depth 4
                                        ##         Child Loop BB26_27 Depth 4
                                        ##           Child Loop BB26_28 Depth 5
                                        ##           Child Loop BB26_30 Depth 5
	movq	%r14, %rcx
	subq	%r13, %rcx
	movq	%rcx, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	jbe	LBB26_55
## BB#33:                               ##   in Loop: Header=BB26_32 Depth=3
	cmpq	$247, %rcx
	movq	-56(%rbp), %r15         ## 8-byte Reload
	jle	LBB26_58
## BB#34:                               ##   in Loop: Header=BB26_32 Depth=3
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rax, %rdx
	movabsq	$4611686018427387902, %rsi ## imm = 0x3FFFFFFFFFFFFFFE
	andq	%rsi, %rdx
	cmpq	$7993, %rcx             ## imm = 0x1F39
	leaq	(%r13,%rdx,4), %r12
	jl	LBB26_8
## BB#35:                               ##   in Loop: Header=BB26_32 Depth=3
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
LBB26_36:                               ##   in Loop: Header=BB26_32 Depth=3
	movq	%r13, %rcx
	movq	(%rcx), %rsi
	movq	(%r12), %rdi
	cmpq	%rdi, %rsi
	jge	LBB26_5
## BB#37:                               ##   in Loop: Header=BB26_4 Depth=2
	movq	%r15, %rdx
	jmp	LBB26_39
	.p2align	4, 0x90
LBB26_38:                               ##   in Loop: Header=BB26_4 Depth=2
	movq	%rbx, (%rcx)
	movq	%rsi, 8(%rdx)
	addq	$8, %rdx
	incl	%eax
LBB26_39:                               ##   in Loop: Header=BB26_4 Depth=2
	leaq	8(%r13), %r15
	cmpq	%rdx, %r15
	jb	LBB26_41
	jmp	LBB26_47
	.p2align	4, 0x90
LBB26_40:                               ##   in Loop: Header=BB26_41 Depth=3
	movq	%rbx, (%rcx)
	movq	%rdi, (%rdx)
	incl	%eax
	cmpq	%rcx, %r12
	cmoveq	%rdx, %r12
LBB26_41:                               ##   Parent Loop BB26_2 Depth=1
                                        ##     Parent Loop BB26_4 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB26_42 Depth 4
                                        ##         Child Loop BB26_44 Depth 4
	movq	(%r12), %rsi
	addq	$-8, %r15
	movq	%r15, %rcx
	.p2align	4, 0x90
LBB26_42:                               ##   Parent Loop BB26_2 Depth=1
                                        ##     Parent Loop BB26_4 Depth=2
                                        ##       Parent Loop BB26_41 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	8(%rcx), %rdi
	addq	$8, %rcx
	cmpq	%rsi, %rdi
	jl	LBB26_42
## BB#43:                               ##   in Loop: Header=BB26_41 Depth=3
	leaq	8(%rcx), %r15
	.p2align	4, 0x90
LBB26_44:                               ##   Parent Loop BB26_2 Depth=1
                                        ##     Parent Loop BB26_4 Depth=2
                                        ##       Parent Loop BB26_41 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	-8(%rdx), %rbx
	addq	$-8, %rdx
	cmpq	%rsi, %rbx
	jge	LBB26_44
## BB#45:                               ##   in Loop: Header=BB26_41 Depth=3
	cmpq	%rdx, %rcx
	jbe	LBB26_40
## BB#46:                               ##   in Loop: Header=BB26_4 Depth=2
	movq	%rcx, %r15
LBB26_47:                               ##   in Loop: Header=BB26_4 Depth=2
	cmpq	%r12, %r15
	je	LBB26_50
## BB#48:                               ##   in Loop: Header=BB26_4 Depth=2
	movq	(%r12), %rcx
	movq	(%r15), %rdx
	cmpq	%rdx, %rcx
	jge	LBB26_50
## BB#49:                               ##   in Loop: Header=BB26_4 Depth=2
	movq	%rcx, (%r15)
	movq	%rdx, (%r12)
	incl	%eax
LBB26_50:                               ##   in Loop: Header=BB26_4 Depth=2
	testl	%eax, %eax
	jne	LBB26_53
## BB#51:                               ##   in Loop: Header=BB26_4 Depth=2
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
	jne	LBB26_54
## BB#52:                               ##   in Loop: Header=BB26_4 Depth=2
	testb	%r12b, %r12b
	jne	LBB26_4
LBB26_53:                               ##   in Loop: Header=BB26_4 Depth=2
	movq	%r15, %rax
	subq	%r13, %rax
	movq	%r14, %rcx
	subq	%r15, %rcx
	cmpq	%rcx, %rax
	jl	LBB26_3
	jmp	LBB26_1
LBB26_54:                               ##   in Loop: Header=BB26_2 Depth=1
	testb	%r12b, %r12b
	movq	%r15, %r14
	je	LBB26_2
	jmp	LBB26_104
LBB26_55:
	leaq	LJTI26_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	movq	-56(%rbp), %r8          ## 8-byte Reload
	jmpq	*%rax
LBB26_56:
	movq	-8(%r14), %rax
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB26_104
## BB#57:
	movq	%rax, (%r13)
	movq	%rcx, -8(%r14)
	jmp	LBB26_104
LBB26_58:
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rcx, %rax
	movq	16(%r13), %rdx
	jge	LBB26_61
## BB#59:
	cmpq	%rax, %rdx
	jge	LBB26_64
## BB#60:
	movq	%rdx, (%r13)
	jmp	LBB26_66
LBB26_61:
	cmpq	%rax, %rdx
	jge	LBB26_75
## BB#62:
	movq	%rdx, 8(%r13)
	movq	%rax, 16(%r13)
	cmpq	%rcx, %rdx
	jge	LBB26_76
## BB#63:
	movq	%rdx, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB26_76
LBB26_64:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	cmpq	%rcx, %rdx
	jge	LBB26_75
## BB#65:
	movq	%rdx, 8(%r13)
LBB26_66:
	movq	%rcx, 16(%r13)
	movq	%rcx, %rax
	jmp	LBB26_76
LBB26_75:
	movq	%rdx, %rax
LBB26_76:
	leaq	24(%r13), %rdx
	cmpq	%r14, %rdx
	je	LBB26_104
## BB#77:
	movl	$24, %ecx
	jmp	LBB26_83
	.p2align	4, 0x90
LBB26_78:                               ##   in Loop: Header=BB26_83 Depth=1
	addq	%r13, %rdi
	jmp	LBB26_80
	.p2align	4, 0x90
LBB26_79:                               ##   in Loop: Header=BB26_83 Depth=1
	movq	%r13, %rdi
LBB26_80:                               ##   in Loop: Header=BB26_83 Depth=1
	movq	%rsi, (%rdi)
LBB26_81:                               ##   in Loop: Header=BB26_83 Depth=1
	leaq	8(%rdx), %rsi
	cmpq	%r14, %rsi
	je	LBB26_104
## BB#82:                               ##   in Loop: Header=BB26_83 Depth=1
	movq	(%rdx), %rax
	addq	$8, %rcx
	movq	%rsi, %rdx
LBB26_83:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB26_85 Depth 2
	movq	(%rdx), %rsi
	cmpq	%rax, %rsi
	jge	LBB26_81
## BB#84:                               ##   in Loop: Header=BB26_83 Depth=1
	movq	%rcx, %rdi
	.p2align	4, 0x90
LBB26_85:                               ##   Parent Loop BB26_83 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, (%r13,%rdi)
	cmpq	$8, %rdi
	je	LBB26_79
## BB#86:                               ##   in Loop: Header=BB26_85 Depth=2
	movq	-16(%r13,%rdi), %rax
	addq	$-8, %rdi
	cmpq	%rax, %rsi
	jl	LBB26_85
	jmp	LBB26_78
LBB26_68:
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rax, %rcx
	movq	-8(%r14), %rdx
	jge	LBB26_87
## BB#69:
	cmpq	%rcx, %rdx
	jge	LBB26_93
## BB#70:
	movq	%rdx, (%r13)
	movq	%rax, -8(%r14)
	jmp	LBB26_104
LBB26_71:
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
LBB26_72:
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rcx, %rax
	movq	16(%r13), %rdx
	jge	LBB26_90
## BB#73:
	cmpq	%rax, %rdx
	jge	LBB26_95
## BB#74:
	movq	%rdx, (%r13)
	jmp	LBB26_97
LBB26_87:
	cmpq	%rcx, %rdx
	jge	LBB26_104
## BB#88:
	movq	%rdx, 8(%r13)
	movq	%rcx, -8(%r14)
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rax, %rcx
	jge	LBB26_104
## BB#89:
	movq	%rcx, (%r13)
	movq	%rax, 8(%r13)
	jmp	LBB26_104
LBB26_90:
	cmpq	%rax, %rdx
	jge	LBB26_99
## BB#91:
	movq	%rdx, 8(%r13)
	movq	%rax, 16(%r13)
	cmpq	%rcx, %rdx
	jge	LBB26_100
## BB#92:
	movq	%rdx, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB26_100
LBB26_93:
	movq	%rcx, (%r13)
	movq	%rax, 8(%r13)
	movq	-8(%r14), %rcx
	cmpq	%rax, %rcx
	jge	LBB26_104
## BB#94:
	movq	%rcx, 8(%r13)
	movq	%rax, -8(%r14)
	jmp	LBB26_104
LBB26_95:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	cmpq	%rcx, %rdx
	jge	LBB26_99
## BB#96:
	movq	%rdx, 8(%r13)
LBB26_97:
	movq	%rcx, 16(%r13)
	movq	%rcx, %rax
	jmp	LBB26_100
LBB26_99:
	movq	%rdx, %rax
LBB26_100:
	movq	-8(%r14), %rcx
	cmpq	%rax, %rcx
	jge	LBB26_104
## BB#101:
	movq	%rcx, 16(%r13)
	movq	%rax, -8(%r14)
	movq	8(%r13), %rcx
	movq	16(%r13), %rax
	cmpq	%rcx, %rax
	jge	LBB26_104
## BB#102:
	movq	%rax, 8(%r13)
	movq	%rcx, 16(%r13)
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB26_104
## BB#103:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
LBB26_104:
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
L26_0_set_104 = LBB26_104-LJTI26_0
L26_0_set_56 = LBB26_56-LJTI26_0
L26_0_set_68 = LBB26_68-LJTI26_0
L26_0_set_72 = LBB26_72-LJTI26_0
L26_0_set_71 = LBB26_71-LJTI26_0
LJTI26_0:
	.long	L26_0_set_104
	.long	L26_0_set_104
	.long	L26_0_set_56
	.long	L26_0_set_68
	.long	L26_0_set_72
	.long	L26_0_set_71
	.end_data_region

	.globl	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.weak_def_can_be_hidden	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.p2align	4, 0x90
__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_: ## @_ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi164:
	.cfi_def_cfa_offset 16
Lcfi165:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi166:
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %r9
	movq	(%rdi), %r10
	cmpq	%r10, %r9
	movq	(%rdx), %r11
	jge	LBB27_1
## BB#5:
	cmpq	%r9, %r11
	jge	LBB27_7
## BB#6:
	movq	%r11, (%rdi)
	movq	%r10, (%rdx)
	movl	$1, %eax
	jmp	LBB27_9
LBB27_1:
	xorl	%eax, %eax
	cmpq	%r9, %r11
	jge	LBB27_2
## BB#3:
	movq	%r11, (%rsi)
	movq	%r9, (%rdx)
	movq	(%rsi), %r10
	movq	(%rdi), %r11
	movl	$1, %eax
	cmpq	%r11, %r10
	jge	LBB27_10
## BB#4:
	movq	%r10, (%rdi)
	movq	%r11, (%rsi)
	movq	(%rdx), %r9
	movl	$2, %eax
	jmp	LBB27_10
LBB27_7:
	movq	%r9, (%rdi)
	movq	%r10, (%rsi)
	movq	(%rdx), %r9
	movl	$1, %eax
	cmpq	%r10, %r9
	jge	LBB27_10
## BB#8:
	movq	%r9, (%rsi)
	movq	%r10, (%rdx)
	movl	$2, %eax
LBB27_9:
	movq	%r10, %r9
	jmp	LBB27_10
LBB27_2:
	movq	%r11, %r9
LBB27_10:
	movq	(%rcx), %r10
	cmpq	%r9, %r10
	jge	LBB27_16
## BB#11:
	movq	%r10, (%rdx)
	movq	%r9, (%rcx)
	movq	(%rdx), %r9
	movq	(%rsi), %r10
	cmpq	%r10, %r9
	jge	LBB27_12
## BB#13:
	movq	%r9, (%rsi)
	movq	%r10, (%rdx)
	movq	(%rsi), %r9
	movq	(%rdi), %r10
	cmpq	%r10, %r9
	jge	LBB27_14
## BB#15:
	movq	%r9, (%rdi)
	movq	%r10, (%rsi)
	addl	$3, %eax
	jmp	LBB27_16
LBB27_12:
	incl	%eax
	jmp	LBB27_16
LBB27_14:
	addl	$2, %eax
LBB27_16:
	movq	(%r8), %r9
	movq	(%rcx), %r10
	cmpq	%r10, %r9
	jge	LBB27_24
## BB#17:
	movq	%r9, (%rcx)
	movq	%r10, (%r8)
	movq	(%rcx), %r8
	movq	(%rdx), %r9
	cmpq	%r9, %r8
	jge	LBB27_18
## BB#19:
	movq	%r8, (%rdx)
	movq	%r9, (%rcx)
	movq	(%rdx), %rcx
	movq	(%rsi), %r8
	cmpq	%r8, %rcx
	jge	LBB27_20
## BB#21:
	movq	%rcx, (%rsi)
	movq	%r8, (%rdx)
	movq	(%rsi), %rcx
	movq	(%rdi), %rdx
	cmpq	%rdx, %rcx
	jge	LBB27_22
## BB#23:
	movq	%rcx, (%rdi)
	movq	%rdx, (%rsi)
	addl	$4, %eax
LBB27_24:
	popq	%rbp
	retq
LBB27_18:
	incl	%eax
	popq	%rbp
	retq
LBB27_20:
	addl	$2, %eax
	popq	%rbp
	retq
LBB27_22:
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
Lcfi167:
	.cfi_def_cfa_offset 16
Lcfi168:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi169:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Lcfi170:
	.cfi_offset %rbx, -24
	movq	%rdx, %r9
	movq	%rsi, %r10
	movq	%r10, %rax
	subq	%rdi, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	ja	LBB28_4
## BB#1:
	movb	$1, %bl
	leaq	LJTI28_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB28_2:
	movq	-8(%r10), %rax
	movq	(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	LBB28_51
## BB#3:
	movq	%rax, (%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB28_51
LBB28_4:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rdx
	cmpq	%rcx, %rdx
	movq	16(%rdi), %rsi
	jge	LBB28_14
## BB#5:
	cmpq	%rdx, %rsi
	jge	LBB28_23
## BB#6:
	movq	%rsi, (%rdi)
	jmp	LBB28_25
LBB28_7:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	cmpq	%rcx, %rax
	movq	-8(%r10), %rdx
	jge	LBB28_17
## BB#8:
	cmpq	%rax, %rdx
	jge	LBB28_26
## BB#9:
	movq	%rdx, (%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB28_51
LBB28_10:
	leaq	16(%rdi), %rdx
	leaq	24(%rdi), %rcx
	addq	$-8, %r10
	leaq	8(%rdi), %rsi
	movq	%r10, %r8
	callq	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	jmp	LBB28_51
LBB28_11:
	movq	(%rdi), %rdx
	movq	8(%rdi), %rcx
	cmpq	%rdx, %rcx
	movq	16(%rdi), %rsi
	jge	LBB28_20
## BB#12:
	cmpq	%rcx, %rsi
	jge	LBB28_28
## BB#13:
	movq	%rsi, (%rdi)
	jmp	LBB28_30
LBB28_14:
	cmpq	%rdx, %rsi
	jge	LBB28_33
## BB#15:
	movq	%rsi, 8(%rdi)
	movq	%rdx, 16(%rdi)
	cmpq	%rcx, %rsi
	jge	LBB28_34
## BB#16:
	movq	%rsi, (%rdi)
	movq	%rcx, 8(%rdi)
	jmp	LBB28_34
LBB28_17:
	cmpq	%rax, %rdx
	jge	LBB28_51
## BB#18:
	movq	%rdx, 8(%rdi)
	movq	%rax, -8(%r10)
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	cmpq	%rax, %rcx
	jge	LBB28_51
## BB#19:
	movq	%rcx, (%rdi)
	movq	%rax, 8(%rdi)
	jmp	LBB28_51
LBB28_20:
	cmpq	%rcx, %rsi
	jge	LBB28_46
## BB#21:
	movq	%rsi, 8(%rdi)
	movq	%rcx, 16(%rdi)
	cmpq	%rdx, %rsi
	jge	LBB28_47
## BB#22:
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	jmp	LBB28_47
LBB28_23:
	movq	%rdx, (%rdi)
	movq	%rcx, 8(%rdi)
	cmpq	%rcx, %rsi
	jge	LBB28_33
## BB#24:
	movq	%rsi, 8(%rdi)
LBB28_25:
	movq	%rcx, 16(%rdi)
	movq	%rcx, %rdx
	jmp	LBB28_34
LBB28_33:
	movq	%rsi, %rdx
LBB28_34:
	leaq	24(%rdi), %rsi
	movb	$1, %r8b
	cmpq	%r10, %rsi
	je	LBB28_43
## BB#35:
	xorl	%r9d, %r9d
	jmp	LBB28_39
	.p2align	4, 0x90
LBB28_36:                               ##   in Loop: Header=BB28_39 Depth=1
	movq	%rbx, -8(%rcx)
	incl	%r9d
	leaq	8(%rsi), %rax
	cmpq	%r10, %rax
	sete	%bl
	cmpl	$8, %r9d
	je	LBB28_44
LBB28_37:                               ##   in Loop: Header=BB28_39 Depth=1
	leaq	8(%rsi), %rax
	cmpq	%r10, %rax
	je	LBB28_43
## BB#38:                               ##   in Loop: Header=BB28_39 Depth=1
	movq	(%rsi), %rdx
	movq	%rax, %rsi
LBB28_39:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB28_41 Depth 2
	movq	(%rsi), %rbx
	cmpq	%rdx, %rbx
	jge	LBB28_37
## BB#40:                               ##   in Loop: Header=BB28_39 Depth=1
	movq	%rsi, %rax
	.p2align	4, 0x90
LBB28_41:                               ##   Parent Loop BB28_39 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, %rcx
	movq	%rdx, (%rcx)
	leaq	-8(%rcx), %rax
	cmpq	%rdi, %rax
	je	LBB28_36
## BB#42:                               ##   in Loop: Header=BB28_41 Depth=2
	movq	-8(%rax), %rdx
	cmpq	%rdx, %rbx
	jl	LBB28_41
	jmp	LBB28_36
LBB28_43:
                                        ## implicit-def: %BL
	jmp	LBB28_45
LBB28_26:
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	movq	-8(%r10), %rax
	cmpq	%rcx, %rax
	jge	LBB28_51
## BB#27:
	movq	%rax, 8(%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB28_51
LBB28_28:
	movq	%rcx, (%rdi)
	movq	%rdx, 8(%rdi)
	cmpq	%rdx, %rsi
	jge	LBB28_46
## BB#29:
	movq	%rsi, 8(%rdi)
LBB28_30:
	movq	%rdx, 16(%rdi)
	movq	%rdx, %rcx
	jmp	LBB28_47
LBB28_46:
	movq	%rsi, %rcx
LBB28_47:
	movq	-8(%r10), %rax
	cmpq	%rcx, %rax
	jge	LBB28_51
## BB#48:
	movq	%rax, 16(%rdi)
	movq	%rcx, -8(%r10)
	movq	8(%rdi), %rcx
	movq	16(%rdi), %rax
	cmpq	%rcx, %rax
	jge	LBB28_51
## BB#49:
	movq	%rax, 8(%rdi)
	movq	%rcx, 16(%rdi)
	movq	(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	LBB28_51
## BB#50:
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	jmp	LBB28_51
LBB28_44:
	xorl	%r8d, %r8d
LBB28_45:
	orb	%r8b, %bl
LBB28_51:
	andb	$1, %bl
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L28_0_set_51 = LBB28_51-LJTI28_0
L28_0_set_2 = LBB28_2-LJTI28_0
L28_0_set_7 = LBB28_7-LJTI28_0
L28_0_set_11 = LBB28_11-LJTI28_0
L28_0_set_10 = LBB28_10-LJTI28_0
LJTI28_0:
	.long	L28_0_set_51
	.long	L28_0_set_51
	.long	L28_0_set_2
	.long	L28_0_set_7
	.long	L28_0_set_11
	.long	L28_0_set_10
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
Lcfi171:
	.cfi_def_cfa_offset 16
Lcfi172:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi173:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Lcfi174:
	.cfi_offset %rbx, -56
Lcfi175:
	.cfi_offset %r12, -48
Lcfi176:
	.cfi_offset %r13, -40
Lcfi177:
	.cfi_offset %r14, -32
Lcfi178:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
Ltmp121:
	leaq	-80(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp122:
## BB#1:
	cmpb	$0, -80(%rbp)
	je	LBB29_10
## BB#2:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %r12
	movq	40(%rbx,%rax), %rdi
	movl	8(%rbx,%rax), %r13d
	movl	144(%rbx,%rax), %eax
	cmpl	$-1, %eax
	jne	LBB29_7
## BB#3:
Ltmp124:
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	leaq	-56(%rbp), %rdi
	movq	%r12, %rsi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp125:
## BB#4:
Ltmp126:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-56(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp127:
## BB#5:
	movq	(%rax), %rcx
Ltmp128:
	movl	$32, %esi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movb	%al, -41(%rbp)          ## 1-byte Spill
Ltmp129:
## BB#6:
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	-41(%rbp), %eax         ## 1-byte Folded Reload
	movl	%eax, 144(%r12)
	movq	-64(%rbp), %rdi         ## 8-byte Reload
LBB29_7:
	addq	%r15, %r14
	andl	$176, %r13d
	cmpl	$32, %r13d
	movq	%r15, %rdx
	cmoveq	%r14, %rdx
Ltmp131:
	movsbl	%al, %r9d
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r12, %r8
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp132:
## BB#8:
	testq	%rax, %rax
	jne	LBB29_10
## BB#9:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$5, %esi
Ltmp134:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp135:
LBB29_10:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB29_11:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB29_12:
Ltmp136:
	jmp	LBB29_15
LBB29_13:
Ltmp130:
	movq	%rax, %r14
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB29_16
LBB29_14:
Ltmp133:
LBB29_15:
	movq	%rax, %r14
LBB29_16:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	jmp	LBB29_18
LBB29_17:
Ltmp123:
	movq	%rax, %r14
LBB29_18:
	movq	%r14, %rdi
	callq	___cxa_begin_catch
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	addq	-24(%rax), %rdi
Ltmp137:
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp138:
## BB#19:
	callq	___cxa_end_catch
	jmp	LBB29_11
LBB29_20:
Ltmp139:
	movq	%rax, %rbx
Ltmp140:
	callq	___cxa_end_catch
Ltmp141:
## BB#21:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB29_22:
Ltmp142:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table29:
Lexception10:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\213\201"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\202\001"              ## Call site table length
Lset167 = Ltmp121-Lfunc_begin10         ## >> Call Site 1 <<
	.long	Lset167
Lset168 = Ltmp122-Ltmp121               ##   Call between Ltmp121 and Ltmp122
	.long	Lset168
Lset169 = Ltmp123-Lfunc_begin10         ##     jumps to Ltmp123
	.long	Lset169
	.byte	1                       ##   On action: 1
Lset170 = Ltmp124-Lfunc_begin10         ## >> Call Site 2 <<
	.long	Lset170
Lset171 = Ltmp125-Ltmp124               ##   Call between Ltmp124 and Ltmp125
	.long	Lset171
Lset172 = Ltmp133-Lfunc_begin10         ##     jumps to Ltmp133
	.long	Lset172
	.byte	1                       ##   On action: 1
Lset173 = Ltmp126-Lfunc_begin10         ## >> Call Site 3 <<
	.long	Lset173
Lset174 = Ltmp129-Ltmp126               ##   Call between Ltmp126 and Ltmp129
	.long	Lset174
Lset175 = Ltmp130-Lfunc_begin10         ##     jumps to Ltmp130
	.long	Lset175
	.byte	1                       ##   On action: 1
Lset176 = Ltmp131-Lfunc_begin10         ## >> Call Site 4 <<
	.long	Lset176
Lset177 = Ltmp132-Ltmp131               ##   Call between Ltmp131 and Ltmp132
	.long	Lset177
Lset178 = Ltmp133-Lfunc_begin10         ##     jumps to Ltmp133
	.long	Lset178
	.byte	1                       ##   On action: 1
Lset179 = Ltmp134-Lfunc_begin10         ## >> Call Site 5 <<
	.long	Lset179
Lset180 = Ltmp135-Ltmp134               ##   Call between Ltmp134 and Ltmp135
	.long	Lset180
Lset181 = Ltmp136-Lfunc_begin10         ##     jumps to Ltmp136
	.long	Lset181
	.byte	1                       ##   On action: 1
Lset182 = Ltmp135-Lfunc_begin10         ## >> Call Site 6 <<
	.long	Lset182
Lset183 = Ltmp137-Ltmp135               ##   Call between Ltmp135 and Ltmp137
	.long	Lset183
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset184 = Ltmp137-Lfunc_begin10         ## >> Call Site 7 <<
	.long	Lset184
Lset185 = Ltmp138-Ltmp137               ##   Call between Ltmp137 and Ltmp138
	.long	Lset185
Lset186 = Ltmp139-Lfunc_begin10         ##     jumps to Ltmp139
	.long	Lset186
	.byte	0                       ##   On action: cleanup
Lset187 = Ltmp138-Lfunc_begin10         ## >> Call Site 8 <<
	.long	Lset187
Lset188 = Ltmp140-Ltmp138               ##   Call between Ltmp138 and Ltmp140
	.long	Lset188
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset189 = Ltmp140-Lfunc_begin10         ## >> Call Site 9 <<
	.long	Lset189
Lset190 = Ltmp141-Ltmp140               ##   Call between Ltmp140 and Ltmp141
	.long	Lset190
Lset191 = Ltmp142-Lfunc_begin10         ##     jumps to Ltmp142
	.long	Lset191
	.byte	1                       ##   On action: 1
Lset192 = Ltmp141-Lfunc_begin10         ## >> Call Site 10 <<
	.long	Lset192
Lset193 = Lfunc_end10-Ltmp141           ##   Call between Ltmp141 and Lfunc_end10
	.long	Lset193
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
Lcfi179:
	.cfi_def_cfa_offset 16
Lcfi180:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi181:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Lcfi182:
	.cfi_offset %rbx, -56
Lcfi183:
	.cfi_offset %r12, -48
Lcfi184:
	.cfi_offset %r13, -40
Lcfi185:
	.cfi_offset %r14, -32
Lcfi186:
	.cfi_offset %r15, -24
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rdi, %r13
	testq	%r13, %r13
	je	LBB30_17
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
	jle	LBB30_3
## BB#2:
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%rbx, %rdx
	callq	*96(%rax)
	cmpq	%rbx, %rax
	jne	LBB30_17
LBB30_3:
	testq	%r15, %r15
	jle	LBB30_13
## BB#4:
	movq	%r12, -88(%rbp)         ## 8-byte Spill
	movq	%r14, -96(%rbp)         ## 8-byte Spill
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movq	$0, -64(%rbp)
	cmpq	$23, %r15
	jae	LBB30_8
## BB#5:
	movl	%r15d, %eax
	addb	%al, %al
	movb	%al, -80(%rbp)
	leaq	-79(%rbp), %r14
	movq	%r14, %r12
	jmp	LBB30_9
LBB30_8:
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
LBB30_9:
	movl	-44(%rbp), %eax         ## 4-byte Reload
	movzbl	%al, %esi
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	_memset
	movb	$0, (%r12,%r15)
	testb	$1, -80(%rbp)
	cmovneq	-64(%rbp), %r14
	movq	(%r13), %rax
Ltmp143:
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	*96(%rax)
	movq	%rax, %rbx
Ltmp144:
## BB#10:
	testb	$1, -80(%rbp)
	movq	-96(%rbp), %r14         ## 8-byte Reload
	movq	-88(%rbp), %r12         ## 8-byte Reload
	je	LBB30_12
## BB#11:
	movq	-64(%rbp), %rdi
	callq	__ZdlPv
LBB30_12:
	cmpq	%r15, %rbx
	jne	LBB30_17
LBB30_13:
	movq	-104(%rbp), %rsi        ## 8-byte Reload
	subq	%rsi, %r12
	testq	%r12, %r12
	jle	LBB30_15
## BB#14:
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	*96(%rax)
	cmpq	%r12, %rax
	jne	LBB30_17
LBB30_15:
	movq	$0, 24(%r14)
	jmp	LBB30_18
LBB30_17:
	xorl	%r13d, %r13d
LBB30_18:
	movq	%r13, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB30_19:
Ltmp145:
	movq	%rax, %rbx
	testb	$1, -80(%rbp)
	je	LBB30_21
## BB#20:
	movq	-64(%rbp), %rdi
	callq	__ZdlPv
LBB30_21:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table30:
Lexception11:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset194 = Lfunc_begin11-Lfunc_begin11   ## >> Call Site 1 <<
	.long	Lset194
Lset195 = Ltmp143-Lfunc_begin11         ##   Call between Lfunc_begin11 and Ltmp143
	.long	Lset195
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset196 = Ltmp143-Lfunc_begin11         ## >> Call Site 2 <<
	.long	Lset196
Lset197 = Ltmp144-Ltmp143               ##   Call between Ltmp143 and Ltmp144
	.long	Lset197
Lset198 = Ltmp145-Lfunc_begin11         ##     jumps to Ltmp145
	.long	Lset198
	.byte	0                       ##   On action: cleanup
Lset199 = Ltmp144-Lfunc_begin11         ## >> Call Site 3 <<
	.long	Lset199
Lset200 = Lfunc_end11-Ltmp144           ##   Call between Ltmp144 and Lfunc_end11
	.long	Lset200
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
	.asciz	"do_not_optimize.txt"

	.section	__DATA,__data
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
	.asciz	"allocator<T>::allocate(size_t n) 'n' exceeds maximum supported size"

L_.str.3:                               ## @.str.3
	.asciz	"w"


.subsections_via_symbols
