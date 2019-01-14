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
	subq	$6250056, %rsp          ## imm = 0x5F5E48
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
	movaps	%xmm0, -6250096(%rbp)
	movq	$0, -6250080(%rbp)
	movq	%r14, %rdi
	callq	_strlen
	movq	%rax, %r12
	cmpq	$-16, %r12
	jae	LBB0_36
## BB#1:
	cmpq	$23, %r12
	jae	LBB0_2
## BB#3:
	movl	%r12d, %eax
	addb	%al, %al
	movb	%al, -6250096(%rbp)
	leaq	-6250095(%rbp), %r15
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
	movq	%r15, -6250080(%rbp)
	orq	$1, %rbx
	movq	%rbx, -6250096(%rbp)
	movq	%r12, -6250088(%rbp)
LBB0_4:
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	_memcpy
LBB0_5:
	movb	$0, (%r15,%r12)
Ltmp0:
	leaq	-6250096(%rbp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	movl	%eax, %r15d
Ltmp1:
## BB#6:
	testb	$1, -6250096(%rbp)
	je	LBB0_8
## BB#7:
	movq	-6250080(%rbp), %rdi
	callq	__ZdlPv
LBB0_8:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
	movslq	%r15d, %rsi
Ltmp3:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE7reserveEm
Ltmp4:
## BB#9:
	testl	%r15d, %r15d
	jle	LBB0_10
## BB#20:
	xorl	%r14d, %r14d
	leaq	-80(%rbp), %rbx
	movl	%r15d, -68(%rbp)        ## 4-byte Spill
	.p2align	4, 0x90
LBB0_21:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_22 Depth 2
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movq	%rax, %r12
	movl	$6250000, %esi          ## imm = 0x5F5E10
	leaq	-6250096(%rbp), %r15
	movq	%r15, %rdi
	callq	___bzero
	movq	%r15, -80(%rbp)
	movl	$9997, %r15d            ## imm = 0x270D
	movl	$3, %r13d
	.p2align	4, 0x90
LBB0_22:                                ##   Parent Loop BB0_21 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
Ltmp5:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	__ZZ13execute_sieveILm100000000EE11sieve_tableIXT_EEvENKUlT_E_clImEEDaS2_
Ltmp6:
## BB#23:                               ##   in Loop: Header=BB0_22 Depth=2
	cmpq	$3, %r15
	jl	LBB0_25
## BB#24:                               ##   in Loop: Header=BB0_22 Depth=2
	addq	$2, %r13
	addq	$-2, %r15
	cmpq	$10000, %r13            ## imm = 0x2710
	jne	LBB0_22
LBB0_25:                                ##   in Loop: Header=BB0_21 Depth=1
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	subq	%r12, %rax
	movabsq	$4835703278458516699, %rcx ## imm = 0x431BDE82D7B634DB
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$18, %rdx
	addq	%rax, %rdx
	movq	%rdx, -88(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	LBB0_27
## BB#26:                               ##   in Loop: Header=BB0_21 Depth=1
	movq	%rdx, (%rax)
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	movl	-68(%rbp), %r15d        ## 4-byte Reload
	jmp	LBB0_28
	.p2align	4, 0x90
LBB0_27:                                ##   in Loop: Header=BB0_21 Depth=1
Ltmp8:
	leaq	-64(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	callq	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE21__push_back_slow_pathIRKS5_EEvOT_
Ltmp9:
	movl	-68(%rbp), %r15d        ## 4-byte Reload
LBB0_28:                                ##   in Loop: Header=BB0_21 Depth=1
	incl	%r14d
	cmpl	%r15d, %r14d
	jl	LBB0_21
LBB0_10:
	leaq	-56(%rbp), %rbx
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
Ltmp11:
	leaq	-80(%rbp), %rdx
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
Ltmp12:
## BB#11:
	movq	(%rbx), %rax
	movq	-64(%rbp), %rcx
	subq	%rcx, %rax
	sarq	%rax
	andq	$-8, %rax
	movq	(%rcx,%rax), %rsi
Ltmp13:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp14:
## BB#12:
	movb	$32, -6250096(%rbp)
Ltmp15:
	leaq	-6250096(%rbp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp16:
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
	addq	$6250056, %rsp          ## imm = 0x5F5E48
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_36:
	leaq	-6250096(%rbp), %rdi
	callq	__ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
LBB0_18:
Ltmp2:
	movq	%rax, %rbx
	testb	$1, -6250096(%rbp)
	je	LBB0_35
## BB#19:
	movq	-6250080(%rbp), %rdi
	jmp	LBB0_34
LBB0_30:
Ltmp17:
	jmp	LBB0_31
LBB0_29:
Ltmp10:
LBB0_31:
	movq	%rax, %rbx
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB0_35
## BB#32:
	movq	-56(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB0_34
## BB#33:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
LBB0_34:
	callq	__ZdlPv
LBB0_35:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB0_37:
Ltmp7:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\360"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	104                     ## Call site table length
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
Lset7 = Ltmp17-Lfunc_begin0             ##     jumps to Ltmp17
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
	.byte	1                       ##   On action: 1
Lset13 = Ltmp8-Lfunc_begin0             ## >> Call Site 6 <<
	.long	Lset13
Lset14 = Ltmp9-Ltmp8                    ##   Call between Ltmp8 and Ltmp9
	.long	Lset14
Lset15 = Ltmp10-Lfunc_begin0            ##     jumps to Ltmp10
	.long	Lset15
	.byte	0                       ##   On action: cleanup
Lset16 = Ltmp11-Lfunc_begin0            ## >> Call Site 7 <<
	.long	Lset16
Lset17 = Ltmp16-Ltmp11                  ##   Call between Ltmp11 and Ltmp16
	.long	Lset17
Lset18 = Ltmp17-Lfunc_begin0            ##     jumps to Ltmp17
	.long	Lset18
	.byte	0                       ##   On action: cleanup
Lset19 = Ltmp16-Lfunc_begin0            ## >> Call Site 8 <<
	.long	Lset19
Lset20 = Lfunc_end0-Ltmp16              ##   Call between Ltmp16 and Lfunc_end0
	.long	Lset20
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
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
Ltmp18:
	leaq	L_.str.1(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp19:
## BB#3:
	movq	__ZTVSt12length_error@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	__ZTISt12length_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt12length_errorD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB1_4:
Ltmp20:
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
Lset21 = Lfunc_begin1-Lfunc_begin1      ## >> Call Site 1 <<
	.long	Lset21
Lset22 = Ltmp18-Lfunc_begin1            ##   Call between Lfunc_begin1 and Ltmp18
	.long	Lset22
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset23 = Ltmp18-Lfunc_begin1            ## >> Call Site 2 <<
	.long	Lset23
Lset24 = Ltmp19-Ltmp18                  ##   Call between Ltmp18 and Ltmp19
	.long	Lset24
Lset25 = Ltmp20-Lfunc_begin1            ##     jumps to Ltmp20
	.long	Lset25
	.byte	0                       ##   On action: cleanup
Lset26 = Ltmp19-Lfunc_begin1            ## >> Call Site 3 <<
	.long	Lset26
Lset27 = Lfunc_end1-Ltmp19              ##   Call between Ltmp19 and Lfunc_end1
	.long	Lset27
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

	.globl	__ZZ13execute_sieveILm100000000EE11sieve_tableIXT_EEvENKUlT_E_clImEEDaS2_
	.weak_def_can_be_hidden	__ZZ13execute_sieveILm100000000EE11sieve_tableIXT_EEvENKUlT_E_clImEEDaS2_
	.p2align	4, 0x90
__ZZ13execute_sieveILm100000000EE11sieve_tableIXT_EEvENKUlT_E_clImEEDaS2_: ## @_ZZ13execute_sieveILm100000000EE11sieve_tableIXT_EEvENKUlT_E_clImEEDaS2_
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
	subq	$112, %rsp
Lcfi19:
	.cfi_offset %rbx, -32
Lcfi20:
	.cfi_offset %r14, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	%esi, %eax
	imull	%eax, %eax
	leal	(%rsi,%rsi), %ecx
	movslq	%ecx, %rcx
	movl	$100000001, %edx        ## imm = 0x5F5E101
	subq	%rax, %rdx
	leaq	-112(%rbp), %rbx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -80(%rbp)
	movq	$1, -72(%rbp)
	movl	%esi, -64(%rbp)
	movq	-96(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	%rbx, -32(%rbp)
	movq	$1, -56(%rbp)
	movq	-40(%rbp), %rsi
	movq	-96(%rbp), %r8
	movq	-32(%rbp), %rbx
	addq	-88(%rbp), %r8
	cmpq	%rcx, %r8
	je	LBB3_21
## BB#1:
	movl	-64(%rbp), %r9d
	.p2align	4, 0x90
LBB3_2:                                 ## =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	cltd
	idivl	%r9d
	testl	%edx, %edx
	je	LBB3_21
## BB#3:                                ##   in Loop: Header=BB3_2 Depth=1
	movq	24(%rbx), %rax
	addq	16(%rbx), %rax
	movq	%rax, %rdx
	subq	%rcx, %rdx
	addq	32(%rbx), %rsi
	js	LBB3_17
## BB#4:                                ##   in Loop: Header=BB3_2 Depth=1
	cmpq	%rdx, %rsi
	jl	LBB3_5
	jmp	LBB3_18
	.p2align	4, 0x90
LBB3_17:                                ##   in Loop: Header=BB3_2 Depth=1
	cmpq	%rdx, %rsi
	jle	LBB3_18
LBB3_5:                                 ##   in Loop: Header=BB3_2 Depth=1
	addq	%rcx, %rsi
	movq	%rsi, %rax
	xorl	%esi, %esi
	jmp	LBB3_19
	.p2align	4, 0x90
LBB3_18:                                ##   in Loop: Header=BB3_2 Depth=1
	subq	%rdx, %rsi
LBB3_19:                                ##   in Loop: Header=BB3_2 Depth=1
	cmpq	%rax, %r8
	movq	%rax, %rcx
	jne	LBB3_2
## BB#20:
	movq	%r8, %rcx
LBB3_21:
	movq	%rcx, -48(%rbp)
	xchgq	%rsi, -40(%rbp)
	movq	%rbx, -32(%rbp)
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rbx
	movq	-96(%rbp), %r8
	addq	-88(%rbp), %r8
	cmpq	%rsi, %r8
	je	LBB3_6
## BB#22:
	movq	-32(%rbp), %r9
	.p2align	4, 0x90
LBB3_23:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_31 Depth 2
	movq	%rsi, %rcx
	shrq	%rcx
	decq	%rcx
	cmpq	$49999998, %rcx         ## imm = 0x2FAF07E
	ja	LBB3_24
## BB#43:                               ##   in Loop: Header=BB3_23 Depth=1
	movl	$1, %eax
	shlq	%cl, %rax
	shrq	$6, %rcx
	movq	(%rdi), %rdx
	orq	%rax, (%rdx,%rcx,8)
	movq	24(%r9), %r11
	movq	32(%r9), %r10
	addq	16(%r9), %r11
	movq	%r11, %rax
	subq	%rsi, %rax
	addq	%r10, %rbx
	js	LBB3_26
## BB#44:                               ##   in Loop: Header=BB3_23 Depth=1
	cmpq	%rax, %rbx
	jl	LBB3_45
	jmp	LBB3_27
	.p2align	4, 0x90
LBB3_26:                                ##   in Loop: Header=BB3_23 Depth=1
	cmpq	%rax, %rbx
	jle	LBB3_27
LBB3_45:                                ##   in Loop: Header=BB3_23 Depth=1
	addq	%rbx, %rsi
	xorl	%ebx, %ebx
	jmp	LBB3_28
	.p2align	4, 0x90
LBB3_27:                                ##   in Loop: Header=BB3_23 Depth=1
	subq	%rax, %rbx
	movq	%r11, %rsi
LBB3_28:                                ##   in Loop: Header=BB3_23 Depth=1
	movq	-96(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rsi, %rcx
	je	LBB3_29
## BB#30:                               ##   in Loop: Header=BB3_23 Depth=1
	movl	-64(%rbp), %r14d
	.p2align	4, 0x90
LBB3_31:                                ##   Parent Loop BB3_23 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%esi, %eax
	cltd
	idivl	%r14d
	testl	%edx, %edx
	je	LBB3_29
## BB#32:                               ##   in Loop: Header=BB3_31 Depth=2
	movq	%r11, %rax
	subq	%rsi, %rax
	addq	%r10, %rbx
	js	LBB3_35
## BB#33:                               ##   in Loop: Header=BB3_31 Depth=2
	cmpq	%rax, %rbx
	jl	LBB3_34
	jmp	LBB3_36
	.p2align	4, 0x90
LBB3_35:                                ##   in Loop: Header=BB3_31 Depth=2
	cmpq	%rax, %rbx
	jle	LBB3_36
LBB3_34:                                ##   in Loop: Header=BB3_31 Depth=2
	addq	%rbx, %rsi
	xorl	%ebx, %ebx
	cmpq	%rsi, %rcx
	jne	LBB3_31
	jmp	LBB3_38
	.p2align	4, 0x90
LBB3_36:                                ##   in Loop: Header=BB3_31 Depth=2
	subq	%rax, %rbx
	movq	%r11, %rsi
	cmpq	%rsi, %rcx
	jne	LBB3_31
LBB3_38:                                ##   in Loop: Header=BB3_23 Depth=1
	movq	%rcx, %rsi
LBB3_29:                                ##   in Loop: Header=BB3_23 Depth=1
	cmpq	%rsi, %r8
	jne	LBB3_23
LBB3_6:
	movq	-56(%rbp), %rsi
	cmpq	$-1, %rsi
	je	LBB3_11
## BB#7:
	cmpq	$2, %rsi
	jae	LBB3_8
## BB#10:
	movq	$-1, -56(%rbp)
LBB3_11:
	movq	-72(%rbp), %rsi
	cmpq	$-1, %rsi
	je	LBB3_15
## BB#12:
	cmpq	$2, %rsi
	jae	LBB3_13
## BB#14:
	movq	$-1, -72(%rbp)
LBB3_15:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	LBB3_46
## BB#16:
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB3_24:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp21:
	leaq	L_.str(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp22:
## BB#25:
	movq	__ZTVSt12out_of_range@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
Ltmp24:
	movq	__ZTISt12out_of_range@GOTPCREL(%rip), %rsi
	movq	__ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
Ltmp25:
## BB#39:
LBB3_46:
	callq	___stack_chk_fail
LBB3_8:
	leaq	-48(%rbp), %rdi
	jmp	LBB3_9
LBB3_13:
	leaq	-64(%rbp), %rdi
LBB3_9:
	addq	$-2, %rsi
	leaq	-128(%rbp), %rdx
	callq	__ZNK6ranges2v36detail12variant_dataIJEE5applyINS1_13apply_visitorINS1_9ignore2ndINS1_10delete_funEEEDnEELm2EEEvmOT_NSt3__117integral_constantImXT0_EEE
LBB3_41:
Ltmp26:
	movq	%rax, %r14
	movq	%r14, %rdi
	callq	___clang_call_terminate
LBB3_40:
Ltmp23:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	___clang_call_terminate
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table3:
Lexception2:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\274"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	52                      ## Call site table length
Lset28 = Lfunc_begin2-Lfunc_begin2      ## >> Call Site 1 <<
	.long	Lset28
Lset29 = Ltmp21-Lfunc_begin2            ##   Call between Lfunc_begin2 and Ltmp21
	.long	Lset29
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset30 = Ltmp21-Lfunc_begin2            ## >> Call Site 2 <<
	.long	Lset30
Lset31 = Ltmp22-Ltmp21                  ##   Call between Ltmp21 and Ltmp22
	.long	Lset31
Lset32 = Ltmp23-Lfunc_begin2            ##     jumps to Ltmp23
	.long	Lset32
	.byte	1                       ##   On action: 1
Lset33 = Ltmp24-Lfunc_begin2            ## >> Call Site 3 <<
	.long	Lset33
Lset34 = Ltmp25-Ltmp24                  ##   Call between Ltmp24 and Ltmp25
	.long	Lset34
Lset35 = Ltmp26-Lfunc_begin2            ##     jumps to Ltmp26
	.long	Lset35
	.byte	1                       ##   On action: 1
Lset36 = Ltmp25-Lfunc_begin2            ## >> Call Site 4 <<
	.long	Lset36
Lset37 = Lfunc_end2-Ltmp25              ##   Call between Ltmp25 and Lfunc_end2
	.long	Lset37
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNK6ranges2v36detail12variant_dataIJEE5applyINS1_13apply_visitorINS1_9ignore2ndINS1_10delete_funEEEDnEELm2EEEvmOT_NSt3__117integral_constantImXT0_EEE
	.weak_def_can_be_hidden	__ZNK6ranges2v36detail12variant_dataIJEE5applyINS1_13apply_visitorINS1_9ignore2ndINS1_10delete_funEEEDnEELm2EEEvmOT_NSt3__117integral_constantImXT0_EEE
	.p2align	4, 0x90
__ZNK6ranges2v36detail12variant_dataIJEE5applyINS1_13apply_visitorINS1_9ignore2ndINS1_10delete_funEEEDnEELm2EEEvmOT_NSt3__117integral_constantImXT0_EEE: ## @_ZNK6ranges2v36detail12variant_dataIJEE5applyINS1_13apply_visitorINS1_9ignore2ndINS1_10delete_funEEEDnEELm2EEEvmOT_NSt3__117integral_constantImXT0_EEE
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi21:
	.cfi_def_cfa_offset 16
Lcfi22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi23:
	.cfi_def_cfa_register %rbp
	callq	__ZSt9terminatev
	.cfi_endproc

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
Lcfi24:
	.cfi_def_cfa_offset 16
Lcfi25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi26:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Lcfi27:
	.cfi_offset %rbx, -56
Lcfi28:
	.cfi_offset %r12, -48
Lcfi29:
	.cfi_offset %r13, -40
Lcfi30:
	.cfi_offset %r14, -32
Lcfi31:
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
	jne	LBB5_15
## BB#1:
	movabsq	$2305843009213693951, %rcx ## imm = 0x1FFFFFFFFFFFFFFF
	movq	16(%r13), %r14
	subq	%rsi, %r14
	movq	%r14, %rdx
	sarq	$3, %rdx
	movabsq	$1152921504606846974, %rdi ## imm = 0xFFFFFFFFFFFFFFE
	cmpq	%rdi, %rdx
	ja	LBB5_2
## BB#8:
	sarq	$2, %r14
	cmpq	%rax, %r14
	cmovbq	%rax, %r14
	testq	%r14, %r14
	je	LBB5_9
## BB#10:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	cmpq	%rcx, %r14
	jbe	LBB5_3
## BB#11:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp27:
	leaq	L_.str.1(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp28:
## BB#12:
	movq	__ZTVSt12length_error@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	__ZTISt12length_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt12length_errorD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB5_2:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	movq	%rcx, %r14
LBB5_3:
	leaq	(,%r14,8), %rdi
	callq	__Znwm
	movq	%rax, %rbx
	movq	-56(%rbp), %rsi         ## 8-byte Reload
	movq	-48(%rbp), %r8          ## 8-byte Reload
LBB5_4:
	leaq	(%rbx,%r14,8), %r14
	movq	(%r8), %rax
	movq	%rax, (%rbx,%r15,8)
	leaq	8(%rbx,%r15,8), %r15
	testq	%r12, %r12
	jle	LBB5_6
## BB#5:
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%rsi, %r12
	callq	_memcpy
	movq	%r12, %rsi
LBB5_6:
	movq	%rbx, (%r13)
	movq	%r15, 8(%r13)
	movq	%r14, 16(%r13)
	testq	%rsi, %rsi
	je	LBB5_14
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
LBB5_14:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB5_9:
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	jmp	LBB5_4
LBB5_15:
	movq	%r13, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
LBB5_13:
Ltmp29:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table5:
Lexception3:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset38 = Lfunc_begin3-Lfunc_begin3      ## >> Call Site 1 <<
	.long	Lset38
Lset39 = Ltmp27-Lfunc_begin3            ##   Call between Lfunc_begin3 and Ltmp27
	.long	Lset39
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset40 = Ltmp27-Lfunc_begin3            ## >> Call Site 2 <<
	.long	Lset40
Lset41 = Ltmp28-Ltmp27                  ##   Call between Ltmp27 and Ltmp28
	.long	Lset41
Lset42 = Ltmp29-Lfunc_begin3            ##     jumps to Ltmp29
	.long	Lset42
	.byte	0                       ##   On action: cleanup
Lset43 = Ltmp28-Lfunc_begin3            ## >> Call Site 3 <<
	.long	Lset43
Lset44 = Lfunc_end3-Ltmp28              ##   Call between Ltmp28 and Lfunc_end3
	.long	Lset44
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
Lcfi32:
	.cfi_def_cfa_offset 16
Lcfi33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi34:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Lcfi35:
	.cfi_offset %rbx, -56
Lcfi36:
	.cfi_offset %r12, -48
Lcfi37:
	.cfi_offset %r13, -40
Lcfi38:
	.cfi_offset %r14, -32
Lcfi39:
	.cfi_offset %r15, -24
	movq	%rdx, -48(%rbp)         ## 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %r13
	jmp	LBB6_2
LBB6_1:                                 ##   in Loop: Header=BB6_2 Depth=1
	leaq	8(%r15), %rdi
	movq	%r14, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	movq	%r15, %r14
	.p2align	4, 0x90
LBB6_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_4 Depth 2
                                        ##       Child Loop BB6_32 Depth 3
                                        ##         Child Loop BB6_6 Depth 4
                                        ##         Child Loop BB6_14 Depth 4
                                        ##         Child Loop BB6_27 Depth 4
                                        ##           Child Loop BB6_28 Depth 5
                                        ##           Child Loop BB6_30 Depth 5
                                        ##       Child Loop BB6_41 Depth 3
                                        ##         Child Loop BB6_42 Depth 4
                                        ##         Child Loop BB6_44 Depth 4
	leaq	-8(%r14), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	leaq	-16(%r14), %rax
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	movq	%r13, %rbx
	jmp	LBB6_4
	.p2align	4, 0x90
LBB6_3:                                 ##   in Loop: Header=BB6_4 Depth=2
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	addq	$8, %r15
	movq	%r15, %rbx
LBB6_4:                                 ##   Parent Loop BB6_2 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_32 Depth 3
                                        ##         Child Loop BB6_6 Depth 4
                                        ##         Child Loop BB6_14 Depth 4
                                        ##         Child Loop BB6_27 Depth 4
                                        ##           Child Loop BB6_28 Depth 5
                                        ##           Child Loop BB6_30 Depth 5
                                        ##       Child Loop BB6_41 Depth 3
                                        ##         Child Loop BB6_42 Depth 4
                                        ##         Child Loop BB6_44 Depth 4
	movq	%rbx, %r13
	jmp	LBB6_32
	.p2align	4, 0x90
LBB6_5:                                 ##   in Loop: Header=BB6_32 Depth=3
	movq	-64(%rbp), %rdx         ## 8-byte Reload
	.p2align	4, 0x90
LBB6_6:                                 ##   Parent Loop BB6_2 Depth=1
                                        ##     Parent Loop BB6_4 Depth=2
                                        ##       Parent Loop BB6_32 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	cmpq	%rdx, %r13
	je	LBB6_11
## BB#7:                                ##   in Loop: Header=BB6_6 Depth=4
	movq	(%rdx), %rbx
	addq	$-8, %rdx
	cmpq	%rdi, %rbx
	jge	LBB6_6
	jmp	LBB6_38
	.p2align	4, 0x90
LBB6_8:                                 ##   in Loop: Header=BB6_32 Depth=3
	movq	(%r12), %rcx
	movq	(%r13), %rax
	cmpq	%rax, %rcx
	movq	(%r15), %rdx
	jge	LBB6_16
## BB#9:                                ##   in Loop: Header=BB6_32 Depth=3
	cmpq	%rcx, %rdx
	jge	LBB6_19
## BB#10:                               ##   in Loop: Header=BB6_32 Depth=3
	movq	%rdx, (%r13)
	movq	%rax, (%r15)
	movl	$1, %eax
	jmp	LBB6_36
	.p2align	4, 0x90
LBB6_11:                                ##   in Loop: Header=BB6_32 Depth=3
	leaq	8(%r13), %rax
	movq	(%r15), %rdx
	cmpq	%rdx, %rsi
	jl	LBB6_25
## BB#12:                               ##   in Loop: Header=BB6_32 Depth=3
	cmpq	%r15, %rax
	je	LBB6_104
## BB#13:                               ##   in Loop: Header=BB6_32 Depth=3
	addq	$16, %r13
	movq	%r13, %rax
	.p2align	4, 0x90
LBB6_14:                                ##   Parent Loop BB6_2 Depth=1
                                        ##     Parent Loop BB6_4 Depth=2
                                        ##       Parent Loop BB6_32 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	-8(%rax), %rdi
	cmpq	%rdi, %rsi
	jl	LBB6_24
## BB#15:                               ##   in Loop: Header=BB6_14 Depth=4
	addq	$8, %rax
	cmpq	%rax, %r14
	jne	LBB6_14
	jmp	LBB6_104
	.p2align	4, 0x90
LBB6_16:                                ##   in Loop: Header=BB6_32 Depth=3
	cmpq	%rcx, %rdx
	jge	LBB6_22
## BB#17:                               ##   in Loop: Header=BB6_32 Depth=3
	movq	%rdx, (%r12)
	movq	%rcx, (%r15)
	movq	(%r12), %rax
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB6_23
## BB#18:                               ##   in Loop: Header=BB6_32 Depth=3
	movq	%rax, (%r13)
	movq	%rcx, (%r12)
	jmp	LBB6_21
LBB6_19:                                ##   in Loop: Header=BB6_32 Depth=3
	movq	%rcx, (%r13)
	movq	%rax, (%r12)
	movq	(%r15), %rcx
	cmpq	%rax, %rcx
	jge	LBB6_23
## BB#20:                               ##   in Loop: Header=BB6_32 Depth=3
	movq	%rcx, (%r12)
	movq	%rax, (%r15)
LBB6_21:                                ##   in Loop: Header=BB6_32 Depth=3
	movl	$2, %eax
	jmp	LBB6_36
LBB6_22:                                ##   in Loop: Header=BB6_32 Depth=3
	xorl	%eax, %eax
	jmp	LBB6_36
LBB6_23:                                ##   in Loop: Header=BB6_32 Depth=3
	movl	$1, %eax
	jmp	LBB6_36
LBB6_24:                                ##   in Loop: Header=BB6_32 Depth=3
	movq	%rdx, -8(%rax)
	movq	%rdi, (%r15)
LBB6_25:                                ##   in Loop: Header=BB6_32 Depth=3
	cmpq	%r15, %rax
	jne	LBB6_27
	jmp	LBB6_104
	.p2align	4, 0x90
LBB6_26:                                ##   in Loop: Header=BB6_27 Depth=4
	movq	%rbx, -8(%rax)
	movq	%rsi, (%r15)
LBB6_27:                                ##   Parent Loop BB6_2 Depth=1
                                        ##     Parent Loop BB6_4 Depth=2
                                        ##       Parent Loop BB6_32 Depth=3
                                        ## =>      This Loop Header: Depth=4
                                        ##           Child Loop BB6_28 Depth 5
                                        ##           Child Loop BB6_30 Depth 5
	movq	(%rcx), %rdi
	.p2align	4, 0x90
LBB6_28:                                ##   Parent Loop BB6_2 Depth=1
                                        ##     Parent Loop BB6_4 Depth=2
                                        ##       Parent Loop BB6_32 Depth=3
                                        ##         Parent Loop BB6_27 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movq	(%rax), %rsi
	addq	$8, %rax
	cmpq	%rsi, %rdi
	jge	LBB6_28
## BB#29:                               ##   in Loop: Header=BB6_27 Depth=4
	leaq	-8(%rax), %r13
	.p2align	4, 0x90
LBB6_30:                                ##   Parent Loop BB6_2 Depth=1
                                        ##     Parent Loop BB6_4 Depth=2
                                        ##       Parent Loop BB6_32 Depth=3
                                        ##         Parent Loop BB6_27 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movq	-8(%r15), %rbx
	addq	$-8, %r15
	cmpq	%rbx, %rdi
	jl	LBB6_30
## BB#31:                               ##   in Loop: Header=BB6_27 Depth=4
	cmpq	%r15, %r13
	jb	LBB6_26
LBB6_32:                                ##   Parent Loop BB6_2 Depth=1
                                        ##     Parent Loop BB6_4 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB6_6 Depth 4
                                        ##         Child Loop BB6_14 Depth 4
                                        ##         Child Loop BB6_27 Depth 4
                                        ##           Child Loop BB6_28 Depth 5
                                        ##           Child Loop BB6_30 Depth 5
	movq	%r14, %rcx
	subq	%r13, %rcx
	movq	%rcx, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	jbe	LBB6_55
## BB#33:                               ##   in Loop: Header=BB6_32 Depth=3
	cmpq	$247, %rcx
	movq	-56(%rbp), %r15         ## 8-byte Reload
	jle	LBB6_58
## BB#34:                               ##   in Loop: Header=BB6_32 Depth=3
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rax, %rdx
	movabsq	$4611686018427387902, %rsi ## imm = 0x3FFFFFFFFFFFFFFE
	andq	%rsi, %rdx
	cmpq	$7993, %rcx             ## imm = 0x1F39
	leaq	(%r13,%rdx,4), %r12
	jl	LBB6_8
## BB#35:                               ##   in Loop: Header=BB6_32 Depth=3
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
LBB6_36:                                ##   in Loop: Header=BB6_32 Depth=3
	movq	%r13, %rcx
	movq	(%rcx), %rsi
	movq	(%r12), %rdi
	cmpq	%rdi, %rsi
	jge	LBB6_5
## BB#37:                               ##   in Loop: Header=BB6_4 Depth=2
	movq	%r15, %rdx
	jmp	LBB6_39
	.p2align	4, 0x90
LBB6_38:                                ##   in Loop: Header=BB6_4 Depth=2
	movq	%rbx, (%rcx)
	movq	%rsi, 8(%rdx)
	addq	$8, %rdx
	incl	%eax
LBB6_39:                                ##   in Loop: Header=BB6_4 Depth=2
	leaq	8(%r13), %r15
	cmpq	%rdx, %r15
	jb	LBB6_41
	jmp	LBB6_47
	.p2align	4, 0x90
LBB6_40:                                ##   in Loop: Header=BB6_41 Depth=3
	movq	%rbx, (%rcx)
	movq	%rdi, (%rdx)
	incl	%eax
	cmpq	%rcx, %r12
	cmoveq	%rdx, %r12
LBB6_41:                                ##   Parent Loop BB6_2 Depth=1
                                        ##     Parent Loop BB6_4 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB6_42 Depth 4
                                        ##         Child Loop BB6_44 Depth 4
	movq	(%r12), %rsi
	addq	$-8, %r15
	movq	%r15, %rcx
	.p2align	4, 0x90
LBB6_42:                                ##   Parent Loop BB6_2 Depth=1
                                        ##     Parent Loop BB6_4 Depth=2
                                        ##       Parent Loop BB6_41 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	8(%rcx), %rdi
	addq	$8, %rcx
	cmpq	%rsi, %rdi
	jl	LBB6_42
## BB#43:                               ##   in Loop: Header=BB6_41 Depth=3
	leaq	8(%rcx), %r15
	.p2align	4, 0x90
LBB6_44:                                ##   Parent Loop BB6_2 Depth=1
                                        ##     Parent Loop BB6_4 Depth=2
                                        ##       Parent Loop BB6_41 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	-8(%rdx), %rbx
	addq	$-8, %rdx
	cmpq	%rsi, %rbx
	jge	LBB6_44
## BB#45:                               ##   in Loop: Header=BB6_41 Depth=3
	cmpq	%rdx, %rcx
	jbe	LBB6_40
## BB#46:                               ##   in Loop: Header=BB6_4 Depth=2
	movq	%rcx, %r15
LBB6_47:                                ##   in Loop: Header=BB6_4 Depth=2
	cmpq	%r12, %r15
	je	LBB6_50
## BB#48:                               ##   in Loop: Header=BB6_4 Depth=2
	movq	(%r12), %rcx
	movq	(%r15), %rdx
	cmpq	%rdx, %rcx
	jge	LBB6_50
## BB#49:                               ##   in Loop: Header=BB6_4 Depth=2
	movq	%rcx, (%r15)
	movq	%rdx, (%r12)
	incl	%eax
LBB6_50:                                ##   in Loop: Header=BB6_4 Depth=2
	testl	%eax, %eax
	jne	LBB6_53
## BB#51:                               ##   in Loop: Header=BB6_4 Depth=2
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
	jne	LBB6_54
## BB#52:                               ##   in Loop: Header=BB6_4 Depth=2
	testb	%r12b, %r12b
	jne	LBB6_4
LBB6_53:                                ##   in Loop: Header=BB6_4 Depth=2
	movq	%r15, %rax
	subq	%r13, %rax
	movq	%r14, %rcx
	subq	%r15, %rcx
	cmpq	%rcx, %rax
	jl	LBB6_3
	jmp	LBB6_1
LBB6_54:                                ##   in Loop: Header=BB6_2 Depth=1
	testb	%r12b, %r12b
	movq	%r15, %r14
	je	LBB6_2
	jmp	LBB6_104
LBB6_55:
	leaq	LJTI6_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	movq	-56(%rbp), %r8          ## 8-byte Reload
	jmpq	*%rax
LBB6_56:
	movq	-8(%r14), %rax
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB6_104
## BB#57:
	movq	%rax, (%r13)
	movq	%rcx, -8(%r14)
	jmp	LBB6_104
LBB6_58:
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rcx, %rax
	movq	16(%r13), %rdx
	jge	LBB6_61
## BB#59:
	cmpq	%rax, %rdx
	jge	LBB6_64
## BB#60:
	movq	%rdx, (%r13)
	jmp	LBB6_66
LBB6_61:
	cmpq	%rax, %rdx
	jge	LBB6_75
## BB#62:
	movq	%rdx, 8(%r13)
	movq	%rax, 16(%r13)
	cmpq	%rcx, %rdx
	jge	LBB6_76
## BB#63:
	movq	%rdx, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB6_76
LBB6_64:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	cmpq	%rcx, %rdx
	jge	LBB6_75
## BB#65:
	movq	%rdx, 8(%r13)
LBB6_66:
	movq	%rcx, 16(%r13)
	movq	%rcx, %rax
	jmp	LBB6_76
LBB6_75:
	movq	%rdx, %rax
LBB6_76:
	leaq	24(%r13), %rdx
	cmpq	%r14, %rdx
	je	LBB6_104
## BB#77:
	movl	$24, %ecx
	jmp	LBB6_83
	.p2align	4, 0x90
LBB6_78:                                ##   in Loop: Header=BB6_83 Depth=1
	addq	%r13, %rdi
	jmp	LBB6_80
	.p2align	4, 0x90
LBB6_79:                                ##   in Loop: Header=BB6_83 Depth=1
	movq	%r13, %rdi
LBB6_80:                                ##   in Loop: Header=BB6_83 Depth=1
	movq	%rsi, (%rdi)
LBB6_81:                                ##   in Loop: Header=BB6_83 Depth=1
	leaq	8(%rdx), %rsi
	cmpq	%r14, %rsi
	je	LBB6_104
## BB#82:                               ##   in Loop: Header=BB6_83 Depth=1
	movq	(%rdx), %rax
	addq	$8, %rcx
	movq	%rsi, %rdx
LBB6_83:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_85 Depth 2
	movq	(%rdx), %rsi
	cmpq	%rax, %rsi
	jge	LBB6_81
## BB#84:                               ##   in Loop: Header=BB6_83 Depth=1
	movq	%rcx, %rdi
	.p2align	4, 0x90
LBB6_85:                                ##   Parent Loop BB6_83 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, (%r13,%rdi)
	cmpq	$8, %rdi
	je	LBB6_79
## BB#86:                               ##   in Loop: Header=BB6_85 Depth=2
	movq	-16(%r13,%rdi), %rax
	addq	$-8, %rdi
	cmpq	%rax, %rsi
	jl	LBB6_85
	jmp	LBB6_78
LBB6_68:
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rax, %rcx
	movq	-8(%r14), %rdx
	jge	LBB6_87
## BB#69:
	cmpq	%rcx, %rdx
	jge	LBB6_93
## BB#70:
	movq	%rdx, (%r13)
	movq	%rax, -8(%r14)
	jmp	LBB6_104
LBB6_71:
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
LBB6_72:
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rcx, %rax
	movq	16(%r13), %rdx
	jge	LBB6_90
## BB#73:
	cmpq	%rax, %rdx
	jge	LBB6_95
## BB#74:
	movq	%rdx, (%r13)
	jmp	LBB6_97
LBB6_87:
	cmpq	%rcx, %rdx
	jge	LBB6_104
## BB#88:
	movq	%rdx, 8(%r13)
	movq	%rcx, -8(%r14)
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rax, %rcx
	jge	LBB6_104
## BB#89:
	movq	%rcx, (%r13)
	movq	%rax, 8(%r13)
	jmp	LBB6_104
LBB6_90:
	cmpq	%rax, %rdx
	jge	LBB6_99
## BB#91:
	movq	%rdx, 8(%r13)
	movq	%rax, 16(%r13)
	cmpq	%rcx, %rdx
	jge	LBB6_100
## BB#92:
	movq	%rdx, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB6_100
LBB6_93:
	movq	%rcx, (%r13)
	movq	%rax, 8(%r13)
	movq	-8(%r14), %rcx
	cmpq	%rax, %rcx
	jge	LBB6_104
## BB#94:
	movq	%rcx, 8(%r13)
	movq	%rax, -8(%r14)
	jmp	LBB6_104
LBB6_95:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	cmpq	%rcx, %rdx
	jge	LBB6_99
## BB#96:
	movq	%rdx, 8(%r13)
LBB6_97:
	movq	%rcx, 16(%r13)
	movq	%rcx, %rax
	jmp	LBB6_100
LBB6_99:
	movq	%rdx, %rax
LBB6_100:
	movq	-8(%r14), %rcx
	cmpq	%rax, %rcx
	jge	LBB6_104
## BB#101:
	movq	%rcx, 16(%r13)
	movq	%rax, -8(%r14)
	movq	8(%r13), %rcx
	movq	16(%r13), %rax
	cmpq	%rcx, %rax
	jge	LBB6_104
## BB#102:
	movq	%rax, 8(%r13)
	movq	%rcx, 16(%r13)
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB6_104
## BB#103:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
LBB6_104:
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
L6_0_set_104 = LBB6_104-LJTI6_0
L6_0_set_56 = LBB6_56-LJTI6_0
L6_0_set_68 = LBB6_68-LJTI6_0
L6_0_set_72 = LBB6_72-LJTI6_0
L6_0_set_71 = LBB6_71-LJTI6_0
LJTI6_0:
	.long	L6_0_set_104
	.long	L6_0_set_104
	.long	L6_0_set_56
	.long	L6_0_set_68
	.long	L6_0_set_72
	.long	L6_0_set_71
	.end_data_region

	.globl	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.weak_def_can_be_hidden	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.p2align	4, 0x90
__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_: ## @_ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
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
	movq	(%rsi), %r9
	movq	(%rdi), %r10
	cmpq	%r10, %r9
	movq	(%rdx), %r11
	jge	LBB7_1
## BB#5:
	cmpq	%r9, %r11
	jge	LBB7_7
## BB#6:
	movq	%r11, (%rdi)
	movq	%r10, (%rdx)
	movl	$1, %eax
	jmp	LBB7_9
LBB7_1:
	xorl	%eax, %eax
	cmpq	%r9, %r11
	jge	LBB7_2
## BB#3:
	movq	%r11, (%rsi)
	movq	%r9, (%rdx)
	movq	(%rsi), %r10
	movq	(%rdi), %r11
	movl	$1, %eax
	cmpq	%r11, %r10
	jge	LBB7_10
## BB#4:
	movq	%r10, (%rdi)
	movq	%r11, (%rsi)
	movq	(%rdx), %r9
	movl	$2, %eax
	jmp	LBB7_10
LBB7_7:
	movq	%r9, (%rdi)
	movq	%r10, (%rsi)
	movq	(%rdx), %r9
	movl	$1, %eax
	cmpq	%r10, %r9
	jge	LBB7_10
## BB#8:
	movq	%r9, (%rsi)
	movq	%r10, (%rdx)
	movl	$2, %eax
LBB7_9:
	movq	%r10, %r9
	jmp	LBB7_10
LBB7_2:
	movq	%r11, %r9
LBB7_10:
	movq	(%rcx), %r10
	cmpq	%r9, %r10
	jge	LBB7_16
## BB#11:
	movq	%r10, (%rdx)
	movq	%r9, (%rcx)
	movq	(%rdx), %r9
	movq	(%rsi), %r10
	cmpq	%r10, %r9
	jge	LBB7_12
## BB#13:
	movq	%r9, (%rsi)
	movq	%r10, (%rdx)
	movq	(%rsi), %r9
	movq	(%rdi), %r10
	cmpq	%r10, %r9
	jge	LBB7_14
## BB#15:
	movq	%r9, (%rdi)
	movq	%r10, (%rsi)
	addl	$3, %eax
	jmp	LBB7_16
LBB7_12:
	incl	%eax
	jmp	LBB7_16
LBB7_14:
	addl	$2, %eax
LBB7_16:
	movq	(%r8), %r9
	movq	(%rcx), %r10
	cmpq	%r10, %r9
	jge	LBB7_24
## BB#17:
	movq	%r9, (%rcx)
	movq	%r10, (%r8)
	movq	(%rcx), %r8
	movq	(%rdx), %r9
	cmpq	%r9, %r8
	jge	LBB7_18
## BB#19:
	movq	%r8, (%rdx)
	movq	%r9, (%rcx)
	movq	(%rdx), %rcx
	movq	(%rsi), %r8
	cmpq	%r8, %rcx
	jge	LBB7_20
## BB#21:
	movq	%rcx, (%rsi)
	movq	%r8, (%rdx)
	movq	(%rsi), %rcx
	movq	(%rdi), %rdx
	cmpq	%rdx, %rcx
	jge	LBB7_22
## BB#23:
	movq	%rcx, (%rdi)
	movq	%rdx, (%rsi)
	addl	$4, %eax
LBB7_24:
	popq	%rbp
	retq
LBB7_18:
	incl	%eax
	popq	%rbp
	retq
LBB7_20:
	addl	$2, %eax
	popq	%rbp
	retq
LBB7_22:
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
Lcfi43:
	.cfi_def_cfa_offset 16
Lcfi44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi45:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Lcfi46:
	.cfi_offset %rbx, -24
	movq	%rdx, %r9
	movq	%rsi, %r10
	movq	%r10, %rax
	subq	%rdi, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	ja	LBB8_4
## BB#1:
	movb	$1, %bl
	leaq	LJTI8_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB8_2:
	movq	-8(%r10), %rax
	movq	(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	LBB8_51
## BB#3:
	movq	%rax, (%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB8_51
LBB8_4:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rdx
	cmpq	%rcx, %rdx
	movq	16(%rdi), %rsi
	jge	LBB8_14
## BB#5:
	cmpq	%rdx, %rsi
	jge	LBB8_23
## BB#6:
	movq	%rsi, (%rdi)
	jmp	LBB8_25
LBB8_7:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	cmpq	%rcx, %rax
	movq	-8(%r10), %rdx
	jge	LBB8_17
## BB#8:
	cmpq	%rax, %rdx
	jge	LBB8_26
## BB#9:
	movq	%rdx, (%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB8_51
LBB8_10:
	leaq	16(%rdi), %rdx
	leaq	24(%rdi), %rcx
	addq	$-8, %r10
	leaq	8(%rdi), %rsi
	movq	%r10, %r8
	callq	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	jmp	LBB8_51
LBB8_11:
	movq	(%rdi), %rdx
	movq	8(%rdi), %rcx
	cmpq	%rdx, %rcx
	movq	16(%rdi), %rsi
	jge	LBB8_20
## BB#12:
	cmpq	%rcx, %rsi
	jge	LBB8_28
## BB#13:
	movq	%rsi, (%rdi)
	jmp	LBB8_30
LBB8_14:
	cmpq	%rdx, %rsi
	jge	LBB8_33
## BB#15:
	movq	%rsi, 8(%rdi)
	movq	%rdx, 16(%rdi)
	cmpq	%rcx, %rsi
	jge	LBB8_34
## BB#16:
	movq	%rsi, (%rdi)
	movq	%rcx, 8(%rdi)
	jmp	LBB8_34
LBB8_17:
	cmpq	%rax, %rdx
	jge	LBB8_51
## BB#18:
	movq	%rdx, 8(%rdi)
	movq	%rax, -8(%r10)
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	cmpq	%rax, %rcx
	jge	LBB8_51
## BB#19:
	movq	%rcx, (%rdi)
	movq	%rax, 8(%rdi)
	jmp	LBB8_51
LBB8_20:
	cmpq	%rcx, %rsi
	jge	LBB8_46
## BB#21:
	movq	%rsi, 8(%rdi)
	movq	%rcx, 16(%rdi)
	cmpq	%rdx, %rsi
	jge	LBB8_47
## BB#22:
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	jmp	LBB8_47
LBB8_23:
	movq	%rdx, (%rdi)
	movq	%rcx, 8(%rdi)
	cmpq	%rcx, %rsi
	jge	LBB8_33
## BB#24:
	movq	%rsi, 8(%rdi)
LBB8_25:
	movq	%rcx, 16(%rdi)
	movq	%rcx, %rdx
	jmp	LBB8_34
LBB8_33:
	movq	%rsi, %rdx
LBB8_34:
	leaq	24(%rdi), %rsi
	movb	$1, %r8b
	cmpq	%r10, %rsi
	je	LBB8_43
## BB#35:
	xorl	%r9d, %r9d
	jmp	LBB8_39
	.p2align	4, 0x90
LBB8_36:                                ##   in Loop: Header=BB8_39 Depth=1
	movq	%rbx, -8(%rcx)
	incl	%r9d
	leaq	8(%rsi), %rax
	cmpq	%r10, %rax
	sete	%bl
	cmpl	$8, %r9d
	je	LBB8_44
LBB8_37:                                ##   in Loop: Header=BB8_39 Depth=1
	leaq	8(%rsi), %rax
	cmpq	%r10, %rax
	je	LBB8_43
## BB#38:                               ##   in Loop: Header=BB8_39 Depth=1
	movq	(%rsi), %rdx
	movq	%rax, %rsi
LBB8_39:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB8_41 Depth 2
	movq	(%rsi), %rbx
	cmpq	%rdx, %rbx
	jge	LBB8_37
## BB#40:                               ##   in Loop: Header=BB8_39 Depth=1
	movq	%rsi, %rax
	.p2align	4, 0x90
LBB8_41:                                ##   Parent Loop BB8_39 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, %rcx
	movq	%rdx, (%rcx)
	leaq	-8(%rcx), %rax
	cmpq	%rdi, %rax
	je	LBB8_36
## BB#42:                               ##   in Loop: Header=BB8_41 Depth=2
	movq	-8(%rax), %rdx
	cmpq	%rdx, %rbx
	jl	LBB8_41
	jmp	LBB8_36
LBB8_43:
                                        ## implicit-def: %BL
	jmp	LBB8_45
LBB8_26:
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	movq	-8(%r10), %rax
	cmpq	%rcx, %rax
	jge	LBB8_51
## BB#27:
	movq	%rax, 8(%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB8_51
LBB8_28:
	movq	%rcx, (%rdi)
	movq	%rdx, 8(%rdi)
	cmpq	%rdx, %rsi
	jge	LBB8_46
## BB#29:
	movq	%rsi, 8(%rdi)
LBB8_30:
	movq	%rdx, 16(%rdi)
	movq	%rdx, %rcx
	jmp	LBB8_47
LBB8_46:
	movq	%rsi, %rcx
LBB8_47:
	movq	-8(%r10), %rax
	cmpq	%rcx, %rax
	jge	LBB8_51
## BB#48:
	movq	%rax, 16(%rdi)
	movq	%rcx, -8(%r10)
	movq	8(%rdi), %rcx
	movq	16(%rdi), %rax
	cmpq	%rcx, %rax
	jge	LBB8_51
## BB#49:
	movq	%rax, 8(%rdi)
	movq	%rcx, 16(%rdi)
	movq	(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	LBB8_51
## BB#50:
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	jmp	LBB8_51
LBB8_44:
	xorl	%r8d, %r8d
LBB8_45:
	orb	%r8b, %bl
LBB8_51:
	andb	$1, %bl
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L8_0_set_51 = LBB8_51-LJTI8_0
L8_0_set_2 = LBB8_2-LJTI8_0
L8_0_set_7 = LBB8_7-LJTI8_0
L8_0_set_11 = LBB8_11-LJTI8_0
L8_0_set_10 = LBB8_10-LJTI8_0
LJTI8_0:
	.long	L8_0_set_51
	.long	L8_0_set_51
	.long	L8_0_set_2
	.long	L8_0_set_7
	.long	L8_0_set_11
	.long	L8_0_set_10
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
Lcfi47:
	.cfi_def_cfa_offset 16
Lcfi48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi49:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Lcfi50:
	.cfi_offset %rbx, -56
Lcfi51:
	.cfi_offset %r12, -48
Lcfi52:
	.cfi_offset %r13, -40
Lcfi53:
	.cfi_offset %r14, -32
Lcfi54:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
Ltmp30:
	leaq	-80(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp31:
## BB#1:
	cmpb	$0, -80(%rbp)
	je	LBB9_10
## BB#2:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %r12
	movq	40(%rbx,%rax), %rdi
	movl	8(%rbx,%rax), %r13d
	movl	144(%rbx,%rax), %eax
	cmpl	$-1, %eax
	jne	LBB9_7
## BB#3:
Ltmp33:
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	leaq	-56(%rbp), %rdi
	movq	%r12, %rsi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp34:
## BB#4:
Ltmp35:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-56(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp36:
## BB#5:
	movq	(%rax), %rcx
Ltmp37:
	movl	$32, %esi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movb	%al, -41(%rbp)          ## 1-byte Spill
Ltmp38:
## BB#6:
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	-41(%rbp), %eax         ## 1-byte Folded Reload
	movl	%eax, 144(%r12)
	movq	-64(%rbp), %rdi         ## 8-byte Reload
LBB9_7:
	addq	%r15, %r14
	andl	$176, %r13d
	cmpl	$32, %r13d
	movq	%r15, %rdx
	cmoveq	%r14, %rdx
Ltmp40:
	movsbl	%al, %r9d
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r12, %r8
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp41:
## BB#8:
	testq	%rax, %rax
	jne	LBB9_10
## BB#9:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$5, %esi
Ltmp43:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp44:
LBB9_10:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB9_11:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB9_12:
Ltmp45:
	jmp	LBB9_15
LBB9_13:
Ltmp39:
	movq	%rax, %r14
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB9_16
LBB9_14:
Ltmp42:
LBB9_15:
	movq	%rax, %r14
LBB9_16:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	jmp	LBB9_18
LBB9_17:
Ltmp32:
	movq	%rax, %r14
LBB9_18:
	movq	%r14, %rdi
	callq	___cxa_begin_catch
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	addq	-24(%rax), %rdi
Ltmp46:
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp47:
## BB#19:
	callq	___cxa_end_catch
	jmp	LBB9_11
LBB9_20:
Ltmp48:
	movq	%rax, %rbx
Ltmp49:
	callq	___cxa_end_catch
Ltmp50:
## BB#21:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB9_22:
Ltmp51:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table9:
Lexception4:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\213\201"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\202\001"              ## Call site table length
Lset45 = Ltmp30-Lfunc_begin4            ## >> Call Site 1 <<
	.long	Lset45
Lset46 = Ltmp31-Ltmp30                  ##   Call between Ltmp30 and Ltmp31
	.long	Lset46
Lset47 = Ltmp32-Lfunc_begin4            ##     jumps to Ltmp32
	.long	Lset47
	.byte	1                       ##   On action: 1
Lset48 = Ltmp33-Lfunc_begin4            ## >> Call Site 2 <<
	.long	Lset48
Lset49 = Ltmp34-Ltmp33                  ##   Call between Ltmp33 and Ltmp34
	.long	Lset49
Lset50 = Ltmp42-Lfunc_begin4            ##     jumps to Ltmp42
	.long	Lset50
	.byte	1                       ##   On action: 1
Lset51 = Ltmp35-Lfunc_begin4            ## >> Call Site 3 <<
	.long	Lset51
Lset52 = Ltmp38-Ltmp35                  ##   Call between Ltmp35 and Ltmp38
	.long	Lset52
Lset53 = Ltmp39-Lfunc_begin4            ##     jumps to Ltmp39
	.long	Lset53
	.byte	1                       ##   On action: 1
Lset54 = Ltmp40-Lfunc_begin4            ## >> Call Site 4 <<
	.long	Lset54
Lset55 = Ltmp41-Ltmp40                  ##   Call between Ltmp40 and Ltmp41
	.long	Lset55
Lset56 = Ltmp42-Lfunc_begin4            ##     jumps to Ltmp42
	.long	Lset56
	.byte	1                       ##   On action: 1
Lset57 = Ltmp43-Lfunc_begin4            ## >> Call Site 5 <<
	.long	Lset57
Lset58 = Ltmp44-Ltmp43                  ##   Call between Ltmp43 and Ltmp44
	.long	Lset58
Lset59 = Ltmp45-Lfunc_begin4            ##     jumps to Ltmp45
	.long	Lset59
	.byte	1                       ##   On action: 1
Lset60 = Ltmp44-Lfunc_begin4            ## >> Call Site 6 <<
	.long	Lset60
Lset61 = Ltmp46-Ltmp44                  ##   Call between Ltmp44 and Ltmp46
	.long	Lset61
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset62 = Ltmp46-Lfunc_begin4            ## >> Call Site 7 <<
	.long	Lset62
Lset63 = Ltmp47-Ltmp46                  ##   Call between Ltmp46 and Ltmp47
	.long	Lset63
Lset64 = Ltmp48-Lfunc_begin4            ##     jumps to Ltmp48
	.long	Lset64
	.byte	0                       ##   On action: cleanup
Lset65 = Ltmp47-Lfunc_begin4            ## >> Call Site 8 <<
	.long	Lset65
Lset66 = Ltmp49-Ltmp47                  ##   Call between Ltmp47 and Ltmp49
	.long	Lset66
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset67 = Ltmp49-Lfunc_begin4            ## >> Call Site 9 <<
	.long	Lset67
Lset68 = Ltmp50-Ltmp49                  ##   Call between Ltmp49 and Ltmp50
	.long	Lset68
Lset69 = Ltmp51-Lfunc_begin4            ##     jumps to Ltmp51
	.long	Lset69
	.byte	1                       ##   On action: 1
Lset70 = Ltmp50-Lfunc_begin4            ## >> Call Site 10 <<
	.long	Lset70
Lset71 = Lfunc_end4-Ltmp50              ##   Call between Ltmp50 and Lfunc_end4
	.long	Lset71
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
Lcfi55:
	.cfi_def_cfa_offset 16
Lcfi56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi57:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Lcfi58:
	.cfi_offset %rbx, -56
Lcfi59:
	.cfi_offset %r12, -48
Lcfi60:
	.cfi_offset %r13, -40
Lcfi61:
	.cfi_offset %r14, -32
Lcfi62:
	.cfi_offset %r15, -24
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rdi, %r13
	testq	%r13, %r13
	je	LBB10_17
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
	jle	LBB10_3
## BB#2:
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%rbx, %rdx
	callq	*96(%rax)
	cmpq	%rbx, %rax
	jne	LBB10_17
LBB10_3:
	testq	%r15, %r15
	jle	LBB10_13
## BB#4:
	movq	%r12, -88(%rbp)         ## 8-byte Spill
	movq	%r14, -96(%rbp)         ## 8-byte Spill
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movq	$0, -64(%rbp)
	cmpq	$23, %r15
	jae	LBB10_8
## BB#5:
	movl	%r15d, %eax
	addb	%al, %al
	movb	%al, -80(%rbp)
	leaq	-79(%rbp), %r14
	movq	%r14, %r12
	jmp	LBB10_9
LBB10_8:
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
LBB10_9:
	movl	-44(%rbp), %eax         ## 4-byte Reload
	movzbl	%al, %esi
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	_memset
	movb	$0, (%r12,%r15)
	testb	$1, -80(%rbp)
	cmovneq	-64(%rbp), %r14
	movq	(%r13), %rax
Ltmp52:
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	*96(%rax)
	movq	%rax, %rbx
Ltmp53:
## BB#10:
	testb	$1, -80(%rbp)
	movq	-96(%rbp), %r14         ## 8-byte Reload
	movq	-88(%rbp), %r12         ## 8-byte Reload
	je	LBB10_12
## BB#11:
	movq	-64(%rbp), %rdi
	callq	__ZdlPv
LBB10_12:
	cmpq	%r15, %rbx
	jne	LBB10_17
LBB10_13:
	movq	-104(%rbp), %rsi        ## 8-byte Reload
	subq	%rsi, %r12
	testq	%r12, %r12
	jle	LBB10_15
## BB#14:
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	*96(%rax)
	cmpq	%r12, %rax
	jne	LBB10_17
LBB10_15:
	movq	$0, 24(%r14)
	jmp	LBB10_18
LBB10_17:
	xorl	%r13d, %r13d
LBB10_18:
	movq	%r13, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB10_19:
Ltmp54:
	movq	%rax, %rbx
	testb	$1, -80(%rbp)
	je	LBB10_21
## BB#20:
	movq	-64(%rbp), %rdi
	callq	__ZdlPv
LBB10_21:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table10:
Lexception5:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset72 = Lfunc_begin5-Lfunc_begin5      ## >> Call Site 1 <<
	.long	Lset72
Lset73 = Ltmp52-Lfunc_begin5            ##   Call between Lfunc_begin5 and Ltmp52
	.long	Lset73
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset74 = Ltmp52-Lfunc_begin5            ## >> Call Site 2 <<
	.long	Lset74
Lset75 = Ltmp53-Ltmp52                  ##   Call between Ltmp52 and Ltmp53
	.long	Lset75
Lset76 = Ltmp54-Lfunc_begin5            ##     jumps to Ltmp54
	.long	Lset76
	.byte	0                       ##   On action: cleanup
Lset77 = Ltmp53-Lfunc_begin5            ## >> Call Site 3 <<
	.long	Lset77
Lset78 = Lfunc_end5-Ltmp53              ##   Call between Ltmp53 and Lfunc_end5
	.long	Lset78
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"bitset set argument out of range"

L_.str.1:                               ## @.str.1
	.asciz	"allocator<T>::allocate(size_t n) 'n' exceeds maximum supported size"


.subsections_via_symbols
