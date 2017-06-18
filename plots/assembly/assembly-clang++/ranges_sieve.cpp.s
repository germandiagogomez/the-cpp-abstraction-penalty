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
Ltmp16:
	.cfi_def_cfa_offset 16
Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp18:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$6250056, %rsp          ## imm = 0x5F5E48
Ltmp19:
	.cfi_offset %rbx, -56
Ltmp20:
	.cfi_offset %r12, -48
Ltmp21:
	.cfi_offset %r13, -40
Ltmp22:
	.cfi_offset %r14, -32
Ltmp23:
	.cfi_offset %r15, -24
	movq	8(%rsi), %rbx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -6250096(%rbp)
	movq	$0, -6250080(%rbp)
	movq	%rbx, %rdi
	callq	_strlen
	leaq	-6250096(%rbp), %r14
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
Ltmp0:
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r14, %rdi
	callq	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	movl	%eax, %r15d
Ltmp1:
## BB#1:
	leaq	-6250096(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
	testl	%r15d, %r15d
	je	LBB0_2
## BB#3:
	movslq	%r15d, %rbx
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
	testl	%r15d, %r15d
	jle	LBB0_5
## BB#7:
	xorl	%r14d, %r14d
	leaq	-88(%rbp), %rbx
	movl	%r15d, -68(%rbp)        ## 4-byte Spill
	.p2align	4, 0x90
LBB0_8:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_9 Depth 2
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movq	%rax, %r12
	movl	$6250000, %esi          ## imm = 0x5F5E10
	leaq	-6250096(%rbp), %r15
	movq	%r15, %rdi
	callq	___bzero
	movq	%r15, -88(%rbp)
	movl	$9997, %r15d            ## imm = 0x270D
	movl	$3, %r13d
	.p2align	4, 0x90
LBB0_9:                                 ##   Parent Loop BB0_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
Ltmp5:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	__ZZ13execute_sieveILm100000000EE11sieve_tableIXT_EEvENKUlT_E_clImEEDaS2_
Ltmp6:
## BB#10:                               ##   in Loop: Header=BB0_9 Depth=2
	cmpq	$3, %r15
	jl	LBB0_12
## BB#11:                               ##   in Loop: Header=BB0_9 Depth=2
	addq	$2, %r13
	addq	$-2, %r15
	cmpq	$10000, %r13            ## imm = 0x2710
	jne	LBB0_9
LBB0_12:                                ##   in Loop: Header=BB0_8 Depth=1
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
	je	LBB0_14
## BB#13:                               ##   in Loop: Header=BB0_8 Depth=1
	movq	%rdx, (%rax)
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	movl	-68(%rbp), %r15d        ## 4-byte Reload
	jmp	LBB0_15
	.p2align	4, 0x90
LBB0_14:                                ##   in Loop: Header=BB0_8 Depth=1
Ltmp8:
	leaq	-64(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	callq	__ZNSt3__16vectorINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS_9allocatorIS5_EEE21__push_back_slow_pathIRKS5_EEvOT_
Ltmp9:
	movl	-68(%rbp), %r15d        ## 4-byte Reload
LBB0_15:                                ##   in Loop: Header=BB0_8 Depth=1
	incl	%r14d
	cmpl	%r15d, %r14d
	jl	LBB0_8
## BB#16:
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	leaq	-56(%rbp), %rbx
	jmp	LBB0_17
LBB0_2:
	xorl	%esi, %esi
LBB0_5:
	leaq	-56(%rbp), %rbx
	movq	%rsi, %rdi
LBB0_17:
	leaq	-6250096(%rbp), %rdx
	callq	__ZNSt3__16__sortIRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEvT0_SA_T_
	movq	(%rbx), %rax
	movq	-64(%rbp), %rcx
	subq	%rcx, %rax
	sarq	%rax
	andq	$-8, %rax
	movq	(%rcx,%rax), %rsi
Ltmp11:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp12:
## BB#18:
	movb	$32, -6250096(%rbp)
Ltmp13:
	leaq	-6250096(%rbp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp14:
## BB#19:
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB0_23
## BB#20:
	movq	-56(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB0_22
## BB#21:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
LBB0_22:
	callq	__ZdlPv
LBB0_23:
	xorl	%eax, %eax
	addq	$6250056, %rsp          ## imm = 0x5F5E48
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
	leaq	-6250096(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB0_24:
Ltmp15:
	jmp	LBB0_25
LBB0_31:
Ltmp10:
LBB0_25:
	movq	%rax, %rbx
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB0_29
## BB#26:
	movq	-56(%rbp), %rax
	cmpq	%rdi, %rax
	je	LBB0_28
## BB#27:
	leaq	-8(%rax), %rcx
	subq	%rdi, %rcx
	notq	%rcx
	andq	$-8, %rcx
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
LBB0_28:
	callq	__ZdlPv
LBB0_29:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB0_30:
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
Lset7 = Ltmp15-Lfunc_begin0             ##     jumps to Ltmp15
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
Lset17 = Ltmp14-Ltmp11                  ##   Call between Ltmp11 and Ltmp14
	.long	Lset17
Lset18 = Ltmp15-Lfunc_begin0            ##     jumps to Ltmp15
	.long	Lset18
	.byte	0                       ##   On action: cleanup
Lset19 = Ltmp14-Lfunc_begin0            ## >> Call Site 8 <<
	.long	Lset19
Lset20 = Lfunc_end0-Ltmp14              ##   Call between Ltmp14 and Lfunc_end0
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
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## BB#0:
	pushq	%rbp
Ltmp30:
	.cfi_def_cfa_offset 16
Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp32:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
Ltmp33:
	.cfi_offset %rbx, -32
Ltmp34:
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
	je	LBB2_21
## BB#1:
	movl	-64(%rbp), %r9d
	.p2align	4, 0x90
LBB2_2:                                 ## =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	cltd
	idivl	%r9d
	testl	%edx, %edx
	je	LBB2_21
## BB#3:                                ##   in Loop: Header=BB2_2 Depth=1
	movq	24(%rbx), %rax
	addq	16(%rbx), %rax
	movq	%rax, %rdx
	subq	%rcx, %rdx
	addq	32(%rbx), %rsi
	js	LBB2_17
## BB#4:                                ##   in Loop: Header=BB2_2 Depth=1
	cmpq	%rdx, %rsi
	jl	LBB2_5
	jmp	LBB2_18
	.p2align	4, 0x90
LBB2_17:                                ##   in Loop: Header=BB2_2 Depth=1
	cmpq	%rdx, %rsi
	jle	LBB2_18
LBB2_5:                                 ##   in Loop: Header=BB2_2 Depth=1
	addq	%rcx, %rsi
	movq	%rsi, %rax
	xorl	%esi, %esi
	jmp	LBB2_19
	.p2align	4, 0x90
LBB2_18:                                ##   in Loop: Header=BB2_2 Depth=1
	subq	%rdx, %rsi
LBB2_19:                                ##   in Loop: Header=BB2_2 Depth=1
	cmpq	%rax, %r8
	movq	%rax, %rcx
	jne	LBB2_2
## BB#20:
	movq	%r8, %rcx
LBB2_21:
	movq	%rcx, -48(%rbp)
	xchgq	%rsi, -40(%rbp)
	movq	%rbx, -32(%rbp)
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rbx
	movq	-96(%rbp), %r8
	addq	-88(%rbp), %r8
	cmpq	%rsi, %r8
	je	LBB2_6
## BB#22:
	movq	-32(%rbp), %r9
	.p2align	4, 0x90
LBB2_23:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_31 Depth 2
	movq	%rsi, %rcx
	shrq	%rcx
	decq	%rcx
	cmpq	$49999998, %rcx         ## imm = 0x2FAF07E
	ja	LBB2_24
## BB#43:                               ##   in Loop: Header=BB2_23 Depth=1
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
	js	LBB2_26
## BB#44:                               ##   in Loop: Header=BB2_23 Depth=1
	cmpq	%rax, %rbx
	jl	LBB2_45
	jmp	LBB2_27
	.p2align	4, 0x90
LBB2_26:                                ##   in Loop: Header=BB2_23 Depth=1
	cmpq	%rax, %rbx
	jle	LBB2_27
LBB2_45:                                ##   in Loop: Header=BB2_23 Depth=1
	addq	%rbx, %rsi
	xorl	%ebx, %ebx
	jmp	LBB2_28
	.p2align	4, 0x90
LBB2_27:                                ##   in Loop: Header=BB2_23 Depth=1
	subq	%rax, %rbx
	movq	%r11, %rsi
LBB2_28:                                ##   in Loop: Header=BB2_23 Depth=1
	movq	-96(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rsi, %rcx
	je	LBB2_29
## BB#30:                               ##   in Loop: Header=BB2_23 Depth=1
	movl	-64(%rbp), %r14d
	.p2align	4, 0x90
LBB2_31:                                ##   Parent Loop BB2_23 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%esi, %eax
	cltd
	idivl	%r14d
	testl	%edx, %edx
	je	LBB2_29
## BB#32:                               ##   in Loop: Header=BB2_31 Depth=2
	movq	%r11, %rax
	subq	%rsi, %rax
	addq	%r10, %rbx
	js	LBB2_35
## BB#33:                               ##   in Loop: Header=BB2_31 Depth=2
	cmpq	%rax, %rbx
	jl	LBB2_34
	jmp	LBB2_36
	.p2align	4, 0x90
LBB2_35:                                ##   in Loop: Header=BB2_31 Depth=2
	cmpq	%rax, %rbx
	jle	LBB2_36
LBB2_34:                                ##   in Loop: Header=BB2_31 Depth=2
	addq	%rbx, %rsi
	xorl	%ebx, %ebx
	jmp	LBB2_37
	.p2align	4, 0x90
LBB2_36:                                ##   in Loop: Header=BB2_31 Depth=2
	subq	%rax, %rbx
	movq	%r11, %rsi
LBB2_37:                                ##   in Loop: Header=BB2_31 Depth=2
	cmpq	%rsi, %rcx
	jne	LBB2_31
## BB#38:                               ##   in Loop: Header=BB2_23 Depth=1
	movq	%rcx, %rsi
LBB2_29:                                ##   in Loop: Header=BB2_23 Depth=1
	cmpq	%rsi, %r8
	jne	LBB2_23
LBB2_6:
	movq	-56(%rbp), %rsi
	cmpq	$-1, %rsi
	je	LBB2_11
## BB#7:
	cmpq	$2, %rsi
	jae	LBB2_8
## BB#10:
	movq	$-1, -56(%rbp)
LBB2_11:
	movq	-72(%rbp), %rsi
	cmpq	$-1, %rsi
	je	LBB2_15
## BB#12:
	cmpq	$2, %rsi
	jae	LBB2_13
## BB#14:
	movq	$-1, -72(%rbp)
LBB2_15:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	LBB2_46
## BB#16:
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB2_24:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp24:
	leaq	L_.str(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp25:
## BB#25:
	movq	__ZTVSt12out_of_range@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
Ltmp27:
	movq	__ZTISt12out_of_range@GOTPCREL(%rip), %rsi
	movq	__ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
Ltmp28:
## BB#39:
LBB2_46:
	callq	___stack_chk_fail
LBB2_8:
	leaq	-48(%rbp), %rdi
	jmp	LBB2_9
LBB2_13:
	leaq	-64(%rbp), %rdi
LBB2_9:
	addq	$-2, %rsi
	leaq	-128(%rbp), %rdx
	callq	__ZNK6ranges2v36detail12variant_dataIJEE5applyINS1_13apply_visitorINS1_9ignore2ndINS1_10delete_funEEEDnEELm2EEEvmOT_NSt3__117integral_constantImXT0_EEE
LBB2_41:
Ltmp29:
	movq	%rax, %r14
	movq	%r14, %rdi
	callq	___clang_call_terminate
LBB2_40:
Ltmp26:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	___clang_call_terminate
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\274"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	52                      ## Call site table length
Lset21 = Lfunc_begin1-Lfunc_begin1      ## >> Call Site 1 <<
	.long	Lset21
Lset22 = Ltmp24-Lfunc_begin1            ##   Call between Lfunc_begin1 and Ltmp24
	.long	Lset22
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset23 = Ltmp24-Lfunc_begin1            ## >> Call Site 2 <<
	.long	Lset23
Lset24 = Ltmp25-Ltmp24                  ##   Call between Ltmp24 and Ltmp25
	.long	Lset24
Lset25 = Ltmp26-Lfunc_begin1            ##     jumps to Ltmp26
	.long	Lset25
	.byte	1                       ##   On action: 1
Lset26 = Ltmp27-Lfunc_begin1            ## >> Call Site 3 <<
	.long	Lset26
Lset27 = Ltmp28-Ltmp27                  ##   Call between Ltmp27 and Ltmp28
	.long	Lset27
Lset28 = Ltmp29-Lfunc_begin1            ##     jumps to Ltmp29
	.long	Lset28
	.byte	1                       ##   On action: 1
Lset29 = Ltmp28-Lfunc_begin1            ## >> Call Site 4 <<
	.long	Lset29
Lset30 = Lfunc_end1-Ltmp28              ##   Call between Ltmp28 and Lfunc_end1
	.long	Lset30
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
Ltmp35:
	.cfi_def_cfa_offset 16
Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp37:
	.cfi_def_cfa_register %rbp
	callq	__ZSt9terminatev
	.cfi_endproc

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
	je	LBB4_2
## BB#1:
	movq	%r12, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	movq	(%r12), %rdx
LBB4_2:
	movq	16(%r12), %r14
	subq	%rdx, %r14
	movq	%r14, %rax
	sarq	$3, %rax
	movabsq	$1152921504606846975, %rcx ## imm = 0xFFFFFFFFFFFFFFF
	cmpq	%rcx, %rax
	movq	%r15, -48(%rbp)         ## 8-byte Spill
	jae	LBB4_3
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
	jne	LBB4_5
	jmp	LBB4_6
LBB4_3:
	movabsq	$2305843009213693951, %r14 ## imm = 0x1FFFFFFFFFFFFFFF
	movq	8(%r12), %r15
	movq	%r15, %r13
	subq	%rdx, %r13
	sarq	$3, %r13
LBB4_5:
	leaq	(,%r14,8), %rdi
	movq	%rdx, %rbx
	callq	__Znwm
	movq	%rbx, %rdx
	movq	%r14, %rcx
LBB4_6:
	leaq	(%rax,%r13,8), %rbx
	leaq	(%rax,%rcx,8), %rsi
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rcx, (%rax,%r13,8)
	leaq	8(%rax,%r13,8), %r13
	subq	%rdx, %r15
	subq	%r15, %rbx
	testq	%r15, %r15
	jle	LBB4_8
## BB#7:
	movq	%rbx, %rdi
	movq	%rdx, %r14
	movq	%rsi, -48(%rbp)         ## 8-byte Spill
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	_memcpy
	movq	-48(%rbp), %rsi         ## 8-byte Reload
	movq	%r14, %rdx
LBB4_8:
	movq	%rbx, (%r12)
	movq	%r13, 8(%r12)
	movq	%rsi, 16(%r12)
	testq	%rdx, %rdx
	je	LBB4_9
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
LBB4_9:
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
	je	LBB5_87
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
	jmp	LBB5_87
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
	jmp	LBB5_87
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
	leaq	(%r13,%rdx,4), %r12
	cmpq	$7993, %rcx             ## imm = 0x1F39
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
	jmp	LBB5_87
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
	jge	LBB5_87
## BB#57:
	movq	%rax, (%r13)
	movq	%rcx, -8(%r14)
	jmp	LBB5_87
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
	je	LBB5_87
## BB#77:
	movl	$24, %ecx
	jmp	LBB5_79
	.p2align	4, 0x90
LBB5_78:                                ##   in Loop: Header=BB5_79 Depth=1
	movq	(%rdx), %rax
	addq	$8, %rcx
	movq	%rsi, %rdx
LBB5_79:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_81 Depth 2
	movq	(%rdx), %rsi
	cmpq	%rax, %rsi
	jge	LBB5_86
## BB#80:                               ##   in Loop: Header=BB5_79 Depth=1
	movq	%rcx, %rdi
	.p2align	4, 0x90
LBB5_81:                                ##   Parent Loop BB5_79 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, (%r13,%rdi)
	cmpq	$8, %rdi
	je	LBB5_84
## BB#82:                               ##   in Loop: Header=BB5_81 Depth=2
	movq	-16(%r13,%rdi), %rax
	addq	$-8, %rdi
	cmpq	%rax, %rsi
	jl	LBB5_81
## BB#83:                               ##   in Loop: Header=BB5_79 Depth=1
	addq	%r13, %rdi
	jmp	LBB5_85
	.p2align	4, 0x90
LBB5_84:                                ##   in Loop: Header=BB5_79 Depth=1
	movq	%r13, %rdi
LBB5_85:                                ##   in Loop: Header=BB5_79 Depth=1
	movq	%rsi, (%rdi)
LBB5_86:                                ##   in Loop: Header=BB5_79 Depth=1
	leaq	8(%rdx), %rsi
	cmpq	%r14, %rsi
	jne	LBB5_78
LBB5_87:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB5_68:
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rax, %rcx
	movq	-8(%r14), %rdx
	jge	LBB5_88
## BB#69:
	cmpq	%rcx, %rdx
	jge	LBB5_94
## BB#70:
	movq	%rdx, (%r13)
	movq	%rax, -8(%r14)
	jmp	LBB5_87
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
	jge	LBB5_91
## BB#73:
	cmpq	%rax, %rdx
	jge	LBB5_96
## BB#74:
	movq	%rdx, (%r13)
	jmp	LBB5_98
LBB5_88:
	cmpq	%rcx, %rdx
	jge	LBB5_87
## BB#89:
	movq	%rdx, 8(%r13)
	movq	%rcx, -8(%r14)
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rax, %rcx
	jge	LBB5_87
## BB#90:
	movq	%rcx, (%r13)
	movq	%rax, 8(%r13)
	jmp	LBB5_87
LBB5_91:
	cmpq	%rax, %rdx
	jge	LBB5_100
## BB#92:
	movq	%rdx, 8(%r13)
	movq	%rax, 16(%r13)
	cmpq	%rcx, %rdx
	jge	LBB5_101
## BB#93:
	movq	%rdx, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB5_101
LBB5_94:
	movq	%rcx, (%r13)
	movq	%rax, 8(%r13)
	movq	-8(%r14), %rcx
	cmpq	%rax, %rcx
	jge	LBB5_87
## BB#95:
	movq	%rcx, 8(%r13)
	movq	%rax, -8(%r14)
	jmp	LBB5_87
LBB5_96:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	cmpq	%rcx, %rdx
	jge	LBB5_100
## BB#97:
	movq	%rdx, 8(%r13)
LBB5_98:
	movq	%rcx, 16(%r13)
	movq	%rcx, %rax
	jmp	LBB5_101
LBB5_100:
	movq	%rdx, %rax
LBB5_101:
	movq	-8(%r14), %rcx
	cmpq	%rax, %rcx
	jge	LBB5_87
## BB#102:
	movq	%rcx, 16(%r13)
	movq	%rax, -8(%r14)
	movq	8(%r13), %rcx
	movq	16(%r13), %rax
	cmpq	%rcx, %rax
	jge	LBB5_87
## BB#103:
	movq	%rax, 8(%r13)
	movq	%rcx, 16(%r13)
	movq	(%r13), %rcx
	cmpq	%rcx, %rax
	jge	LBB5_87
## BB#104:
	movq	%rax, (%r13)
	movq	%rcx, 8(%r13)
	jmp	LBB5_87
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L5_0_set_87 = LBB5_87-LJTI5_0
L5_0_set_56 = LBB5_56-LJTI5_0
L5_0_set_68 = LBB5_68-LJTI5_0
L5_0_set_72 = LBB5_72-LJTI5_0
L5_0_set_71 = LBB5_71-LJTI5_0
LJTI5_0:
	.long	L5_0_set_87
	.long	L5_0_set_87
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
	jge	LBB7_50
## BB#3:
	movq	%rax, (%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB7_50
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
	jmp	LBB7_50
LBB7_10:
	leaq	16(%rdi), %rdx
	leaq	24(%rdi), %rcx
	addq	$-8, %r10
	leaq	8(%rdi), %rsi
	movq	%r10, %r8
	callq	__ZNSt3__17__sort5IRNS_6__lessINS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES6_EEPS6_EEjT0_SA_SA_SA_SA_T_
	jmp	LBB7_50
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
	jge	LBB7_50
## BB#18:
	movq	%rdx, 8(%rdi)
	movq	%rax, -8(%r10)
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	cmpq	%rax, %rcx
	jge	LBB7_50
## BB#19:
	movq	%rcx, (%rdi)
	movq	%rax, 8(%rdi)
	jmp	LBB7_50
LBB7_20:
	cmpq	%rcx, %rsi
	jge	LBB7_45
## BB#21:
	movq	%rsi, 8(%rdi)
	movq	%rcx, 16(%rdi)
	cmpq	%rdx, %rsi
	jge	LBB7_46
## BB#22:
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	jmp	LBB7_46
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
	je	LBB7_44
## BB#35:
	xorl	%r9d, %r9d
	jmp	LBB7_37
	.p2align	4, 0x90
LBB7_36:                                ##   in Loop: Header=BB7_37 Depth=1
	movq	(%rsi), %rdx
	movq	%rax, %rsi
LBB7_37:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_39 Depth 2
	movq	(%rsi), %rbx
	cmpq	%rdx, %rbx
	jge	LBB7_42
## BB#38:                               ##   in Loop: Header=BB7_37 Depth=1
	movq	%rsi, %rax
	.p2align	4, 0x90
LBB7_39:                                ##   Parent Loop BB7_37 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, %rcx
	movq	%rdx, (%rcx)
	leaq	-8(%rcx), %rax
	cmpq	%rdi, %rax
	je	LBB7_41
## BB#40:                               ##   in Loop: Header=BB7_39 Depth=2
	movq	-8(%rax), %rdx
	cmpq	%rdx, %rbx
	jl	LBB7_39
LBB7_41:                                ##   in Loop: Header=BB7_37 Depth=1
	movq	%rbx, -8(%rcx)
	incl	%r9d
	leaq	8(%rsi), %rax
	cmpq	%r10, %rax
	sete	%bl
	cmpl	$8, %r9d
	je	LBB7_43
LBB7_42:                                ##   in Loop: Header=BB7_37 Depth=1
	leaq	8(%rsi), %rax
	cmpq	%r10, %rax
	jne	LBB7_36
	jmp	LBB7_44
LBB7_26:
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	movq	-8(%r10), %rax
	cmpq	%rcx, %rax
	jge	LBB7_50
## BB#27:
	movq	%rax, 8(%rdi)
	movq	%rcx, -8(%r10)
	jmp	LBB7_50
LBB7_28:
	movq	%rcx, (%rdi)
	movq	%rdx, 8(%rdi)
	cmpq	%rdx, %rsi
	jge	LBB7_45
## BB#29:
	movq	%rsi, 8(%rdi)
LBB7_30:
	movq	%rdx, 16(%rdi)
	movq	%rdx, %rcx
	jmp	LBB7_46
LBB7_45:
	movq	%rsi, %rcx
LBB7_46:
	movq	-8(%r10), %rax
	cmpq	%rcx, %rax
	jge	LBB7_50
## BB#47:
	movq	%rax, 16(%rdi)
	movq	%rcx, -8(%r10)
	movq	8(%rdi), %rcx
	movq	16(%rdi), %rax
	cmpq	%rcx, %rax
	jge	LBB7_50
## BB#48:
	movq	%rax, 8(%rdi)
	movq	%rcx, 16(%rdi)
	movq	(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	LBB7_50
## BB#49:
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	jmp	LBB7_50
LBB7_43:
	xorl	%r8d, %r8d
LBB7_44:
	orb	%r8b, %bl
LBB7_50:
	andb	$1, %bl
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L7_0_set_50 = LBB7_50-LJTI7_0
L7_0_set_2 = LBB7_2-LJTI7_0
L7_0_set_7 = LBB7_7-LJTI7_0
L7_0_set_11 = LBB7_11-LJTI7_0
L7_0_set_10 = LBB7_10-LJTI7_0
LJTI7_0:
	.long	L7_0_set_50
	.long	L7_0_set_50
	.long	L7_0_set_2
	.long	L7_0_set_7
	.long	L7_0_set_11
	.long	L7_0_set_10
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
LBB8_7:
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
	jne	LBB8_10
## BB#9:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$5, %esi
Ltmp73:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp74:
LBB8_10:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB8_15:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB8_19:
Ltmp70:
	movq	%rax, %r14
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB8_12
LBB8_20:
Ltmp63:
	movq	%rax, %r14
	jmp	LBB8_13
LBB8_11:
Ltmp75:
	movq	%rax, %r14
LBB8_12:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB8_13:
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
	jmp	LBB8_15
LBB8_16:
Ltmp78:
	movq	%rax, %rbx
Ltmp79:
	callq	___cxa_end_catch
Ltmp80:
## BB#17:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB8_18:
Ltmp81:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table8:
Lexception2:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	125                     ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	117                     ## Call site table length
Lset31 = Ltmp61-Lfunc_begin2            ## >> Call Site 1 <<
	.long	Lset31
Lset32 = Ltmp62-Ltmp61                  ##   Call between Ltmp61 and Ltmp62
	.long	Lset32
Lset33 = Ltmp63-Lfunc_begin2            ##     jumps to Ltmp63
	.long	Lset33
	.byte	1                       ##   On action: 1
Lset34 = Ltmp64-Lfunc_begin2            ## >> Call Site 2 <<
	.long	Lset34
Lset35 = Ltmp65-Ltmp64                  ##   Call between Ltmp64 and Ltmp65
	.long	Lset35
Lset36 = Ltmp75-Lfunc_begin2            ##     jumps to Ltmp75
	.long	Lset36
	.byte	1                       ##   On action: 1
Lset37 = Ltmp66-Lfunc_begin2            ## >> Call Site 3 <<
	.long	Lset37
Lset38 = Ltmp69-Ltmp66                  ##   Call between Ltmp66 and Ltmp69
	.long	Lset38
Lset39 = Ltmp70-Lfunc_begin2            ##     jumps to Ltmp70
	.long	Lset39
	.byte	1                       ##   On action: 1
Lset40 = Ltmp71-Lfunc_begin2            ## >> Call Site 4 <<
	.long	Lset40
Lset41 = Ltmp74-Ltmp71                  ##   Call between Ltmp71 and Ltmp74
	.long	Lset41
Lset42 = Ltmp75-Lfunc_begin2            ##     jumps to Ltmp75
	.long	Lset42
	.byte	1                       ##   On action: 1
Lset43 = Ltmp74-Lfunc_begin2            ## >> Call Site 5 <<
	.long	Lset43
Lset44 = Ltmp76-Ltmp74                  ##   Call between Ltmp74 and Ltmp76
	.long	Lset44
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset45 = Ltmp76-Lfunc_begin2            ## >> Call Site 6 <<
	.long	Lset45
Lset46 = Ltmp77-Ltmp76                  ##   Call between Ltmp76 and Ltmp77
	.long	Lset46
Lset47 = Ltmp78-Lfunc_begin2            ##     jumps to Ltmp78
	.long	Lset47
	.byte	0                       ##   On action: cleanup
Lset48 = Ltmp77-Lfunc_begin2            ## >> Call Site 7 <<
	.long	Lset48
Lset49 = Ltmp79-Ltmp77                  ##   Call between Ltmp77 and Ltmp79
	.long	Lset49
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset50 = Ltmp79-Lfunc_begin2            ## >> Call Site 8 <<
	.long	Lset50
Lset51 = Ltmp80-Ltmp79                  ##   Call between Ltmp79 and Ltmp80
	.long	Lset51
Lset52 = Ltmp81-Lfunc_begin2            ##     jumps to Ltmp81
	.long	Lset52
	.byte	1                       ##   On action: 1
Lset53 = Ltmp80-Lfunc_begin2            ## >> Call Site 9 <<
	.long	Lset53
Lset54 = Lfunc_end2-Ltmp80              ##   Call between Ltmp80 and Lfunc_end2
	.long	Lset54
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
	je	LBB9_12
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
	jle	LBB9_3
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
	jne	LBB9_12
LBB9_3:
	testq	%r13, %r13
	jle	LBB9_6
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
	jne	LBB9_12
LBB9_6:
	subq	%r12, %r15
	testq	%r15, %r15
	jle	LBB9_8
## BB#7:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	*96(%rax)
	cmpq	%r15, %rax
	jne	LBB9_12
LBB9_8:
	movq	-80(%rbp), %rax         ## 8-byte Reload
	movq	$0, 24(%rax)
	jmp	LBB9_13
LBB9_12:
	xorl	%ebx, %ebx
LBB9_13:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB9_14:
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
GCC_except_table9:
Lexception3:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset55 = Lfunc_begin3-Lfunc_begin3      ## >> Call Site 1 <<
	.long	Lset55
Lset56 = Ltmp90-Lfunc_begin3            ##   Call between Lfunc_begin3 and Ltmp90
	.long	Lset56
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset57 = Ltmp90-Lfunc_begin3            ## >> Call Site 2 <<
	.long	Lset57
Lset58 = Ltmp91-Ltmp90                  ##   Call between Ltmp90 and Ltmp91
	.long	Lset58
Lset59 = Ltmp92-Lfunc_begin3            ##     jumps to Ltmp92
	.long	Lset59
	.byte	0                       ##   On action: cleanup
Lset60 = Ltmp91-Lfunc_begin3            ## >> Call Site 3 <<
	.long	Lset60
Lset61 = Lfunc_end3-Ltmp91              ##   Call between Ltmp91 and Lfunc_end3
	.long	Lset61
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"bitset set argument out of range"


.subsections_via_symbols
