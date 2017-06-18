	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI0_0:
	.space	16
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
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
	subq	$6250040, %rsp          ## imm = 0x5F5E38
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
	movq	8(%rsi), %rbx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -6250080(%rbp)
	movq	$0, -6250064(%rbp)
	movq	%rbx, %rdi
	callq	_strlen
	leaq	-6250080(%rbp), %r14
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
Ltmp0:
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r14, %rdi
	callq	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	movl	%eax, %r14d
Ltmp1:
## BB#1:
	leaq	-6250080(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
	testl	%r14d, %r14d
	je	LBB0_2
## BB#3:
	movslq	%r14d, %rbx
	leaq	(,%rbx,8), %rdi
Ltmp3:
	callq	__Znwm
	movq	%rax, %rsi
Ltmp4:
## BB#4:
	leaq	(%rsi,%rbx,8), %rax
	movq	%rsi, -64(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rax, -48(%rbp)
	testl	%r14d, %r14d
	jle	LBB0_5
## BB#7:
	xorl	%r12d, %r12d
	leaq	-6250080(%rbp), %rbx
	.p2align	4, 0x90
LBB0_8:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_9 Depth 2
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movq	%rax, %r13
	movl	$6250000, %esi          ## imm = 0x5F5E10
	movq	%rbx, %rdi
	callq	___bzero
	movl	$3, %r15d
	.p2align	4, 0x90
LBB0_9:                                 ##   Parent Loop BB0_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	__Z21mark_sieve_for_numberILm100000000EEvR11sieve_tableIXT_EEi
	addq	$2, %r15
	cmpq	$10000, %r15            ## imm = 0x2710
	jb	LBB0_9
## BB#10:                               ##   in Loop: Header=BB0_8 Depth=1
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
	je	LBB0_12
## BB#11:                               ##   in Loop: Header=BB0_8 Depth=1
	movq	%rdx, (%rax)
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	jmp	LBB0_13
	.p2align	4, 0x90
LBB0_12:                                ##   in Loop: Header=BB0_8 Depth=1
Ltmp5:
	leaq	-64(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	callq	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE21__push_back_slow_pathIRKS5_EEvOT_
Ltmp6:
LBB0_13:                                ##   in Loop: Header=BB0_8 Depth=1
	incl	%r12d
	cmpl	%r14d, %r12d
	jl	LBB0_8
## BB#14:
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	leaq	-56(%rbp), %rbx
	jmp	LBB0_15
LBB0_2:
	xorl	%esi, %esi
LBB0_5:
	leaq	-56(%rbp), %rbx
	movq	%rsi, %rdi
LBB0_15:
	leaq	-6250080(%rbp), %rdx
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	movq	(%rbx), %rax
	movq	-64(%rbp), %rcx
	subq	%rcx, %rax
	sarq	%rax
	andq	$-8, %rax
	movq	(%rcx,%rax), %rsi
Ltmp8:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp9:
## BB#16:
	movb	$32, -6250080(%rbp)
Ltmp10:
	leaq	-6250080(%rbp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp11:
## BB#17:
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB0_21
## BB#18:
	movq	-56(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB0_20
## BB#19:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
LBB0_20:
	callq	__ZdlPv
LBB0_21:
	xorl	%eax, %eax
	addq	$6250040, %rsp          ## imm = 0x5F5E38
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_6:
Ltmp2:
	movq	%rax, %rbx
	leaq	-6250080(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB0_22:
Ltmp12:
	jmp	LBB0_23
LBB0_28:
Ltmp7:
LBB0_23:
	movq	%rax, %rbx
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB0_27
## BB#24:
	movq	-56(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB0_26
## BB#25:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
LBB0_26:
	callq	__ZdlPv
LBB0_27:
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
Lset7 = Ltmp12-Lfunc_begin0             ##     jumps to Ltmp12
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
Lset14 = Ltmp11-Ltmp8                   ##   Call between Ltmp8 and Ltmp11
	.long	Lset14
Lset15 = Ltmp12-Lfunc_begin0            ##     jumps to Ltmp12
	.long	Lset15
	.byte	0                       ##   On action: cleanup
Lset16 = Ltmp11-Lfunc_begin0            ## >> Call Site 7 <<
	.long	Lset16
Lset17 = Lfunc_end0-Ltmp11              ##   Call between Ltmp11 and Lfunc_end0
	.long	Lset17
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z21mark_sieve_for_numberILm100000000EEvR11sieve_tableIXT_EEi
	.weak_def_can_be_hidden	__Z21mark_sieve_for_numberILm100000000EEvR11sieve_tableIXT_EEi
	.p2align	4, 0x90
__Z21mark_sieve_for_numberILm100000000EEvR11sieve_tableIXT_EEi: ## @_Z21mark_sieve_for_numberILm100000000EEvR11sieve_tableIXT_EEi
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## BB#0:
	pushq	%rbp
Ltmp33:
	.cfi_def_cfa_offset 16
Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp35:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Ltmp36:
	.cfi_offset %rbx, -32
Ltmp37:
	.cfi_offset %r14, -24
                                        ## kill: %ESI<def> %ESI<kill> %RSI<def>
	movl	%esi, %r8d
	imull	%r8d, %r8d
	movq	%r8, %rcx
	shrq	%rcx
	decq	%rcx
	cmpq	$49999999, %rcx         ## imm = 0x2FAF07F
	jae	LBB1_1
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
	ja	LBB1_11
## BB#8:
	movslq	%esi, %rsi
	.p2align	4, 0x90
LBB1_9:                                 ## =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movq	%r8, %rax
	divq	%rsi
	testq	%rdx, %rdx
	jne	LBB1_10
## BB#12:                               ##   in Loop: Header=BB1_9 Depth=1
	movq	%r8, %rcx
	shrq	%rcx
	decq	%rcx
	cmpq	$49999999, %rcx         ## imm = 0x2FAF07F
	jae	LBB1_13
## BB#19:                               ##   in Loop: Header=BB1_9 Depth=1
	movq	%rcx, %rax
	shrq	$6, %rax
	movl	$1, %edx
                                        ## kill: %CL<def> %CL<kill> %RCX<kill>
	shlq	%cl, %rdx
	orq	%rdx, (%rdi,%rax,8)
LBB1_10:                                ##   in Loop: Header=BB1_9 Depth=1
	addq	%rbx, %r8
	cmpq	$100000001, %r8         ## imm = 0x5F5E101
	jb	LBB1_9
LBB1_11:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB1_13:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp21:
	leaq	L_.str(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp22:
## BB#14:
	movq	__ZTVSt12out_of_range@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
Ltmp24:
	movq	__ZTISt12out_of_range@GOTPCREL(%rip), %rsi
	movq	__ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
Ltmp25:
## BB#15:
LBB1_1:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp27:
	leaq	L_.str(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp28:
## BB#2:
	movq	__ZTVSt12out_of_range@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
Ltmp30:
	movq	__ZTISt12out_of_range@GOTPCREL(%rip), %rsi
	movq	__ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
Ltmp31:
## BB#3:
LBB1_5:
Ltmp32:
	movq	%rax, %r14
	movq	%r14, %rdi
	callq	___clang_call_terminate
LBB1_4:
Ltmp29:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	___clang_call_terminate
LBB1_17:
Ltmp26:
	movq	%rax, %r14
	movq	%r14, %rdi
	callq	___clang_call_terminate
LBB1_16:
Ltmp23:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	___clang_call_terminate
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\343\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	91                      ## Call site table length
Lset18 = Lfunc_begin1-Lfunc_begin1      ## >> Call Site 1 <<
	.long	Lset18
Lset19 = Ltmp21-Lfunc_begin1            ##   Call between Lfunc_begin1 and Ltmp21
	.long	Lset19
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset20 = Ltmp21-Lfunc_begin1            ## >> Call Site 2 <<
	.long	Lset20
Lset21 = Ltmp22-Ltmp21                  ##   Call between Ltmp21 and Ltmp22
	.long	Lset21
Lset22 = Ltmp23-Lfunc_begin1            ##     jumps to Ltmp23
	.long	Lset22
	.byte	1                       ##   On action: 1
Lset23 = Ltmp24-Lfunc_begin1            ## >> Call Site 3 <<
	.long	Lset23
Lset24 = Ltmp25-Ltmp24                  ##   Call between Ltmp24 and Ltmp25
	.long	Lset24
Lset25 = Ltmp26-Lfunc_begin1            ##     jumps to Ltmp26
	.long	Lset25
	.byte	1                       ##   On action: 1
Lset26 = Ltmp25-Lfunc_begin1            ## >> Call Site 4 <<
	.long	Lset26
Lset27 = Ltmp27-Ltmp25                  ##   Call between Ltmp25 and Ltmp27
	.long	Lset27
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset28 = Ltmp27-Lfunc_begin1            ## >> Call Site 5 <<
	.long	Lset28
Lset29 = Ltmp28-Ltmp27                  ##   Call between Ltmp27 and Ltmp28
	.long	Lset29
Lset30 = Ltmp29-Lfunc_begin1            ##     jumps to Ltmp29
	.long	Lset30
	.byte	1                       ##   On action: 1
Lset31 = Ltmp30-Lfunc_begin1            ## >> Call Site 6 <<
	.long	Lset31
Lset32 = Ltmp31-Ltmp30                  ##   Call between Ltmp30 and Ltmp31
	.long	Lset32
Lset33 = Ltmp32-Lfunc_begin1            ##     jumps to Ltmp32
	.long	Lset33
	.byte	1                       ##   On action: 1
Lset34 = Ltmp31-Lfunc_begin1            ## >> Call Site 7 <<
	.long	Lset34
Lset35 = Lfunc_end1-Ltmp31              ##   Call between Ltmp31 and Lfunc_end1
	.long	Lset35
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
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp38:
	.cfi_def_cfa_offset 16
Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp40:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp41:
	.cfi_offset %rbx, -56
Ltmp42:
	.cfi_offset %r12, -48
Ltmp43:
	.cfi_offset %r13, -40
Ltmp44:
	.cfi_offset %r14, -32
Ltmp45:
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
	je	LBB3_2
## BB#1:
	movq	%r12, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	movq	(%r12), %rdx
LBB3_2:
	movq	16(%r12), %r14
	subq	%rdx, %r14
	movq	%r14, %rax
	sarq	$3, %rax
	movabsq	$1152921504606846975, %rcx ## imm = 0xFFFFFFFFFFFFFFF
	cmpq	%rcx, %rax
	movq	%r15, -48(%rbp)         ## 8-byte Spill
	jae	LBB3_3
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
	jne	LBB3_5
	jmp	LBB3_6
LBB3_3:
	movabsq	$2305843009213693951, %r14 ## imm = 0x1FFFFFFFFFFFFFFF
	movq	8(%r12), %r15
	movq	%r15, %r13
	subq	%rdx, %r13
	sarq	$3, %r13
LBB3_5:
	leaq	(,%r14,8), %rdi
	movq	%rdx, %rbx
	callq	__Znwm
	movq	%rbx, %rdx
	movq	%r14, %rcx
LBB3_6:
	leaq	(%rax,%r13,8), %rbx
	leaq	(%rax,%rcx,8), %rsi
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rcx, (%rax,%r13,8)
	leaq	8(%rax,%r13,8), %r13
	subq	%rdx, %r15
	subq	%r15, %rbx
	testq	%r15, %r15
	jle	LBB3_8
## BB#7:
	movq	%rbx, %rdi
	movq	%rdx, %r14
	movq	%rsi, -48(%rbp)         ## 8-byte Spill
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	_memcpy
	movq	-48(%rbp), %rsi         ## 8-byte Reload
	movq	%r14, %rdx
LBB3_8:
	movq	%rbx, (%r12)
	movq	%r13, 8(%r12)
	movq	%rsi, 16(%r12)
	testq	%rdx, %rdx
	je	LBB3_9
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
LBB3_9:
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
Ltmp46:
	.cfi_def_cfa_offset 16
Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp48:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp49:
	.cfi_offset %rbx, -56
Ltmp50:
	.cfi_offset %r12, -48
Ltmp51:
	.cfi_offset %r13, -40
Ltmp52:
	.cfi_offset %r14, -32
Ltmp53:
	.cfi_offset %r15, -24
	movq	%rdx, -48(%rbp)         ## 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %r13
	jmp	LBB4_2
LBB4_1:                                 ##   in Loop: Header=BB4_2 Depth=1
	leaq	8(%r15), %rdi
	movq	%r14, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	movq	%r15, %r14
	.p2align	4, 0x90
LBB4_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_4 Depth 2
                                        ##       Child Loop BB4_32 Depth 3
                                        ##         Child Loop BB4_6 Depth 4
                                        ##         Child Loop BB4_14 Depth 4
                                        ##         Child Loop BB4_27 Depth 4
                                        ##           Child Loop BB4_28 Depth 5
                                        ##           Child Loop BB4_30 Depth 5
                                        ##       Child Loop BB4_41 Depth 3
                                        ##         Child Loop BB4_42 Depth 4
                                        ##         Child Loop BB4_44 Depth 4
	leaq	-8(%r14), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	leaq	-16(%r14), %rax
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	movq	%r13, %rbx
	jmp	LBB4_4
	.p2align	4, 0x90
LBB4_3:                                 ##   in Loop: Header=BB4_4 Depth=2
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	addq	$8, %r15
	movq	%r15, %rbx
LBB4_4:                                 ##   Parent Loop BB4_2 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB4_32 Depth 3
                                        ##         Child Loop BB4_6 Depth 4
                                        ##         Child Loop BB4_14 Depth 4
                                        ##         Child Loop BB4_27 Depth 4
                                        ##           Child Loop BB4_28 Depth 5
                                        ##           Child Loop BB4_30 Depth 5
                                        ##       Child Loop BB4_41 Depth 3
                                        ##         Child Loop BB4_42 Depth 4
                                        ##         Child Loop BB4_44 Depth 4
	movq	%rbx, %r13
	jmp	LBB4_32
	.p2align	4, 0x90
LBB4_5:                                 ##   in Loop: Header=BB4_32 Depth=3
	movq	-64(%rbp), %rdx         ## 8-byte Reload
	.p2align	4, 0x90
LBB4_6:                                 ##   Parent Loop BB4_2 Depth=1
                                        ##     Parent Loop BB4_4 Depth=2
                                        ##       Parent Loop BB4_32 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	cmpq	%rdx, %r13
	je	LBB4_11
## BB#7:                                ##   in Loop: Header=BB4_6 Depth=4
	movq	(%rdx), %rbx
	addq	$-8, %rdx
	cmpq	%rdi, %rbx
	jge	LBB4_6
	jmp	LBB4_38
	.p2align	4, 0x90
LBB4_8:                                 ##   in Loop: Header=BB4_32 Depth=3
	movq	(%r12), %rcx
	movq	(%r13), %rax
	cmpq	%rax, %rcx
	movq	(%r15), %rdx
	jge	LBB4_16
## BB#9:                                ##   in Loop: Header=BB4_32 Depth=3
	cmpq	%rcx, %rdx
	jge	LBB4_19
## BB#10:                               ##   in Loop: Header=BB4_32 Depth=3
	movq	%rdx, (%r13)
	movq	%rax, (%r15)
	movl	$1, %eax
	jmp	LBB4_36
	.p2align	4, 0x90
LBB4_11:                                ##   in Loop: Header=BB4_32 Depth=3
	leaq	8(%r13), %rax
	movq	(%r15), %rdx
	cmpq	%rdx, %rsi
	jl	LBB4_25
## BB#12:                               ##   in Loop: Header=BB4_32 Depth=3
	cmpq	%r15, %rax
	je	LBB4_87
## BB#13:                               ##   in Loop: Header=BB4_32 Depth=3
	addq	$16, %r13
	movq	%r13, %rax
	.p2align	4, 0x90
LBB4_14:                                ##   Parent Loop BB4_2 Depth=1
                                        ##     Parent Loop BB4_4 Depth=2
                                        ##       Parent Loop BB4_32 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	-8(%rax), %rdi
	cmpq	%rdi, %rsi
	jl	LBB4_24
## BB#15:                               ##   in Loop: Header=BB4_14 Depth=4
	addq	$8, %rax
	cmpq	%rax, %r14
	jne	LBB4_14
	jmp	LBB4_87
	.p2align	4, 0x90
LBB4_16:                                ##   in Loop: Header=BB4_32 Depth=3
	cmpq	%rcx, %rdx
	jge	LBB4_22
## BB#17:                               ##   in Loop: Header=BB4_32 Depth=3
	movq	%rdx, (%r12)
	movq	%rcx, (%r15)
	movq	(%r12), %rax
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB4_23
## BB#18:                               ##   in Loop: Header=BB4_32 Depth=3
	movq	%rax, (%r13)
	movq	%rcx, (%r12)
	jmp	LBB4_21
LBB4_19:                                ##   in Loop: Header=BB4_32 Depth=3
	movq	%rcx, (%r13)
	movq	%rax, (%r12)
	movq	(%r15), %rcx
	cmpq	%rax, %rcx
	jge	LBB4_23
## BB#20:                               ##   in Loop: Header=BB4_32 Depth=3
	movq	%rcx, (%r12)
	movq	%rax, (%r15)
LBB4_21:                                ##   in Loop: Header=BB4_32 Depth=3
	movl	$2, %eax
	jmp	LBB4_36
LBB4_22:                                ##   in Loop: Header=BB4_32 Depth=3
	xorl	%eax, %eax
	jmp	LBB4_36
LBB4_23:                                ##   in Loop: Header=BB4_32 Depth=3
	movl	$1, %eax
	jmp	LBB4_36
LBB4_24:                                ##   in Loop: Header=BB4_32 Depth=3
	movq	%rdx, -8(%rax)
	movq	%rdi, (%r15)
LBB4_25:                                ##   in Loop: Header=BB4_32 Depth=3
	cmpq	%r15, %rax
	jne	LBB4_27
	jmp	LBB4_87
	.p2align	4, 0x90
LBB4_26:                                ##   in Loop: Header=BB4_27 Depth=4
	movq	%rbx, -8(%rax)
	movq	%rsi, (%r15)
LBB4_27:                                ##   Parent Loop BB4_2 Depth=1
                                        ##     Parent Loop BB4_4 Depth=2
                                        ##       Parent Loop BB4_32 Depth=3
                                        ## =>      This Loop Header: Depth=4
                                        ##           Child Loop BB4_28 Depth 5
                                        ##           Child Loop BB4_30 Depth 5
	movq	(%rcx), %rdi
	.p2align	4, 0x90
LBB4_28:                                ##   Parent Loop BB4_2 Depth=1
                                        ##     Parent Loop BB4_4 Depth=2
                                        ##       Parent Loop BB4_32 Depth=3
                                        ##         Parent Loop BB4_27 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movq	(%rax), %rsi
	addq	$8, %rax
	cmpq	%rsi, %rdi
	jge	LBB4_28
## BB#29:                               ##   in Loop: Header=BB4_27 Depth=4
	leaq	-8(%rax), %r13
	.p2align	4, 0x90
LBB4_30:                                ##   Parent Loop BB4_2 Depth=1
                                        ##     Parent Loop BB4_4 Depth=2
                                        ##       Parent Loop BB4_32 Depth=3
                                        ##         Parent Loop BB4_27 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movq	-8(%r15), %rbx
	addq	$-8, %r15
	cmpq	%rbx, %rdi
	jl	LBB4_30
## BB#31:                               ##   in Loop: Header=BB4_27 Depth=4
	cmpq	%r15, %r13
	jb	LBB4_26
LBB4_32:                                ##   Parent Loop BB4_2 Depth=1
                                        ##     Parent Loop BB4_4 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB4_6 Depth 4
                                        ##         Child Loop BB4_14 Depth 4
                                        ##         Child Loop BB4_27 Depth 4
                                        ##           Child Loop BB4_28 Depth 5
                                        ##           Child Loop BB4_30 Depth 5
	movq	%r14, %rcx
	subq	%r13, %rcx
	movq	%rcx, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	jbe	LBB4_55
## BB#33:                               ##   in Loop: Header=BB4_32 Depth=3
	cmpq	$247, %rcx
	movq	-56(%rbp), %r15         ## 8-byte Reload
	jle	LBB4_58
## BB#34:                               ##   in Loop: Header=BB4_32 Depth=3
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rax, %rdx
	movabsq	$4611686018427387902, %rsi ## imm = 0x3FFFFFFFFFFFFFFE
	andq	%rsi, %rdx
	leaq	(%r13,%rdx,4), %r12
	cmpq	$7993, %rcx             ## imm = 0x1F39
	jl	LBB4_8
## BB#35:                               ##   in Loop: Header=BB4_32 Depth=3
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
LBB4_36:                                ##   in Loop: Header=BB4_32 Depth=3
	movq	%r13, %rcx
	movq	(%rcx), %rsi
	movq	(%r12), %rdi
	cmpq	%rdi, %rsi
	jge	LBB4_5
## BB#37:                               ##   in Loop: Header=BB4_4 Depth=2
	movq	%r15, %rdx
	jmp	LBB4_39
	.p2align	4, 0x90
LBB4_38:                                ##   in Loop: Header=BB4_4 Depth=2
	movq	%rbx, (%rcx)
	movq	%rsi, 8(%rdx)
	addq	$8, %rdx
	incl	%eax
LBB4_39:                                ##   in Loop: Header=BB4_4 Depth=2
	leaq	8(%r13), %r15
	cmpq	%rdx, %r15
	jb	LBB4_41
	jmp	LBB4_47
	.p2align	4, 0x90
LBB4_40:                                ##   in Loop: Header=BB4_41 Depth=3
	movq	%rbx, (%rcx)
	movq	%rdi, (%rdx)
	incl	%eax
	cmpq	%rcx, %r12
	cmoveq	%rdx, %r12
LBB4_41:                                ##   Parent Loop BB4_2 Depth=1
                                        ##     Parent Loop BB4_4 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB4_42 Depth 4
                                        ##         Child Loop BB4_44 Depth 4
	movq	(%r12), %rsi
	addq	$-8, %r15
	movq	%r15, %rcx
	.p2align	4, 0x90
LBB4_42:                                ##   Parent Loop BB4_2 Depth=1
                                        ##     Parent Loop BB4_4 Depth=2
                                        ##       Parent Loop BB4_41 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	8(%rcx), %rdi
	addq	$8, %rcx
	cmpq	%rsi, %rdi
	jl	LBB4_42
## BB#43:                               ##   in Loop: Header=BB4_41 Depth=3
	leaq	8(%rcx), %r15
	.p2align	4, 0x90
LBB4_44:                                ##   Parent Loop BB4_2 Depth=1
                                        ##     Parent Loop BB4_4 Depth=2
                                        ##       Parent Loop BB4_41 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	-8(%rdx), %rbx
	addq	$-8, %rdx
	cmpq	%rsi, %rbx
	jge	LBB4_44
## BB#45:                               ##   in Loop: Header=BB4_41 Depth=3
	cmpq	%rdx, %rcx
	jbe	LBB4_40
## BB#46:                               ##   in Loop: Header=BB4_4 Depth=2
	movq	%rcx, %r15
LBB4_47:                                ##   in Loop: Header=BB4_4 Depth=2
	cmpq	%r12, %r15
	je	LBB4_50
## BB#48:                               ##   in Loop: Header=BB4_4 Depth=2
	movq	(%r12), %rcx
	movq	(%r15), %rdx
	cmpq	%rdx, %rcx
	jge	LBB4_50
## BB#49:                               ##   in Loop: Header=BB4_4 Depth=2
	movq	%rcx, (%r15)
	movq	%rdx, (%r12)
	incl	%eax
LBB4_50:                                ##   in Loop: Header=BB4_4 Depth=2
	testl	%eax, %eax
	jne	LBB4_53
## BB#51:                               ##   in Loop: Header=BB4_4 Depth=2
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
	jne	LBB4_54
## BB#52:                               ##   in Loop: Header=BB4_4 Depth=2
	testb	%r12b, %r12b
	jne	LBB4_4
LBB4_53:                                ##   in Loop: Header=BB4_4 Depth=2
	movq	%r15, %rax
	subq	%r13, %rax
	movq	%r14, %rcx
	subq	%r15, %rcx
	cmpq	%rcx, %rax
	jl	LBB4_3
	jmp	LBB4_1
LBB4_54:                                ##   in Loop: Header=BB4_2 Depth=1
	testb	%r12b, %r12b
	movq	%r15, %r14
	je	LBB4_2
	jmp	LBB4_87
LBB4_55:
	leaq	LJTI4_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	movq	-56(%rbp), %r8          ## 8-byte Reload
	jmpq	*%rax
LBB4_56:
	movq	-8(%r14), %rax
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB4_87
## BB#57:
	movq	%rax, (%r13)
	movq	%rcx, -8(%r14)
	jmp	LBB4_87
LBB4_58:
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rcx, %rax
	movq	16(%r13), %rdx
	jge	LBB4_61
## BB#59:
	cmpq	%rax, %rdx
	jge	LBB4_64
## BB#60:
	movq	%rdx, (%r13)
	jmp	LBB4_66
LBB4_61:
	cmpq	%rax, %rdx
	jge	LBB4_75
## BB#62:
	movq	%rdx, 8(%r13)
	movq	%rax, 16(%r13)
	cmpq	%rcx, %rdx
	jge	LBB4_76
## BB#63:
	movq	%rdx, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB4_76
LBB4_64:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	cmpq	%rcx, %rdx
	jge	LBB4_75
## BB#65:
	movq	%rdx, 8(%r13)
LBB4_66:
	movq	%rcx, 16(%r13)
	movq	%rcx, %rax
	jmp	LBB4_76
LBB4_75:
	movq	%rdx, %rax
LBB4_76:
	leaq	24(%r13), %rdx
	cmpq	%r14, %rdx
	je	LBB4_87
## BB#77:
	movl	$24, %ecx
	jmp	LBB4_79
	.p2align	4, 0x90
LBB4_78:                                ##   in Loop: Header=BB4_79 Depth=1
	movq	(%rdx), %rax
	addq	$8, %rcx
	movq	%rsi, %rdx
LBB4_79:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_81 Depth 2
	movq	(%rdx), %rsi
	cmpq	%rax, %rsi
	jge	LBB4_86
## BB#80:                               ##   in Loop: Header=BB4_79 Depth=1
	movq	%rcx, %rdi
	.p2align	4, 0x90
LBB4_81:                                ##   Parent Loop BB4_79 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, (%r13,%rdi)
	cmpq	$8, %rdi
	je	LBB4_84
## BB#82:                               ##   in Loop: Header=BB4_81 Depth=2
	movq	-16(%r13,%rdi), %rax
	addq	$-8, %rdi
	cmpq	%rax, %rsi
	jl	LBB4_81
## BB#83:                               ##   in Loop: Header=BB4_79 Depth=1
	addq	%r13, %rdi
	jmp	LBB4_85
	.p2align	4, 0x90
LBB4_84:                                ##   in Loop: Header=BB4_79 Depth=1
	movq	%r13, %rdi
LBB4_85:                                ##   in Loop: Header=BB4_79 Depth=1
	movq	%rsi, (%rdi)
LBB4_86:                                ##   in Loop: Header=BB4_79 Depth=1
	leaq	8(%rdx), %rsi
	cmpq	%r14, %rsi
	jne	LBB4_78
LBB4_87:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB4_68:
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rax, %rcx
	movq	-8(%r14), %rdx
	jge	LBB4_88
## BB#69:
	cmpq	%rcx, %rdx
	jge	LBB4_94
## BB#70:
	movq	%rdx, (%r13)
	movq	%rax, -8(%r14)
	jmp	LBB4_87
LBB4_71:
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
LBB4_72:
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rcx, %rax
	movq	16(%r13), %rdx
	jge	LBB4_91
## BB#73:
	cmpq	%rax, %rdx
	jge	LBB4_96
## BB#74:
	movq	%rdx, (%r13)
	jmp	LBB4_98
LBB4_88:
	cmpq	%rcx, %rdx
	jge	LBB4_87
## BB#89:
	movq	%rdx, 8(%r13)
	movq	%rcx, -8(%r14)
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rax, %rcx
	jge	LBB4_87
## BB#90:
	movq	%rcx, (%r13)
	movq	%rax, 8(%r13)
	jmp	LBB4_87
LBB4_91:
	cmpq	%rax, %rdx
	jge	LBB4_100
## BB#92:
	movq	%rdx, 8(%r13)
	movq	%rax, 16(%r13)
	cmpq	%rcx, %rdx
	jge	LBB4_101
## BB#93:
	movq	%rdx, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB4_101
LBB4_94:
	movq	%rcx, (%r13)
	movq	%rax, 8(%r13)
	movq	-8(%r14), %rcx
	cmpq	%rax, %rcx
	jge	LBB4_87
## BB#95:
	movq	%rcx, 8(%r13)
	movq	%rax, -8(%r14)
	jmp	LBB4_87
LBB4_96:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	cmpq	%rcx, %rdx
	jge	LBB4_100
## BB#97:
	movq	%rdx, 8(%r13)
LBB4_98:
	movq	%rcx, 16(%r13)
	movq	%rcx, %rax
	jmp	LBB4_101
LBB4_100:
	movq	%rdx, %rax
LBB4_101:
	movq	-8(%r14), %rcx
	cmpq	%rax, %rcx
	jge	LBB4_87
## BB#102:
	movq	%rcx, 16(%r13)
	movq	%rax, -8(%r14)
	movq	8(%r13), %rcx
	movq	16(%r13), %rax
	cmpq	%rcx, %rax
	jge	LBB4_87
## BB#103:
	movq	%rax, 8(%r13)
	movq	%rcx, 16(%r13)
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB4_87
## BB#104:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB4_87
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L4_0_set_87 = LBB4_87-LJTI4_0
L4_0_set_56 = LBB4_56-LJTI4_0
L4_0_set_68 = LBB4_68-LJTI4_0
L4_0_set_72 = LBB4_72-LJTI4_0
L4_0_set_71 = LBB4_71-LJTI4_0
LJTI4_0:
	.long	L4_0_set_87
	.long	L4_0_set_87
	.long	L4_0_set_56
	.long	L4_0_set_68
	.long	L4_0_set_72
	.long	L4_0_set_71
	.end_data_region

	.globl	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.weak_def_can_be_hidden	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.p2align	4, 0x90
__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_: ## @_ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp54:
	.cfi_def_cfa_offset 16
Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp56:
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %r9
	movq	(%rdi), %r10
	cmpq	%r10, %r9
	movq	(%rdx), %r11
	jge	LBB5_1
## BB#5:
	cmpq	%r9, %r11
	jge	LBB5_7
## BB#6:
	movq	%r11, (%rdi)
	movq	%r10, (%rdx)
	movl	$1, %eax
	jmp	LBB5_9
LBB5_1:
	xorl	%eax, %eax
	cmpq	%r9, %r11
	jge	LBB5_2
## BB#3:
	movq	%r11, (%rsi)
	movq	%r9, (%rdx)
	movq	(%rsi), %r10
	movq	(%rdi), %r11
	movl	$1, %eax
	cmpq	%r11, %r10
	jge	LBB5_10
## BB#4:
	movq	%r10, (%rdi)
	movq	%r11, (%rsi)
	movq	(%rdx), %r9
	movl	$2, %eax
	jmp	LBB5_10
LBB5_7:
	movq	%r9, (%rdi)
	movq	%r10, (%rsi)
	movq	(%rdx), %r9
	movl	$1, %eax
	cmpq	%r10, %r9
	jge	LBB5_10
## BB#8:
	movq	%r9, (%rsi)
	movq	%r10, (%rdx)
	movl	$2, %eax
LBB5_9:
	movq	%r10, %r9
	jmp	LBB5_10
LBB5_2:
	movq	%r11, %r9
LBB5_10:
	movq	(%rcx), %r10
	cmpq	%r9, %r10
	jge	LBB5_16
## BB#11:
	movq	%r10, (%rdx)
	movq	%r9, (%rcx)
	movq	(%rdx), %r9
	movq	(%rsi), %r10
	cmpq	%r10, %r9
	jge	LBB5_12
## BB#13:
	movq	%r9, (%rsi)
	movq	%r10, (%rdx)
	movq	(%rsi), %r9
	movq	(%rdi), %r10
	cmpq	%r10, %r9
	jge	LBB5_14
## BB#15:
	movq	%r9, (%rdi)
	movq	%r10, (%rsi)
	addl	$3, %eax
	jmp	LBB5_16
LBB5_12:
	incl	%eax
	jmp	LBB5_16
LBB5_14:
	addl	$2, %eax
LBB5_16:
	movq	(%r8), %r9
	movq	(%rcx), %r10
	cmpq	%r10, %r9
	jge	LBB5_24
## BB#17:
	movq	%r9, (%rcx)
	movq	%r10, (%r8)
	movq	(%rcx), %r8
	movq	(%rdx), %r9
	cmpq	%r9, %r8
	jge	LBB5_18
## BB#19:
	movq	%r8, (%rdx)
	movq	%r9, (%rcx)
	movq	(%rdx), %rcx
	movq	(%rsi), %r8
	cmpq	%r8, %rcx
	jge	LBB5_20
## BB#21:
	movq	%rcx, (%rsi)
	movq	%r8, (%rdx)
	movq	(%rsi), %rcx
	movq	(%rdi), %rdx
	cmpq	%rdx, %rcx
	jge	LBB5_22
## BB#23:
	movq	%rcx, (%rdi)
	movq	%rdx, (%rsi)
	addl	$4, %eax
LBB5_24:
	popq	%rbp
	retq
LBB5_18:
	incl	%eax
	popq	%rbp
	retq
LBB5_20:
	addl	$2, %eax
	popq	%rbp
	retq
LBB5_22:
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
Ltmp57:
	.cfi_def_cfa_offset 16
Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp59:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Ltmp60:
	.cfi_offset %rbx, -24
	movq	%rdx, %r9
	movq	%rsi, %r10
	movq	%r10, %rax
	subq	%rdi, %rax
	sarq	$3, %rax
	cmpq	$5, %rax
	ja	LBB6_4
## BB#1:
	movb	$1, %bl
	leaq	LJTI6_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB6_2:
	movq	-8(%r10), %rax
	movq	(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	LBB6_50
## BB#3:
	movq	%rax, (%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB6_50
LBB6_4:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rdx
	cmpq	%rcx, %rdx
	movq	16(%rdi), %rsi
	jge	LBB6_14
## BB#5:
	cmpq	%rdx, %rsi
	jge	LBB6_23
## BB#6:
	movq	%rsi, (%rdi)
	jmp	LBB6_25
LBB6_7:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	cmpq	%rcx, %rax
	movq	-8(%r10), %rdx
	jge	LBB6_17
## BB#8:
	cmpq	%rax, %rdx
	jge	LBB6_26
## BB#9:
	movq	%rdx, (%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB6_50
LBB6_10:
	leaq	16(%rdi), %rdx
	leaq	24(%rdi), %rcx
	addq	$-8, %r10
	leaq	8(%rdi), %rsi
	movq	%r10, %r8
	callq	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	jmp	LBB6_50
LBB6_11:
	movq	(%rdi), %rdx
	movq	8(%rdi), %rcx
	cmpq	%rdx, %rcx
	movq	16(%rdi), %rsi
	jge	LBB6_20
## BB#12:
	cmpq	%rcx, %rsi
	jge	LBB6_28
## BB#13:
	movq	%rsi, (%rdi)
	jmp	LBB6_30
LBB6_14:
	cmpq	%rdx, %rsi
	jge	LBB6_33
## BB#15:
	movq	%rsi, 8(%rdi)
	movq	%rdx, 16(%rdi)
	cmpq	%rcx, %rsi
	jge	LBB6_34
## BB#16:
	movq	%rsi, (%rdi)
	movq	%rcx, 8(%rdi)
	jmp	LBB6_34
LBB6_17:
	cmpq	%rax, %rdx
	jge	LBB6_50
## BB#18:
	movq	%rdx, 8(%rdi)
	movq	%rax, -8(%r10)
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	cmpq	%rax, %rcx
	jge	LBB6_50
## BB#19:
	movq	%rcx, (%rdi)
	movq	%rax, 8(%rdi)
	jmp	LBB6_50
LBB6_20:
	cmpq	%rcx, %rsi
	jge	LBB6_45
## BB#21:
	movq	%rsi, 8(%rdi)
	movq	%rcx, 16(%rdi)
	cmpq	%rdx, %rsi
	jge	LBB6_46
## BB#22:
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	jmp	LBB6_46
LBB6_23:
	movq	%rdx, (%rdi)
	movq	%rcx, 8(%rdi)
	cmpq	%rcx, %rsi
	jge	LBB6_33
## BB#24:
	movq	%rsi, 8(%rdi)
LBB6_25:
	movq	%rcx, 16(%rdi)
	movq	%rcx, %rdx
	jmp	LBB6_34
LBB6_33:
	movq	%rsi, %rdx
LBB6_34:
	leaq	24(%rdi), %rsi
	movb	$1, %r8b
	cmpq	%r10, %rsi
	je	LBB6_44
## BB#35:
	xorl	%r9d, %r9d
	jmp	LBB6_37
	.p2align	4, 0x90
LBB6_36:                                ##   in Loop: Header=BB6_37 Depth=1
	movq	(%rsi), %rdx
	movq	%rax, %rsi
LBB6_37:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_39 Depth 2
	movq	(%rsi), %rbx
	cmpq	%rdx, %rbx
	jge	LBB6_42
## BB#38:                               ##   in Loop: Header=BB6_37 Depth=1
	movq	%rsi, %rax
	.p2align	4, 0x90
LBB6_39:                                ##   Parent Loop BB6_37 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, %rcx
	movq	%rdx, (%rcx)
	leaq	-8(%rcx), %rax
	cmpq	%rdi, %rax
	je	LBB6_41
## BB#40:                               ##   in Loop: Header=BB6_39 Depth=2
	movq	-8(%rax), %rdx
	cmpq	%rdx, %rbx
	jl	LBB6_39
LBB6_41:                                ##   in Loop: Header=BB6_37 Depth=1
	movq	%rbx, -8(%rcx)
	incl	%r9d
	leaq	8(%rsi), %rax
	cmpq	%r10, %rax
	sete	%bl
	cmpl	$8, %r9d
	je	LBB6_43
LBB6_42:                                ##   in Loop: Header=BB6_37 Depth=1
	leaq	8(%rsi), %rax
	cmpq	%r10, %rax
	jne	LBB6_36
	jmp	LBB6_44
LBB6_26:
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	movq	-8(%r10), %rax
	cmpq	%rcx, %rax
	jge	LBB6_50
## BB#27:
	movq	%rax, 8(%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB6_50
LBB6_28:
	movq	%rcx, (%rdi)
	movq	%rdx, 8(%rdi)
	cmpq	%rdx, %rsi
	jge	LBB6_45
## BB#29:
	movq	%rsi, 8(%rdi)
LBB6_30:
	movq	%rdx, 16(%rdi)
	movq	%rdx, %rcx
	jmp	LBB6_46
LBB6_45:
	movq	%rsi, %rcx
LBB6_46:
	movq	-8(%r10), %rax
	cmpq	%rcx, %rax
	jge	LBB6_50
## BB#47:
	movq	%rax, 16(%rdi)
	movq	%rcx, -8(%r10)
	movq	8(%rdi), %rcx
	movq	16(%rdi), %rax
	cmpq	%rcx, %rax
	jge	LBB6_50
## BB#48:
	movq	%rax, 8(%rdi)
	movq	%rcx, 16(%rdi)
	movq	(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	LBB6_50
## BB#49:
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	jmp	LBB6_50
LBB6_43:
	xorl	%r8d, %r8d
LBB6_44:
	orb	%r8b, %bl
LBB6_50:
	andb	$1, %bl
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L6_0_set_50 = LBB6_50-LJTI6_0
L6_0_set_2 = LBB6_2-LJTI6_0
L6_0_set_7 = LBB6_7-LJTI6_0
L6_0_set_11 = LBB6_11-LJTI6_0
L6_0_set_10 = LBB6_10-LJTI6_0
LJTI6_0:
	.long	L6_0_set_50
	.long	L6_0_set_50
	.long	L6_0_set_2
	.long	L6_0_set_7
	.long	L6_0_set_11
	.long	L6_0_set_10
	.end_data_region

	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	4, 0x90
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
## BB#0:
	pushq	%rbp
Ltmp82:
	.cfi_def_cfa_offset 16
Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp84:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp85:
	.cfi_offset %rbx, -56
Ltmp86:
	.cfi_offset %r12, -48
Ltmp87:
	.cfi_offset %r13, -40
Ltmp88:
	.cfi_offset %r14, -32
Ltmp89:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
Ltmp61:
	leaq	-80(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp62:
## BB#1:
	cmpb	$0, -80(%rbp)
	je	LBB7_10
## BB#2:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %r12
	movq	40(%rbx,%rax), %rdi
	movl	8(%rbx,%rax), %r13d
	movl	144(%rbx,%rax), %eax
	cmpl	$-1, %eax
	jne	LBB7_7
## BB#3:
Ltmp64:
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	leaq	-56(%rbp), %rdi
	movq	%r12, %rsi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp65:
## BB#4:
Ltmp66:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-56(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp67:
## BB#5:
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp68:
	movl	$32, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movb	%al, -41(%rbp)          ## 1-byte Spill
Ltmp69:
## BB#6:
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	-41(%rbp), %eax         ## 1-byte Folded Reload
	movl	%eax, 144(%r12)
	movq	-64(%rbp), %rdi         ## 8-byte Reload
LBB7_7:
	addq	%r15, %r14
	andl	$176, %r13d
	cmpl	$32, %r13d
	movq	%r15, %rdx
	cmoveq	%r14, %rdx
Ltmp71:
	movsbl	%al, %r9d
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r12, %r8
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp72:
## BB#8:
	testq	%rax, %rax
	jne	LBB7_10
## BB#9:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$5, %esi
Ltmp73:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp74:
LBB7_10:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB7_15:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB7_19:
Ltmp70:
	movq	%rax, %r14
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB7_12
LBB7_20:
Ltmp63:
	movq	%rax, %r14
	jmp	LBB7_13
LBB7_11:
Ltmp75:
	movq	%rax, %r14
LBB7_12:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB7_13:
	movq	%rbx, %r15
	movq	%r14, %rdi
	callq	___cxa_begin_catch
	movq	(%rbx), %rax
	addq	-24(%rax), %r15
Ltmp76:
	movq	%r15, %rdi
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp77:
## BB#14:
	callq	___cxa_end_catch
	jmp	LBB7_15
LBB7_16:
Ltmp78:
	movq	%rax, %rbx
Ltmp79:
	callq	___cxa_end_catch
Ltmp80:
## BB#17:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB7_18:
Ltmp81:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table7:
Lexception2:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	125                     ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	117                     ## Call site table length
Lset36 = Ltmp61-Lfunc_begin2            ## >> Call Site 1 <<
	.long	Lset36
Lset37 = Ltmp62-Ltmp61                  ##   Call between Ltmp61 and Ltmp62
	.long	Lset37
Lset38 = Ltmp63-Lfunc_begin2            ##     jumps to Ltmp63
	.long	Lset38
	.byte	1                       ##   On action: 1
Lset39 = Ltmp64-Lfunc_begin2            ## >> Call Site 2 <<
	.long	Lset39
Lset40 = Ltmp65-Ltmp64                  ##   Call between Ltmp64 and Ltmp65
	.long	Lset40
Lset41 = Ltmp75-Lfunc_begin2            ##     jumps to Ltmp75
	.long	Lset41
	.byte	1                       ##   On action: 1
Lset42 = Ltmp66-Lfunc_begin2            ## >> Call Site 3 <<
	.long	Lset42
Lset43 = Ltmp69-Ltmp66                  ##   Call between Ltmp66 and Ltmp69
	.long	Lset43
Lset44 = Ltmp70-Lfunc_begin2            ##     jumps to Ltmp70
	.long	Lset44
	.byte	1                       ##   On action: 1
Lset45 = Ltmp71-Lfunc_begin2            ## >> Call Site 4 <<
	.long	Lset45
Lset46 = Ltmp74-Ltmp71                  ##   Call between Ltmp71 and Ltmp74
	.long	Lset46
Lset47 = Ltmp75-Lfunc_begin2            ##     jumps to Ltmp75
	.long	Lset47
	.byte	1                       ##   On action: 1
Lset48 = Ltmp74-Lfunc_begin2            ## >> Call Site 5 <<
	.long	Lset48
Lset49 = Ltmp76-Ltmp74                  ##   Call between Ltmp74 and Ltmp76
	.long	Lset49
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset50 = Ltmp76-Lfunc_begin2            ## >> Call Site 6 <<
	.long	Lset50
Lset51 = Ltmp77-Ltmp76                  ##   Call between Ltmp76 and Ltmp77
	.long	Lset51
Lset52 = Ltmp78-Lfunc_begin2            ##     jumps to Ltmp78
	.long	Lset52
	.byte	0                       ##   On action: cleanup
Lset53 = Ltmp77-Lfunc_begin2            ## >> Call Site 7 <<
	.long	Lset53
Lset54 = Ltmp79-Ltmp77                  ##   Call between Ltmp77 and Ltmp79
	.long	Lset54
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset55 = Ltmp79-Lfunc_begin2            ## >> Call Site 8 <<
	.long	Lset55
Lset56 = Ltmp80-Ltmp79                  ##   Call between Ltmp79 and Ltmp80
	.long	Lset56
Lset57 = Ltmp81-Lfunc_begin2            ##     jumps to Ltmp81
	.long	Lset57
	.byte	1                       ##   On action: 1
Lset58 = Ltmp80-Lfunc_begin2            ## >> Call Site 9 <<
	.long	Lset58
Lset59 = Lfunc_end2-Ltmp80              ##   Call between Ltmp80 and Lfunc_end2
	.long	Lset59
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
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
## BB#0:
	pushq	%rbp
Ltmp93:
	.cfi_def_cfa_offset 16
Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp95:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp96:
	.cfi_offset %rbx, -56
Ltmp97:
	.cfi_offset %r12, -48
Ltmp98:
	.cfi_offset %r13, -40
Ltmp99:
	.cfi_offset %r14, -32
Ltmp100:
	.cfi_offset %r15, -24
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	LBB8_12
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
	jle	LBB8_3
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
	jne	LBB8_12
LBB8_3:
	testq	%r13, %r13
	jle	LBB8_6
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
Ltmp90:
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	*%rax
	movq	%rax, %r14
Ltmp91:
## BB#5:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	cmpq	%r13, %r14
	jne	LBB8_12
LBB8_6:
	subq	%r12, %r15
	testq	%r15, %r15
	jle	LBB8_8
## BB#7:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	*96(%rax)
	cmpq	%r15, %rax
	jne	LBB8_12
LBB8_8:
	movq	-80(%rbp), %rax         ## 8-byte Reload
	movq	$0, 24(%rax)
	jmp	LBB8_13
LBB8_12:
	xorl	%ebx, %ebx
LBB8_13:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB8_14:
Ltmp92:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table8:
Lexception3:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset60 = Lfunc_begin3-Lfunc_begin3      ## >> Call Site 1 <<
	.long	Lset60
Lset61 = Ltmp90-Lfunc_begin3            ##   Call between Lfunc_begin3 and Ltmp90
	.long	Lset61
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset62 = Ltmp90-Lfunc_begin3            ## >> Call Site 2 <<
	.long	Lset62
Lset63 = Ltmp91-Ltmp90                  ##   Call between Ltmp90 and Ltmp91
	.long	Lset63
Lset64 = Ltmp92-Lfunc_begin3            ##     jumps to Ltmp92
	.long	Lset64
	.byte	0                       ##   On action: cleanup
Lset65 = Ltmp91-Lfunc_begin3            ## >> Call Site 3 <<
	.long	Lset65
Lset66 = Lfunc_end3-Ltmp91              ##   Call between Ltmp91 and Lfunc_end3
	.long	Lset66
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"bitset set argument out of range"


.subsections_via_symbols
