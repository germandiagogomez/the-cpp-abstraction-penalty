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
	subq	$3336, %rsp             ## imm = 0xD08
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
	movaps	%xmm0, -3376(%rbp)
	movq	$0, -3360(%rbp)
	movq	%r15, %rdi
	callq	_strlen
	movq	%rax, %r13
	cmpq	$-16, %r13
	jae	LBB5_86
## BB#1:
	cmpq	$23, %r13
	jae	LBB5_3
## BB#2:
	movl	%r13d, %eax
	addb	%al, %al
	movb	%al, -3376(%rbp)
	leaq	-3375(%rbp), %r12
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
	movq	%r12, -3360(%rbp)
	orq	$1, %rbx
	movq	%rbx, -3376(%rbp)
	movq	%r13, -3368(%rbp)
LBB5_4:
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	_memcpy
LBB5_5:
	movb	$0, (%r12,%r13)
Ltmp35:
	leaq	-3376(%rbp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	movl	%eax, %r15d
Ltmp36:
## BB#6:
	testb	$1, -3376(%rbp)
	je	LBB5_8
## BB#7:
	movq	-3360(%rbp), %rdi
	callq	__ZdlPv
LBB5_8:
	movq	16(%r14), %r14
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -3376(%rbp)
	movq	$0, -3360(%rbp)
	movq	%r14, %rdi
	callq	_strlen
	movq	%rax, %r13
	cmpq	$-16, %r13
	jae	LBB5_86
## BB#9:
	cmpq	$23, %r13
	jae	LBB5_11
## BB#10:
	movl	%r13d, %eax
	addb	%al, %al
	movb	%al, -3376(%rbp)
	leaq	-3375(%rbp), %r12
	testq	%r13, %r13
	jne	LBB5_12
	jmp	LBB5_13
LBB5_11:
	movq	%r13, %rbx
	addq	$16, %rbx
	andq	$-16, %rbx
	movq	%rbx, %rdi
	callq	__Znwm
	movq	%rax, %r12
	movq	%r12, -3360(%rbp)
	orq	$1, %rbx
	movq	%rbx, -3376(%rbp)
	movq	%r13, -3368(%rbp)
LBB5_12:
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	_memcpy
LBB5_13:
	movb	$0, (%r12,%r13)
Ltmp38:
	leaq	-3376(%rbp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	movl	%eax, %r12d
Ltmp39:
## BB#14:
	testb	$1, -3376(%rbp)
	je	LBB5_16
## BB#15:
	movq	-3360(%rbp), %rdi
	callq	__ZdlPv
LBB5_16:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -704(%rbp)
	movq	$0, -688(%rbp)
	movslq	%r15d, %rsi
Ltmp41:
	leaq	-704(%rbp), %rdi
	callq	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE7reserveEm
Ltmp42:
## BB#17:
	leal	-1(%r12), %edx
Ltmp44:
	leaq	-3376(%rbp), %rdi
	xorl	%esi, %esi
	callq	__ZN10benchmarks4util13int_generatorEii
Ltmp45:
## BB#18:
	testl	%r15d, %r15d
	jle	LBB5_77
## BB#19:
	movl	%r15d, -716(%rbp)       ## 4-byte Spill
	movslq	%r12d, %r13
	leaq	(,%r13,8), %rax
	leaq	(%rax,%rax,2), %rax
	movq	%rax, -736(%rbp)        ## 8-byte Spill
	movl	%r12d, %eax
	andl	$3, %eax
	movl	%r12d, %ecx
	andl	$7, %ecx
	movq	%rax, -816(%rbp)        ## 8-byte Spill
	negq	%rax
	movq	%rax, -800(%rbp)        ## 8-byte Spill
	movq	%rcx, -808(%rbp)        ## 8-byte Spill
	negq	%rcx
	movq	%rcx, -792(%rbp)        ## 8-byte Spill
	xorps	%xmm0, %xmm0
	movq	__ZTV16non_trivial_type@GOTPCREL(%rip), %r15
	addq	$16, %r15
	movq	__ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rax
	addq	$8, %rax
	movq	%rax, -712(%rbp)        ## 8-byte Spill
	leaq	-1(%r13), %rax
	movq	%rax, -728(%rbp)        ## 8-byte Spill
	xorl	%r14d, %r14d
	movq	%r12, -824(%rbp)        ## 8-byte Spill
LBB5_20:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_25 Depth 2
                                        ##     Child Loop BB5_29 Depth 2
                                        ##     Child Loop BB5_33 Depth 2
                                        ##     Child Loop BB5_36 Depth 2
                                        ##     Child Loop BB5_42 Depth 2
                                        ##     Child Loop BB5_45 Depth 2
                                        ##     Child Loop BB5_68 Depth 2
                                        ##     Child Loop BB5_73 Depth 2
	testl	%r12d, %r12d
	movaps	%xmm0, -640(%rbp)
	movq	$0, -624(%rbp)
	je	LBB5_26
## BB#21:                               ##   in Loop: Header=BB5_20 Depth=1
	js	LBB5_87
## BB#22:                               ##   in Loop: Header=BB5_20 Depth=1
Ltmp46:
	movq	-736(%rbp), %rdi        ## 8-byte Reload
	callq	__Znwm
	movq	%rax, %rcx
Ltmp47:
## BB#23:                               ##   in Loop: Header=BB5_20 Depth=1
	cmpq	$0, -816(%rbp)          ## 8-byte Folded Reload
	movq	%rcx, -632(%rbp)
	movq	%rcx, -640(%rbp)
	leaq	(%r13,%r13,2), %rbx
	leaq	(%rcx,%rbx,8), %rax
	movq	%rax, -624(%rbp)
	je	LBB5_27
## BB#24:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-800(%rbp), %rax        ## 8-byte Reload
	movq	%r13, %rsi
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
LBB5_25:                                ##   Parent Loop BB5_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	$0, 16(%rcx)
	movq	$0, 8(%rcx)
	movq	%r15, (%rcx)
	movq	-632(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, -632(%rbp)
	decq	%rsi
	incq	%rax
	jne	LBB5_25
	jmp	LBB5_28
	.p2align	4, 0x90
LBB5_26:                                ##   in Loop: Header=BB5_20 Depth=1
	movaps	%xmm0, -672(%rbp)
	movq	$0, -656(%rbp)
	jmp	LBB5_38
	.p2align	4, 0x90
LBB5_27:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	%r13, %rsi
	xorps	%xmm0, %xmm0
LBB5_28:                                ##   in Loop: Header=BB5_20 Depth=1
	cmpq	$3, -728(%rbp)          ## 8-byte Folded Reload
	jb	LBB5_30
	.p2align	4, 0x90
LBB5_29:                                ##   Parent Loop BB5_20 Depth=1
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
	jne	LBB5_29
LBB5_30:                                ##   in Loop: Header=BB5_20 Depth=1
	movaps	%xmm0, -672(%rbp)
	movq	$0, -656(%rbp)
Ltmp49:
	movq	-736(%rbp), %rdi        ## 8-byte Reload
	callq	__Znwm
Ltmp50:
## BB#31:                               ##   in Loop: Header=BB5_20 Depth=1
	cmpq	$0, -808(%rbp)          ## 8-byte Folded Reload
	movq	%rax, -664(%rbp)
	movq	%rax, -672(%rbp)
	leaq	(%rax,%rbx,8), %rcx
	movq	%rcx, -656(%rbp)
	je	LBB5_34
## BB#32:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-792(%rbp), %rdx        ## 8-byte Reload
	movq	%r13, %rcx
	.p2align	4, 0x90
LBB5_33:                                ##   Parent Loop BB5_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	$0, 16(%rax)
	movq	$0, 8(%rax)
	movq	%r15, (%rax)
	addq	$24, %rax
	decq	%rcx
	incq	%rdx
	jne	LBB5_33
	jmp	LBB5_35
	.p2align	4, 0x90
LBB5_34:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	%r13, %rcx
LBB5_35:                                ##   in Loop: Header=BB5_20 Depth=1
	cmpq	$7, -728(%rbp)          ## 8-byte Folded Reload
	jb	LBB5_37
	.p2align	4, 0x90
LBB5_36:                                ##   Parent Loop BB5_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	$0, 16(%rax)
	movq	$0, 8(%rax)
	movq	%r15, (%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	movq	%r15, 24(%rax)
	movq	$0, 64(%rax)
	movq	$0, 56(%rax)
	movq	%r15, 48(%rax)
	movq	$0, 88(%rax)
	movq	$0, 80(%rax)
	movq	%r15, 72(%rax)
	movq	$0, 112(%rax)
	movq	$0, 104(%rax)
	movq	%r15, 96(%rax)
	movq	$0, 136(%rax)
	movq	$0, 128(%rax)
	movq	%r15, 120(%rax)
	movq	$0, 160(%rax)
	movq	$0, 152(%rax)
	movq	%r15, 144(%rax)
	movq	$0, 184(%rax)
	movq	$0, 176(%rax)
	movq	%r15, 168(%rax)
	addq	$192, %rax
	addq	$-8, %rcx
	jne	LBB5_36
LBB5_37:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	%rax, -664(%rbp)
LBB5_38:                                ##   in Loop: Header=BB5_20 Depth=1
Ltmp55:
	leaq	-784(%rbp), %rdi
	movl	%r12d, %esi
	callq	__ZN10benchmarks4util13generate_intsEj
Ltmp56:
## BB#39:                               ##   in Loop: Header=BB5_20 Depth=1
Ltmp58:
	leaq	-760(%rbp), %rdi
	movl	%r12d, %esi
	callq	__ZN10benchmarks4util16generate_doublesEj
Ltmp59:
## BB#40:                               ##   in Loop: Header=BB5_20 Depth=1
	testl	%r12d, %r12d
	je	LBB5_43
## BB#41:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-784(%rbp), %rax
	movq	-760(%rbp), %rcx
	movq	-640(%rbp), %rdx
	addq	$16, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB5_42:                                ##   Parent Loop BB5_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax,%rsi,4), %edi
	movq	(%rcx,%rsi,8), %rbx
	movl	%edi, -8(%rdx)
	movq	%rbx, (%rdx)
	incq	%rsi
	addq	$24, %rdx
	cmpq	%r13, %rsi
	jb	LBB5_42
LBB5_43:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	%r15, -864(%rbp)
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movq	%rax, %r12
	movq	-640(%rbp), %rax
	movq	-632(%rbp), %rcx
	cmpq	%rcx, %rax
	je	LBB5_46
## BB#44:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-672(%rbp), %rdx
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
Ltmp61:
	leaq	-3376(%rbp), %rdi
	leaq	-3368(%rbp), %rsi
	movq	%rdi, %rdx
	callq	__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
Ltmp62:
## BB#47:                               ##   in Loop: Header=BB5_20 Depth=1
	cltq
	movq	-672(%rbp), %rcx
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
	movq	%rdx, -840(%rbp)
	movq	-616(%rbp), %rax
	movq	-608(%rbp), %rcx
	leaq	-856(%rbp), %rsi
	movq	%rcx, 8(%rsi)
	movq	%rax, (%rsi)
	movq	-696(%rbp), %rax
	cmpq	-688(%rbp), %rax
	je	LBB5_49
## BB#48:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	%rdx, (%rax)
	addq	$8, %rax
	movq	%rax, -696(%rbp)
	leaq	-608(%rbp), %rbx
	jmp	LBB5_50
	.p2align	4, 0x90
LBB5_49:                                ##   in Loop: Header=BB5_20 Depth=1
Ltmp64:
	leaq	-704(%rbp), %rdi
	leaq	-840(%rbp), %rsi
	callq	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE21__push_back_slow_pathIRKS5_EEvOT_
Ltmp65:
	leaq	-608(%rbp), %rbx
LBB5_50:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	__ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	leaq	24(%rcx), %rax
	movq	%rax, -616(%rbp)
	leaq	64(%rcx), %rax
	movq	%rax, -200(%rbp)
Ltmp67:
	leaq	-200(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp68:
## BB#51:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	%r14, -832(%rbp)        ## 8-byte Spill
	movq	$0, -64(%rbp)
	movl	$-1, -56(%rbp)
	movq	__ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rax
	leaq	24(%rax), %r14
	movq	%r14, -616(%rbp)
	leaq	64(%rax), %r12
	movq	%r12, -200(%rbp)
Ltmp70:
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
Ltmp71:
## BB#52:                               ##   in Loop: Header=BB5_20 Depth=1
	cmpq	$0, -488(%rbp)
	je	LBB5_54
LBB5_53:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	-616(%rbp), %rax
	movq	-24(%rax), %rax
	leaq	-616(%rbp,%rax), %rdi
	movl	-584(%rbp,%rax), %esi
	orl	$4, %esi
Ltmp75:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp76:
	jmp	LBB5_57
	.p2align	4, 0x90
LBB5_54:                                ##   in Loop: Header=BB5_20 Depth=1
Ltmp73:
	leaq	L_.str.1(%rip), %rdi
	leaq	L_.str.3(%rip), %rsi
	callq	_fopen
Ltmp74:
## BB#55:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	%rax, -488(%rbp)
	testq	%rax, %rax
	je	LBB5_53
## BB#56:                               ##   in Loop: Header=BB5_20 Depth=1
	movl	$16, -216(%rbp)
LBB5_57:                                ##   in Loop: Header=BB5_20 Depth=1
	movl	-856(%rbp), %esi
Ltmp78:
	leaq	-616(%rbp), %rbx
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp79:
## BB#58:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	%r14, -616(%rbp)
	movq	%r12, -200(%rbp)
	leaq	-608(%rbp), %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	movq	%rbx, %rdi
	movq	-712(%rbp), %rsi        ## 8-byte Reload
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	leaq	-200(%rbp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	-760(%rbp), %rdi
	testq	%rdi, %rdi
	movq	-832(%rbp), %r14        ## 8-byte Reload
	je	LBB5_62
## BB#59:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-752(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_61
## BB#60:                               ##   in Loop: Header=BB5_20 Depth=1
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -752(%rbp)
LBB5_61:                                ##   in Loop: Header=BB5_20 Depth=1
	callq	__ZdlPv
LBB5_62:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	-784(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_66
## BB#63:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-776(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_65
## BB#64:                               ##   in Loop: Header=BB5_20 Depth=1
	leaq	-4(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-4, %rcx
	addq	%rax, %rcx
	movq	%rcx, -776(%rbp)
LBB5_65:                                ##   in Loop: Header=BB5_20 Depth=1
	callq	__ZdlPv
LBB5_66:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	-672(%rbp), %r12
	testq	%r12, %r12
	je	LBB5_71
## BB#67:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-664(%rbp), %rbx
	cmpq	%r12, %rbx
	je	LBB5_70
	.p2align	4, 0x90
LBB5_68:                                ##   Parent Loop BB5_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-24(%rbx), %rax
	addq	$-24, %rbx
	movq	%rbx, %rdi
	callq	*(%rax)
	cmpq	%rbx, %r12
	jne	LBB5_68
## BB#69:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	%rbx, -664(%rbp)
	movq	-672(%rbp), %r12
LBB5_70:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	%r12, %rdi
	callq	__ZdlPv
LBB5_71:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	-640(%rbp), %rbx
	testq	%rbx, %rbx
	movq	-824(%rbp), %r12        ## 8-byte Reload
	je	LBB5_76
## BB#72:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-632(%rbp), %rax
	cmpq	%rbx, %rax
	je	LBB5_75
	.p2align	4, 0x90
LBB5_73:                                ##   Parent Loop BB5_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	leaq	-24(%rax), %rdi
	movq	%rdi, -632(%rbp)
	movq	-24(%rax), %rax
	callq	*(%rax)
	movq	-632(%rbp), %rax
	cmpq	%rbx, %rax
	jne	LBB5_73
## BB#74:                               ##   in Loop: Header=BB5_20 Depth=1
	movq	-640(%rbp), %rbx
LBB5_75:                                ##   in Loop: Header=BB5_20 Depth=1
	movq	%rbx, %rdi
	callq	__ZdlPv
LBB5_76:                                ##   in Loop: Header=BB5_20 Depth=1
	incl	%r14d
	cmpl	-716(%rbp), %r14d       ## 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	jl	LBB5_20
LBB5_77:
	leaq	-696(%rbp), %rbx
	movq	-704(%rbp), %rdi
	movq	-696(%rbp), %rsi
Ltmp81:
	leaq	-640(%rbp), %rdx
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
Ltmp82:
## BB#78:
	movq	(%rbx), %rax
	movq	-704(%rbp), %rcx
	subq	%rcx, %rax
	sarq	%rax
	andq	$-8, %rax
	movq	(%rcx,%rax), %rsi
Ltmp83:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp84:
## BB#79:
	movb	$32, -616(%rbp)
Ltmp85:
	leaq	-616(%rbp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp86:
## BB#80:
	movq	-704(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_84
## BB#81:
	movq	-696(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_83
## BB#82:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -696(%rbp)
LBB5_83:
	callq	__ZdlPv
LBB5_84:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB5_89
## BB#85:
	xorl	%eax, %eax
	addq	$3336, %rsp             ## imm = 0xD08
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB5_86:
	leaq	-3376(%rbp), %rdi
	callq	__ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
LBB5_87:
Ltmp52:
	leaq	-640(%rbp), %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp53:
## BB#88:
LBB5_89:
	callq	___stack_chk_fail
LBB5_90:
Ltmp54:
	movq	%rax, %r15
	movq	-640(%rbp), %r14
	testq	%r14, %r14
	je	LBB5_134
## BB#91:
	movq	-632(%rbp), %rax
	cmpq	%r14, %rax
	je	LBB5_94
LBB5_92:                                ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rdi
	movq	%rdi, -632(%rbp)
	movq	-24(%rax), %rax
	callq	*(%rax)
	movq	-632(%rbp), %rax
	cmpq	%r14, %rax
	jne	LBB5_92
## BB#93:
	movq	-640(%rbp), %r14
LBB5_94:
	movq	%r14, %rdi
	jmp	LBB5_133
LBB5_95:
Ltmp43:
	jmp	LBB5_102
LBB5_96:
Ltmp40:
	jmp	LBB5_98
LBB5_97:
Ltmp37:
LBB5_98:
	movq	%rax, %r15
	testb	$1, -3376(%rbp)
	je	LBB5_138
## BB#99:
	movq	-3360(%rbp), %rdi
	jmp	LBB5_137
LBB5_100:
Ltmp48:
	jmp	LBB5_102
LBB5_101:
Ltmp87:
LBB5_102:
	movq	%rax, %r15
	jmp	LBB5_134
LBB5_103:
Ltmp66:
	movq	%rax, %r15
	jmp	LBB5_113
LBB5_104:
Ltmp51:
	movq	%rax, %r15
	jmp	LBB5_128
LBB5_105:
Ltmp80:
	movq	%rax, %r15
	movq	%r14, -616(%rbp)
	movq	%r12, -200(%rbp)
	jmp	LBB5_110
LBB5_106:
Ltmp72:
	movq	%rax, %r15
	jmp	LBB5_111
LBB5_107:
Ltmp69:
	movq	%rax, %r15
	jmp	LBB5_112
LBB5_108:
Ltmp63:
	movq	%rax, %r15
	jmp	LBB5_113
LBB5_109:
Ltmp77:
	movq	%rax, %r15
LBB5_110:
	leaq	-608(%rbp), %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
LBB5_111:
	leaq	-616(%rbp), %rdi
	movq	-712(%rbp), %rsi        ## 8-byte Reload
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
LBB5_112:
	leaq	-200(%rbp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
LBB5_113:
	movq	-760(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_118
## BB#114:
	movq	-752(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_116
## BB#115:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -752(%rbp)
LBB5_116:
	callq	__ZdlPv
	jmp	LBB5_118
LBB5_117:
Ltmp60:
	movq	%rax, %r15
LBB5_118:
	movq	-784(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_123
## BB#119:
	movq	-776(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_121
## BB#120:
	leaq	-4(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-4, %rcx
	addq	%rax, %rcx
	movq	%rcx, -776(%rbp)
LBB5_121:
	callq	__ZdlPv
	jmp	LBB5_123
LBB5_122:
Ltmp57:
	movq	%rax, %r15
LBB5_123:
	movq	-672(%rbp), %r14
	testq	%r14, %r14
	je	LBB5_128
## BB#124:
	movq	-664(%rbp), %rbx
	cmpq	%r14, %rbx
	je	LBB5_127
	.p2align	4, 0x90
LBB5_125:                               ## =>This Inner Loop Header: Depth=1
	movq	-24(%rbx), %rax
	addq	$-24, %rbx
	movq	%rbx, %rdi
	callq	*(%rax)
	cmpq	%rbx, %r14
	jne	LBB5_125
## BB#126:
	movq	%rbx, -664(%rbp)
	movq	-672(%rbp), %r14
LBB5_127:
	movq	%r14, %rdi
	callq	__ZdlPv
LBB5_128:
	movq	-640(%rbp), %rbx
	testq	%rbx, %rbx
	je	LBB5_134
## BB#129:
	movq	-632(%rbp), %rax
	cmpq	%rbx, %rax
	je	LBB5_132
	.p2align	4, 0x90
LBB5_130:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rdi
	movq	%rdi, -632(%rbp)
	movq	-24(%rax), %rax
	callq	*(%rax)
	movq	-632(%rbp), %rax
	cmpq	%rbx, %rax
	jne	LBB5_130
## BB#131:
	movq	-640(%rbp), %rbx
LBB5_132:
	movq	%rbx, %rdi
LBB5_133:
	callq	__ZdlPv
LBB5_134:
	movq	-704(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB5_138
## BB#135:
	movq	-696(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB5_137
## BB#136:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -696(%rbp)
LBB5_137:
	callq	__ZdlPv
LBB5_138:
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
	.ascii	"\224\002"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\221\002"              ## Call site table length
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
Lset71 = Ltmp87-Lfunc_begin5            ##     jumps to Ltmp87
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
Lset78 = Ltmp55-Lfunc_begin5            ## >> Call Site 9 <<
	.long	Lset78
Lset79 = Ltmp56-Ltmp55                  ##   Call between Ltmp55 and Ltmp56
	.long	Lset79
Lset80 = Ltmp57-Lfunc_begin5            ##     jumps to Ltmp57
	.long	Lset80
	.byte	0                       ##   On action: cleanup
Lset81 = Ltmp58-Lfunc_begin5            ## >> Call Site 10 <<
	.long	Lset81
Lset82 = Ltmp59-Ltmp58                  ##   Call between Ltmp58 and Ltmp59
	.long	Lset82
Lset83 = Ltmp60-Lfunc_begin5            ##     jumps to Ltmp60
	.long	Lset83
	.byte	0                       ##   On action: cleanup
Lset84 = Ltmp61-Lfunc_begin5            ## >> Call Site 11 <<
	.long	Lset84
Lset85 = Ltmp62-Ltmp61                  ##   Call between Ltmp61 and Ltmp62
	.long	Lset85
Lset86 = Ltmp63-Lfunc_begin5            ##     jumps to Ltmp63
	.long	Lset86
	.byte	0                       ##   On action: cleanup
Lset87 = Ltmp64-Lfunc_begin5            ## >> Call Site 12 <<
	.long	Lset87
Lset88 = Ltmp65-Ltmp64                  ##   Call between Ltmp64 and Ltmp65
	.long	Lset88
Lset89 = Ltmp66-Lfunc_begin5            ##     jumps to Ltmp66
	.long	Lset89
	.byte	0                       ##   On action: cleanup
Lset90 = Ltmp67-Lfunc_begin5            ## >> Call Site 13 <<
	.long	Lset90
Lset91 = Ltmp68-Ltmp67                  ##   Call between Ltmp67 and Ltmp68
	.long	Lset91
Lset92 = Ltmp69-Lfunc_begin5            ##     jumps to Ltmp69
	.long	Lset92
	.byte	0                       ##   On action: cleanup
Lset93 = Ltmp70-Lfunc_begin5            ## >> Call Site 14 <<
	.long	Lset93
Lset94 = Ltmp71-Ltmp70                  ##   Call between Ltmp70 and Ltmp71
	.long	Lset94
Lset95 = Ltmp72-Lfunc_begin5            ##     jumps to Ltmp72
	.long	Lset95
	.byte	0                       ##   On action: cleanup
Lset96 = Ltmp75-Lfunc_begin5            ## >> Call Site 15 <<
	.long	Lset96
Lset97 = Ltmp74-Ltmp75                  ##   Call between Ltmp75 and Ltmp74
	.long	Lset97
Lset98 = Ltmp77-Lfunc_begin5            ##     jumps to Ltmp77
	.long	Lset98
	.byte	0                       ##   On action: cleanup
Lset99 = Ltmp78-Lfunc_begin5            ## >> Call Site 16 <<
	.long	Lset99
Lset100 = Ltmp79-Ltmp78                 ##   Call between Ltmp78 and Ltmp79
	.long	Lset100
Lset101 = Ltmp80-Lfunc_begin5           ##     jumps to Ltmp80
	.long	Lset101
	.byte	0                       ##   On action: cleanup
Lset102 = Ltmp79-Lfunc_begin5           ## >> Call Site 17 <<
	.long	Lset102
Lset103 = Ltmp81-Ltmp79                 ##   Call between Ltmp79 and Ltmp81
	.long	Lset103
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset104 = Ltmp81-Lfunc_begin5           ## >> Call Site 18 <<
	.long	Lset104
Lset105 = Ltmp86-Ltmp81                 ##   Call between Ltmp81 and Ltmp86
	.long	Lset105
Lset106 = Ltmp87-Lfunc_begin5           ##     jumps to Ltmp87
	.long	Lset106
	.byte	0                       ##   On action: cleanup
Lset107 = Ltmp86-Lfunc_begin5           ## >> Call Site 19 <<
	.long	Lset107
Lset108 = Ltmp52-Ltmp86                 ##   Call between Ltmp86 and Ltmp52
	.long	Lset108
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset109 = Ltmp52-Lfunc_begin5           ## >> Call Site 20 <<
	.long	Lset109
Lset110 = Ltmp53-Ltmp52                 ##   Call between Ltmp52 and Ltmp53
	.long	Lset110
Lset111 = Ltmp54-Lfunc_begin5           ##     jumps to Ltmp54
	.long	Lset111
	.byte	0                       ##   On action: cleanup
Lset112 = Ltmp53-Lfunc_begin5           ## >> Call Site 21 <<
	.long	Lset112
Lset113 = Lfunc_end5-Ltmp53             ##   Call between Ltmp53 and Lfunc_end5
	.long	Lset113
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
Ltmp88:
	leaq	L_.str.2(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp89:
## BB#3:
	movq	__ZTVSt12length_error@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	__ZTISt12length_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt12length_errorD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB6_4:
Ltmp90:
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
Lset114 = Lfunc_begin6-Lfunc_begin6     ## >> Call Site 1 <<
	.long	Lset114
Lset115 = Ltmp88-Lfunc_begin6           ##   Call between Lfunc_begin6 and Ltmp88
	.long	Lset115
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset116 = Ltmp88-Lfunc_begin6           ## >> Call Site 2 <<
	.long	Lset116
Lset117 = Ltmp89-Ltmp88                 ##   Call between Ltmp88 and Ltmp89
	.long	Lset117
Lset118 = Ltmp90-Lfunc_begin6           ##     jumps to Ltmp90
	.long	Lset118
	.byte	0                       ##   On action: cleanup
Lset119 = Ltmp89-Lfunc_begin6           ## >> Call Site 3 <<
	.long	Lset119
Lset120 = Lfunc_end6-Ltmp89             ##   Call between Ltmp89 and Lfunc_end6
	.long	Lset120
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
Lcfi50:
	.cfi_def_cfa_offset 16
Lcfi51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi52:
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
Lcfi53:
	.cfi_def_cfa_offset 16
Lcfi54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi55:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Lcfi56:
	.cfi_offset %rbx, -32
Lcfi57:
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
Lcfi58:
	.cfi_def_cfa_offset 16
Lcfi59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi60:
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
Lcfi61:
	.cfi_def_cfa_offset 16
Lcfi62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi63:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
Lcfi64:
	.cfi_offset %rbx, -40
Lcfi65:
	.cfi_offset %r14, -32
Lcfi66:
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

	.globl	__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.p2align	4, 0x90
__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev: ## @_ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi67:
	.cfi_def_cfa_offset 16
Lcfi68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi69:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Lcfi70:
	.cfi_offset %rbx, -32
Lcfi71:
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
Lcfi72:
	.cfi_def_cfa_offset 16
Lcfi73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi74:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Lcfi75:
	.cfi_offset %rbx, -32
Lcfi76:
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
Lcfi77:
	.cfi_def_cfa_offset 16
Lcfi78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi79:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Lcfi80:
	.cfi_offset %rbx, -32
Lcfi81:
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
Lcfi82:
	.cfi_def_cfa_offset 16
Lcfi83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi84:
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
Lcfi85:
	.cfi_def_cfa_offset 16
Lcfi86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi87:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Lcfi88:
	.cfi_offset %rbx, -40
Lcfi89:
	.cfi_offset %r14, -32
Lcfi90:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movq	__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	120(%rbx), %r14
	testq	%r14, %r14
	je	LBB16_5
## BB#1:
Ltmp91:
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
Ltmp92:
## BB#2:
	movq	%r14, %rdi
	callq	_fclose
	testl	%eax, %eax
	jne	LBB16_5
## BB#3:
	movq	$0, 120(%rbx)
LBB16_5:
	cmpb	$0, 400(%rbx)
	je	LBB16_8
## BB#6:
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB16_8
## BB#7:
	callq	__ZdaPv
LBB16_8:
	cmpb	$0, 401(%rbx)
	je	LBB16_11
## BB#9:
	movq	104(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB16_11
## BB#10:
	callq	__ZdaPv
LBB16_11:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev ## TAILCALL
LBB16_4:
Ltmp93:
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	_fclose
	movq	%r15, %rdi
	callq	___cxa_begin_catch
Ltmp94:
	callq	___cxa_end_catch
Ltmp95:
	jmp	LBB16_5
LBB16_12:
Ltmp96:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	callq	___clang_call_terminate
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table16:
Lexception7:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\257\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset121 = Ltmp91-Lfunc_begin7           ## >> Call Site 1 <<
	.long	Lset121
Lset122 = Ltmp92-Ltmp91                 ##   Call between Ltmp91 and Ltmp92
	.long	Lset122
Lset123 = Ltmp93-Lfunc_begin7           ##     jumps to Ltmp93
	.long	Lset123
	.byte	1                       ##   On action: 1
Lset124 = Ltmp92-Lfunc_begin7           ## >> Call Site 2 <<
	.long	Lset124
Lset125 = Ltmp94-Ltmp92                 ##   Call between Ltmp92 and Ltmp94
	.long	Lset125
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset126 = Ltmp94-Lfunc_begin7           ## >> Call Site 3 <<
	.long	Lset126
Lset127 = Ltmp95-Ltmp94                 ##   Call between Ltmp94 and Ltmp95
	.long	Lset127
Lset128 = Ltmp96-Lfunc_begin7           ##     jumps to Ltmp96
	.long	Lset128
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
Lcfi91:
	.cfi_def_cfa_offset 16
Lcfi92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi93:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Lcfi94:
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
Lcfi95:
	.cfi_def_cfa_offset 16
Lcfi96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi97:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Lcfi98:
	.cfi_offset %rbx, -32
Lcfi99:
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
	je	LBB18_10
## BB#1:
	movq	$0, 56(%rbx)
	movq	$0, 48(%rbx)
	movq	$0, 40(%rbx)
	movq	$0, 32(%rbx)
	movq	$0, 24(%rbx)
	movq	$0, 16(%rbx)
	movb	400(%rbx), %cl
	testb	%al, %al
	je	LBB18_6
## BB#2:
	testb	%cl, %cl
	je	LBB18_5
## BB#3:
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB18_5
## BB#4:
	callq	__ZdaPv
LBB18_5:
	movb	401(%rbx), %al
	movb	%al, 400(%rbx)
	movq	112(%rbx), %rax
	movq	%rax, 96(%rbx)
	movq	104(%rbx), %rax
	movq	%rax, 64(%rbx)
	movb	$0, 401(%rbx)
	movq	$0, 112(%rbx)
	movq	$0, 104(%rbx)
	jmp	LBB18_10
LBB18_6:
	testb	%cl, %cl
	je	LBB18_7
LBB18_9:
	movq	96(%rbx), %rdi
	movq	%rdi, 112(%rbx)
	callq	__Znam
	movq	%rax, 104(%rbx)
	movb	$1, 401(%rbx)
	jmp	LBB18_10
LBB18_7:
	movq	64(%rbx), %rax
	leaq	88(%rbx), %rcx
	cmpq	%rcx, %rax
	je	LBB18_9
## BB#8:
	movq	96(%rbx), %rdi
	movq	%rdi, 112(%rbx)
	movq	%rax, 104(%rbx)
	movb	$0, 401(%rbx)
	callq	__Znam
	movq	%rax, 64(%rbx)
	movb	$1, 400(%rbx)
LBB18_10:
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
Lcfi100:
	.cfi_def_cfa_offset 16
Lcfi101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi102:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Lcfi103:
	.cfi_offset %rbx, -48
Lcfi104:
	.cfi_offset %r12, -40
Lcfi105:
	.cfi_offset %r14, -32
Lcfi106:
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
	je	LBB19_3
## BB#1:
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB19_3
## BB#2:
	callq	__ZdaPv
LBB19_3:
	cmpb	$0, 401(%rbx)
	je	LBB19_6
## BB#4:
	movq	104(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB19_6
## BB#5:
	callq	__ZdaPv
LBB19_6:
	movq	%r15, 96(%rbx)
	cmpq	$9, %r15
	jb	LBB19_12
## BB#7:
	movb	402(%rbx), %r12b
	testq	%r14, %r14
	je	LBB19_11
## BB#8:
	testb	%r12b, %r12b
	je	LBB19_11
## BB#9:
	movq	%r14, 64(%rbx)
	movb	$0, 400(%rbx)
	jmp	LBB19_10
LBB19_12:
	leaq	88(%rbx), %rax
	movq	%rax, 64(%rbx)
	movq	$8, 96(%rbx)
	movb	$0, 400(%rbx)
	movb	402(%rbx), %r12b
	testb	%r12b, %r12b
	jne	LBB19_10
	jmp	LBB19_14
LBB19_11:
	movq	%r15, %rdi
	callq	__Znam
	movq	%rax, 64(%rbx)
	movb	$1, 400(%rbx)
	testb	%r12b, %r12b
	je	LBB19_14
LBB19_10:
	movb	$0, 401(%rbx)
	movq	$0, 112(%rbx)
	movq	$0, 104(%rbx)
LBB19_18:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB19_14:
	cmpq	$7, %r15
	movl	$8, %edi
	cmovgq	%r15, %rdi
	movq	%rdi, 112(%rbx)
	testq	%r14, %r14
	je	LBB19_17
## BB#15:
	cmpq	$8, %rdi
	jb	LBB19_17
## BB#16:
	movq	%r14, 104(%rbx)
	movb	$0, 401(%rbx)
	jmp	LBB19_18
LBB19_17:
	callq	__Znam
	movq	%rax, 104(%rbx)
	movb	$1, 401(%rbx)
	jmp	LBB19_18
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi107:
	.cfi_def_cfa_offset 16
Lcfi108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi109:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Lcfi110:
	.cfi_offset %rbx, -56
Lcfi111:
	.cfi_offset %r12, -48
Lcfi112:
	.cfi_offset %r13, -40
Lcfi113:
	.cfi_offset %r14, -32
Lcfi114:
	.cfi_offset %r15, -24
	movl	%ecx, %r15d
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	128(%r14), %rdi
	testq	%rdi, %rdi
	je	LBB20_10
## BB#1:
	movq	(%rdi), %rax
	callq	*48(%rax)
	movl	%eax, %r13d
	cmpq	$0, 120(%r14)
	je	LBB20_5
## BB#2:
	testq	%r12, %r12
	je	LBB20_4
## BB#3:
	testl	%r13d, %r13d
	jle	LBB20_5
LBB20_4:
	movq	(%r14), %rax
	movq	%r14, %rdi
	callq	*48(%rax)
	testl	%eax, %eax
	jne	LBB20_5
## BB#6:
	cmpl	$3, %r15d
	jae	LBB20_5
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
	je	LBB20_8
LBB20_5:
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
LBB20_9:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB20_8:
	movq	120(%r14), %rdi
	callq	_ftello
	addq	$136, %r14
	movl	$16, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	rep;movsq
	movq	%rax, 128(%rbx)
	jmp	LBB20_9
LBB20_10:
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
Lcfi115:
	.cfi_def_cfa_offset 16
Lcfi116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi117:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Lcfi118:
	.cfi_offset %rbx, -40
Lcfi119:
	.cfi_offset %r14, -32
Lcfi120:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpq	$0, 120(%r14)
	je	LBB21_2
## BB#1:
	movq	(%r14), %rax
	movq	%r14, %rdi
	callq	*48(%rax)
	testl	%eax, %eax
	jne	LBB21_2
## BB#3:
	leaq	16(%rbp), %r15
	movq	120(%r14), %rdi
	movq	128(%r15), %rsi
	xorl	%edx, %edx
	callq	_fseeko
	testl	%eax, %eax
	je	LBB21_4
LBB21_2:
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
LBB21_5:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB21_4:
	addq	$136, %r14
	movl	$16, %ecx
	movq	%r14, %rdi
	movq	%r15, %rsi
	rep;movsq
	movl	$136, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_memcpy
	jmp	LBB21_5
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi121:
	.cfi_def_cfa_offset 16
Lcfi122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi123:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
Lcfi124:
	.cfi_offset %rbx, -56
Lcfi125:
	.cfi_offset %r12, -48
Lcfi126:
	.cfi_offset %r13, -40
Lcfi127:
	.cfi_offset %r14, -32
Lcfi128:
	.cfi_offset %r15, -24
	movq	%rdi, %r15
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	xorl	%r13d, %r13d
	cmpq	$0, 120(%r15)
	je	LBB22_24
## BB#1:
	movq	128(%r15), %rax
	testq	%rax, %rax
	je	LBB22_27
## BB#2:
	movl	396(%r15), %ecx
	testb	$16, %cl
	jne	LBB22_6
## BB#3:
	testb	$8, %cl
	je	LBB22_23
## BB#4:
	leaq	264(%r15), %rsi
	leaq	-176(%rbp), %rdi
	movl	$16, %ecx
	rep;movsq
	cmpb	$0, 402(%r15)
	je	LBB22_13
## BB#5:
	movq	32(%r15), %r14
	subq	24(%r15), %r14
	jmp	LBB22_17
LBB22_6:
	movq	48(%r15), %rax
	cmpq	40(%r15), %rax
	je	LBB22_8
## BB#7:
	movq	(%r15), %rax
	movl	$-1, %r13d
	movl	$-1, %esi
	movq	%r15, %rdi
	callq	*104(%rax)
	cmpl	$-1, %eax
	je	LBB22_24
LBB22_8:
	leaq	136(%r15), %r14
	movl	$-1, %r13d
	.p2align	4, 0x90
LBB22_9:                                ## =>This Inner Loop Header: Depth=1
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
	jne	LBB22_24
## BB#10:                               ##   in Loop: Header=BB22_9 Depth=1
	cmpl	$1, %r12d
	je	LBB22_9
## BB#11:
	cmpl	$2, %r12d
	je	LBB22_24
## BB#12:
	movq	120(%r15), %rdi
	callq	_fflush
	testl	%eax, %eax
	jne	LBB22_24
	jmp	LBB22_23
LBB22_13:
	movq	(%rax), %rcx
	movq	%rax, %rdi
	callq	*48(%rcx)
	movq	72(%r15), %rcx
	movq	80(%r15), %r14
	subq	%rcx, %r14
	testl	%eax, %eax
	jle	LBB22_15
## BB#14:
	cltq
	movq	32(%r15), %rcx
	subq	24(%r15), %rcx
	imulq	%rax, %rcx
	addq	%rcx, %r14
LBB22_17:
	xorl	%ebx, %ebx
LBB22_18:
	movq	120(%r15), %rdi
	negq	%r14
	movl	$1, %edx
	movq	%r14, %rsi
	callq	_fseeko
	testl	%eax, %eax
	je	LBB22_20
## BB#19:
	movl	$-1, %r13d
	jmp	LBB22_24
LBB22_20:
	testb	%bl, %bl
	je	LBB22_22
## BB#21:
	leaq	136(%r15), %rdi
	leaq	-176(%rbp), %rsi
	movl	$16, %ecx
	rep;movsq
LBB22_22:
	movq	64(%r15), %rax
	movq	%rax, 80(%r15)
	movq	%rax, 72(%r15)
	movl	$0, 396(%r15)
	movq	$0, 32(%r15)
	movq	$0, 24(%r15)
	movq	$0, 16(%r15)
LBB22_23:
	xorl	%r13d, %r13d
LBB22_24:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB22_26
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
LBB22_15:
	movq	24(%r15), %r8
	cmpq	32(%r15), %r8
	je	LBB22_17
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
	jmp	LBB22_18
LBB22_26:
	callq	___stack_chk_fail
LBB22_27:
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
Lcfi129:
	.cfi_def_cfa_offset 16
Lcfi130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi131:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Lcfi132:
	.cfi_offset %rbx, -56
Lcfi133:
	.cfi_offset %r12, -48
Lcfi134:
	.cfi_offset %r13, -40
Lcfi135:
	.cfi_offset %r14, -32
Lcfi136:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	cmpq	$0, 120(%rbx)
	je	LBB23_1
## BB#2:
	testb	$8, 396(%rbx)
	jne	LBB23_3
## BB#4:
	movq	$0, 56(%rbx)
	movq	$0, 48(%rbx)
	movq	$0, 40(%rbx)
	cmpb	$0, 402(%rbx)
	je	LBB23_6
## BB#5:
	movq	64(%rbx), %rax
	movq	96(%rbx), %rsi
	jmp	LBB23_7
LBB23_1:
	movl	$-1, %eax
	jmp	LBB23_34
LBB23_3:
	leaq	24(%rbx), %r13
	movq	24(%rbx), %rsi
	xorl	%eax, %eax
	testq	%rsi, %rsi
	jne	LBB23_10
	jmp	LBB23_9
LBB23_6:
	movq	104(%rbx), %rax
	movq	112(%rbx), %rsi
LBB23_7:
	addq	%rax, %rsi
	movq	%rax, 16(%rbx)
	leaq	24(%rbx), %r13
	movq	%rsi, 24(%rbx)
	movq	%rsi, 32(%rbx)
	movl	$8, 396(%rbx)
	movb	$1, %al
	testq	%rsi, %rsi
	jne	LBB23_10
LBB23_9:
	leaq	-40(%rbp), %rsi
	leaq	-41(%rbp), %rcx
	movq	%rcx, 16(%rbx)
	movq	%rsi, 24(%rbx)
	movq	%rsi, 32(%rbx)
LBB23_10:
	testb	%al, %al
	je	LBB23_12
## BB#11:
	movq	32(%rbx), %rax
	xorl	%r14d, %r14d
	cmpq	%rax, %rsi
	jne	LBB23_31
	jmp	LBB23_14
LBB23_12:
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
	je	LBB23_14
LBB23_31:
	movzbl	(%rsi), %eax
	leaq	16(%rbx), %r12
LBB23_32:
	leaq	-41(%rbp), %rcx
	cmpq	%rcx, (%r12)
	jne	LBB23_34
## BB#33:
	movq	$0, (%r12)
	movq	$0, 24(%rbx)
	movq	$0, 32(%rbx)
LBB23_34:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB23_14:
	leaq	16(%rbx), %r12
	movq	16(%rbx), %rdi
	subq	%r14, %rsi
	movq	%r14, %rdx
	callq	_memmove
	cmpb	$0, 402(%rbx)
	je	LBB23_18
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
	je	LBB23_16
## BB#17:
	movq	16(%rbx), %rcx
	leaq	(%rcx,%r14), %rdx
	addq	%rdx, %rax
	movq	%rdx, 24(%rbx)
	movq	%rax, 32(%rbx)
	movzbl	(%rcx,%r14), %eax
	jmp	LBB23_32
LBB23_18:
	movq	72(%rbx), %rsi
	movq	80(%rbx), %rax
	movq	%rax, %rdx
	subq	%rsi, %rdx
	je	LBB23_20
## BB#19:
	movq	64(%rbx), %rdi
	callq	_memmove
	movq	72(%rbx), %rsi
	movq	80(%rbx), %rax
LBB23_20:
	movq	64(%rbx), %rdx
	subq	%rsi, %rax
	addq	%rdx, %rax
	movq	%rax, 72(%rbx)
	leaq	88(%rbx), %rcx
	cmpq	%rcx, %rdx
	je	LBB23_21
## BB#22:
	movq	96(%rbx), %rcx
	jmp	LBB23_23
LBB23_16:
	movl	$-1, %eax
	jmp	LBB23_32
LBB23_21:
	movl	$8, %ecx
LBB23_23:
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
	je	LBB23_24
## BB#25:
	movq	128(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB23_35
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
	jne	LBB23_28
## BB#27:
	movq	64(%rbx), %rax
	movq	80(%rbx), %rcx
	movq	%rax, 16(%rbx)
	movq	%rax, (%r13)
	movq	%rcx, 32(%rbx)
	movzbl	(%rax), %eax
	jmp	LBB23_32
LBB23_24:
	movl	$-1, %eax
	jmp	LBB23_32
LBB23_28:
	movq	-56(%rbp), %rax
	addq	(%r12), %r14
	cmpq	%r14, %rax
	je	LBB23_29
## BB#30:
	movq	%r14, 24(%rbx)
	movq	%rax, 32(%rbx)
	movzbl	(%r14), %eax
	jmp	LBB23_32
LBB23_29:
	movl	$-1, %eax
	jmp	LBB23_32
LBB23_35:
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
Lcfi137:
	.cfi_def_cfa_offset 16
Lcfi138:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi139:
	.cfi_def_cfa_register %rbp
	movl	$-1, %eax
	cmpq	$0, 120(%rdi)
	je	LBB24_7
## BB#1:
	movq	24(%rdi), %rcx
	cmpq	%rcx, 16(%rdi)
	jae	LBB24_7
## BB#2:
	cmpl	$-1, %esi
	je	LBB24_3
## BB#4:
	testb	$16, 392(%rdi)
	jne	LBB24_6
## BB#5:
	cmpb	-1(%rcx), %sil
	jne	LBB24_7
LBB24_6:
	decq	%rcx
	movq	%rcx, 24(%rdi)
	movb	%sil, (%rcx)
	movl	%esi, %eax
LBB24_7:
	popq	%rbp
	retq
LBB24_3:
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
Lcfi140:
	.cfi_def_cfa_offset 16
Lcfi141:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi142:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Lcfi143:
	.cfi_offset %rbx, -56
Lcfi144:
	.cfi_offset %r12, -48
Lcfi145:
	.cfi_offset %r13, -40
Lcfi146:
	.cfi_offset %r14, -32
Lcfi147:
	.cfi_offset %r15, -24
	movl	%esi, %r14d
	movq	%rdi, %r12
	cmpq	$0, 120(%r12)
	je	LBB25_30
## BB#1:
	testb	$16, 396(%r12)
	jne	LBB25_2
## BB#3:
	movq	$0, 32(%r12)
	movq	$0, 24(%r12)
	movq	$0, 16(%r12)
	movq	96(%r12), %rcx
	cmpq	$9, %rcx
	jb	LBB25_8
## BB#4:
	cmpb	$0, 402(%r12)
	je	LBB25_7
## BB#5:
	movq	64(%r12), %rax
	jmp	LBB25_6
LBB25_2:
	leaq	40(%r12), %r15
	movq	40(%r12), %rax
	movq	56(%r12), %r13
	leaq	56(%r12), %rdx
	movq	%rax, %rsi
	jmp	LBB25_10
LBB25_8:
	leaq	40(%r12), %r15
	movq	$0, 56(%r12)
	movq	$0, 48(%r12)
	movq	$0, 40(%r12)
	leaq	56(%r12), %rdx
	xorl	%eax, %eax
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	jmp	LBB25_9
LBB25_7:
	movq	104(%r12), %rax
	movq	112(%r12), %rcx
LBB25_6:
	leaq	-1(%rax,%rcx), %r13
	movq	%rax, 48(%r12)
	leaq	40(%r12), %r15
	movq	%rax, 40(%r12)
	leaq	56(%r12), %rdx
	movq	%r13, 56(%r12)
	movq	%rax, %rsi
LBB25_9:
	movl	$16, 396(%r12)
LBB25_10:
	cmpl	$-1, %r14d
	movq	48(%r12), %rcx
	je	LBB25_14
## BB#11:
	testq	%rcx, %rcx
	jne	LBB25_13
## BB#12:
	leaq	-40(%rbp), %rax
	leaq	-41(%rbp), %rcx
	movq	%rcx, 48(%r12)
	movq	%rcx, 40(%r12)
	movq	%rax, 56(%r12)
LBB25_13:
	movb	%r14b, (%rcx)
	movq	48(%r12), %rcx
	incq	%rcx
	movq	%rcx, 48(%r12)
	movq	40(%r12), %rax
LBB25_14:
	movq	%rcx, %rbx
	subq	%rax, %rbx
	je	LBB25_18
## BB#15:
	movq	%rsi, -88(%rbp)         ## 8-byte Spill
	movq	%rdx, -96(%rbp)         ## 8-byte Spill
	cmpb	$0, 402(%r12)
	je	LBB25_19
## BB#16:
	movq	120(%r12), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	_fwrite
	movq	%rax, %rcx
	movl	$-1, %eax
	cmpq	%rbx, %rcx
	jne	LBB25_31
LBB25_17:
	movq	-88(%rbp), %rax         ## 8-byte Reload
	movq	%rax, 48(%r12)
	movq	%rax, (%r15)
	movq	-96(%rbp), %rax         ## 8-byte Reload
	movq	%r13, (%rax)
LBB25_18:
	xorl	%eax, %eax
	cmpl	$-1, %r14d
	cmovnel	%r14d, %eax
	jmp	LBB25_31
LBB25_19:
	movq	%r13, -80(%rbp)         ## 8-byte Spill
	movq	%r15, -64(%rbp)         ## 8-byte Spill
	movq	64(%r12), %r9
	movq	%r9, -72(%rbp)
	movq	128(%r12), %rdi
	testq	%rdi, %rdi
	je	LBB25_32
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
	jmp	LBB25_21
	.p2align	4, 0x90
LBB25_29:                               ##   in Loop: Header=BB25_21 Depth=1
	movq	64(%r12), %r9
	movq	96(%r12), %rax
	addq	%r9, %rax
	movq	(%rdi), %r10
	movq	%r15, %rsi
	leaq	-56(%rbp), %r8
	leaq	-72(%rbp), %rbx
	pushq	%rbx
	pushq	%rax
LBB25_21:                               ## =>This Inner Loop Header: Depth=1
	callq	*24(%r10)
	addq	$16, %rsp
	movl	%eax, %r13d
	movq	40(%r12), %rdi
	cmpq	%rdi, -56(%rbp)
	je	LBB25_30
## BB#22:                               ##   in Loop: Header=BB25_21 Depth=1
	cmpl	$3, %r13d
	je	LBB25_23
## BB#25:                               ##   in Loop: Header=BB25_21 Depth=1
	movl	%r13d, %eax
	orl	$1, %eax
	cmpl	$1, %eax
	jne	LBB25_30
## BB#26:                               ##   in Loop: Header=BB25_21 Depth=1
	movq	-72(%rbp), %rbx
	movq	64(%r12), %rdi
	movq	120(%r12), %rcx
	subq	%rdi, %rbx
	movl	$1, %esi
	movq	%rbx, %rdx
	callq	_fwrite
	cmpq	%rbx, %rax
	jne	LBB25_30
## BB#27:                               ##   in Loop: Header=BB25_21 Depth=1
	cmpl	$1, %r13d
	jne	LBB25_24
## BB#28:                               ##   in Loop: Header=BB25_21 Depth=1
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
	jne	LBB25_29
LBB25_32:
	movl	$8, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	__ZNSt8bad_castC1Ev
	movq	__ZTISt8bad_cast@GOTPCREL(%rip), %rsi
	movq	__ZNSt8bad_castD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB25_23:
	movq	48(%r12), %rbx
	movq	120(%r12), %rcx
	subq	%rdi, %rbx
	movl	$1, %esi
	movq	%rbx, %rdx
	callq	_fwrite
	cmpq	%rbx, %rax
	jne	LBB25_30
LBB25_24:
	movq	-64(%rbp), %r15         ## 8-byte Reload
	movq	-80(%rbp), %r13         ## 8-byte Reload
	jmp	LBB25_17
LBB25_30:
	movl	$-1, %eax
LBB25_31:
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
Lcfi148:
	.cfi_def_cfa_offset 16
Lcfi149:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi150:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Lcfi151:
	.cfi_offset %rbx, -56
Lcfi152:
	.cfi_offset %r12, -48
Lcfi153:
	.cfi_offset %r13, -40
Lcfi154:
	.cfi_offset %r14, -32
Lcfi155:
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
	jne	LBB26_15
## BB#1:
	movabsq	$2305843009213693951, %rcx ## imm = 0x1FFFFFFFFFFFFFFF
	movq	16(%r13), %r14
	subq	%rsi, %r14
	movq	%r14, %rdx
	sarq	$3, %rdx
	movabsq	$1152921504606846974, %rdi ## imm = 0xFFFFFFFFFFFFFFE
	cmpq	%rdi, %rdx
	ja	LBB26_2
## BB#8:
	sarq	$2, %r14
	cmpq	%rax, %r14
	cmovbq	%rax, %r14
	testq	%r14, %r14
	je	LBB26_9
## BB#10:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	cmpq	%rcx, %r14
	jbe	LBB26_3
## BB#11:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp97:
	leaq	L_.str.2(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp98:
## BB#12:
	movq	__ZTVSt12length_error@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	__ZTISt12length_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt12length_errorD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB26_2:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	movq	%rcx, %r14
LBB26_3:
	leaq	(,%r14,8), %rdi
	callq	__Znwm
	movq	%rax, %rbx
	movq	-56(%rbp), %rsi         ## 8-byte Reload
	movq	-48(%rbp), %r8          ## 8-byte Reload
LBB26_4:
	leaq	(%rbx,%r14,8), %r14
	movq	(%r8), %rax
	movq	%rax, (%rbx,%r15,8)
	leaq	8(%rbx,%r15,8), %r15
	testq	%r12, %r12
	jle	LBB26_6
## BB#5:
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%rsi, %r12
	callq	_memcpy
	movq	%r12, %rsi
LBB26_6:
	movq	%rbx, (%r13)
	movq	%r15, 8(%r13)
	movq	%r14, 16(%r13)
	testq	%rsi, %rsi
	je	LBB26_14
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
LBB26_14:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB26_9:
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	jmp	LBB26_4
LBB26_15:
	movq	%r13, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
LBB26_13:
Ltmp99:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	__Unwind_Resume
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table26:
Lexception8:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset129 = Lfunc_begin8-Lfunc_begin8     ## >> Call Site 1 <<
	.long	Lset129
Lset130 = Ltmp97-Lfunc_begin8           ##   Call between Lfunc_begin8 and Ltmp97
	.long	Lset130
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset131 = Ltmp97-Lfunc_begin8           ## >> Call Site 2 <<
	.long	Lset131
Lset132 = Ltmp98-Ltmp97                 ##   Call between Ltmp97 and Ltmp98
	.long	Lset132
Lset133 = Ltmp99-Lfunc_begin8           ##     jumps to Ltmp99
	.long	Lset133
	.byte	0                       ##   On action: cleanup
Lset134 = Ltmp98-Lfunc_begin8           ## >> Call Site 3 <<
	.long	Lset134
Lset135 = Lfunc_end8-Ltmp98             ##   Call between Ltmp98 and Lfunc_end8
	.long	Lset135
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
Lcfi156:
	.cfi_def_cfa_offset 16
Lcfi157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi158:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Lcfi159:
	.cfi_offset %rbx, -40
Lcfi160:
	.cfi_offset %r14, -32
Lcfi161:
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
Ltmp100:
	movq	__ZNSt3__17codecvtIcc11__mbstate_tE2idE@GOTPCREL(%rip), %rsi
	movq	%r15, %rdi
	callq	__ZNKSt3__16locale9has_facetERNS0_2idE
	movl	%eax, %r15d
Ltmp101:
## BB#1:
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	testb	%r15b, %r15b
	je	LBB27_4
## BB#2:
	leaq	-32(%rbp), %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16localeC1ERKS0_
Ltmp103:
	movq	__ZNSt3__17codecvtIcc11__mbstate_tE2idE@GOTPCREL(%rip), %rsi
	movq	%r15, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp104:
## BB#3:
	movq	%rax, 128(%rbx)
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movq	128(%rbx), %rdi
	movq	(%rdi), %rax
	callq	*56(%rax)
	movb	%al, 402(%rbx)
LBB27_4:
	movq	(%rbx), %rax
Ltmp106:
	xorl	%esi, %esi
	movl	$4096, %edx             ## imm = 0x1000
	movq	%rbx, %rdi
	callq	*24(%rax)
Ltmp107:
## BB#5:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB27_9:
Ltmp105:
	movq	%rax, %r14
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB27_7
LBB27_6:
Ltmp108:
	movq	%rax, %r14
LBB27_7:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	callq	__Unwind_Resume
LBB27_8:
Ltmp102:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table27:
Lexception9:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\326\200\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	78                      ## Call site table length
Lset136 = Lfunc_begin9-Lfunc_begin9     ## >> Call Site 1 <<
	.long	Lset136
Lset137 = Ltmp100-Lfunc_begin9          ##   Call between Lfunc_begin9 and Ltmp100
	.long	Lset137
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset138 = Ltmp100-Lfunc_begin9          ## >> Call Site 2 <<
	.long	Lset138
Lset139 = Ltmp101-Ltmp100               ##   Call between Ltmp100 and Ltmp101
	.long	Lset139
Lset140 = Ltmp102-Lfunc_begin9          ##     jumps to Ltmp102
	.long	Lset140
	.byte	1                       ##   On action: 1
Lset141 = Ltmp103-Lfunc_begin9          ## >> Call Site 3 <<
	.long	Lset141
Lset142 = Ltmp104-Ltmp103               ##   Call between Ltmp103 and Ltmp104
	.long	Lset142
Lset143 = Ltmp105-Lfunc_begin9          ##     jumps to Ltmp105
	.long	Lset143
	.byte	0                       ##   On action: cleanup
Lset144 = Ltmp104-Lfunc_begin9          ## >> Call Site 4 <<
	.long	Lset144
Lset145 = Ltmp106-Ltmp104               ##   Call between Ltmp104 and Ltmp106
	.long	Lset145
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset146 = Ltmp106-Lfunc_begin9          ## >> Call Site 5 <<
	.long	Lset146
Lset147 = Ltmp107-Ltmp106               ##   Call between Ltmp106 and Ltmp107
	.long	Lset147
Lset148 = Ltmp108-Lfunc_begin9          ##     jumps to Ltmp108
	.long	Lset148
	.byte	0                       ##   On action: cleanup
Lset149 = Ltmp107-Lfunc_begin9          ## >> Call Site 6 <<
	.long	Lset149
Lset150 = Lfunc_end9-Ltmp107            ##   Call between Ltmp107 and Lfunc_end9
	.long	Lset150
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
Lcfi162:
	.cfi_def_cfa_offset 16
Lcfi163:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi164:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Lcfi165:
	.cfi_offset %rbx, -56
Lcfi166:
	.cfi_offset %r12, -48
Lcfi167:
	.cfi_offset %r13, -40
Lcfi168:
	.cfi_offset %r14, -32
Lcfi169:
	.cfi_offset %r15, -24
	movq	%rdx, -48(%rbp)         ## 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %r13
	jmp	LBB28_2
LBB28_1:                                ##   in Loop: Header=BB28_2 Depth=1
	leaq	8(%r15), %rdi
	movq	%r14, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	movq	%r15, %r14
	.p2align	4, 0x90
LBB28_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB28_4 Depth 2
                                        ##       Child Loop BB28_32 Depth 3
                                        ##         Child Loop BB28_6 Depth 4
                                        ##         Child Loop BB28_14 Depth 4
                                        ##         Child Loop BB28_27 Depth 4
                                        ##           Child Loop BB28_28 Depth 5
                                        ##           Child Loop BB28_30 Depth 5
                                        ##       Child Loop BB28_41 Depth 3
                                        ##         Child Loop BB28_42 Depth 4
                                        ##         Child Loop BB28_44 Depth 4
	leaq	-8(%r14), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	leaq	-16(%r14), %rax
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	movq	%r13, %rbx
	jmp	LBB28_4
	.p2align	4, 0x90
LBB28_3:                                ##   in Loop: Header=BB28_4 Depth=2
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	addq	$8, %r15
	movq	%r15, %rbx
LBB28_4:                                ##   Parent Loop BB28_2 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB28_32 Depth 3
                                        ##         Child Loop BB28_6 Depth 4
                                        ##         Child Loop BB28_14 Depth 4
                                        ##         Child Loop BB28_27 Depth 4
                                        ##           Child Loop BB28_28 Depth 5
                                        ##           Child Loop BB28_30 Depth 5
                                        ##       Child Loop BB28_41 Depth 3
                                        ##         Child Loop BB28_42 Depth 4
                                        ##         Child Loop BB28_44 Depth 4
	movq	%rbx, %r13
	jmp	LBB28_32
	.p2align	4, 0x90
LBB28_5:                                ##   in Loop: Header=BB28_32 Depth=3
	movq	-64(%rbp), %rdx         ## 8-byte Reload
	.p2align	4, 0x90
LBB28_6:                                ##   Parent Loop BB28_2 Depth=1
                                        ##     Parent Loop BB28_4 Depth=2
                                        ##       Parent Loop BB28_32 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	cmpq	%rdx, %r13
	je	LBB28_11
## BB#7:                                ##   in Loop: Header=BB28_6 Depth=4
	movq	(%rdx), %rbx
	addq	$-8, %rdx
	cmpq	%rdi, %rbx
	jge	LBB28_6
	jmp	LBB28_38
	.p2align	4, 0x90
LBB28_8:                                ##   in Loop: Header=BB28_32 Depth=3
	movq	(%r12), %rcx
	movq	(%r13), %rax
	cmpq	%rax, %rcx
	movq	(%r15), %rdx
	jge	LBB28_16
## BB#9:                                ##   in Loop: Header=BB28_32 Depth=3
	cmpq	%rcx, %rdx
	jge	LBB28_19
## BB#10:                               ##   in Loop: Header=BB28_32 Depth=3
	movq	%rdx, (%r13)
	movq	%rax, (%r15)
	movl	$1, %eax
	jmp	LBB28_36
	.p2align	4, 0x90
LBB28_11:                               ##   in Loop: Header=BB28_32 Depth=3
	leaq	8(%r13), %rax
	movq	(%r15), %rdx
	cmpq	%rdx, %rsi
	jl	LBB28_25
## BB#12:                               ##   in Loop: Header=BB28_32 Depth=3
	cmpq	%r15, %rax
	je	LBB28_104
## BB#13:                               ##   in Loop: Header=BB28_32 Depth=3
	addq	$16, %r13
	movq	%r13, %rax
	.p2align	4, 0x90
LBB28_14:                               ##   Parent Loop BB28_2 Depth=1
                                        ##     Parent Loop BB28_4 Depth=2
                                        ##       Parent Loop BB28_32 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	-8(%rax), %rdi
	cmpq	%rdi, %rsi
	jl	LBB28_24
## BB#15:                               ##   in Loop: Header=BB28_14 Depth=4
	addq	$8, %rax
	cmpq	%rax, %r14
	jne	LBB28_14
	jmp	LBB28_104
	.p2align	4, 0x90
LBB28_16:                               ##   in Loop: Header=BB28_32 Depth=3
	cmpq	%rcx, %rdx
	jge	LBB28_22
## BB#17:                               ##   in Loop: Header=BB28_32 Depth=3
	movq	%rdx, (%r12)
	movq	%rcx, (%r15)
	movq	(%r12), %rax
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB28_23
## BB#18:                               ##   in Loop: Header=BB28_32 Depth=3
	movq	%rax, (%r13)
	movq	%rcx, (%r12)
	jmp	LBB28_21
LBB28_19:                               ##   in Loop: Header=BB28_32 Depth=3
	movq	%rcx, (%r13)
	movq	%rax, (%r12)
	movq	(%r15), %rcx
	cmpq	%rax, %rcx
	jge	LBB28_23
## BB#20:                               ##   in Loop: Header=BB28_32 Depth=3
	movq	%rcx, (%r12)
	movq	%rax, (%r15)
LBB28_21:                               ##   in Loop: Header=BB28_32 Depth=3
	movl	$2, %eax
	jmp	LBB28_36
LBB28_22:                               ##   in Loop: Header=BB28_32 Depth=3
	xorl	%eax, %eax
	jmp	LBB28_36
LBB28_23:                               ##   in Loop: Header=BB28_32 Depth=3
	movl	$1, %eax
	jmp	LBB28_36
LBB28_24:                               ##   in Loop: Header=BB28_32 Depth=3
	movq	%rdx, -8(%rax)
	movq	%rdi, (%r15)
LBB28_25:                               ##   in Loop: Header=BB28_32 Depth=3
	cmpq	%r15, %rax
	jne	LBB28_27
	jmp	LBB28_104
	.p2align	4, 0x90
LBB28_26:                               ##   in Loop: Header=BB28_27 Depth=4
	movq	%rbx, -8(%rax)
	movq	%rsi, (%r15)
LBB28_27:                               ##   Parent Loop BB28_2 Depth=1
                                        ##     Parent Loop BB28_4 Depth=2
                                        ##       Parent Loop BB28_32 Depth=3
                                        ## =>      This Loop Header: Depth=4
                                        ##           Child Loop BB28_28 Depth 5
                                        ##           Child Loop BB28_30 Depth 5
	movq	(%rcx), %rdi
	.p2align	4, 0x90
LBB28_28:                               ##   Parent Loop BB28_2 Depth=1
                                        ##     Parent Loop BB28_4 Depth=2
                                        ##       Parent Loop BB28_32 Depth=3
                                        ##         Parent Loop BB28_27 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movq	(%rax), %rsi
	addq	$8, %rax
	cmpq	%rsi, %rdi
	jge	LBB28_28
## BB#29:                               ##   in Loop: Header=BB28_27 Depth=4
	leaq	-8(%rax), %r13
	.p2align	4, 0x90
LBB28_30:                               ##   Parent Loop BB28_2 Depth=1
                                        ##     Parent Loop BB28_4 Depth=2
                                        ##       Parent Loop BB28_32 Depth=3
                                        ##         Parent Loop BB28_27 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movq	-8(%r15), %rbx
	addq	$-8, %r15
	cmpq	%rbx, %rdi
	jl	LBB28_30
## BB#31:                               ##   in Loop: Header=BB28_27 Depth=4
	cmpq	%r15, %r13
	jb	LBB28_26
LBB28_32:                               ##   Parent Loop BB28_2 Depth=1
                                        ##     Parent Loop BB28_4 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB28_6 Depth 4
                                        ##         Child Loop BB28_14 Depth 4
                                        ##         Child Loop BB28_27 Depth 4
                                        ##           Child Loop BB28_28 Depth 5
                                        ##           Child Loop BB28_30 Depth 5
	movq	%r14, %rcx
	subq	%r13, %rcx
	movq	%rcx, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	jbe	LBB28_55
## BB#33:                               ##   in Loop: Header=BB28_32 Depth=3
	cmpq	$247, %rcx
	movq	-56(%rbp), %r15         ## 8-byte Reload
	jle	LBB28_58
## BB#34:                               ##   in Loop: Header=BB28_32 Depth=3
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rax, %rdx
	movabsq	$4611686018427387902, %rsi ## imm = 0x3FFFFFFFFFFFFFFE
	andq	%rsi, %rdx
	cmpq	$7993, %rcx             ## imm = 0x1F39
	leaq	(%r13,%rdx,4), %r12
	jl	LBB28_8
## BB#35:                               ##   in Loop: Header=BB28_32 Depth=3
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
LBB28_36:                               ##   in Loop: Header=BB28_32 Depth=3
	movq	%r13, %rcx
	movq	(%rcx), %rsi
	movq	(%r12), %rdi
	cmpq	%rdi, %rsi
	jge	LBB28_5
## BB#37:                               ##   in Loop: Header=BB28_4 Depth=2
	movq	%r15, %rdx
	jmp	LBB28_39
	.p2align	4, 0x90
LBB28_38:                               ##   in Loop: Header=BB28_4 Depth=2
	movq	%rbx, (%rcx)
	movq	%rsi, 8(%rdx)
	addq	$8, %rdx
	incl	%eax
LBB28_39:                               ##   in Loop: Header=BB28_4 Depth=2
	leaq	8(%r13), %r15
	cmpq	%rdx, %r15
	jb	LBB28_41
	jmp	LBB28_47
	.p2align	4, 0x90
LBB28_40:                               ##   in Loop: Header=BB28_41 Depth=3
	movq	%rbx, (%rcx)
	movq	%rdi, (%rdx)
	incl	%eax
	cmpq	%rcx, %r12
	cmoveq	%rdx, %r12
LBB28_41:                               ##   Parent Loop BB28_2 Depth=1
                                        ##     Parent Loop BB28_4 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB28_42 Depth 4
                                        ##         Child Loop BB28_44 Depth 4
	movq	(%r12), %rsi
	addq	$-8, %r15
	movq	%r15, %rcx
	.p2align	4, 0x90
LBB28_42:                               ##   Parent Loop BB28_2 Depth=1
                                        ##     Parent Loop BB28_4 Depth=2
                                        ##       Parent Loop BB28_41 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	8(%rcx), %rdi
	addq	$8, %rcx
	cmpq	%rsi, %rdi
	jl	LBB28_42
## BB#43:                               ##   in Loop: Header=BB28_41 Depth=3
	leaq	8(%rcx), %r15
	.p2align	4, 0x90
LBB28_44:                               ##   Parent Loop BB28_2 Depth=1
                                        ##     Parent Loop BB28_4 Depth=2
                                        ##       Parent Loop BB28_41 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	-8(%rdx), %rbx
	addq	$-8, %rdx
	cmpq	%rsi, %rbx
	jge	LBB28_44
## BB#45:                               ##   in Loop: Header=BB28_41 Depth=3
	cmpq	%rdx, %rcx
	jbe	LBB28_40
## BB#46:                               ##   in Loop: Header=BB28_4 Depth=2
	movq	%rcx, %r15
LBB28_47:                               ##   in Loop: Header=BB28_4 Depth=2
	cmpq	%r12, %r15
	je	LBB28_50
## BB#48:                               ##   in Loop: Header=BB28_4 Depth=2
	movq	(%r12), %rcx
	movq	(%r15), %rdx
	cmpq	%rdx, %rcx
	jge	LBB28_50
## BB#49:                               ##   in Loop: Header=BB28_4 Depth=2
	movq	%rcx, (%r15)
	movq	%rdx, (%r12)
	incl	%eax
LBB28_50:                               ##   in Loop: Header=BB28_4 Depth=2
	testl	%eax, %eax
	jne	LBB28_53
## BB#51:                               ##   in Loop: Header=BB28_4 Depth=2
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
	jne	LBB28_54
## BB#52:                               ##   in Loop: Header=BB28_4 Depth=2
	testb	%r12b, %r12b
	jne	LBB28_4
LBB28_53:                               ##   in Loop: Header=BB28_4 Depth=2
	movq	%r15, %rax
	subq	%r13, %rax
	movq	%r14, %rcx
	subq	%r15, %rcx
	cmpq	%rcx, %rax
	jl	LBB28_3
	jmp	LBB28_1
LBB28_54:                               ##   in Loop: Header=BB28_2 Depth=1
	testb	%r12b, %r12b
	movq	%r15, %r14
	je	LBB28_2
	jmp	LBB28_104
LBB28_55:
	leaq	LJTI28_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	movq	-56(%rbp), %r8          ## 8-byte Reload
	jmpq	*%rax
LBB28_56:
	movq	-8(%r14), %rax
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB28_104
## BB#57:
	movq	%rax, (%r13)
	movq	%rcx, -8(%r14)
	jmp	LBB28_104
LBB28_58:
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rcx, %rax
	movq	16(%r13), %rdx
	jge	LBB28_61
## BB#59:
	cmpq	%rax, %rdx
	jge	LBB28_64
## BB#60:
	movq	%rdx, (%r13)
	jmp	LBB28_66
LBB28_61:
	cmpq	%rax, %rdx
	jge	LBB28_75
## BB#62:
	movq	%rdx, 8(%r13)
	movq	%rax, 16(%r13)
	cmpq	%rcx, %rdx
	jge	LBB28_76
## BB#63:
	movq	%rdx, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB28_76
LBB28_64:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	cmpq	%rcx, %rdx
	jge	LBB28_75
## BB#65:
	movq	%rdx, 8(%r13)
LBB28_66:
	movq	%rcx, 16(%r13)
	movq	%rcx, %rax
	jmp	LBB28_76
LBB28_75:
	movq	%rdx, %rax
LBB28_76:
	leaq	24(%r13), %rdx
	cmpq	%r14, %rdx
	je	LBB28_104
## BB#77:
	movl	$24, %ecx
	jmp	LBB28_83
	.p2align	4, 0x90
LBB28_78:                               ##   in Loop: Header=BB28_83 Depth=1
	addq	%r13, %rdi
	jmp	LBB28_80
	.p2align	4, 0x90
LBB28_79:                               ##   in Loop: Header=BB28_83 Depth=1
	movq	%r13, %rdi
LBB28_80:                               ##   in Loop: Header=BB28_83 Depth=1
	movq	%rsi, (%rdi)
LBB28_81:                               ##   in Loop: Header=BB28_83 Depth=1
	leaq	8(%rdx), %rsi
	cmpq	%r14, %rsi
	je	LBB28_104
## BB#82:                               ##   in Loop: Header=BB28_83 Depth=1
	movq	(%rdx), %rax
	addq	$8, %rcx
	movq	%rsi, %rdx
LBB28_83:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB28_85 Depth 2
	movq	(%rdx), %rsi
	cmpq	%rax, %rsi
	jge	LBB28_81
## BB#84:                               ##   in Loop: Header=BB28_83 Depth=1
	movq	%rcx, %rdi
	.p2align	4, 0x90
LBB28_85:                               ##   Parent Loop BB28_83 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, (%r13,%rdi)
	cmpq	$8, %rdi
	je	LBB28_79
## BB#86:                               ##   in Loop: Header=BB28_85 Depth=2
	movq	-16(%r13,%rdi), %rax
	addq	$-8, %rdi
	cmpq	%rax, %rsi
	jl	LBB28_85
	jmp	LBB28_78
LBB28_68:
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rax, %rcx
	movq	-8(%r14), %rdx
	jge	LBB28_87
## BB#69:
	cmpq	%rcx, %rdx
	jge	LBB28_93
## BB#70:
	movq	%rdx, (%r13)
	movq	%rax, -8(%r14)
	jmp	LBB28_104
LBB28_71:
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
LBB28_72:
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rcx, %rax
	movq	16(%r13), %rdx
	jge	LBB28_90
## BB#73:
	cmpq	%rax, %rdx
	jge	LBB28_95
## BB#74:
	movq	%rdx, (%r13)
	jmp	LBB28_97
LBB28_87:
	cmpq	%rcx, %rdx
	jge	LBB28_104
## BB#88:
	movq	%rdx, 8(%r13)
	movq	%rcx, -8(%r14)
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rax, %rcx
	jge	LBB28_104
## BB#89:
	movq	%rcx, (%r13)
	movq	%rax, 8(%r13)
	jmp	LBB28_104
LBB28_90:
	cmpq	%rax, %rdx
	jge	LBB28_99
## BB#91:
	movq	%rdx, 8(%r13)
	movq	%rax, 16(%r13)
	cmpq	%rcx, %rdx
	jge	LBB28_100
## BB#92:
	movq	%rdx, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB28_100
LBB28_93:
	movq	%rcx, (%r13)
	movq	%rax, 8(%r13)
	movq	-8(%r14), %rcx
	cmpq	%rax, %rcx
	jge	LBB28_104
## BB#94:
	movq	%rcx, 8(%r13)
	movq	%rax, -8(%r14)
	jmp	LBB28_104
LBB28_95:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	cmpq	%rcx, %rdx
	jge	LBB28_99
## BB#96:
	movq	%rdx, 8(%r13)
LBB28_97:
	movq	%rcx, 16(%r13)
	movq	%rcx, %rax
	jmp	LBB28_100
LBB28_99:
	movq	%rdx, %rax
LBB28_100:
	movq	-8(%r14), %rcx
	cmpq	%rax, %rcx
	jge	LBB28_104
## BB#101:
	movq	%rcx, 16(%r13)
	movq	%rax, -8(%r14)
	movq	8(%r13), %rcx
	movq	16(%r13), %rax
	cmpq	%rcx, %rax
	jge	LBB28_104
## BB#102:
	movq	%rax, 8(%r13)
	movq	%rcx, 16(%r13)
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB28_104
## BB#103:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
LBB28_104:
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
L28_0_set_104 = LBB28_104-LJTI28_0
L28_0_set_56 = LBB28_56-LJTI28_0
L28_0_set_68 = LBB28_68-LJTI28_0
L28_0_set_72 = LBB28_72-LJTI28_0
L28_0_set_71 = LBB28_71-LJTI28_0
LJTI28_0:
	.long	L28_0_set_104
	.long	L28_0_set_104
	.long	L28_0_set_56
	.long	L28_0_set_68
	.long	L28_0_set_72
	.long	L28_0_set_71
	.end_data_region

	.globl	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.weak_def_can_be_hidden	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.p2align	4, 0x90
__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_: ## @_ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi170:
	.cfi_def_cfa_offset 16
Lcfi171:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi172:
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %r9
	movq	(%rdi), %r10
	cmpq	%r10, %r9
	movq	(%rdx), %r11
	jge	LBB29_1
## BB#5:
	cmpq	%r9, %r11
	jge	LBB29_7
## BB#6:
	movq	%r11, (%rdi)
	movq	%r10, (%rdx)
	movl	$1, %eax
	jmp	LBB29_9
LBB29_1:
	xorl	%eax, %eax
	cmpq	%r9, %r11
	jge	LBB29_2
## BB#3:
	movq	%r11, (%rsi)
	movq	%r9, (%rdx)
	movq	(%rsi), %r10
	movq	(%rdi), %r11
	movl	$1, %eax
	cmpq	%r11, %r10
	jge	LBB29_10
## BB#4:
	movq	%r10, (%rdi)
	movq	%r11, (%rsi)
	movq	(%rdx), %r9
	movl	$2, %eax
	jmp	LBB29_10
LBB29_7:
	movq	%r9, (%rdi)
	movq	%r10, (%rsi)
	movq	(%rdx), %r9
	movl	$1, %eax
	cmpq	%r10, %r9
	jge	LBB29_10
## BB#8:
	movq	%r9, (%rsi)
	movq	%r10, (%rdx)
	movl	$2, %eax
LBB29_9:
	movq	%r10, %r9
	jmp	LBB29_10
LBB29_2:
	movq	%r11, %r9
LBB29_10:
	movq	(%rcx), %r10
	cmpq	%r9, %r10
	jge	LBB29_16
## BB#11:
	movq	%r10, (%rdx)
	movq	%r9, (%rcx)
	movq	(%rdx), %r9
	movq	(%rsi), %r10
	cmpq	%r10, %r9
	jge	LBB29_12
## BB#13:
	movq	%r9, (%rsi)
	movq	%r10, (%rdx)
	movq	(%rsi), %r9
	movq	(%rdi), %r10
	cmpq	%r10, %r9
	jge	LBB29_14
## BB#15:
	movq	%r9, (%rdi)
	movq	%r10, (%rsi)
	addl	$3, %eax
	jmp	LBB29_16
LBB29_12:
	incl	%eax
	jmp	LBB29_16
LBB29_14:
	addl	$2, %eax
LBB29_16:
	movq	(%r8), %r9
	movq	(%rcx), %r10
	cmpq	%r10, %r9
	jge	LBB29_24
## BB#17:
	movq	%r9, (%rcx)
	movq	%r10, (%r8)
	movq	(%rcx), %r8
	movq	(%rdx), %r9
	cmpq	%r9, %r8
	jge	LBB29_18
## BB#19:
	movq	%r8, (%rdx)
	movq	%r9, (%rcx)
	movq	(%rdx), %rcx
	movq	(%rsi), %r8
	cmpq	%r8, %rcx
	jge	LBB29_20
## BB#21:
	movq	%rcx, (%rsi)
	movq	%r8, (%rdx)
	movq	(%rsi), %rcx
	movq	(%rdi), %rdx
	cmpq	%rdx, %rcx
	jge	LBB29_22
## BB#23:
	movq	%rcx, (%rdi)
	movq	%rdx, (%rsi)
	addl	$4, %eax
LBB29_24:
	popq	%rbp
	retq
LBB29_18:
	incl	%eax
	popq	%rbp
	retq
LBB29_20:
	addl	$2, %eax
	popq	%rbp
	retq
LBB29_22:
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
Lcfi173:
	.cfi_def_cfa_offset 16
Lcfi174:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi175:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Lcfi176:
	.cfi_offset %rbx, -24
	movq	%rdx, %r9
	movq	%rsi, %r10
	movq	%r10, %rax
	subq	%rdi, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	ja	LBB30_4
## BB#1:
	movb	$1, %bl
	leaq	LJTI30_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB30_2:
	movq	-8(%r10), %rax
	movq	(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	LBB30_51
## BB#3:
	movq	%rax, (%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB30_51
LBB30_4:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rdx
	cmpq	%rcx, %rdx
	movq	16(%rdi), %rsi
	jge	LBB30_14
## BB#5:
	cmpq	%rdx, %rsi
	jge	LBB30_23
## BB#6:
	movq	%rsi, (%rdi)
	jmp	LBB30_25
LBB30_7:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	cmpq	%rcx, %rax
	movq	-8(%r10), %rdx
	jge	LBB30_17
## BB#8:
	cmpq	%rax, %rdx
	jge	LBB30_26
## BB#9:
	movq	%rdx, (%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB30_51
LBB30_10:
	leaq	16(%rdi), %rdx
	leaq	24(%rdi), %rcx
	addq	$-8, %r10
	leaq	8(%rdi), %rsi
	movq	%r10, %r8
	callq	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	jmp	LBB30_51
LBB30_11:
	movq	(%rdi), %rdx
	movq	8(%rdi), %rcx
	cmpq	%rdx, %rcx
	movq	16(%rdi), %rsi
	jge	LBB30_20
## BB#12:
	cmpq	%rcx, %rsi
	jge	LBB30_28
## BB#13:
	movq	%rsi, (%rdi)
	jmp	LBB30_30
LBB30_14:
	cmpq	%rdx, %rsi
	jge	LBB30_33
## BB#15:
	movq	%rsi, 8(%rdi)
	movq	%rdx, 16(%rdi)
	cmpq	%rcx, %rsi
	jge	LBB30_34
## BB#16:
	movq	%rsi, (%rdi)
	movq	%rcx, 8(%rdi)
	jmp	LBB30_34
LBB30_17:
	cmpq	%rax, %rdx
	jge	LBB30_51
## BB#18:
	movq	%rdx, 8(%rdi)
	movq	%rax, -8(%r10)
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	cmpq	%rax, %rcx
	jge	LBB30_51
## BB#19:
	movq	%rcx, (%rdi)
	movq	%rax, 8(%rdi)
	jmp	LBB30_51
LBB30_20:
	cmpq	%rcx, %rsi
	jge	LBB30_46
## BB#21:
	movq	%rsi, 8(%rdi)
	movq	%rcx, 16(%rdi)
	cmpq	%rdx, %rsi
	jge	LBB30_47
## BB#22:
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	jmp	LBB30_47
LBB30_23:
	movq	%rdx, (%rdi)
	movq	%rcx, 8(%rdi)
	cmpq	%rcx, %rsi
	jge	LBB30_33
## BB#24:
	movq	%rsi, 8(%rdi)
LBB30_25:
	movq	%rcx, 16(%rdi)
	movq	%rcx, %rdx
	jmp	LBB30_34
LBB30_33:
	movq	%rsi, %rdx
LBB30_34:
	leaq	24(%rdi), %rsi
	movb	$1, %r8b
	cmpq	%r10, %rsi
	je	LBB30_43
## BB#35:
	xorl	%r9d, %r9d
	jmp	LBB30_39
	.p2align	4, 0x90
LBB30_36:                               ##   in Loop: Header=BB30_39 Depth=1
	movq	%rbx, -8(%rcx)
	incl	%r9d
	leaq	8(%rsi), %rax
	cmpq	%r10, %rax
	sete	%bl
	cmpl	$8, %r9d
	je	LBB30_44
LBB30_37:                               ##   in Loop: Header=BB30_39 Depth=1
	leaq	8(%rsi), %rax
	cmpq	%r10, %rax
	je	LBB30_43
## BB#38:                               ##   in Loop: Header=BB30_39 Depth=1
	movq	(%rsi), %rdx
	movq	%rax, %rsi
LBB30_39:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB30_41 Depth 2
	movq	(%rsi), %rbx
	cmpq	%rdx, %rbx
	jge	LBB30_37
## BB#40:                               ##   in Loop: Header=BB30_39 Depth=1
	movq	%rsi, %rax
	.p2align	4, 0x90
LBB30_41:                               ##   Parent Loop BB30_39 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, %rcx
	movq	%rdx, (%rcx)
	leaq	-8(%rcx), %rax
	cmpq	%rdi, %rax
	je	LBB30_36
## BB#42:                               ##   in Loop: Header=BB30_41 Depth=2
	movq	-8(%rax), %rdx
	cmpq	%rdx, %rbx
	jl	LBB30_41
	jmp	LBB30_36
LBB30_43:
                                        ## implicit-def: %BL
	jmp	LBB30_45
LBB30_26:
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	movq	-8(%r10), %rax
	cmpq	%rcx, %rax
	jge	LBB30_51
## BB#27:
	movq	%rax, 8(%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB30_51
LBB30_28:
	movq	%rcx, (%rdi)
	movq	%rdx, 8(%rdi)
	cmpq	%rdx, %rsi
	jge	LBB30_46
## BB#29:
	movq	%rsi, 8(%rdi)
LBB30_30:
	movq	%rdx, 16(%rdi)
	movq	%rdx, %rcx
	jmp	LBB30_47
LBB30_46:
	movq	%rsi, %rcx
LBB30_47:
	movq	-8(%r10), %rax
	cmpq	%rcx, %rax
	jge	LBB30_51
## BB#48:
	movq	%rax, 16(%rdi)
	movq	%rcx, -8(%r10)
	movq	8(%rdi), %rcx
	movq	16(%rdi), %rax
	cmpq	%rcx, %rax
	jge	LBB30_51
## BB#49:
	movq	%rax, 8(%rdi)
	movq	%rcx, 16(%rdi)
	movq	(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	LBB30_51
## BB#50:
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	jmp	LBB30_51
LBB30_44:
	xorl	%r8d, %r8d
LBB30_45:
	orb	%r8b, %bl
LBB30_51:
	andb	$1, %bl
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L30_0_set_51 = LBB30_51-LJTI30_0
L30_0_set_2 = LBB30_2-LJTI30_0
L30_0_set_7 = LBB30_7-LJTI30_0
L30_0_set_11 = LBB30_11-LJTI30_0
L30_0_set_10 = LBB30_10-LJTI30_0
LJTI30_0:
	.long	L30_0_set_51
	.long	L30_0_set_51
	.long	L30_0_set_2
	.long	L30_0_set_7
	.long	L30_0_set_11
	.long	L30_0_set_10
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
Lcfi177:
	.cfi_def_cfa_offset 16
Lcfi178:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi179:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Lcfi180:
	.cfi_offset %rbx, -56
Lcfi181:
	.cfi_offset %r12, -48
Lcfi182:
	.cfi_offset %r13, -40
Lcfi183:
	.cfi_offset %r14, -32
Lcfi184:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
Ltmp109:
	leaq	-80(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp110:
## BB#1:
	cmpb	$0, -80(%rbp)
	je	LBB31_10
## BB#2:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %r12
	movq	40(%rbx,%rax), %rdi
	movl	8(%rbx,%rax), %r13d
	movl	144(%rbx,%rax), %eax
	cmpl	$-1, %eax
	jne	LBB31_7
## BB#3:
Ltmp112:
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	leaq	-56(%rbp), %rdi
	movq	%r12, %rsi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp113:
## BB#4:
Ltmp114:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-56(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp115:
## BB#5:
	movq	(%rax), %rcx
Ltmp116:
	movl	$32, %esi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movb	%al, -41(%rbp)          ## 1-byte Spill
Ltmp117:
## BB#6:
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	-41(%rbp), %eax         ## 1-byte Folded Reload
	movl	%eax, 144(%r12)
	movq	-64(%rbp), %rdi         ## 8-byte Reload
LBB31_7:
	addq	%r15, %r14
	andl	$176, %r13d
	cmpl	$32, %r13d
	movq	%r15, %rdx
	cmoveq	%r14, %rdx
Ltmp119:
	movsbl	%al, %r9d
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r12, %r8
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp120:
## BB#8:
	testq	%rax, %rax
	jne	LBB31_10
## BB#9:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$5, %esi
Ltmp122:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp123:
LBB31_10:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB31_11:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB31_12:
Ltmp124:
	jmp	LBB31_15
LBB31_13:
Ltmp118:
	movq	%rax, %r14
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB31_16
LBB31_14:
Ltmp121:
LBB31_15:
	movq	%rax, %r14
LBB31_16:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	jmp	LBB31_18
LBB31_17:
Ltmp111:
	movq	%rax, %r14
LBB31_18:
	movq	%r14, %rdi
	callq	___cxa_begin_catch
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	addq	-24(%rax), %rdi
Ltmp125:
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp126:
## BB#19:
	callq	___cxa_end_catch
	jmp	LBB31_11
LBB31_20:
Ltmp127:
	movq	%rax, %rbx
Ltmp128:
	callq	___cxa_end_catch
Ltmp129:
## BB#21:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB31_22:
Ltmp130:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table31:
Lexception10:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\213\201"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\202\001"              ## Call site table length
Lset151 = Ltmp109-Lfunc_begin10         ## >> Call Site 1 <<
	.long	Lset151
Lset152 = Ltmp110-Ltmp109               ##   Call between Ltmp109 and Ltmp110
	.long	Lset152
Lset153 = Ltmp111-Lfunc_begin10         ##     jumps to Ltmp111
	.long	Lset153
	.byte	1                       ##   On action: 1
Lset154 = Ltmp112-Lfunc_begin10         ## >> Call Site 2 <<
	.long	Lset154
Lset155 = Ltmp113-Ltmp112               ##   Call between Ltmp112 and Ltmp113
	.long	Lset155
Lset156 = Ltmp121-Lfunc_begin10         ##     jumps to Ltmp121
	.long	Lset156
	.byte	1                       ##   On action: 1
Lset157 = Ltmp114-Lfunc_begin10         ## >> Call Site 3 <<
	.long	Lset157
Lset158 = Ltmp117-Ltmp114               ##   Call between Ltmp114 and Ltmp117
	.long	Lset158
Lset159 = Ltmp118-Lfunc_begin10         ##     jumps to Ltmp118
	.long	Lset159
	.byte	1                       ##   On action: 1
Lset160 = Ltmp119-Lfunc_begin10         ## >> Call Site 4 <<
	.long	Lset160
Lset161 = Ltmp120-Ltmp119               ##   Call between Ltmp119 and Ltmp120
	.long	Lset161
Lset162 = Ltmp121-Lfunc_begin10         ##     jumps to Ltmp121
	.long	Lset162
	.byte	1                       ##   On action: 1
Lset163 = Ltmp122-Lfunc_begin10         ## >> Call Site 5 <<
	.long	Lset163
Lset164 = Ltmp123-Ltmp122               ##   Call between Ltmp122 and Ltmp123
	.long	Lset164
Lset165 = Ltmp124-Lfunc_begin10         ##     jumps to Ltmp124
	.long	Lset165
	.byte	1                       ##   On action: 1
Lset166 = Ltmp123-Lfunc_begin10         ## >> Call Site 6 <<
	.long	Lset166
Lset167 = Ltmp125-Ltmp123               ##   Call between Ltmp123 and Ltmp125
	.long	Lset167
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset168 = Ltmp125-Lfunc_begin10         ## >> Call Site 7 <<
	.long	Lset168
Lset169 = Ltmp126-Ltmp125               ##   Call between Ltmp125 and Ltmp126
	.long	Lset169
Lset170 = Ltmp127-Lfunc_begin10         ##     jumps to Ltmp127
	.long	Lset170
	.byte	0                       ##   On action: cleanup
Lset171 = Ltmp126-Lfunc_begin10         ## >> Call Site 8 <<
	.long	Lset171
Lset172 = Ltmp128-Ltmp126               ##   Call between Ltmp126 and Ltmp128
	.long	Lset172
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset173 = Ltmp128-Lfunc_begin10         ## >> Call Site 9 <<
	.long	Lset173
Lset174 = Ltmp129-Ltmp128               ##   Call between Ltmp128 and Ltmp129
	.long	Lset174
Lset175 = Ltmp130-Lfunc_begin10         ##     jumps to Ltmp130
	.long	Lset175
	.byte	1                       ##   On action: 1
Lset176 = Ltmp129-Lfunc_begin10         ## >> Call Site 10 <<
	.long	Lset176
Lset177 = Lfunc_end10-Ltmp129           ##   Call between Ltmp129 and Lfunc_end10
	.long	Lset177
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
Lcfi185:
	.cfi_def_cfa_offset 16
Lcfi186:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi187:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Lcfi188:
	.cfi_offset %rbx, -56
Lcfi189:
	.cfi_offset %r12, -48
Lcfi190:
	.cfi_offset %r13, -40
Lcfi191:
	.cfi_offset %r14, -32
Lcfi192:
	.cfi_offset %r15, -24
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rdi, %r13
	testq	%r13, %r13
	je	LBB32_17
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
	jle	LBB32_3
## BB#2:
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%rbx, %rdx
	callq	*96(%rax)
	cmpq	%rbx, %rax
	jne	LBB32_17
LBB32_3:
	testq	%r15, %r15
	jle	LBB32_13
## BB#4:
	movq	%r12, -88(%rbp)         ## 8-byte Spill
	movq	%r14, -96(%rbp)         ## 8-byte Spill
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movq	$0, -64(%rbp)
	cmpq	$23, %r15
	jae	LBB32_8
## BB#5:
	movl	%r15d, %eax
	addb	%al, %al
	movb	%al, -80(%rbp)
	leaq	-79(%rbp), %r14
	movq	%r14, %r12
	jmp	LBB32_9
LBB32_8:
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
LBB32_9:
	movl	-44(%rbp), %eax         ## 4-byte Reload
	movzbl	%al, %esi
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	_memset
	movb	$0, (%r12,%r15)
	testb	$1, -80(%rbp)
	cmovneq	-64(%rbp), %r14
	movq	(%r13), %rax
Ltmp131:
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	*96(%rax)
	movq	%rax, %rbx
Ltmp132:
## BB#10:
	testb	$1, -80(%rbp)
	movq	-96(%rbp), %r14         ## 8-byte Reload
	movq	-88(%rbp), %r12         ## 8-byte Reload
	je	LBB32_12
## BB#11:
	movq	-64(%rbp), %rdi
	callq	__ZdlPv
LBB32_12:
	cmpq	%r15, %rbx
	jne	LBB32_17
LBB32_13:
	movq	-104(%rbp), %rsi        ## 8-byte Reload
	subq	%rsi, %r12
	testq	%r12, %r12
	jle	LBB32_15
## BB#14:
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	*96(%rax)
	cmpq	%r12, %rax
	jne	LBB32_17
LBB32_15:
	movq	$0, 24(%r14)
	jmp	LBB32_18
LBB32_17:
	xorl	%r13d, %r13d
LBB32_18:
	movq	%r13, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB32_19:
Ltmp133:
	movq	%rax, %rbx
	testb	$1, -80(%rbp)
	je	LBB32_21
## BB#20:
	movq	-64(%rbp), %rdi
	callq	__ZdlPv
LBB32_21:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table32:
Lexception11:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset178 = Lfunc_begin11-Lfunc_begin11   ## >> Call Site 1 <<
	.long	Lset178
Lset179 = Ltmp131-Lfunc_begin11         ##   Call between Lfunc_begin11 and Ltmp131
	.long	Lset179
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset180 = Ltmp131-Lfunc_begin11         ## >> Call Site 2 <<
	.long	Lset180
Lset181 = Ltmp132-Ltmp131               ##   Call between Ltmp131 and Ltmp132
	.long	Lset181
Lset182 = Ltmp133-Lfunc_begin11         ##     jumps to Ltmp133
	.long	Lset182
	.byte	0                       ##   On action: cleanup
Lset183 = Ltmp132-Lfunc_begin11         ## >> Call Site 3 <<
	.long	Lset183
Lset184 = Lfunc_end11-Ltmp132           ##   Call between Ltmp132 and Lfunc_end11
	.long	Lset184
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
	.asciz	"allocator<T>::allocate(size_t n) 'n' exceeds maximum supported size"

L_.str.3:                               ## @.str.3
	.asciz	"w"


.subsections_via_symbols
