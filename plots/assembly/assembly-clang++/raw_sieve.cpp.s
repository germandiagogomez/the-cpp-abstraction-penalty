	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$6250040, %rsp          ## imm = 0x5F5E38
Lcfi3:
	.cfi_offset %rbx, -56
Lcfi4:
	.cfi_offset %r12, -48
Lcfi5:
	.cfi_offset %r13, -40
Lcfi6:
	.cfi_offset %r14, -32
Lcfi7:
	.cfi_offset %r15, -24
	movq	8(%rsi), %r14
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -6250080(%rbp)
	movq	$0, -6250064(%rbp)
	movq	%r14, %rdi
	callq	_strlen
	movq	%rax, %r12
	cmpq	$-16, %r12
	jae	LBB0_34
## BB#1:
	cmpq	$23, %r12
	jae	LBB0_2
## BB#3:
	movl	%r12d, %eax
	addb	%al, %al
	movb	%al, -6250080(%rbp)
	leaq	-6250079(%rbp), %r15
	testq	%r12, %r12
	jne	LBB0_4
	jmp	LBB0_5
LBB0_2:
	movq	%r12, %rbx
	addq	$16, %rbx
	andq	$-16, %rbx
	movq	%rbx, %rdi
	callq	__Znwm
	movq	%rax, %r15
	movq	%r15, -6250064(%rbp)
	orq	$1, %rbx
	movq	%rbx, -6250080(%rbp)
	movq	%r12, -6250072(%rbp)
LBB0_4:
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	_memcpy
LBB0_5:
	movb	$0, (%r15,%r12)
Ltmp0:
	leaq	-6250080(%rbp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	movl	%eax, %r14d
Ltmp1:
## BB#6:
	testb	$1, -6250080(%rbp)
	je	LBB0_8
## BB#7:
	movq	-6250064(%rbp), %rdi
	callq	__ZdlPv
LBB0_8:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
	movslq	%r14d, %rsi
Ltmp3:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE7reserveEm
Ltmp4:
## BB#9:
	testl	%r14d, %r14d
	jle	LBB0_10
## BB#20:
	xorl	%r12d, %r12d
	leaq	-6250080(%rbp), %rbx
	.p2align	4, 0x90
LBB0_21:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_22 Depth 2
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movq	%rax, %r13
	movl	$6250000, %esi          ## imm = 0x5F5E10
	movq	%rbx, %rdi
	callq	___bzero
	movl	$3, %r15d
	.p2align	4, 0x90
LBB0_22:                                ##   Parent Loop BB0_21 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	__Z21mark_sieve_for_numberILm100000000EEvR11sieve_tableIXT_EEi
	addq	$2, %r15
	cmpq	$10000, %r15            ## imm = 0x2710
	jb	LBB0_22
## BB#23:                               ##   in Loop: Header=BB0_21 Depth=1
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	subq	%r13, %rax
	movabsq	$4835703278458516699, %rcx ## imm = 0x431BDE82D7B634DB
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$18, %rdx
	addq	%rax, %rdx
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	LBB0_25
## BB#24:                               ##   in Loop: Header=BB0_21 Depth=1
	movq	%rdx, (%rax)
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	jmp	LBB0_26
	.p2align	4, 0x90
LBB0_25:                                ##   in Loop: Header=BB0_21 Depth=1
Ltmp5:
	leaq	-64(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	callq	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE21__push_back_slow_pathIRKS5_EEvOT_
Ltmp6:
LBB0_26:                                ##   in Loop: Header=BB0_21 Depth=1
	incl	%r12d
	cmpl	%r14d, %r12d
	jl	LBB0_21
LBB0_10:
	leaq	-56(%rbp), %rbx
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
Ltmp8:
	leaq	-72(%rbp), %rdx
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
Ltmp9:
## BB#11:
	movq	(%rbx), %rax
	movq	-64(%rbp), %rcx
	subq	%rcx, %rax
	sarq	%rax
	andq	$-8, %rax
	movq	(%rcx,%rax), %rsi
Ltmp10:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp11:
## BB#12:
	movb	$32, -6250080(%rbp)
Ltmp12:
	leaq	-6250080(%rbp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp13:
## BB#13:
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB0_17
## BB#14:
	movq	-56(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB0_16
## BB#15:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
LBB0_16:
	callq	__ZdlPv
LBB0_17:
	xorl	%eax, %eax
	addq	$6250040, %rsp          ## imm = 0x5F5E38
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_34:
	leaq	-6250080(%rbp), %rdi
	callq	__ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
LBB0_18:
Ltmp2:
	movq	%rax, %rbx
	testb	$1, -6250080(%rbp)
	je	LBB0_33
## BB#19:
	movq	-6250064(%rbp), %rdi
	jmp	LBB0_32
LBB0_28:
Ltmp14:
	jmp	LBB0_29
LBB0_27:
Ltmp7:
LBB0_29:
	movq	%rax, %rbx
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB0_33
## BB#30:
	movq	-56(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB0_32
## BB#31:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
LBB0_32:
	callq	__ZdlPv
LBB0_33:
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
	.byte	93                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	91                      ## Call site table length
Lset0 = Lfunc_begin0-Lfunc_begin0       ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp0-Lfunc_begin0              ##   Call between Lfunc_begin0 and Ltmp0
	.long	Lset1
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset2 = Ltmp0-Lfunc_begin0              ## >> Call Site 2 <<
	.long	Lset2
Lset3 = Ltmp1-Ltmp0                     ##   Call between Ltmp0 and Ltmp1
	.long	Lset3
Lset4 = Ltmp2-Lfunc_begin0              ##     jumps to Ltmp2
	.long	Lset4
	.byte	0                       ##   On action: cleanup
Lset5 = Ltmp3-Lfunc_begin0              ## >> Call Site 3 <<
	.long	Lset5
Lset6 = Ltmp4-Ltmp3                     ##   Call between Ltmp3 and Ltmp4
	.long	Lset6
Lset7 = Ltmp14-Lfunc_begin0             ##     jumps to Ltmp14
	.long	Lset7
	.byte	0                       ##   On action: cleanup
Lset8 = Ltmp4-Lfunc_begin0              ## >> Call Site 4 <<
	.long	Lset8
Lset9 = Ltmp5-Ltmp4                     ##   Call between Ltmp4 and Ltmp5
	.long	Lset9
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset10 = Ltmp5-Lfunc_begin0             ## >> Call Site 5 <<
	.long	Lset10
Lset11 = Ltmp6-Ltmp5                    ##   Call between Ltmp5 and Ltmp6
	.long	Lset11
Lset12 = Ltmp7-Lfunc_begin0             ##     jumps to Ltmp7
	.long	Lset12
	.byte	0                       ##   On action: cleanup
Lset13 = Ltmp8-Lfunc_begin0             ## >> Call Site 6 <<
	.long	Lset13
Lset14 = Ltmp13-Ltmp8                   ##   Call between Ltmp8 and Ltmp13
	.long	Lset14
Lset15 = Ltmp14-Lfunc_begin0            ##     jumps to Ltmp14
	.long	Lset15
	.byte	0                       ##   On action: cleanup
Lset16 = Ltmp13-Lfunc_begin0            ## >> Call Site 7 <<
	.long	Lset16
Lset17 = Lfunc_end0-Ltmp13              ##   Call between Ltmp13 and Lfunc_end0
	.long	Lset17
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE7reserveEm
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE7reserveEm
	.p2align	4, 0x90
__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE7reserveEm: ## @_ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE7reserveEm
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## BB#0:
	pushq	%rbp
Lcfi8:
	.cfi_def_cfa_offset 16
Lcfi9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi10:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Lcfi11:
	.cfi_offset %rbx, -56
Lcfi12:
	.cfi_offset %r12, -48
Lcfi13:
	.cfi_offset %r13, -40
Lcfi14:
	.cfi_offset %r14, -32
Lcfi15:
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	(%rbx), %r14
	movq	16(%rbx), %rax
	subq	%r14, %rax
	sarq	$3, %rax
	cmpq	%r15, %rax
	jae	LBB1_8
## BB#1:
	movq	%r15, %rax
	shrq	$61, %rax
	jne	LBB1_2
## BB#5:
	movq	8(%rbx), %r12
	subq	%r14, %r12
	leaq	(,%r15,8), %rdi
	callq	__Znwm
	movq	%rax, %r13
	leaq	(%r13,%r15,8), %rax
	leaq	(%r13,%r12), %r15
	testq	%r12, %r12
	jle	LBB1_7
## BB#6:
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%rax, %r12
	callq	_memcpy
	movq	%r12, %rax
LBB1_7:
	movq	%r13, (%rbx)
	movq	%r15, 8(%rbx)
	movq	%rax, 16(%rbx)
	testq	%r14, %r14
	je	LBB1_8
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
LBB1_8:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB1_2:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp15:
	leaq	L_.str.1(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp16:
## BB#3:
	movq	__ZTVSt12length_error@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	__ZTISt12length_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt12length_errorD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB1_4:
Ltmp17:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
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
Lset18 = Lfunc_begin1-Lfunc_begin1      ## >> Call Site 1 <<
	.long	Lset18
Lset19 = Ltmp15-Lfunc_begin1            ##   Call between Lfunc_begin1 and Ltmp15
	.long	Lset19
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset20 = Ltmp15-Lfunc_begin1            ## >> Call Site 2 <<
	.long	Lset20
Lset21 = Ltmp16-Ltmp15                  ##   Call between Ltmp15 and Ltmp16
	.long	Lset21
Lset22 = Ltmp17-Lfunc_begin1            ##     jumps to Ltmp17
	.long	Lset22
	.byte	0                       ##   On action: cleanup
Lset23 = Ltmp16-Lfunc_begin1            ## >> Call Site 3 <<
	.long	Lset23
Lset24 = Lfunc_end1-Ltmp16              ##   Call between Ltmp16 and Lfunc_end1
	.long	Lset24
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z21mark_sieve_for_numberILm100000000EEvR11sieve_tableIXT_EEi
	.weak_def_can_be_hidden	__Z21mark_sieve_for_numberILm100000000EEvR11sieve_tableIXT_EEi
	.p2align	4, 0x90
__Z21mark_sieve_for_numberILm100000000EEvR11sieve_tableIXT_EEi: ## @_Z21mark_sieve_for_numberILm100000000EEvR11sieve_tableIXT_EEi
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
## BB#0:
	pushq	%rbp
Lcfi16:
	.cfi_def_cfa_offset 16
Lcfi17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi18:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Lcfi19:
	.cfi_offset %rbx, -32
Lcfi20:
	.cfi_offset %r14, -24
                                        ## kill: %ESI<def> %ESI<kill> %RSI<def>
	movl	%esi, %r8d
	imull	%r8d, %r8d
	movq	%r8, %rcx
	shrq	%rcx
	decq	%rcx
	cmpq	$49999999, %rcx         ## imm = 0x2FAF07F
	jae	LBB2_1
## BB#7:
	movq	%rcx, %rax
	shrq	$6, %rax
	movl	$1, %edx
                                        ## kill: %CL<def> %CL<kill> %RCX<kill>
	shlq	%cl, %rdx
	orq	%rdx, (%rdi,%rax,8)
	leal	(%rsi,%rsi), %eax
	movslq	%eax, %rbx
	addq	%rbx, %r8
	cmpq	$100000000, %r8         ## imm = 0x5F5E100
	ja	LBB2_11
## BB#8:
	movslq	%esi, %rsi
	.p2align	4, 0x90
LBB2_9:                                 ## =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movq	%r8, %rax
	divq	%rsi
	testq	%rdx, %rdx
	jne	LBB2_10
## BB#12:                               ##   in Loop: Header=BB2_9 Depth=1
	movq	%r8, %rcx
	shrq	%rcx
	decq	%rcx
	cmpq	$49999999, %rcx         ## imm = 0x2FAF07F
	jae	LBB2_13
## BB#19:                               ##   in Loop: Header=BB2_9 Depth=1
	movq	%rcx, %rax
	shrq	$6, %rax
	movl	$1, %edx
                                        ## kill: %CL<def> %CL<kill> %RCX<kill>
	shlq	%cl, %rdx
	orq	%rdx, (%rdi,%rax,8)
LBB2_10:                                ##   in Loop: Header=BB2_9 Depth=1
	addq	%rbx, %r8
	cmpq	$100000001, %r8         ## imm = 0x5F5E101
	jb	LBB2_9
LBB2_11:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB2_13:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp18:
	leaq	L_.str(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp19:
## BB#14:
	movq	__ZTVSt12out_of_range@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
Ltmp21:
	movq	__ZTISt12out_of_range@GOTPCREL(%rip), %rsi
	movq	__ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
Ltmp22:
## BB#15:
LBB2_1:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp24:
	leaq	L_.str(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp25:
## BB#2:
	movq	__ZTVSt12out_of_range@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
Ltmp27:
	movq	__ZTISt12out_of_range@GOTPCREL(%rip), %rsi
	movq	__ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
Ltmp28:
## BB#3:
LBB2_5:
Ltmp29:
	movq	%rax, %r14
	movq	%r14, %rdi
	callq	___clang_call_terminate
LBB2_4:
Ltmp26:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	___clang_call_terminate
LBB2_17:
Ltmp23:
	movq	%rax, %r14
	movq	%r14, %rdi
	callq	___clang_call_terminate
LBB2_16:
Ltmp20:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	___clang_call_terminate
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
Lexception2:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\343\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	91                      ## Call site table length
Lset25 = Lfunc_begin2-Lfunc_begin2      ## >> Call Site 1 <<
	.long	Lset25
Lset26 = Ltmp18-Lfunc_begin2            ##   Call between Lfunc_begin2 and Ltmp18
	.long	Lset26
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset27 = Ltmp18-Lfunc_begin2            ## >> Call Site 2 <<
	.long	Lset27
Lset28 = Ltmp19-Ltmp18                  ##   Call between Ltmp18 and Ltmp19
	.long	Lset28
Lset29 = Ltmp20-Lfunc_begin2            ##     jumps to Ltmp20
	.long	Lset29
	.byte	1                       ##   On action: 1
Lset30 = Ltmp21-Lfunc_begin2            ## >> Call Site 3 <<
	.long	Lset30
Lset31 = Ltmp22-Ltmp21                  ##   Call between Ltmp21 and Ltmp22
	.long	Lset31
Lset32 = Ltmp23-Lfunc_begin2            ##     jumps to Ltmp23
	.long	Lset32
	.byte	1                       ##   On action: 1
Lset33 = Ltmp22-Lfunc_begin2            ## >> Call Site 4 <<
	.long	Lset33
Lset34 = Ltmp24-Ltmp22                  ##   Call between Ltmp22 and Ltmp24
	.long	Lset34
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset35 = Ltmp24-Lfunc_begin2            ## >> Call Site 5 <<
	.long	Lset35
Lset36 = Ltmp25-Ltmp24                  ##   Call between Ltmp24 and Ltmp25
	.long	Lset36
Lset37 = Ltmp26-Lfunc_begin2            ##     jumps to Ltmp26
	.long	Lset37
	.byte	1                       ##   On action: 1
Lset38 = Ltmp27-Lfunc_begin2            ## >> Call Site 6 <<
	.long	Lset38
Lset39 = Ltmp28-Ltmp27                  ##   Call between Ltmp27 and Ltmp28
	.long	Lset39
Lset40 = Ltmp29-Lfunc_begin2            ##     jumps to Ltmp29
	.long	Lset40
	.byte	1                       ##   On action: 1
Lset41 = Ltmp28-Lfunc_begin2            ## >> Call Site 7 <<
	.long	Lset41
Lset42 = Lfunc_end2-Ltmp28              ##   Call between Ltmp28 and Lfunc_end2
	.long	Lset42
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
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

	.globl	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE21__push_back_slow_pathIRKS5_EEvOT_
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE21__push_back_slow_pathIRKS5_EEvOT_
	.p2align	4, 0x90
__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE21__push_back_slow_pathIRKS5_EEvOT_: ## @_ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE21__push_back_slow_pathIRKS5_EEvOT_
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
## BB#0:
	pushq	%rbp
Lcfi21:
	.cfi_def_cfa_offset 16
Lcfi22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi23:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Lcfi24:
	.cfi_offset %rbx, -56
Lcfi25:
	.cfi_offset %r12, -48
Lcfi26:
	.cfi_offset %r13, -40
Lcfi27:
	.cfi_offset %r14, -32
Lcfi28:
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
	jne	LBB4_15
## BB#1:
	movabsq	$2305843009213693951, %rcx ## imm = 0x1FFFFFFFFFFFFFFF
	movq	16(%r13), %r14
	subq	%rsi, %r14
	movq	%r14, %rdx
	sarq	$3, %rdx
	movabsq	$1152921504606846974, %rdi ## imm = 0xFFFFFFFFFFFFFFE
	cmpq	%rdi, %rdx
	ja	LBB4_2
## BB#8:
	sarq	$2, %r14
	cmpq	%rax, %r14
	cmovbq	%rax, %r14
	testq	%r14, %r14
	je	LBB4_9
## BB#10:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	cmpq	%rcx, %r14
	jbe	LBB4_3
## BB#11:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp30:
	leaq	L_.str.1(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp31:
## BB#12:
	movq	__ZTVSt12length_error@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	__ZTISt12length_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt12length_errorD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB4_2:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	movq	%rcx, %r14
LBB4_3:
	leaq	(,%r14,8), %rdi
	callq	__Znwm
	movq	%rax, %rbx
	movq	-56(%rbp), %rsi         ## 8-byte Reload
	movq	-48(%rbp), %r8          ## 8-byte Reload
LBB4_4:
	leaq	(%rbx,%r14,8), %r14
	movq	(%r8), %rax
	movq	%rax, (%rbx,%r15,8)
	leaq	8(%rbx,%r15,8), %r15
	testq	%r12, %r12
	jle	LBB4_6
## BB#5:
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%rsi, %r12
	callq	_memcpy
	movq	%r12, %rsi
LBB4_6:
	movq	%rbx, (%r13)
	movq	%r15, 8(%r13)
	movq	%r14, 16(%r13)
	testq	%rsi, %rsi
	je	LBB4_14
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
LBB4_14:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB4_9:
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	jmp	LBB4_4
LBB4_15:
	movq	%r13, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
LBB4_13:
Ltmp32:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table4:
Lexception3:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset43 = Lfunc_begin3-Lfunc_begin3      ## >> Call Site 1 <<
	.long	Lset43
Lset44 = Ltmp30-Lfunc_begin3            ##   Call between Lfunc_begin3 and Ltmp30
	.long	Lset44
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset45 = Ltmp30-Lfunc_begin3            ## >> Call Site 2 <<
	.long	Lset45
Lset46 = Ltmp31-Ltmp30                  ##   Call between Ltmp30 and Ltmp31
	.long	Lset46
Lset47 = Ltmp32-Lfunc_begin3            ##     jumps to Ltmp32
	.long	Lset47
	.byte	0                       ##   On action: cleanup
Lset48 = Ltmp31-Lfunc_begin3            ## >> Call Site 3 <<
	.long	Lset48
Lset49 = Lfunc_end3-Ltmp31              ##   Call between Ltmp31 and Lfunc_end3
	.long	Lset49
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
Lcfi29:
	.cfi_def_cfa_offset 16
Lcfi30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi31:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Lcfi32:
	.cfi_offset %rbx, -56
Lcfi33:
	.cfi_offset %r12, -48
Lcfi34:
	.cfi_offset %r13, -40
Lcfi35:
	.cfi_offset %r14, -32
Lcfi36:
	.cfi_offset %r15, -24
	movq	%rdx, -48(%rbp)         ## 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %r13
	jmp	LBB5_2
LBB5_1:                                 ##   in Loop: Header=BB5_2 Depth=1
	leaq	8(%r15), %rdi
	movq	%r14, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	movq	%r15, %r14
	.p2align	4, 0x90
LBB5_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_4 Depth 2
                                        ##       Child Loop BB5_32 Depth 3
                                        ##         Child Loop BB5_6 Depth 4
                                        ##         Child Loop BB5_14 Depth 4
                                        ##         Child Loop BB5_27 Depth 4
                                        ##           Child Loop BB5_28 Depth 5
                                        ##           Child Loop BB5_30 Depth 5
                                        ##       Child Loop BB5_41 Depth 3
                                        ##         Child Loop BB5_42 Depth 4
                                        ##         Child Loop BB5_44 Depth 4
	leaq	-8(%r14), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	leaq	-16(%r14), %rax
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	movq	%r13, %rbx
	jmp	LBB5_4
	.p2align	4, 0x90
LBB5_3:                                 ##   in Loop: Header=BB5_4 Depth=2
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	addq	$8, %r15
	movq	%r15, %rbx
LBB5_4:                                 ##   Parent Loop BB5_2 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB5_32 Depth 3
                                        ##         Child Loop BB5_6 Depth 4
                                        ##         Child Loop BB5_14 Depth 4
                                        ##         Child Loop BB5_27 Depth 4
                                        ##           Child Loop BB5_28 Depth 5
                                        ##           Child Loop BB5_30 Depth 5
                                        ##       Child Loop BB5_41 Depth 3
                                        ##         Child Loop BB5_42 Depth 4
                                        ##         Child Loop BB5_44 Depth 4
	movq	%rbx, %r13
	jmp	LBB5_32
	.p2align	4, 0x90
LBB5_5:                                 ##   in Loop: Header=BB5_32 Depth=3
	movq	-64(%rbp), %rdx         ## 8-byte Reload
	.p2align	4, 0x90
LBB5_6:                                 ##   Parent Loop BB5_2 Depth=1
                                        ##     Parent Loop BB5_4 Depth=2
                                        ##       Parent Loop BB5_32 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	cmpq	%rdx, %r13
	je	LBB5_11
## BB#7:                                ##   in Loop: Header=BB5_6 Depth=4
	movq	(%rdx), %rbx
	addq	$-8, %rdx
	cmpq	%rdi, %rbx
	jge	LBB5_6
	jmp	LBB5_38
	.p2align	4, 0x90
LBB5_8:                                 ##   in Loop: Header=BB5_32 Depth=3
	movq	(%r12), %rcx
	movq	(%r13), %rax
	cmpq	%rax, %rcx
	movq	(%r15), %rdx
	jge	LBB5_16
## BB#9:                                ##   in Loop: Header=BB5_32 Depth=3
	cmpq	%rcx, %rdx
	jge	LBB5_19
## BB#10:                               ##   in Loop: Header=BB5_32 Depth=3
	movq	%rdx, (%r13)
	movq	%rax, (%r15)
	movl	$1, %eax
	jmp	LBB5_36
	.p2align	4, 0x90
LBB5_11:                                ##   in Loop: Header=BB5_32 Depth=3
	leaq	8(%r13), %rax
	movq	(%r15), %rdx
	cmpq	%rdx, %rsi
	jl	LBB5_25
## BB#12:                               ##   in Loop: Header=BB5_32 Depth=3
	cmpq	%r15, %rax
	je	LBB5_104
## BB#13:                               ##   in Loop: Header=BB5_32 Depth=3
	addq	$16, %r13
	movq	%r13, %rax
	.p2align	4, 0x90
LBB5_14:                                ##   Parent Loop BB5_2 Depth=1
                                        ##     Parent Loop BB5_4 Depth=2
                                        ##       Parent Loop BB5_32 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	-8(%rax), %rdi
	cmpq	%rdi, %rsi
	jl	LBB5_24
## BB#15:                               ##   in Loop: Header=BB5_14 Depth=4
	addq	$8, %rax
	cmpq	%rax, %r14
	jne	LBB5_14
	jmp	LBB5_104
	.p2align	4, 0x90
LBB5_16:                                ##   in Loop: Header=BB5_32 Depth=3
	cmpq	%rcx, %rdx
	jge	LBB5_22
## BB#17:                               ##   in Loop: Header=BB5_32 Depth=3
	movq	%rdx, (%r12)
	movq	%rcx, (%r15)
	movq	(%r12), %rax
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB5_23
## BB#18:                               ##   in Loop: Header=BB5_32 Depth=3
	movq	%rax, (%r13)
	movq	%rcx, (%r12)
	jmp	LBB5_21
LBB5_19:                                ##   in Loop: Header=BB5_32 Depth=3
	movq	%rcx, (%r13)
	movq	%rax, (%r12)
	movq	(%r15), %rcx
	cmpq	%rax, %rcx
	jge	LBB5_23
## BB#20:                               ##   in Loop: Header=BB5_32 Depth=3
	movq	%rcx, (%r12)
	movq	%rax, (%r15)
LBB5_21:                                ##   in Loop: Header=BB5_32 Depth=3
	movl	$2, %eax
	jmp	LBB5_36
LBB5_22:                                ##   in Loop: Header=BB5_32 Depth=3
	xorl	%eax, %eax
	jmp	LBB5_36
LBB5_23:                                ##   in Loop: Header=BB5_32 Depth=3
	movl	$1, %eax
	jmp	LBB5_36
LBB5_24:                                ##   in Loop: Header=BB5_32 Depth=3
	movq	%rdx, -8(%rax)
	movq	%rdi, (%r15)
LBB5_25:                                ##   in Loop: Header=BB5_32 Depth=3
	cmpq	%r15, %rax
	jne	LBB5_27
	jmp	LBB5_104
	.p2align	4, 0x90
LBB5_26:                                ##   in Loop: Header=BB5_27 Depth=4
	movq	%rbx, -8(%rax)
	movq	%rsi, (%r15)
LBB5_27:                                ##   Parent Loop BB5_2 Depth=1
                                        ##     Parent Loop BB5_4 Depth=2
                                        ##       Parent Loop BB5_32 Depth=3
                                        ## =>      This Loop Header: Depth=4
                                        ##           Child Loop BB5_28 Depth 5
                                        ##           Child Loop BB5_30 Depth 5
	movq	(%rcx), %rdi
	.p2align	4, 0x90
LBB5_28:                                ##   Parent Loop BB5_2 Depth=1
                                        ##     Parent Loop BB5_4 Depth=2
                                        ##       Parent Loop BB5_32 Depth=3
                                        ##         Parent Loop BB5_27 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movq	(%rax), %rsi
	addq	$8, %rax
	cmpq	%rsi, %rdi
	jge	LBB5_28
## BB#29:                               ##   in Loop: Header=BB5_27 Depth=4
	leaq	-8(%rax), %r13
	.p2align	4, 0x90
LBB5_30:                                ##   Parent Loop BB5_2 Depth=1
                                        ##     Parent Loop BB5_4 Depth=2
                                        ##       Parent Loop BB5_32 Depth=3
                                        ##         Parent Loop BB5_27 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movq	-8(%r15), %rbx
	addq	$-8, %r15
	cmpq	%rbx, %rdi
	jl	LBB5_30
## BB#31:                               ##   in Loop: Header=BB5_27 Depth=4
	cmpq	%r15, %r13
	jb	LBB5_26
LBB5_32:                                ##   Parent Loop BB5_2 Depth=1
                                        ##     Parent Loop BB5_4 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB5_6 Depth 4
                                        ##         Child Loop BB5_14 Depth 4
                                        ##         Child Loop BB5_27 Depth 4
                                        ##           Child Loop BB5_28 Depth 5
                                        ##           Child Loop BB5_30 Depth 5
	movq	%r14, %rcx
	subq	%r13, %rcx
	movq	%rcx, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	jbe	LBB5_55
## BB#33:                               ##   in Loop: Header=BB5_32 Depth=3
	cmpq	$247, %rcx
	movq	-56(%rbp), %r15         ## 8-byte Reload
	jle	LBB5_58
## BB#34:                               ##   in Loop: Header=BB5_32 Depth=3
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rax, %rdx
	movabsq	$4611686018427387902, %rsi ## imm = 0x3FFFFFFFFFFFFFFE
	andq	%rsi, %rdx
	cmpq	$7993, %rcx             ## imm = 0x1F39
	leaq	(%r13,%rdx,4), %r12
	jl	LBB5_8
## BB#35:                               ##   in Loop: Header=BB5_32 Depth=3
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
LBB5_36:                                ##   in Loop: Header=BB5_32 Depth=3
	movq	%r13, %rcx
	movq	(%rcx), %rsi
	movq	(%r12), %rdi
	cmpq	%rdi, %rsi
	jge	LBB5_5
## BB#37:                               ##   in Loop: Header=BB5_4 Depth=2
	movq	%r15, %rdx
	jmp	LBB5_39
	.p2align	4, 0x90
LBB5_38:                                ##   in Loop: Header=BB5_4 Depth=2
	movq	%rbx, (%rcx)
	movq	%rsi, 8(%rdx)
	addq	$8, %rdx
	incl	%eax
LBB5_39:                                ##   in Loop: Header=BB5_4 Depth=2
	leaq	8(%r13), %r15
	cmpq	%rdx, %r15
	jb	LBB5_41
	jmp	LBB5_47
	.p2align	4, 0x90
LBB5_40:                                ##   in Loop: Header=BB5_41 Depth=3
	movq	%rbx, (%rcx)
	movq	%rdi, (%rdx)
	incl	%eax
	cmpq	%rcx, %r12
	cmoveq	%rdx, %r12
LBB5_41:                                ##   Parent Loop BB5_2 Depth=1
                                        ##     Parent Loop BB5_4 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB5_42 Depth 4
                                        ##         Child Loop BB5_44 Depth 4
	movq	(%r12), %rsi
	addq	$-8, %r15
	movq	%r15, %rcx
	.p2align	4, 0x90
LBB5_42:                                ##   Parent Loop BB5_2 Depth=1
                                        ##     Parent Loop BB5_4 Depth=2
                                        ##       Parent Loop BB5_41 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	8(%rcx), %rdi
	addq	$8, %rcx
	cmpq	%rsi, %rdi
	jl	LBB5_42
## BB#43:                               ##   in Loop: Header=BB5_41 Depth=3
	leaq	8(%rcx), %r15
	.p2align	4, 0x90
LBB5_44:                                ##   Parent Loop BB5_2 Depth=1
                                        ##     Parent Loop BB5_4 Depth=2
                                        ##       Parent Loop BB5_41 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	-8(%rdx), %rbx
	addq	$-8, %rdx
	cmpq	%rsi, %rbx
	jge	LBB5_44
## BB#45:                               ##   in Loop: Header=BB5_41 Depth=3
	cmpq	%rdx, %rcx
	jbe	LBB5_40
## BB#46:                               ##   in Loop: Header=BB5_4 Depth=2
	movq	%rcx, %r15
LBB5_47:                                ##   in Loop: Header=BB5_4 Depth=2
	cmpq	%r12, %r15
	je	LBB5_50
## BB#48:                               ##   in Loop: Header=BB5_4 Depth=2
	movq	(%r12), %rcx
	movq	(%r15), %rdx
	cmpq	%rdx, %rcx
	jge	LBB5_50
## BB#49:                               ##   in Loop: Header=BB5_4 Depth=2
	movq	%rcx, (%r15)
	movq	%rdx, (%r12)
	incl	%eax
LBB5_50:                                ##   in Loop: Header=BB5_4 Depth=2
	testl	%eax, %eax
	jne	LBB5_53
## BB#51:                               ##   in Loop: Header=BB5_4 Depth=2
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
	jne	LBB5_54
## BB#52:                               ##   in Loop: Header=BB5_4 Depth=2
	testb	%r12b, %r12b
	jne	LBB5_4
LBB5_53:                                ##   in Loop: Header=BB5_4 Depth=2
	movq	%r15, %rax
	subq	%r13, %rax
	movq	%r14, %rcx
	subq	%r15, %rcx
	cmpq	%rcx, %rax
	jl	LBB5_3
	jmp	LBB5_1
LBB5_54:                                ##   in Loop: Header=BB5_2 Depth=1
	testb	%r12b, %r12b
	movq	%r15, %r14
	je	LBB5_2
	jmp	LBB5_104
LBB5_55:
	leaq	LJTI5_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	movq	-56(%rbp), %r8          ## 8-byte Reload
	jmpq	*%rax
LBB5_56:
	movq	-8(%r14), %rax
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB5_104
## BB#57:
	movq	%rax, (%r13)
	movq	%rcx, -8(%r14)
	jmp	LBB5_104
LBB5_58:
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rcx, %rax
	movq	16(%r13), %rdx
	jge	LBB5_61
## BB#59:
	cmpq	%rax, %rdx
	jge	LBB5_64
## BB#60:
	movq	%rdx, (%r13)
	jmp	LBB5_66
LBB5_61:
	cmpq	%rax, %rdx
	jge	LBB5_75
## BB#62:
	movq	%rdx, 8(%r13)
	movq	%rax, 16(%r13)
	cmpq	%rcx, %rdx
	jge	LBB5_76
## BB#63:
	movq	%rdx, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB5_76
LBB5_64:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	cmpq	%rcx, %rdx
	jge	LBB5_75
## BB#65:
	movq	%rdx, 8(%r13)
LBB5_66:
	movq	%rcx, 16(%r13)
	movq	%rcx, %rax
	jmp	LBB5_76
LBB5_75:
	movq	%rdx, %rax
LBB5_76:
	leaq	24(%r13), %rdx
	cmpq	%r14, %rdx
	je	LBB5_104
## BB#77:
	movl	$24, %ecx
	jmp	LBB5_83
	.p2align	4, 0x90
LBB5_78:                                ##   in Loop: Header=BB5_83 Depth=1
	addq	%r13, %rdi
	jmp	LBB5_80
	.p2align	4, 0x90
LBB5_79:                                ##   in Loop: Header=BB5_83 Depth=1
	movq	%r13, %rdi
LBB5_80:                                ##   in Loop: Header=BB5_83 Depth=1
	movq	%rsi, (%rdi)
LBB5_81:                                ##   in Loop: Header=BB5_83 Depth=1
	leaq	8(%rdx), %rsi
	cmpq	%r14, %rsi
	je	LBB5_104
## BB#82:                               ##   in Loop: Header=BB5_83 Depth=1
	movq	(%rdx), %rax
	addq	$8, %rcx
	movq	%rsi, %rdx
LBB5_83:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_85 Depth 2
	movq	(%rdx), %rsi
	cmpq	%rax, %rsi
	jge	LBB5_81
## BB#84:                               ##   in Loop: Header=BB5_83 Depth=1
	movq	%rcx, %rdi
	.p2align	4, 0x90
LBB5_85:                                ##   Parent Loop BB5_83 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, (%r13,%rdi)
	cmpq	$8, %rdi
	je	LBB5_79
## BB#86:                               ##   in Loop: Header=BB5_85 Depth=2
	movq	-16(%r13,%rdi), %rax
	addq	$-8, %rdi
	cmpq	%rax, %rsi
	jl	LBB5_85
	jmp	LBB5_78
LBB5_68:
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rax, %rcx
	movq	-8(%r14), %rdx
	jge	LBB5_87
## BB#69:
	cmpq	%rcx, %rdx
	jge	LBB5_93
## BB#70:
	movq	%rdx, (%r13)
	movq	%rax, -8(%r14)
	jmp	LBB5_104
LBB5_71:
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
LBB5_72:
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rcx, %rax
	movq	16(%r13), %rdx
	jge	LBB5_90
## BB#73:
	cmpq	%rax, %rdx
	jge	LBB5_95
## BB#74:
	movq	%rdx, (%r13)
	jmp	LBB5_97
LBB5_87:
	cmpq	%rcx, %rdx
	jge	LBB5_104
## BB#88:
	movq	%rdx, 8(%r13)
	movq	%rcx, -8(%r14)
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rax, %rcx
	jge	LBB5_104
## BB#89:
	movq	%rcx, (%r13)
	movq	%rax, 8(%r13)
	jmp	LBB5_104
LBB5_90:
	cmpq	%rax, %rdx
	jge	LBB5_99
## BB#91:
	movq	%rdx, 8(%r13)
	movq	%rax, 16(%r13)
	cmpq	%rcx, %rdx
	jge	LBB5_100
## BB#92:
	movq	%rdx, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB5_100
LBB5_93:
	movq	%rcx, (%r13)
	movq	%rax, 8(%r13)
	movq	-8(%r14), %rcx
	cmpq	%rax, %rcx
	jge	LBB5_104
## BB#94:
	movq	%rcx, 8(%r13)
	movq	%rax, -8(%r14)
	jmp	LBB5_104
LBB5_95:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	cmpq	%rcx, %rdx
	jge	LBB5_99
## BB#96:
	movq	%rdx, 8(%r13)
LBB5_97:
	movq	%rcx, 16(%r13)
	movq	%rcx, %rax
	jmp	LBB5_100
LBB5_99:
	movq	%rdx, %rax
LBB5_100:
	movq	-8(%r14), %rcx
	cmpq	%rax, %rcx
	jge	LBB5_104
## BB#101:
	movq	%rcx, 16(%r13)
	movq	%rax, -8(%r14)
	movq	8(%r13), %rcx
	movq	16(%r13), %rax
	cmpq	%rcx, %rax
	jge	LBB5_104
## BB#102:
	movq	%rax, 8(%r13)
	movq	%rcx, 16(%r13)
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB5_104
## BB#103:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
LBB5_104:
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
L5_0_set_104 = LBB5_104-LJTI5_0
L5_0_set_56 = LBB5_56-LJTI5_0
L5_0_set_68 = LBB5_68-LJTI5_0
L5_0_set_72 = LBB5_72-LJTI5_0
L5_0_set_71 = LBB5_71-LJTI5_0
LJTI5_0:
	.long	L5_0_set_104
	.long	L5_0_set_104
	.long	L5_0_set_56
	.long	L5_0_set_68
	.long	L5_0_set_72
	.long	L5_0_set_71
	.end_data_region

	.globl	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.weak_def_can_be_hidden	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.p2align	4, 0x90
__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_: ## @_ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi37:
	.cfi_def_cfa_offset 16
Lcfi38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi39:
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %r9
	movq	(%rdi), %r10
	cmpq	%r10, %r9
	movq	(%rdx), %r11
	jge	LBB6_1
## BB#5:
	cmpq	%r9, %r11
	jge	LBB6_7
## BB#6:
	movq	%r11, (%rdi)
	movq	%r10, (%rdx)
	movl	$1, %eax
	jmp	LBB6_9
LBB6_1:
	xorl	%eax, %eax
	cmpq	%r9, %r11
	jge	LBB6_2
## BB#3:
	movq	%r11, (%rsi)
	movq	%r9, (%rdx)
	movq	(%rsi), %r10
	movq	(%rdi), %r11
	movl	$1, %eax
	cmpq	%r11, %r10
	jge	LBB6_10
## BB#4:
	movq	%r10, (%rdi)
	movq	%r11, (%rsi)
	movq	(%rdx), %r9
	movl	$2, %eax
	jmp	LBB6_10
LBB6_7:
	movq	%r9, (%rdi)
	movq	%r10, (%rsi)
	movq	(%rdx), %r9
	movl	$1, %eax
	cmpq	%r10, %r9
	jge	LBB6_10
## BB#8:
	movq	%r9, (%rsi)
	movq	%r10, (%rdx)
	movl	$2, %eax
LBB6_9:
	movq	%r10, %r9
	jmp	LBB6_10
LBB6_2:
	movq	%r11, %r9
LBB6_10:
	movq	(%rcx), %r10
	cmpq	%r9, %r10
	jge	LBB6_16
## BB#11:
	movq	%r10, (%rdx)
	movq	%r9, (%rcx)
	movq	(%rdx), %r9
	movq	(%rsi), %r10
	cmpq	%r10, %r9
	jge	LBB6_12
## BB#13:
	movq	%r9, (%rsi)
	movq	%r10, (%rdx)
	movq	(%rsi), %r9
	movq	(%rdi), %r10
	cmpq	%r10, %r9
	jge	LBB6_14
## BB#15:
	movq	%r9, (%rdi)
	movq	%r10, (%rsi)
	addl	$3, %eax
	jmp	LBB6_16
LBB6_12:
	incl	%eax
	jmp	LBB6_16
LBB6_14:
	addl	$2, %eax
LBB6_16:
	movq	(%r8), %r9
	movq	(%rcx), %r10
	cmpq	%r10, %r9
	jge	LBB6_24
## BB#17:
	movq	%r9, (%rcx)
	movq	%r10, (%r8)
	movq	(%rcx), %r8
	movq	(%rdx), %r9
	cmpq	%r9, %r8
	jge	LBB6_18
## BB#19:
	movq	%r8, (%rdx)
	movq	%r9, (%rcx)
	movq	(%rdx), %rcx
	movq	(%rsi), %r8
	cmpq	%r8, %rcx
	jge	LBB6_20
## BB#21:
	movq	%rcx, (%rsi)
	movq	%r8, (%rdx)
	movq	(%rsi), %rcx
	movq	(%rdi), %rdx
	cmpq	%rdx, %rcx
	jge	LBB6_22
## BB#23:
	movq	%rcx, (%rdi)
	movq	%rdx, (%rsi)
	addl	$4, %eax
LBB6_24:
	popq	%rbp
	retq
LBB6_18:
	incl	%eax
	popq	%rbp
	retq
LBB6_20:
	addl	$2, %eax
	popq	%rbp
	retq
LBB6_22:
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
Lcfi40:
	.cfi_def_cfa_offset 16
Lcfi41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi42:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Lcfi43:
	.cfi_offset %rbx, -24
	movq	%rdx, %r9
	movq	%rsi, %r10
	movq	%r10, %rax
	subq	%rdi, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	ja	LBB7_4
## BB#1:
	movb	$1, %bl
	leaq	LJTI7_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB7_2:
	movq	-8(%r10), %rax
	movq	(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	LBB7_51
## BB#3:
	movq	%rax, (%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB7_51
LBB7_4:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rdx
	cmpq	%rcx, %rdx
	movq	16(%rdi), %rsi
	jge	LBB7_14
## BB#5:
	cmpq	%rdx, %rsi
	jge	LBB7_23
## BB#6:
	movq	%rsi, (%rdi)
	jmp	LBB7_25
LBB7_7:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	cmpq	%rcx, %rax
	movq	-8(%r10), %rdx
	jge	LBB7_17
## BB#8:
	cmpq	%rax, %rdx
	jge	LBB7_26
## BB#9:
	movq	%rdx, (%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB7_51
LBB7_10:
	leaq	16(%rdi), %rdx
	leaq	24(%rdi), %rcx
	addq	$-8, %r10
	leaq	8(%rdi), %rsi
	movq	%r10, %r8
	callq	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	jmp	LBB7_51
LBB7_11:
	movq	(%rdi), %rdx
	movq	8(%rdi), %rcx
	cmpq	%rdx, %rcx
	movq	16(%rdi), %rsi
	jge	LBB7_20
## BB#12:
	cmpq	%rcx, %rsi
	jge	LBB7_28
## BB#13:
	movq	%rsi, (%rdi)
	jmp	LBB7_30
LBB7_14:
	cmpq	%rdx, %rsi
	jge	LBB7_33
## BB#15:
	movq	%rsi, 8(%rdi)
	movq	%rdx, 16(%rdi)
	cmpq	%rcx, %rsi
	jge	LBB7_34
## BB#16:
	movq	%rsi, (%rdi)
	movq	%rcx, 8(%rdi)
	jmp	LBB7_34
LBB7_17:
	cmpq	%rax, %rdx
	jge	LBB7_51
## BB#18:
	movq	%rdx, 8(%rdi)
	movq	%rax, -8(%r10)
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	cmpq	%rax, %rcx
	jge	LBB7_51
## BB#19:
	movq	%rcx, (%rdi)
	movq	%rax, 8(%rdi)
	jmp	LBB7_51
LBB7_20:
	cmpq	%rcx, %rsi
	jge	LBB7_46
## BB#21:
	movq	%rsi, 8(%rdi)
	movq	%rcx, 16(%rdi)
	cmpq	%rdx, %rsi
	jge	LBB7_47
## BB#22:
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	jmp	LBB7_47
LBB7_23:
	movq	%rdx, (%rdi)
	movq	%rcx, 8(%rdi)
	cmpq	%rcx, %rsi
	jge	LBB7_33
## BB#24:
	movq	%rsi, 8(%rdi)
LBB7_25:
	movq	%rcx, 16(%rdi)
	movq	%rcx, %rdx
	jmp	LBB7_34
LBB7_33:
	movq	%rsi, %rdx
LBB7_34:
	leaq	24(%rdi), %rsi
	movb	$1, %r8b
	cmpq	%r10, %rsi
	je	LBB7_43
## BB#35:
	xorl	%r9d, %r9d
	jmp	LBB7_39
	.p2align	4, 0x90
LBB7_36:                                ##   in Loop: Header=BB7_39 Depth=1
	movq	%rbx, -8(%rcx)
	incl	%r9d
	leaq	8(%rsi), %rax
	cmpq	%r10, %rax
	sete	%bl
	cmpl	$8, %r9d
	je	LBB7_44
LBB7_37:                                ##   in Loop: Header=BB7_39 Depth=1
	leaq	8(%rsi), %rax
	cmpq	%r10, %rax
	je	LBB7_43
## BB#38:                               ##   in Loop: Header=BB7_39 Depth=1
	movq	(%rsi), %rdx
	movq	%rax, %rsi
LBB7_39:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_41 Depth 2
	movq	(%rsi), %rbx
	cmpq	%rdx, %rbx
	jge	LBB7_37
## BB#40:                               ##   in Loop: Header=BB7_39 Depth=1
	movq	%rsi, %rax
	.p2align	4, 0x90
LBB7_41:                                ##   Parent Loop BB7_39 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, %rcx
	movq	%rdx, (%rcx)
	leaq	-8(%rcx), %rax
	cmpq	%rdi, %rax
	je	LBB7_36
## BB#42:                               ##   in Loop: Header=BB7_41 Depth=2
	movq	-8(%rax), %rdx
	cmpq	%rdx, %rbx
	jl	LBB7_41
	jmp	LBB7_36
LBB7_43:
                                        ## implicit-def: %BL
	jmp	LBB7_45
LBB7_26:
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	movq	-8(%r10), %rax
	cmpq	%rcx, %rax
	jge	LBB7_51
## BB#27:
	movq	%rax, 8(%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB7_51
LBB7_28:
	movq	%rcx, (%rdi)
	movq	%rdx, 8(%rdi)
	cmpq	%rdx, %rsi
	jge	LBB7_46
## BB#29:
	movq	%rsi, 8(%rdi)
LBB7_30:
	movq	%rdx, 16(%rdi)
	movq	%rdx, %rcx
	jmp	LBB7_47
LBB7_46:
	movq	%rsi, %rcx
LBB7_47:
	movq	-8(%r10), %rax
	cmpq	%rcx, %rax
	jge	LBB7_51
## BB#48:
	movq	%rax, 16(%rdi)
	movq	%rcx, -8(%r10)
	movq	8(%rdi), %rcx
	movq	16(%rdi), %rax
	cmpq	%rcx, %rax
	jge	LBB7_51
## BB#49:
	movq	%rax, 8(%rdi)
	movq	%rcx, 16(%rdi)
	movq	(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	LBB7_51
## BB#50:
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	jmp	LBB7_51
LBB7_44:
	xorl	%r8d, %r8d
LBB7_45:
	orb	%r8b, %bl
LBB7_51:
	andb	$1, %bl
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L7_0_set_51 = LBB7_51-LJTI7_0
L7_0_set_2 = LBB7_2-LJTI7_0
L7_0_set_7 = LBB7_7-LJTI7_0
L7_0_set_11 = LBB7_11-LJTI7_0
L7_0_set_10 = LBB7_10-LJTI7_0
LJTI7_0:
	.long	L7_0_set_51
	.long	L7_0_set_51
	.long	L7_0_set_2
	.long	L7_0_set_7
	.long	L7_0_set_11
	.long	L7_0_set_10
	.end_data_region

	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	4, 0x90
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
## BB#0:
	pushq	%rbp
Lcfi44:
	.cfi_def_cfa_offset 16
Lcfi45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi46:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Lcfi47:
	.cfi_offset %rbx, -56
Lcfi48:
	.cfi_offset %r12, -48
Lcfi49:
	.cfi_offset %r13, -40
Lcfi50:
	.cfi_offset %r14, -32
Lcfi51:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
Ltmp33:
	leaq	-80(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp34:
## BB#1:
	cmpb	$0, -80(%rbp)
	je	LBB8_10
## BB#2:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %r12
	movq	40(%rbx,%rax), %rdi
	movl	8(%rbx,%rax), %r13d
	movl	144(%rbx,%rax), %eax
	cmpl	$-1, %eax
	jne	LBB8_7
## BB#3:
Ltmp36:
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	leaq	-56(%rbp), %rdi
	movq	%r12, %rsi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp37:
## BB#4:
Ltmp38:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-56(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp39:
## BB#5:
	movq	(%rax), %rcx
Ltmp40:
	movl	$32, %esi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movb	%al, -41(%rbp)          ## 1-byte Spill
Ltmp41:
## BB#6:
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	-41(%rbp), %eax         ## 1-byte Folded Reload
	movl	%eax, 144(%r12)
	movq	-64(%rbp), %rdi         ## 8-byte Reload
LBB8_7:
	addq	%r15, %r14
	andl	$176, %r13d
	cmpl	$32, %r13d
	movq	%r15, %rdx
	cmoveq	%r14, %rdx
Ltmp43:
	movsbl	%al, %r9d
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r12, %r8
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp44:
## BB#8:
	testq	%rax, %rax
	jne	LBB8_10
## BB#9:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$5, %esi
Ltmp46:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp47:
LBB8_10:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB8_11:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB8_12:
Ltmp48:
	jmp	LBB8_15
LBB8_13:
Ltmp42:
	movq	%rax, %r14
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB8_16
LBB8_14:
Ltmp45:
LBB8_15:
	movq	%rax, %r14
LBB8_16:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	jmp	LBB8_18
LBB8_17:
Ltmp35:
	movq	%rax, %r14
LBB8_18:
	movq	%r14, %rdi
	callq	___cxa_begin_catch
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	addq	-24(%rax), %rdi
Ltmp49:
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp50:
## BB#19:
	callq	___cxa_end_catch
	jmp	LBB8_11
LBB8_20:
Ltmp51:
	movq	%rax, %rbx
Ltmp52:
	callq	___cxa_end_catch
Ltmp53:
## BB#21:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB8_22:
Ltmp54:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table8:
Lexception4:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\213\201"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\202\001"              ## Call site table length
Lset50 = Ltmp33-Lfunc_begin4            ## >> Call Site 1 <<
	.long	Lset50
Lset51 = Ltmp34-Ltmp33                  ##   Call between Ltmp33 and Ltmp34
	.long	Lset51
Lset52 = Ltmp35-Lfunc_begin4            ##     jumps to Ltmp35
	.long	Lset52
	.byte	1                       ##   On action: 1
Lset53 = Ltmp36-Lfunc_begin4            ## >> Call Site 2 <<
	.long	Lset53
Lset54 = Ltmp37-Ltmp36                  ##   Call between Ltmp36 and Ltmp37
	.long	Lset54
Lset55 = Ltmp45-Lfunc_begin4            ##     jumps to Ltmp45
	.long	Lset55
	.byte	1                       ##   On action: 1
Lset56 = Ltmp38-Lfunc_begin4            ## >> Call Site 3 <<
	.long	Lset56
Lset57 = Ltmp41-Ltmp38                  ##   Call between Ltmp38 and Ltmp41
	.long	Lset57
Lset58 = Ltmp42-Lfunc_begin4            ##     jumps to Ltmp42
	.long	Lset58
	.byte	1                       ##   On action: 1
Lset59 = Ltmp43-Lfunc_begin4            ## >> Call Site 4 <<
	.long	Lset59
Lset60 = Ltmp44-Ltmp43                  ##   Call between Ltmp43 and Ltmp44
	.long	Lset60
Lset61 = Ltmp45-Lfunc_begin4            ##     jumps to Ltmp45
	.long	Lset61
	.byte	1                       ##   On action: 1
Lset62 = Ltmp46-Lfunc_begin4            ## >> Call Site 5 <<
	.long	Lset62
Lset63 = Ltmp47-Ltmp46                  ##   Call between Ltmp46 and Ltmp47
	.long	Lset63
Lset64 = Ltmp48-Lfunc_begin4            ##     jumps to Ltmp48
	.long	Lset64
	.byte	1                       ##   On action: 1
Lset65 = Ltmp47-Lfunc_begin4            ## >> Call Site 6 <<
	.long	Lset65
Lset66 = Ltmp49-Ltmp47                  ##   Call between Ltmp47 and Ltmp49
	.long	Lset66
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset67 = Ltmp49-Lfunc_begin4            ## >> Call Site 7 <<
	.long	Lset67
Lset68 = Ltmp50-Ltmp49                  ##   Call between Ltmp49 and Ltmp50
	.long	Lset68
Lset69 = Ltmp51-Lfunc_begin4            ##     jumps to Ltmp51
	.long	Lset69
	.byte	0                       ##   On action: cleanup
Lset70 = Ltmp50-Lfunc_begin4            ## >> Call Site 8 <<
	.long	Lset70
Lset71 = Ltmp52-Ltmp50                  ##   Call between Ltmp50 and Ltmp52
	.long	Lset71
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset72 = Ltmp52-Lfunc_begin4            ## >> Call Site 9 <<
	.long	Lset72
Lset73 = Ltmp53-Ltmp52                  ##   Call between Ltmp52 and Ltmp53
	.long	Lset73
Lset74 = Ltmp54-Lfunc_begin4            ##     jumps to Ltmp54
	.long	Lset74
	.byte	1                       ##   On action: 1
Lset75 = Ltmp53-Lfunc_begin4            ## >> Call Site 10 <<
	.long	Lset75
Lset76 = Lfunc_end4-Ltmp53              ##   Call between Ltmp53 and Lfunc_end4
	.long	Lset76
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
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
## BB#0:
	pushq	%rbp
Lcfi52:
	.cfi_def_cfa_offset 16
Lcfi53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi54:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Lcfi55:
	.cfi_offset %rbx, -56
Lcfi56:
	.cfi_offset %r12, -48
Lcfi57:
	.cfi_offset %r13, -40
Lcfi58:
	.cfi_offset %r14, -32
Lcfi59:
	.cfi_offset %r15, -24
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rdi, %r13
	testq	%r13, %r13
	je	LBB9_17
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
	jle	LBB9_3
## BB#2:
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%rbx, %rdx
	callq	*96(%rax)
	cmpq	%rbx, %rax
	jne	LBB9_17
LBB9_3:
	testq	%r15, %r15
	jle	LBB9_13
## BB#4:
	movq	%r12, -88(%rbp)         ## 8-byte Spill
	movq	%r14, -96(%rbp)         ## 8-byte Spill
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movq	$0, -64(%rbp)
	cmpq	$23, %r15
	jae	LBB9_8
## BB#5:
	movl	%r15d, %eax
	addb	%al, %al
	movb	%al, -80(%rbp)
	leaq	-79(%rbp), %r14
	movq	%r14, %r12
	jmp	LBB9_9
LBB9_8:
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
LBB9_9:
	movl	-44(%rbp), %eax         ## 4-byte Reload
	movzbl	%al, %esi
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	_memset
	movb	$0, (%r12,%r15)
	testb	$1, -80(%rbp)
	cmovneq	-64(%rbp), %r14
	movq	(%r13), %rax
Ltmp55:
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	*96(%rax)
	movq	%rax, %rbx
Ltmp56:
## BB#10:
	testb	$1, -80(%rbp)
	movq	-96(%rbp), %r14         ## 8-byte Reload
	movq	-88(%rbp), %r12         ## 8-byte Reload
	je	LBB9_12
## BB#11:
	movq	-64(%rbp), %rdi
	callq	__ZdlPv
LBB9_12:
	cmpq	%r15, %rbx
	jne	LBB9_17
LBB9_13:
	movq	-104(%rbp), %rsi        ## 8-byte Reload
	subq	%rsi, %r12
	testq	%r12, %r12
	jle	LBB9_15
## BB#14:
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	*96(%rax)
	cmpq	%r12, %rax
	jne	LBB9_17
LBB9_15:
	movq	$0, 24(%r14)
	jmp	LBB9_18
LBB9_17:
	xorl	%r13d, %r13d
LBB9_18:
	movq	%r13, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB9_19:
Ltmp57:
	movq	%rax, %rbx
	testb	$1, -80(%rbp)
	je	LBB9_21
## BB#20:
	movq	-64(%rbp), %rdi
	callq	__ZdlPv
LBB9_21:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table9:
Lexception5:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset77 = Lfunc_begin5-Lfunc_begin5      ## >> Call Site 1 <<
	.long	Lset77
Lset78 = Ltmp55-Lfunc_begin5            ##   Call between Lfunc_begin5 and Ltmp55
	.long	Lset78
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset79 = Ltmp55-Lfunc_begin5            ## >> Call Site 2 <<
	.long	Lset79
Lset80 = Ltmp56-Ltmp55                  ##   Call between Ltmp55 and Ltmp56
	.long	Lset80
Lset81 = Ltmp57-Lfunc_begin5            ##     jumps to Ltmp57
	.long	Lset81
	.byte	0                       ##   On action: cleanup
Lset82 = Ltmp56-Lfunc_begin5            ## >> Call Site 3 <<
	.long	Lset82
Lset83 = Lfunc_end5-Ltmp56              ##   Call between Ltmp56 and Lfunc_end5
	.long	Lset83
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"bitset set argument out of range"

L_.str.1:                               ## @.str.1
	.asciz	"allocator<T>::allocate(size_t n) 'n' exceeds maximum supported size"


.subsections_via_symbols
