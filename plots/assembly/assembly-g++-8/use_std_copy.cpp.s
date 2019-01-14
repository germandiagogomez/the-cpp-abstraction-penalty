	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZN16non_trivial_typeD1Ev
	.weak_definition __ZN16non_trivial_typeD1Ev
__ZN16non_trivial_typeD1Ev:
LFB4179:
	ret
LFE4179:
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt13random_deviceD1Ev
	.weak_definition __ZNSt13random_deviceD1Ev
__ZNSt13random_deviceD1Ev:
LFB3101:
	jmp	__ZNSt13random_device7_M_finiEv
LFE3101:
	.section __DATA,__gcc_except_tab
GCC_except_table0:
LLSDA3101:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZN16non_trivial_typeD0Ev
	.weak_definition __ZN16non_trivial_typeD0Ev
__ZN16non_trivial_typeD0Ev:
LFB4180:
	movl	$24, %esi
	jmp	__ZdlPvm
LFE4180:
	.align 4,0x90
__ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.constprop.164:
LFB5465:
	leaq	-1(%rdx), %rax
	pushq	%r12
LCFI0:
	movq	%rdx, %r12
	pushq	%rbp
LCFI1:
	movq	%rax, %rbp
	andl	$1, %r12d
	shrq	$63, %rbp
	pushq	%rbx
LCFI2:
	addq	%rax, %rbp
	sarq	%rbp
	cmpq	%rbp, %rsi
	jge	L6
	movq	%rsi, %r10
	jmp	L7
	.align 4,0x90
L22:
	movq	(%rax), %r8
	cmpq	%r9, %rbp
	movq	%r8, (%rdi,%r10,8)
	jle	L9
L10:
	movq	%r9, %r10
L7:
	leaq	1(%r10), %rax
	leaq	(%rax,%rax), %r9
	salq	$4, %rax
	leaq	-1(%r9), %r8
	addq	%rdi, %rax
	leaq	(%rdi,%r8,8), %rbx
	movq	(%rbx), %r11
	cmpq	(%rax), %r11
	jle	L22
	cmpq	%r8, %rbp
	movq	%r11, (%rdi,%r10,8)
	jle	L23
	movq	%r8, %r9
	jmp	L10
	.align 4,0x90
L23:
	movq	%rbx, %rax
	movq	%r8, %r9
L9:
	testq	%r12, %r12
	je	L15
L11:
	leaq	-1(%r9), %rdx
	movq	%rdx, %r8
	shrq	$63, %r8
	addq	%rdx, %r8
	sarq	%r8
	cmpq	%rsi, %r9
	jle	L12
	leaq	(%rdi,%r8,8), %r10
	cmpq	%rcx, (%r10)
	jl	L13
	jmp	L12
	.align 4,0x90
L14:
	leaq	(%rdi,%rdx,8), %r10
	movq	%r8, %r9
	movq	%rdx, %r8
	cmpq	%rcx, (%r10)
	jge	L12
L13:
	movq	(%r10), %rax
	movq	%rax, (%rdi,%r9,8)
	leaq	-1(%r8), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rax, %rdx
	leaq	(%rdi,%r8,8), %rax
	sarq	%rdx
	cmpq	%r8, %rsi
	jl	L14
L12:
	movq	%rcx, (%rax)
	popq	%rbx
LCFI3:
	popq	%rbp
LCFI4:
	popq	%r12
LCFI5:
	ret
	.align 4,0x90
L6:
LCFI6:
	leaq	(%rdi,%rsi,8), %rax
	testq	%r12, %r12
	movq	%rsi, %r9
	jne	L12
	.align 4,0x90
L15:
	leaq	-2(%rdx), %r8
	movq	%r8, %rdx
	shrq	$63, %rdx
	addq	%r8, %rdx
	sarq	%rdx
	cmpq	%r9, %rdx
	jne	L11
	leaq	1(%r9,%r9), %r9
	leaq	(%rdi,%r9,8), %rdx
	movq	(%rdx), %r8
	movq	%r8, (%rax)
	movq	%rdx, %rax
	jmp	L11
LFE5465:
	.align 4,0x90
__ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_.constprop.168:
LFB5461:
	cmpq	%rsi, %rdi
	je	L36
	pushq	%r14
LCFI7:
	pushq	%r13
LCFI8:
	pushq	%r12
LCFI9:
	pushq	%rbp
LCFI10:
	pushq	%rbx
LCFI11:
	leaq	8(%rdi), %rbx
	cmpq	%rbx, %rsi
	je	L24
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	$8, %r13d
	jmp	L31
	.align 4,0x90
L39:
	cmpq	%rbx, %r14
	je	L27
	leaq	(%r14,%r13), %rdi
	movq	%rbx, %rdx
	movq	%r14, %rsi
	subq	%r14, %rdx
	call	_memmove
L27:
	addq	$8, %rbx
	movq	%rbp, (%r14)
	cmpq	%rbx, %r12
	je	L24
L31:
	movq	(%rbx), %rbp
	cmpq	(%r14), %rbp
	jl	L39
	cmpq	-8(%rbx), %rbp
	leaq	-8(%rbx), %rax
	jl	L30
	jmp	L40
	.align 4,0x90
L33:
	movq	%rdx, %rax
L30:
	movq	(%rax), %rdx
	cmpq	-8(%rax), %rbp
	movq	%rdx, 8(%rax)
	leaq	-8(%rax), %rdx
	jl	L33
L29:
	addq	$8, %rbx
	movq	%rbp, (%rax)
	cmpq	%rbx, %r12
	jne	L31
L24:
	popq	%rbx
LCFI12:
	popq	%rbp
LCFI13:
	popq	%r12
LCFI14:
	popq	%r13
LCFI15:
	popq	%r14
LCFI16:
	ret
L40:
LCFI17:
	movq	%rbx, %rax
	jmp	L29
L36:
LCFI18:
	ret
LFE5461:
	.cstring
	.align 3
lC0:
	.ascii "basic_string::_M_construct null not valid\0"
	.text
	.align 1,0x90
	.align 4,0x90
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_.isra.91:
LFB5386:
	pushq	%r13
LCFI19:
	leaq	16(%rdi), %r13
	pushq	%r12
LCFI20:
	pushq	%rbp
LCFI21:
	pushq	%rbx
LCFI22:
	subq	$24, %rsp
LCFI23:
	testq	%rsi, %rsi
	movq	%r13, (%rdi)
	je	L42
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movq	%rsi, %r12
	call	_strlen
	cmpq	$15, %rax
	movq	%rax, %rbp
	movq	%rax, 8(%rsp)
	ja	L53
	cmpq	$1, %rax
	jne	L46
	movzbl	(%r12), %eax
	movb	%al, 16(%rbx)
L47:
	movq	8(%rsp), %rax
	movq	(%rbx), %rdx
	movq	%rax, 8(%rbx)
	movb	$0, (%rdx,%rax)
	addq	$24, %rsp
LCFI24:
	popq	%rbx
LCFI25:
	popq	%rbp
LCFI26:
	popq	%r12
LCFI27:
	popq	%r13
LCFI28:
	ret
L46:
LCFI29:
	testq	%rax, %rax
	je	L47
	jmp	L45
L53:
	leaq	8(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	movq	%rax, %r13
	movq	%rax, (%rbx)
	movq	8(%rsp), %rax
	movq	%rax, 16(%rbx)
L45:
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	_memcpy
	jmp	L47
L42:
	leaq	lC0(%rip), %rdi
	call	__ZSt19__throw_logic_errorPKc
LFE5386:
	.cstring
lC1:
	.ascii "%d\0"
	.text
	.align 4,0x90
__ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.169:
LFB5460:
	pushq	%rbp
LCFI30:
	movq	%rsp, %rbp
LCFI31:
	pushq	%r12
	pushq	%rbx
LCFI32:
	movq	%rdi, %rbx
	subq	$208, %rsp
	testb	%al, %al
	movq	%r8, -160(%rbp)
	movq	%r9, -152(%rbp)
	je	L64
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm1, -128(%rbp)
	movaps	%xmm2, -112(%rbp)
	movaps	%xmm3, -96(%rbp)
	movaps	%xmm4, -80(%rbp)
	movaps	%xmm5, -64(%rbp)
	movaps	%xmm6, -48(%rbp)
	movaps	%xmm7, -32(%rbp)
L64:
	leaq	16(%rbp), %rax
	subq	$32, %rsp
	movl	$16, %esi
	movl	$32, -216(%rbp)
	leaq	15(%rsp), %r12
	movq	%rax, -208(%rbp)
	leaq	-216(%rbp), %rcx
	andq	$-16, %r12
	movl	$48, -212(%rbp)
	leaq	-192(%rbp), %rax
	movq	%r12, %rdi
	leaq	lC1(%rip), %rdx
	movq	%rax, -200(%rbp)
	call	_vsnprintf
	leaq	16(%rbx), %rdx
	cmpl	$1, %eax
	movslq	%eax, %rcx
	movq	%rdx, (%rbx)
	jne	L56
	movzbl	(%r12), %eax
	movl	$1, %ecx
	movb	%al, 16(%rbx)
L57:
	movq	%rcx, 8(%rbx)
	movq	%rbx, %rax
	movb	$0, (%rdx,%rcx)
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
LCFI33:
	ret
	.align 4,0x90
L56:
LCFI34:
	cmpl	$8, %eax
	jnb	L58
	testb	$4, %al
	jne	L73
	testl	%eax, %eax
	je	L59
	movzbl	(%r12), %esi
	testb	$2, %al
	movb	%sil, 16(%rbx)
	jne	L74
L59:
	movq	(%rbx), %rdx
	jmp	L57
	.align 4,0x90
L58:
	movl	%eax, %esi
	subl	$1, %eax
	movq	-8(%r12,%rsi), %rdi
	cmpl	$8, %eax
	movq	%rdi, -8(%rdx,%rsi)
	jb	L59
	andl	$-8, %eax
	xorl	%esi, %esi
L62:
	movl	%esi, %edi
	addl	$8, %esi
	movq	(%r12,%rdi), %r8
	cmpl	%eax, %esi
	movq	%r8, (%rdx,%rdi)
	jb	L62
	jmp	L59
	.align 4,0x90
L73:
	movl	(%r12), %esi
	movl	%eax, %eax
	movl	%esi, 16(%rbx)
	movl	-4(%r12,%rax), %esi
	movl	%esi, -4(%rdx,%rax)
	jmp	L59
L74:
	movl	%eax, %eax
	movzwl	-2(%r12,%rax), %esi
	movw	%si, -2(%rdx,%rax)
	jmp	L59
LFE5460:
	.align 4,0x90
__ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_.isra.161:
LFB5456:
	pushq	%r14
LCFI35:
	movq	%rdx, %r14
	movq	%rsi, %rdx
	subq	%rdi, %rdx
	pushq	%r13
LCFI36:
	cmpq	$128, %rdx
	pushq	%r12
LCFI37:
	pushq	%rbp
LCFI38:
	pushq	%rbx
LCFI39:
	jle	L75
	testq	%r14, %r14
	movq	%rdi, %rbx
	movq	%rsi, %r12
	je	L77
	leaq	8(%rdi), %r13
L79:
	movq	%rsi, %rax
	subq	$1, %r14
	movq	-8(%rsi), %rcx
	subq	%rbx, %rax
	movq	(%rbx), %rdi
	sarq	$3, %rax
	movq	%rax, %rdx
	shrq	$63, %rax
	addq	%rdx, %rax
	movq	8(%rbx), %rdx
	sarq	%rax
	leaq	(%rbx,%rax,8), %r8
	movq	(%r8), %rax
	cmpq	%rax, %rdx
	jge	L84
	cmpq	%rax, %rcx
	jg	L89
	cmpq	%rdx, %rcx
	jg	L104
L105:
	movq	%rdx, (%rbx)
	movq	%rdi, 8(%rbx)
	movq	-8(%rsi), %rdi
L86:
	movq	(%rbx), %rcx
	movq	%r13, %rbp
	movq	%rsi, %rax
	.align 4,0x90
L90:
	movq	0(%rbp), %r8
	movq	%rbp, %r12
	cmpq	%rcx, %r8
	jl	L91
	leaq	-8(%rax), %rdx
	cmpq	%rcx, %rdi
	jle	L92
	subq	$16, %rax
	.align 4,0x90
L93:
	movq	%rax, %rdx
	subq	$8, %rax
	cmpq	%rcx, 8(%rax)
	jg	L93
L92:
	cmpq	%rdx, %rbp
	jnb	L106
	movq	(%rdx), %rax
	movq	%rax, 0(%rbp)
	movq	-8(%rdx), %rdi
	movq	%rdx, %rax
	movq	%r8, (%rdx)
	movq	(%rbx), %rcx
L91:
	addq	$8, %rbp
	jmp	L90
	.align 4,0x90
L84:
	cmpq	%rdx, %rcx
	jg	L105
	cmpq	%rax, %rcx
	jle	L89
L104:
	movq	%rcx, (%rbx)
	movq	%rdi, -8(%rsi)
	jmp	L86
	.align 4,0x90
L106:
	movq	%r14, %rdx
	movq	%rbp, %rdi
	call	__ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_.isra.161
	movq	%rbp, %rdx
	subq	%rbx, %rdx
	cmpq	$128, %rdx
	jle	L75
	testq	%r14, %r14
	movq	%rbp, %rsi
	jne	L79
L77:
	sarq	$3, %rdx
	leaq	-2(%rdx), %r13
	movq	%rdx, %rbp
	sarq	%r13
	jmp	L82
	.align 4,0x90
L80:
	subq	$1, %r13
L82:
	movq	(%rbx,%r13,8), %rcx
	movq	%rbp, %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	__ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.constprop.164
	testq	%r13, %r13
	jne	L80
	subq	$8, %r12
	.align 4,0x90
L81:
	movq	(%rbx), %rax
	movq	%r12, %rbp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	(%r12), %rcx
	subq	%rbx, %rbp
	subq	$8, %r12
	movq	%rbp, %rdx
	sarq	$3, %rdx
	movq	%rax, 8(%r12)
	call	__ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.constprop.164
	cmpq	$8, %rbp
	jg	L81
L75:
	popq	%rbx
LCFI40:
	popq	%rbp
LCFI41:
	popq	%r12
LCFI42:
	popq	%r13
LCFI43:
	popq	%r14
LCFI44:
	ret
	.align 4,0x90
L89:
LCFI45:
	movq	%rax, (%rbx)
	movq	%rdi, (%r8)
	movq	-8(%rsi), %rdi
	jmp	L86
LFE5456:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB4:
	.text
LHOTB4:
	.align 4,0x90
	.globl __ZN10benchmarks4util16double_generatorEv
__ZN10benchmarks4util16double_generatorEv:
LFB4167:
	pushq	%rbp
LCFI46:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI47:
	subq	$2520, %rsp
LCFI48:
	movzbl	__ZGVZN10benchmarks4util16double_generatorEvE2rd(%rip), %eax
	movq	%rsp, %rbx
	testb	%al, %al
	jne	L109
	leaq	__ZGVZN10benchmarks4util16double_generatorEvE2rd(%rip), %rdi
	movq	%rsp, %rbx
	call	___cxa_guard_acquire
	testl	%eax, %eax
	jne	L123
L109:
	leaq	__ZZN10benchmarks4util16double_generatorEvE2rd(%rip), %rdi
LEHB0:
	call	__ZNSt13random_device9_M_getvalEv
LEHE0:
	movl	$1, %edx
	movl	%eax, %ecx
	movl	%eax, (%rsp)
	.align 4,0x90
L112:
	movl	%ecx, %eax
	shrl	$30, %eax
	xorl	%ecx, %eax
	imull	$1812433253, %eax, %eax
	leal	(%rax,%rdx), %ecx
	movl	%ecx, (%rbx,%rdx,4)
	addq	$1, %rdx
	cmpq	$624, %rdx
	jne	L112
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	movl	$2504, %edx
	movq	$624, 2496(%rsp)
	call	_memcpy
	movq	lC2(%rip), %rax
	movq	%rax, 2504(%rbp)
	movq	lC3(%rip), %rax
	movq	%rax, 2512(%rbp)
	addq	$2520, %rsp
LCFI49:
	movq	%rbp, %rax
	popq	%rbx
LCFI50:
	popq	%rbp
LCFI51:
	ret
L123:
LCFI52:
	leaq	16(%rbx), %rax
	movl	$1634100580, 16(%rsp)
	movq	%rbx, %rsi
	movq	%rax, (%rsp)
	leaq	__ZZN10benchmarks4util16double_generatorEvE2rd(%rip), %rdi
	movl	$27765, %eax
	movw	%ax, 20(%rbx)
	movb	$116, 22(%rbx)
	movq	$7, 8(%rsp)
	movb	$0, 23(%rsp)
LEHB1:
	call	__ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
LEHE1:
	leaq	__ZGVZN10benchmarks4util16double_generatorEvE2rd(%rip), %rdi
	call	___cxa_guard_release
	movq	__ZNSt13random_deviceD1Ev@GOTPCREL(%rip), %rdi
	leaq	___dso_handle(%rip), %rdx
	leaq	__ZZN10benchmarks4util16double_generatorEvE2rd(%rip), %rsi
	call	___cxa_atexit
	movq	(%rsp), %rdi
	leaq	16(%rbx), %rax
	cmpq	%rax, %rdi
	je	L109
	call	__ZdlPv
	jmp	L109
L115:
	movq	%rax, %rbp
	jmp	L113
	.section __DATA,__gcc_except_tab
GCC_except_table1:
LLSDA4167:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x1a
	.set L$set$0,LEHB0-LFB4167
	.long L$set$0
	.set L$set$1,LEHE0-LEHB0
	.long L$set$1
	.long	0
	.byte	0
	.set L$set$2,LEHB1-LFB4167
	.long L$set$2
	.set L$set$3,LEHE1-LEHB1
	.long L$set$3
	.set L$set$4,L115-LFB4167
	.long L$set$4
	.byte	0
	.text
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___ZN10benchmarks4util16double_generatorEv:
__ZN10benchmarks4util16double_generatorEv.cold.172:
L113:
LCFI53:
	movq	(%rsp), %rdi
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	je	L114
	call	__ZdlPv
L114:
	leaq	__ZGVZN10benchmarks4util16double_generatorEvE2rd(%rip), %rdi
	call	___cxa_guard_abort
	movq	%rbp, %rdi
LEHB2:
	call	__Unwind_Resume
LEHE2:
LFE4167:
	.section __DATA,__gcc_except_tab
GCC_except_table2:
LLSDAC4167:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xd
	.set L$set$5,LEHB2-LCOLDB4
	.long L$set$5
	.set L$set$6,LEHE2-LEHB2
	.long L$set$6
	.long	0
	.byte	0
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE4:
	.text
LHOTE4:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB13:
	.text
LHOTB13:
	.align 4,0x90
	.globl __ZN10benchmarks4util16generate_doublesEj
__ZN10benchmarks4util16generate_doublesEj:
LFB4169:
	pushq	%r14
LCFI54:
	movl	%esi, %esi
	pxor	%xmm0, %xmm0
	pushq	%r13
LCFI55:
	pushq	%r12
LCFI56:
	pushq	%rbp
LCFI57:
	xorl	%ebp, %ebp
	pushq	%rbx
LCFI58:
	movq	%rdi, %rbx
	subq	$5088, %rsp
LCFI59:
	testq	%rsi, %rsi
	movups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	je	L146
	leaq	0(,%rsi,8), %r12
	movq	%r12, %rdi
LEHB3:
	call	__Znwm
LEHE3:
	movq	%r12, %rdx
	xorl	%esi, %esi
	leaq	(%rax,%r12), %rbp
	movq	%rax, (%rbx)
	movq	%rax, %rdi
	movq	%rbp, 16(%rbx)
	call	_memset
L146:
	movq	%rbp, 8(%rbx)
	leaq	32(%rsp), %rbp
	movq	%rbp, %rdi
LEHB4:
	call	__ZN10benchmarks4util16double_generatorEv
LEHE4:
	movq	8(%rbx), %r13
	leaq	2560(%rsp), %r12
	movq	%rbp, %rsi
	movl	$2520, %edx
	movq	(%rbx), %r14
	movq	%r12, %rdi
	call	_memcpy
	movq	2528(%rsp), %rbp
	movsd	2536(%rsp), %xmm8
	movsd	2544(%rsp), %xmm7
	cmpq	%r13, %r14
	je	L124
	movsd	lC6(%rip), %xmm6
	subsd	%xmm8, %xmm7
	flds	lC11(%rip)
	movdqa	lC7(%rip), %xmm5
	movdqa	lC8(%rip), %xmm4
	movdqa	lC9(%rip), %xmm3
	jmp	L127
	.align 4,0x90
L166:
	divsd	%xmm2, %xmm1
	comisd	%xmm6, %xmm1
	jnb	L165
	mulsd	%xmm7, %xmm1
	addq	$8, %r14
	addsd	%xmm8, %xmm1
	movsd	%xmm1, -8(%r14)
	cmpq	%r14, %r13
	je	L168
L127:
	cmpq	$623, %rbp
	movl	$2, %edx
	pxor	%xmm1, %xmm1
	movapd	%xmm6, %xmm2
	leaq	896(%r12), %rsi
	pxor	%xmm10, %xmm10
	movdqa	lC10(%rip), %xmm11
	leaq	2492(%r12), %rcx
	ja	L128
L167:
	movl	2560(%rsp,%rbp,4), %edi
	addq	$1, %rbp
L129:
	pxor	%xmm0, %xmm0
	movsd	%xmm2, 8(%rsp)
	fld	%st(0)
	movl	%edi, %eax
	shrl	$11, %eax
	fldl	8(%rsp)
	fmulp	%st, %st(1)
	xorl	%edi, %eax
	movl	%eax, %edi
	sall	$7, %edi
	andl	$-1658038656, %edi
	xorl	%edi, %eax
	movl	%eax, %edi
	fstpl	24(%rsp)
	sall	$15, %edi
	andl	$-272236544, %edi
	xorl	%edi, %eax
	movl	%eax, %edi
	shrl	$18, %edi
	xorl	%edi, %eax
	cmpl	$1, %edx
	cvtsi2sdq	%rax, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	24(%rsp), %xmm2
	addsd	%xmm0, %xmm1
	je	L166
	cmpq	$623, %rbp
	movl	$1, %edx
	jbe	L167
L128:
	movq	%r12, %rax
	.align 4,0x90
L130:
	movdqu	4(%rax), %xmm0
	addq	$16, %rax
	movdqa	-16(%rax), %xmm12
	movdqu	1572(%rax), %xmm14
	pand	%xmm5, %xmm0
	pand	%xmm4, %xmm12
	por	%xmm12, %xmm0
	movdqa	%xmm0, %xmm12
	pand	%xmm3, %xmm0
	pcmpeqd	%xmm10, %xmm0
	psrld	$1, %xmm12
	pxor	%xmm14, %xmm12
	movdqa	%xmm12, %xmm13
	pxor	%xmm11, %xmm13
	pand	%xmm0, %xmm12
	pandn	%xmm13, %xmm0
	por	%xmm12, %xmm0
	movaps	%xmm0, -16(%rax)
	cmpq	%rsi, %rax
	jne	L130
	movl	3460(%rsp), %eax
	movl	3456(%rsp), %r8d
	movl	%eax, %edi
	andl	$2147483647, %edi
	andl	$-2147483648, %r8d
	orl	%edi, %r8d
	movl	%r8d, %edi
	shrl	%edi
	xorl	5044(%rsp), %edi
	movl	%edi, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %r8d
	cmovne	%r9d, %edi
	movl	3464(%rsp), %r9d
	andl	$-2147483648, %eax
	movl	%edi, 3456(%rsp)
	movl	%r9d, %edi
	andl	$2147483647, %edi
	orl	%edi, %eax
	movl	%eax, %r8d
	shrl	%r8d
	xorl	5048(%rsp), %r8d
	movl	%r8d, %edi
	xorl	$-1727483681, %edi
	testb	$1, %al
	cmovne	%edi, %r8d
	movl	3468(%rsp), %edi
	andl	$-2147483648, %r9d
	movl	%r8d, 3460(%rsp)
	andl	$2147483647, %edi
	orl	%r9d, %edi
	movl	%edi, %eax
	shrl	%eax
	xorl	5052(%rsp), %eax
	movl	%eax, %r8d
	xorl	$-1727483681, %r8d
	andl	$1, %edi
	cmovne	%r8d, %eax
	movl	%eax, 3464(%rsp)
	leaq	908(%r12), %rax
	.align 4,0x90
L134:
	movdqa	4(%rax), %xmm0
	addq	$16, %rax
	movdqu	-16(%rax), %xmm12
	pand	%xmm5, %xmm0
	pand	%xmm4, %xmm12
	por	%xmm12, %xmm0
	movdqa	%xmm0, %xmm12
	pand	%xmm3, %xmm0
	pcmpeqd	%xmm10, %xmm0
	psrld	$1, %xmm12
	pxor	-924(%rax), %xmm12
	movdqa	%xmm12, %xmm13
	pxor	%xmm11, %xmm13
	pand	%xmm0, %xmm12
	pandn	%xmm13, %xmm0
	por	%xmm12, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rcx, %rax
	jne	L134
	movl	2560(%rsp), %edi
	movl	$1, %ebp
	movl	5052(%rsp), %r8d
	movl	%edi, %eax
	andl	$2147483647, %eax
	andl	$-2147483648, %r8d
	orl	%eax, %r8d
	movl	%r8d, %eax
	shrl	%eax
	xorl	4144(%rsp), %eax
	movl	%eax, %r9d
	xorl	$-1727483681, %r9d
	andl	$1, %r8d
	cmovne	%r9d, %eax
	movl	%eax, 5052(%rsp)
	jmp	L129
	.align 4,0x90
L165:
	fstp	%st(0)
	movapd	%xmm6, %xmm0
	movsd	%xmm7, 16(%rsp)
	pxor	%xmm1, %xmm1
	addq	$8, %r14
	movsd	%xmm8, 8(%rsp)
	call	_nextafter
	movsd	16(%rsp), %xmm7
	movsd	8(%rsp), %xmm8
	mulsd	%xmm7, %xmm0
	movq	lC6(%rip), %rax
	flds	lC11(%rip)
	movdqa	lC7(%rip), %xmm5
	movdqa	lC8(%rip), %xmm4
	movq	%rax, %xmm6
	movdqa	lC9(%rip), %xmm3
	addsd	%xmm8, %xmm0
	movsd	%xmm0, -8(%r14)
	cmpq	%r14, %r13
	jne	L127
	fstp	%st(0)
	jmp	L124
	.align 4,0x90
L168:
	fstp	%st(0)
L124:
	addq	$5088, %rsp
LCFI60:
	movq	%rbx, %rax
	popq	%rbx
LCFI61:
	popq	%rbp
LCFI62:
	popq	%r12
LCFI63:
	popq	%r13
LCFI64:
	popq	%r14
LCFI65:
	ret
L148:
LCFI66:
	movq	%rax, %rbp
	jmp	L144
	.section __DATA,__gcc_except_tab
GCC_except_table3:
LLSDA4169:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x1a
	.set L$set$7,LEHB3-LFB4169
	.long L$set$7
	.set L$set$8,LEHE3-LEHB3
	.long L$set$8
	.long	0
	.byte	0
	.set L$set$9,LEHB4-LFB4169
	.long L$set$9
	.set L$set$10,LEHE4-LEHB4
	.long L$set$10
	.set L$set$11,L148-LFB4169
	.long L$set$11
	.byte	0
	.text
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___ZN10benchmarks4util16generate_doublesEj:
__ZN10benchmarks4util16generate_doublesEj.cold.173:
L144:
LCFI67:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	L145
	call	__ZdlPv
L145:
	movq	%rbp, %rdi
LEHB5:
	call	__Unwind_Resume
LEHE5:
LFE4169:
	.section __DATA,__gcc_except_tab
GCC_except_table4:
LLSDAC4169:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xd
	.set L$set$12,LEHB5-LCOLDB13
	.long L$set$12
	.set L$set$13,LEHE5-LEHB5
	.long L$set$13
	.long	0
	.byte	0
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE13:
	.text
LHOTE13:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB14:
	.text
LHOTB14:
	.align 4,0x90
	.globl __ZN10benchmarks4util13int_generatorEii
__ZN10benchmarks4util13int_generatorEii:
LFB4170:
	pushq	%r13
LCFI68:
	movl	%esi, %r13d
	pushq	%r12
LCFI69:
	movl	%edx, %r12d
	pushq	%rbp
LCFI70:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI71:
	subq	$2520, %rsp
LCFI72:
	movzbl	__ZGVZN10benchmarks4util13int_generatorEiiE2rd(%rip), %eax
	movq	%rsp, %rbx
	testb	%al, %al
	jne	L171
	leaq	__ZGVZN10benchmarks4util13int_generatorEiiE2rd(%rip), %rdi
	movq	%rsp, %rbx
	call	___cxa_guard_acquire
	testl	%eax, %eax
	jne	L185
L171:
	leaq	__ZZN10benchmarks4util13int_generatorEiiE2rd(%rip), %rdi
LEHB6:
	call	__ZNSt13random_device9_M_getvalEv
LEHE6:
	movl	$1, %edx
	movl	%eax, %ecx
	movl	%eax, (%rsp)
	.align 4,0x90
L174:
	movl	%ecx, %eax
	shrl	$30, %eax
	xorl	%ecx, %eax
	imull	$1812433253, %eax, %eax
	leal	(%rax,%rdx), %ecx
	movl	%ecx, (%rbx,%rdx,4)
	addq	$1, %rdx
	cmpq	$624, %rdx
	jne	L174
	movl	%r13d, 0(%rbp)
	leaq	8(%rbp), %rdi
	movq	%rbx, %rsi
	movl	$2504, %edx
	movl	%r12d, 4(%rbp)
	movq	$624, 2496(%rsp)
	call	_memcpy
	addq	$2520, %rsp
LCFI73:
	movq	%rbp, %rax
	popq	%rbx
LCFI74:
	popq	%rbp
LCFI75:
	popq	%r12
LCFI76:
	popq	%r13
LCFI77:
	ret
L185:
LCFI78:
	leaq	16(%rbx), %rax
	movl	$1634100580, 16(%rsp)
	movq	%rbx, %rsi
	movq	%rax, (%rsp)
	leaq	__ZZN10benchmarks4util13int_generatorEiiE2rd(%rip), %rdi
	movl	$27765, %eax
	movw	%ax, 20(%rbx)
	movb	$116, 22(%rbx)
	movq	$7, 8(%rsp)
	movb	$0, 23(%rsp)
LEHB7:
	call	__ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
LEHE7:
	leaq	__ZGVZN10benchmarks4util13int_generatorEiiE2rd(%rip), %rdi
	call	___cxa_guard_release
	movq	__ZNSt13random_deviceD1Ev@GOTPCREL(%rip), %rdi
	leaq	___dso_handle(%rip), %rdx
	leaq	__ZZN10benchmarks4util13int_generatorEiiE2rd(%rip), %rsi
	call	___cxa_atexit
	movq	(%rsp), %rdi
	leaq	16(%rbx), %rax
	cmpq	%rax, %rdi
	je	L171
	call	__ZdlPv
	jmp	L171
L177:
	movq	%rax, %rbp
	jmp	L175
	.section __DATA,__gcc_except_tab
GCC_except_table5:
LLSDA4170:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x1a
	.set L$set$14,LEHB6-LFB4170
	.long L$set$14
	.set L$set$15,LEHE6-LEHB6
	.long L$set$15
	.long	0
	.byte	0
	.set L$set$16,LEHB7-LFB4170
	.long L$set$16
	.set L$set$17,LEHE7-LEHB7
	.long L$set$17
	.set L$set$18,L177-LFB4170
	.long L$set$18
	.byte	0
	.text
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___ZN10benchmarks4util13int_generatorEii:
__ZN10benchmarks4util13int_generatorEii.cold.174:
L175:
LCFI79:
	movq	(%rsp), %rdi
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	je	L176
	call	__ZdlPv
L176:
	leaq	__ZGVZN10benchmarks4util13int_generatorEiiE2rd(%rip), %rdi
	call	___cxa_guard_abort
	movq	%rbp, %rdi
LEHB8:
	call	__Unwind_Resume
LEHE8:
LFE4170:
	.section __DATA,__gcc_except_tab
GCC_except_table6:
LLSDAC4170:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xd
	.set L$set$19,LEHB8-LCOLDB14
	.long L$set$19
	.set L$set$20,LEHE8-LEHB8
	.long L$set$20
	.long	0
	.byte	0
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE14:
	.text
LHOTE14:
	.section __TEXT,__text_cold,regular,pure_instructions
	.text
	.align 4,0x90
	.globl __ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.weak_definition __ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
__ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
LFB4243:
	pushq	%r15
LCFI80:
	movl	%r8d, %r15d
	pushq	%r14
LCFI81:
	movq	%rsi, %r14
	pushq	%r13
LCFI82:
	pushq	%r12
LCFI83:
	movq	%rcx, %r12
	pushq	%rbp
LCFI84:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI85:
	movq	%rdx, %rbx
	subq	$24, %rsp
LCFI86:
LEHB9:
	call	___error
	movl	(%rax), %r13d
	call	___error
LEHE9:
	leaq	8(%rsp), %rsi
	movl	%r15d, %edx
	movq	%rbx, %rdi
	movl	$0, (%rax)
LEHB10:
	call	*%rbp
	cmpq	%rbx, 8(%rsp)
	movq	%rax, %rbp
	je	L199
	call	___error
LEHE10:
	cmpl	$34, (%rax)
	je	L188
	movl	$2147483648, %eax
	movl	$4294967295, %edx
	addq	%rbp, %rax
	cmpq	%rdx, %rax
	ja	L188
	testq	%r12, %r12
	je	L190
	movq	8(%rsp), %rax
	subq	%rbx, %rax
	movq	%rax, (%r12)
L190:
	call	___error
	movl	(%rax), %eax
	testl	%eax, %eax
	je	L200
L186:
	addq	$24, %rsp
LCFI87:
	movl	%ebp, %eax
	popq	%rbx
LCFI88:
	popq	%rbp
LCFI89:
	popq	%r12
LCFI90:
	popq	%r13
LCFI91:
	popq	%r14
LCFI92:
	popq	%r15
LCFI93:
	ret
	.align 4,0x90
L200:
LCFI94:
	call	___error
	movl	%r13d, (%rax)
	jmp	L186
L188:
	movq	%r14, %rdi
LEHB11:
	call	__ZSt20__throw_out_of_rangePKc
L199:
	movq	%r14, %rdi
	call	__ZSt24__throw_invalid_argumentPKc
LEHE11:
L194:
	movq	%rax, %rbx
L192:
	call	___error
	cmpl	$0, (%rax)
	jne	L193
	call	___error
	movl	%r13d, (%rax)
L193:
	movq	%rbx, %rdi
LEHB12:
	call	__Unwind_Resume
LEHE12:
LFE4243:
	.section __DATA,__gcc_except_tab
GCC_except_table7:
LLSDA4243:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x34
	.set L$set$21,LEHB9-LFB4243
	.long L$set$21
	.set L$set$22,LEHE9-LEHB9
	.long L$set$22
	.long	0
	.byte	0
	.set L$set$23,LEHB10-LFB4243
	.long L$set$23
	.set L$set$24,LEHE10-LEHB10
	.long L$set$24
	.set L$set$25,L194-LFB4243
	.long L$set$25
	.byte	0
	.set L$set$26,LEHB11-LFB4243
	.long L$set$26
	.set L$set$27,LEHE11-LEHB11
	.long L$set$27
	.set L$set$28,L194-LFB4243
	.long L$set$28
	.byte	0
	.set L$set$29,LEHB12-LFB4243
	.long L$set$29
	.set L$set$30,LEHE12-LEHB12
	.long L$set$30
	.long	0
	.byte	0
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt6vectorI16non_trivial_typeSaIS0_EED1Ev
	.weak_definition __ZNSt6vectorI16non_trivial_typeSaIS0_EED1Ev
__ZNSt6vectorI16non_trivial_typeSaIS0_EED1Ev:
LFB4603:
	pushq	%r13
LCFI95:
	pushq	%r12
LCFI96:
	pushq	%rbp
LCFI97:
	pushq	%rbx
LCFI98:
	subq	$8, %rsp
LCFI99:
	movq	8(%rdi), %rbp
	movq	(%rdi), %rbx
	cmpq	%rbx, %rbp
	je	L202
	movq	%rdi, %r13
	movq	__ZN16non_trivial_typeD1Ev@GOTPCREL(%rip), %r12
	jmp	L204
	.align 4,0x90
L203:
	addq	$24, %rbx
	cmpq	%rbx, %rbp
	je	L208
L204:
	movq	(%rbx), %rax
	movq	(%rax), %rax
	cmpq	%r12, %rax
	je	L203
	movq	%rbx, %rdi
	addq	$24, %rbx
	call	*%rax
	cmpq	%rbx, %rbp
	jne	L204
L208:
	movq	0(%r13), %rbx
L202:
	testq	%rbx, %rbx
	je	L201
	addq	$8, %rsp
LCFI100:
	movq	%rbx, %rdi
	popq	%rbx
LCFI101:
	popq	%rbp
LCFI102:
	popq	%r12
LCFI103:
	popq	%r13
LCFI104:
	jmp	__ZdlPv
	.align 4,0x90
L201:
LCFI105:
	addq	$8, %rsp
LCFI106:
	popq	%rbx
LCFI107:
	popq	%rbp
LCFI108:
	popq	%r12
LCFI109:
	popq	%r13
LCFI110:
	ret
LFE4603:
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt6vectorINSt6chrono8durationIxSt5ratioILl1ELl1000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_
	.weak_definition __ZNSt6vectorINSt6chrono8durationIxSt5ratioILl1ELl1000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_
__ZNSt6vectorINSt6chrono8durationIxSt5ratioILl1ELl1000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:
LFB4905:
	pushq	%r15
LCFI111:
	movq	%rdx, %r15
	movq	%rsi, %rdx
	pushq	%r14
LCFI112:
	pushq	%r13
LCFI113:
	movq	%rdi, %r13
	pushq	%r12
LCFI114:
	movq	%rsi, %r12
	pushq	%rbp
LCFI115:
	pushq	%rbx
LCFI116:
	subq	$40, %rsp
LCFI117:
	movq	8(%rdi), %rcx
	movq	(%rdi), %rbp
	movq	%rcx, %rax
	subq	%rbp, %rax
	subq	%rbp, %rdx
	sarq	$3, %rax
	testq	%rax, %rax
	je	L218
	leaq	(%rax,%rax), %rdi
	movq	$-8, %r14
	cmpq	%rdi, %rax
	jbe	L224
L211:
	movq	%r14, %rdi
	movq	%rdx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	call	__Znwm
	movq	16(%rsp), %rdx
	movq	8(%rsp), %rcx
	movq	%rax, %rbx
	addq	%rax, %r14
L212:
	movq	(%r15), %rax
	leaq	8(%rbx,%rdx), %r9
	movq	%rcx, %r15
	subq	%r12, %r15
	cmpq	%rbp, %r12
	movq	%rax, (%rbx,%rdx)
	leaq	(%r9,%r15), %rax
	movq	%rax, 8(%rsp)
	je	L213
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	%r9, 24(%rsp)
	movq	%rcx, 16(%rsp)
	call	_memmove
	movq	16(%rsp), %rcx
	movq	24(%rsp), %r9
	cmpq	%rcx, %r12
	je	L217
L214:
	movq	%r15, %rdx
	movq	%r12, %rsi
	movq	%r9, %rdi
	call	_memcpy
L216:
	testq	%rbp, %rbp
	jne	L217
L215:
	movq	%rbx, %xmm0
	movq	%r14, 16(%r13)
	movhps	8(%rsp), %xmm0
	movups	%xmm0, 0(%r13)
	addq	$40, %rsp
LCFI118:
	popq	%rbx
LCFI119:
	popq	%rbp
LCFI120:
	popq	%r12
LCFI121:
	popq	%r13
LCFI122:
	popq	%r14
LCFI123:
	popq	%r15
LCFI124:
	ret
	.align 4,0x90
L217:
LCFI125:
	movq	%rbp, %rdi
	call	__ZdlPv
	jmp	L215
	.align 4,0x90
L224:
	movabsq	$2305843009213693951, %rax
	cmpq	%rax, %rdi
	ja	L211
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	testq	%rdi, %rdi
	je	L212
	jmp	L210
	.align 4,0x90
L213:
	cmpq	%rcx, %r12
	jne	L214
	jmp	L216
	.align 4,0x90
L218:
	movl	$1, %edi
L210:
	leaq	0(,%rdi,8), %r14
	jmp	L211
LFE4905:
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	.weak_definition __ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv:
LFB4995:
	movq	2496(%rdi), %rax
	cmpq	$623, %rax
	ja	L226
	leaq	1(%rax), %rdx
	movl	(%rdi,%rax,4), %eax
L227:
	movq	%rdx, 2496(%rdi)
	movl	%eax, %edx
	shrl	$11, %edx
	xorl	%eax, %edx
	movl	%edx, %eax
	sall	$7, %eax
	andl	$-1658038656, %eax
	xorl	%eax, %edx
	movl	%edx, %eax
	sall	$15, %eax
	andl	$-272236544, %eax
	xorl	%edx, %eax
	movl	%eax, %edx
	shrl	$18, %edx
	xorl	%edx, %eax
	ret
	.align 4,0x90
L226:
	movdqa	lC8(%rip), %xmm3
	movq	%rdi, %rax
	pxor	%xmm7, %xmm7
	movdqa	lC7(%rip), %xmm2
	leaq	896(%rdi), %rdx
	movdqa	lC9(%rip), %xmm4
	movdqa	lC10(%rip), %xmm1
	.align 4,0x90
L228:
	movdqu	(%rax), %xmm0
	addq	$16, %rax
	movdqu	-12(%rax), %xmm5
	movdqu	1572(%rax), %xmm6
	pand	%xmm3, %xmm0
	pand	%xmm2, %xmm5
	por	%xmm5, %xmm0
	movdqa	%xmm0, %xmm5
	pand	%xmm4, %xmm0
	pcmpeqd	%xmm7, %xmm0
	psrld	$1, %xmm5
	pxor	%xmm6, %xmm5
	movdqa	%xmm5, %xmm6
	pxor	%xmm1, %xmm6
	pand	%xmm0, %xmm5
	pandn	%xmm6, %xmm0
	por	%xmm5, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rax, %rdx
	jne	L228
	movl	900(%rdi), %eax
	pxor	%xmm7, %xmm7
	movl	896(%rdi), %ecx
	movl	%eax, %edx
	andl	$2147483647, %edx
	andl	$-2147483648, %ecx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	2484(%rdi), %edx
	movl	%edx, %esi
	xorl	$-1727483681, %esi
	andl	$1, %ecx
	cmovne	%esi, %edx
	movl	904(%rdi), %esi
	andl	$-2147483648, %eax
	movl	%edx, 896(%rdi)
	movl	%esi, %edx
	andl	$2147483647, %edx
	orl	%edx, %eax
	movl	%eax, %ecx
	shrl	%ecx
	xorl	2488(%rdi), %ecx
	movl	%ecx, %edx
	xorl	$-1727483681, %edx
	testb	$1, %al
	cmovne	%edx, %ecx
	movl	908(%rdi), %edx
	andl	$-2147483648, %esi
	movl	%ecx, 900(%rdi)
	andl	$2147483647, %edx
	orl	%esi, %edx
	movl	%edx, %eax
	shrl	%eax
	xorl	2492(%rdi), %eax
	movl	%eax, %ecx
	xorl	$-1727483681, %ecx
	andl	$1, %edx
	cmovne	%ecx, %eax
	leaq	2492(%rdi), %rdx
	movl	%eax, 904(%rdi)
	leaq	908(%rdi), %rax
	.align 4,0x90
L232:
	movdqu	(%rax), %xmm0
	addq	$16, %rax
	movdqu	-12(%rax), %xmm5
	movdqu	-924(%rax), %xmm6
	pand	%xmm3, %xmm0
	pand	%xmm2, %xmm5
	por	%xmm5, %xmm0
	movdqa	%xmm0, %xmm5
	pand	%xmm4, %xmm0
	pcmpeqd	%xmm7, %xmm0
	psrld	$1, %xmm5
	pxor	%xmm6, %xmm5
	movdqa	%xmm5, %xmm6
	pxor	%xmm1, %xmm6
	pand	%xmm0, %xmm5
	pandn	%xmm6, %xmm0
	por	%xmm5, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rax, %rdx
	jne	L232
	movl	(%rdi), %eax
	movl	2492(%rdi), %ecx
	movl	%eax, %edx
	andl	$2147483647, %edx
	andl	$-2147483648, %ecx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	1584(%rdi), %edx
	movl	%edx, %esi
	xorl	$-1727483681, %esi
	andl	$1, %ecx
	cmovne	%esi, %edx
	movl	%edx, 2492(%rdi)
	movl	$1, %edx
	jmp	L227
LFE4995:
	.align 1,0x90
	.align 4,0x90
__ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEiRT_RKNS0_10param_typeE.isra.69:
LFB5364:
	pushq	%rbx
LCFI126:
	subq	$16, %rsp
LCFI127:
	movl	4(%rsi), %r8d
	subl	(%rsi), %r8d
	cmpl	$-1, %r8d
	je	L244
	addl	$1, %r8d
	movl	$-1, %eax
	xorl	%edx, %edx
	movq	2496(%rdi), %rcx
	divl	%r8d
	movdqa	lC8(%rip), %xmm5
	pxor	%xmm1, %xmm1
	movdqa	lC7(%rip), %xmm4
	movdqa	lC9(%rip), %xmm3
	movdqa	lC10(%rip), %xmm2
	leaq	896(%rdi), %r11
	leaq	2492(%rdi), %r10
	movl	%eax, %r9d
	imull	%eax, %r8d
	jmp	L254
	.align 4,0x90
L267:
	movl	(%rdi,%rcx,4), %edx
	addq	$1, %rcx
L246:
	movl	%edx, %eax
	movq	%rcx, 2496(%rdi)
	shrl	$11, %eax
	xorl	%edx, %eax
	movl	%eax, %edx
	sall	$7, %edx
	andl	$-1658038656, %edx
	xorl	%edx, %eax
	movl	%eax, %edx
	sall	$15, %edx
	andl	$-272236544, %edx
	xorl	%edx, %eax
	movl	%eax, %edx
	shrl	$18, %edx
	xorl	%edx, %eax
	cmpl	%eax, %r8d
	ja	L266
L254:
	cmpq	$623, %rcx
	jbe	L267
	movq	%rdi, %rcx
	.align 4,0x90
L247:
	movdqu	(%rcx), %xmm0
	addq	$16, %rcx
	movdqu	-12(%rcx), %xmm6
	movdqu	1572(%rcx), %xmm7
	pand	%xmm5, %xmm0
	pand	%xmm4, %xmm6
	por	%xmm6, %xmm0
	movdqa	%xmm0, %xmm6
	pand	%xmm3, %xmm0
	pcmpeqd	%xmm1, %xmm0
	psrld	$1, %xmm6
	pxor	%xmm7, %xmm6
	movdqa	%xmm6, %xmm7
	pxor	%xmm2, %xmm7
	pand	%xmm0, %xmm6
	pandn	%xmm7, %xmm0
	por	%xmm6, %xmm0
	movups	%xmm0, -16(%rcx)
	cmpq	%rcx, %r11
	jne	L247
	movl	900(%rdi), %eax
	movl	896(%rdi), %ecx
	movl	%eax, %edx
	andl	$2147483647, %edx
	andl	$-2147483648, %ecx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	2484(%rdi), %edx
	movl	%edx, %ebx
	xorl	$-1727483681, %ebx
	andl	$1, %ecx
	cmovne	%ebx, %edx
	movl	904(%rdi), %ebx
	andl	$-2147483648, %eax
	movl	%edx, 896(%rdi)
	movl	%ebx, %edx
	andl	$2147483647, %edx
	orl	%edx, %eax
	movl	%eax, %ecx
	shrl	%ecx
	xorl	2488(%rdi), %ecx
	movl	%ecx, %edx
	xorl	$-1727483681, %edx
	testb	$1, %al
	cmovne	%edx, %ecx
	movl	908(%rdi), %edx
	andl	$-2147483648, %ebx
	movl	%ecx, 900(%rdi)
	andl	$2147483647, %edx
	orl	%ebx, %edx
	movl	%edx, %eax
	shrl	%eax
	xorl	2492(%rdi), %eax
	movl	%eax, %ecx
	xorl	$-1727483681, %ecx
	andl	$1, %edx
	cmovne	%ecx, %eax
	leaq	908(%rdi), %rcx
	movl	%eax, 904(%rdi)
	.align 4,0x90
L251:
	movdqu	4(%rcx), %xmm0
	addq	$16, %rcx
	movdqu	-16(%rcx), %xmm6
	movdqu	-924(%rcx), %xmm7
	pand	%xmm4, %xmm0
	pand	%xmm5, %xmm6
	por	%xmm6, %xmm0
	movdqa	%xmm0, %xmm6
	pand	%xmm3, %xmm0
	pcmpeqd	%xmm1, %xmm0
	psrld	$1, %xmm6
	pxor	%xmm7, %xmm6
	movdqa	%xmm6, %xmm7
	pxor	%xmm2, %xmm7
	pand	%xmm0, %xmm6
	pandn	%xmm7, %xmm0
	por	%xmm6, %xmm0
	movups	%xmm0, -16(%rcx)
	cmpq	%r10, %rcx
	jne	L251
	movl	(%rdi), %edx
	movl	2492(%rdi), %ecx
	movl	%edx, %eax
	andl	$2147483647, %eax
	andl	$-2147483648, %ecx
	orl	%eax, %ecx
	movl	%ecx, %eax
	shrl	%eax
	xorl	1584(%rdi), %eax
	movl	%eax, %ebx
	xorl	$-1727483681, %ebx
	andl	$1, %ecx
	movl	$1, %ecx
	cmovne	%ebx, %eax
	movl	%eax, 2492(%rdi)
	jmp	L246
	.align 4,0x90
L266:
	xorl	%edx, %edx
	divl	%r9d
	addl	(%rsi), %eax
	addq	$16, %rsp
LCFI128:
	popq	%rbx
LCFI129:
	ret
	.align 4,0x90
L244:
LCFI130:
	movq	%rsi, 8(%rsp)
	call	__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	movq	8(%rsp), %rsi
	addl	(%rsi), %eax
	addq	$16, %rsp
LCFI131:
	popq	%rbx
LCFI132:
	ret
LFE5364:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB15:
	.text
LHOTB15:
	.align 4,0x90
	.globl __ZN10benchmarks4util20generate_ints_stringB5cxx11Ei
__ZN10benchmarks4util20generate_ints_stringB5cxx11Ei:
LFB4173:
	pushq	%r15
LCFI133:
	movslq	%esi, %rsi
	pushq	%r14
LCFI134:
	pushq	%r13
LCFI135:
	pushq	%r12
LCFI136:
	pushq	%rbp
LCFI137:
	pushq	%rbx
LCFI138:
	movq	%rdi, %rbx
	subq	$5064, %rsp
LCFI139:
	testq	%rsi, %rsi
	je	L286
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, %rsi
	ja	L301
	leaq	0(,%rsi,4), %r13
	movq	%r13, %rdi
LEHB13:
	call	__Znwm
LEHE13:
	movq	%r13, %rdx
	xorl	%esi, %esi
	movq	%rax, %r15
	movq	%rax, %rdi
	movq	%rax, 24(%rsp)
	call	_memset
	addq	%r15, %r13
L269:
	leaq	32(%rsp), %rbp
	movl	$2147483647, %edx
	movl	$-2147483648, %esi
	movq	%rbp, %rdi
LEHB14:
	call	__ZN10benchmarks4util13int_generatorEii
LEHE14:
	leaq	2544(%rsp), %r15
	movl	$2512, %edx
	movq	%rbp, %rsi
	movq	%r15, %rdi
	call	_memcpy
	leaq	16(%rbx), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rsp), %rax
	cmpq	%r13, %rax
	je	L271
	leaq	8(%r15), %rbp
	movq	%rax, %r12
	movq	%rax, %r14
	.align 4,0x90
L272:
	movq	%r15, %rsi
	movq	%rbp, %rdi
	addq	$4, %r14
	call	__ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEiRT_RKNS0_10param_typeE.isra.69
	movl	%eax, -4(%r14)
	cmpq	%r14, %r13
	jne	L272
	movq	8(%rsp), %rax
	movq	$0, 8(%rbx)
	movb	$0, 16(%rbx)
	movq	%rax, (%rbx)
	leaq	16(%r15), %rax
	movq	%rax, 16(%rsp)
	jmp	L277
	.align 4,0x90
L276:
	movb	$32, (%rax,%rbp)
	movq	(%rbx), %rax
	addq	$4, %r12
	cmpq	%r12, %r13
	movq	%r14, 8(%rbx)
	movb	$0, 1(%rax,%rbp)
	je	L285
L277:
	movl	(%r12), %r8d
	movl	$16, %edx
	movq	%r15, %rdi
	xorl	%eax, %eax
	movq	_vsnprintf@GOTPCREL(%rip), %rsi
	leaq	lC1(%rip), %rcx
	call	__ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.169
	movq	2552(%rsp), %rdx
	movq	%rbx, %rdi
	movq	2544(%rsp), %rsi
LEHB15:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
LEHE15:
	movq	2544(%rsp), %rdi
	cmpq	16(%rsp), %rdi
	je	L274
	call	__ZdlPv
L274:
	movq	8(%rbx), %rbp
	movq	(%rbx), %rax
	cmpq	8(%rsp), %rax
	leaq	1(%rbp), %r14
	je	L287
	movq	16(%rbx), %rdx
L275:
	cmpq	%rdx, %r14
	jbe	L276
	movl	$1, %r8d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
LEHB16:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE16:
	movq	(%rbx), %rax
	jmp	L276
	.align 4,0x90
L287:
	movl	$15, %edx
	jmp	L275
	.align 4,0x90
L271:
	leaq	16(%rbx), %rax
	movq	$0, 8(%rbx)
	movq	%rax, (%rbx)
	movb	$0, 16(%rbx)
	.align 4,0x90
L285:
	movq	24(%rsp), %rax
	testq	%rax, %rax
	je	L268
	movq	%rax, %rdi
	call	__ZdlPv
L268:
	addq	$5064, %rsp
LCFI140:
	movq	%rbx, %rax
	popq	%rbx
LCFI141:
	popq	%rbp
LCFI142:
	popq	%r12
LCFI143:
	popq	%r13
LCFI144:
	popq	%r14
LCFI145:
	popq	%r15
LCFI146:
	ret
	.align 4,0x90
L286:
LCFI147:
	movq	$0, 24(%rsp)
	xorl	%r13d, %r13d
	jmp	L269
L301:
LEHB17:
	call	__ZSt17__throw_bad_allocv
LEHE17:
L289:
	movq	%rax, %rbp
	jmp	L281
L290:
	movq	%rax, %rbp
	jmp	L279
L288:
	movq	%rax, %rbp
	jmp	L283
	.section __DATA,__gcc_except_tab
GCC_except_table8:
LLSDA4173:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x41
	.set L$set$31,LEHB13-LFB4173
	.long L$set$31
	.set L$set$32,LEHE13-LEHB13
	.long L$set$32
	.long	0
	.byte	0
	.set L$set$33,LEHB14-LFB4173
	.long L$set$33
	.set L$set$34,LEHE14-LEHB14
	.long L$set$34
	.set L$set$35,L288-LFB4173
	.long L$set$35
	.byte	0
	.set L$set$36,LEHB15-LFB4173
	.long L$set$36
	.set L$set$37,LEHE15-LEHB15
	.long L$set$37
	.set L$set$38,L290-LFB4173
	.long L$set$38
	.byte	0
	.set L$set$39,LEHB16-LFB4173
	.long L$set$39
	.set L$set$40,LEHE16-LEHB16
	.long L$set$40
	.set L$set$41,L289-LFB4173
	.long L$set$41
	.byte	0
	.set L$set$42,LEHB17-LFB4173
	.long L$set$42
	.set L$set$43,LEHE17-LEHB17
	.long L$set$43
	.long	0
	.byte	0
	.text
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___ZN10benchmarks4util20generate_ints_stringB5cxx11Ei:
__ZN10benchmarks4util20generate_ints_stringB5cxx11Ei.cold.175:
L279:
LCFI148:
	movq	2544(%rsp), %rdi
	addq	$16, %r15
	cmpq	%r15, %rdi
	je	L281
	call	__ZdlPv
L281:
	movq	(%rbx), %rdi
	cmpq	8(%rsp), %rdi
	je	L283
	call	__ZdlPv
L283:
	cmpq	$0, 24(%rsp)
	je	L284
	movq	24(%rsp), %rdi
	call	__ZdlPv
L284:
	movq	%rbp, %rdi
LEHB18:
	call	__Unwind_Resume
LEHE18:
LFE4173:
	.section __DATA,__gcc_except_tab
GCC_except_table9:
LLSDAC4173:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xd
	.set L$set$44,LEHB18-LCOLDB15
	.long L$set$44
	.set L$set$45,LEHE18-LEHB18
	.long L$set$45
	.long	0
	.byte	0
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE15:
	.text
LHOTE15:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB16:
	.text
LHOTB16:
	.align 4,0x90
	.globl __ZN10benchmarks4util13generate_intsEj
__ZN10benchmarks4util13generate_intsEj:
LFB4172:
	pushq	%r14
LCFI149:
	movl	%esi, %esi
	pxor	%xmm0, %xmm0
	pushq	%r13
LCFI150:
	pushq	%r12
LCFI151:
	pushq	%rbp
LCFI152:
	xorl	%ebp, %ebp
	pushq	%rbx
LCFI153:
	movq	%rdi, %rbx
	subq	$5024, %rsp
LCFI154:
	testq	%rsi, %rsi
	movups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	je	L321
	leaq	0(,%rsi,4), %r12
	movq	%r12, %rdi
LEHB19:
	call	__Znwm
LEHE19:
	movq	%r12, %rdx
	xorl	%esi, %esi
	leaq	(%rax,%r12), %rbp
	movq	%rax, (%rbx)
	movq	%rax, %rdi
	movq	%rbp, 16(%rbx)
	call	_memset
L321:
	movq	%rsp, %r14
	movq	%rbp, 8(%rbx)
	movl	$2147483647, %edx
	movl	$-2147483648, %esi
	movq	%r14, %rdi
LEHB20:
	call	__ZN10benchmarks4util13int_generatorEii
LEHE20:
	movq	8(%rbx), %r12
	leaq	2512(%rsp), %rbp
	movl	$2512, %edx
	movq	%r14, %rsi
	movq	(%rbx), %r13
	movq	%rbp, %rdi
	call	_memcpy
	cmpq	%r12, %r13
	je	L302
	movdqa	lC8(%rip), %xmm5
	movdqa	lC7(%rip), %xmm4
	movdqa	lC9(%rip), %xmm3
	.align 4,0x90
L317:
	movl	2512(%rsp), %edi
	movl	2516(%rsp), %ecx
	subl	%edi, %ecx
	cmpl	$-1, %ecx
	je	L305
	addl	$1, %ecx
	movl	$-1, %eax
	xorl	%edx, %edx
	movq	5016(%rsp), %rsi
	divl	%ecx
	movdqa	lC10(%rip), %xmm2
	pxor	%xmm1, %xmm1
	leaq	904(%rbp), %r10
	leaq	2500(%rbp), %r9
	movl	%eax, %r8d
	imull	%eax, %ecx
	jmp	L315
	.align 4,0x90
L341:
	movl	2520(%rsp,%rsi,4), %edx
	addq	$1, %rsi
	.align 4,0x90
L307:
	movl	%edx, %eax
	shrl	$11, %eax
	xorl	%edx, %eax
	movl	%eax, %edx
	sall	$7, %edx
	andl	$-1658038656, %edx
	xorl	%edx, %eax
	movl	%eax, %edx
	sall	$15, %edx
	andl	$-272236544, %edx
	xorl	%edx, %eax
	movl	%eax, %edx
	shrl	$18, %edx
	xorl	%edx, %eax
	cmpl	%eax, %ecx
	ja	L340
L315:
	cmpq	$623, %rsi
	jbe	L341
	leaq	8(%rbp), %rax
	.align 4,0x90
L308:
	movdqu	(%rax), %xmm0
	addq	$16, %rax
	movdqu	-12(%rax), %xmm6
	movdqu	1572(%rax), %xmm7
	pand	%xmm5, %xmm0
	pand	%xmm4, %xmm6
	por	%xmm6, %xmm0
	movdqa	%xmm0, %xmm6
	pand	%xmm3, %xmm0
	pcmpeqd	%xmm1, %xmm0
	psrld	$1, %xmm6
	pxor	%xmm7, %xmm6
	movdqa	%xmm6, %xmm7
	pxor	%xmm2, %xmm7
	pand	%xmm0, %xmm6
	pandn	%xmm7, %xmm0
	por	%xmm6, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rax, %r10
	jne	L308
	movl	3420(%rsp), %eax
	movl	3416(%rsp), %esi
	movl	%eax, %edx
	andl	$2147483647, %edx
	andl	$-2147483648, %esi
	orl	%edx, %esi
	movl	%esi, %edx
	shrl	%edx
	xorl	5004(%rsp), %edx
	movl	%edx, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %esi
	cmovne	%r11d, %edx
	movl	3424(%rsp), %r11d
	andl	$-2147483648, %eax
	movl	%edx, 3416(%rsp)
	movl	%r11d, %edx
	andl	$2147483647, %edx
	orl	%edx, %eax
	movl	%eax, %esi
	shrl	%esi
	xorl	5008(%rsp), %esi
	movl	%esi, %edx
	xorl	$-1727483681, %edx
	testb	$1, %al
	cmovne	%edx, %esi
	movl	3428(%rsp), %edx
	andl	$-2147483648, %r11d
	movl	%esi, 3420(%rsp)
	andl	$2147483647, %edx
	orl	%r11d, %edx
	movl	%edx, %eax
	shrl	%eax
	xorl	5012(%rsp), %eax
	movl	%eax, %esi
	xorl	$-1727483681, %esi
	andl	$1, %edx
	cmovne	%esi, %eax
	leaq	916(%rbp), %rsi
	movl	%eax, 3424(%rsp)
	.align 4,0x90
L312:
	movdqu	4(%rsi), %xmm0
	addq	$16, %rsi
	movdqu	-16(%rsi), %xmm6
	movdqu	-924(%rsi), %xmm7
	pand	%xmm4, %xmm0
	pand	%xmm5, %xmm6
	por	%xmm6, %xmm0
	movdqa	%xmm0, %xmm6
	pand	%xmm3, %xmm0
	pcmpeqd	%xmm1, %xmm0
	psrld	$1, %xmm6
	pxor	%xmm7, %xmm6
	movdqa	%xmm6, %xmm7
	pxor	%xmm2, %xmm7
	pand	%xmm0, %xmm6
	pandn	%xmm7, %xmm0
	por	%xmm6, %xmm0
	movups	%xmm0, -16(%rsi)
	cmpq	%r9, %rsi
	jne	L312
	movl	2520(%rsp), %edx
	movl	5012(%rsp), %r11d
	movl	%edx, %eax
	andl	$2147483647, %eax
	andl	$-2147483648, %r11d
	orl	%eax, %r11d
	movl	%r11d, %esi
	shrl	%esi
	xorl	4104(%rsp), %esi
	movl	%esi, %eax
	xorl	$-1727483681, %eax
	andl	$1, %r11d
	cmovne	%eax, %esi
	movl	%esi, 5012(%rsp)
	movl	$1, %esi
	jmp	L307
	.align 4,0x90
L340:
	xorl	%edx, %edx
	movq	%rsi, 5016(%rsp)
	divl	%r8d
L316:
	addl	%edi, %eax
	addq	$4, %r13
	movl	%eax, -4(%r13)
	cmpq	%r13, %r12
	jne	L317
L302:
	addq	$5024, %rsp
LCFI155:
	movq	%rbx, %rax
	popq	%rbx
LCFI156:
	popq	%rbp
LCFI157:
	popq	%r12
LCFI158:
	popq	%r13
LCFI159:
	popq	%r14
LCFI160:
	ret
	.align 4,0x90
L305:
LCFI161:
	leaq	8(%rbp), %rdi
	call	__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	movl	2512(%rsp), %edi
	movdqa	lC9(%rip), %xmm3
	movdqa	lC7(%rip), %xmm4
	movdqa	lC8(%rip), %xmm5
	jmp	L316
L322:
	movq	%rax, %rbp
	jmp	L319
	.section __DATA,__gcc_except_tab
GCC_except_table10:
LLSDA4172:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x1a
	.set L$set$46,LEHB19-LFB4172
	.long L$set$46
	.set L$set$47,LEHE19-LEHB19
	.long L$set$47
	.long	0
	.byte	0
	.set L$set$48,LEHB20-LFB4172
	.long L$set$48
	.set L$set$49,LEHE20-LEHB20
	.long L$set$49
	.set L$set$50,L322-LFB4172
	.long L$set$50
	.byte	0
	.text
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___ZN10benchmarks4util13generate_intsEj:
__ZN10benchmarks4util13generate_intsEj.cold.176:
L319:
LCFI162:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	L320
	call	__ZdlPv
L320:
	movq	%rbp, %rdi
LEHB21:
	call	__Unwind_Resume
LEHE21:
LFE4172:
	.section __DATA,__gcc_except_tab
GCC_except_table11:
LLSDAC4172:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xd
	.set L$set$51,LEHB21-LCOLDB16
	.long L$set$51
	.set L$set$52,LEHE21-LEHB21
	.long L$set$52
	.long	0
	.byte	0
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE16:
	.text
LHOTE16:
	.section __TEXT,__text_cold,regular,pure_instructions
	.cstring
lC17:
	.ascii "stoi\0"
lC18:
	.ascii "vector::reserve\0"
lC19:
	.ascii "do_not_optimize_away.txt\0"
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB20:
	.section __TEXT,__text_startup,regular,pure_instructions
LHOTB20:
	.align 4
	.globl _main
_main:
LFB4182:
	pushq	%r15
LCFI163:
	pushq	%r14
LCFI164:
	pushq	%r13
LCFI165:
	pushq	%r12
LCFI166:
	pushq	%rbp
LCFI167:
	movq	%rsi, %rbp
	pushq	%rbx
LCFI168:
	subq	$3752, %rsp
LCFI169:
	movq	8(%rsi), %rsi
	leaq	1232(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, %r15
	movq	%rax, 16(%rsp)
LEHB22:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_.isra.91
LEHE22:
	movq	_strtol@GOTPCREL(%rip), %rbx
	movl	$10, %r8d
	xorl	%ecx, %ecx
	movq	1232(%rsp), %rdx
	leaq	lC17(%rip), %rsi
	movq	%rbx, %rdi
LEHB23:
	call	__ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
LEHE23:
	movq	1232(%rsp), %rdi
	movl	%eax, 24(%rsp)
	movq	%r15, %rax
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L343
	call	__ZdlPv
L343:
	movq	16(%rsp), %r15
	movq	16(%rbp), %rsi
	movq	%r15, %rdi
LEHB24:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_.isra.91
LEHE24:
	movl	$10, %r8d
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	1232(%rsp), %rdx
	leaq	lC17(%rip), %rsi
LEHB25:
	call	__ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
LEHE25:
	movq	1232(%rsp), %rdi
	movl	%eax, 28(%rsp)
	leaq	16(%r15), %rax
	cmpq	%rax, %rdi
	je	L344
	call	__ZdlPv
L344:
	movslq	24(%rsp), %rax
	pxor	%xmm0, %xmm0
	movabsq	$2305843009213693951, %rdx
	movaps	%xmm0, 176(%rsp)
	movq	$0, 192(%rsp)
	cmpq	%rdx, %rax
	ja	L471
	testq	%rax, %rax
	jne	L472
L346:
	movl	28(%rsp), %eax
	xorl	%esi, %esi
	movq	16(%rsp), %rdi
	leal	-1(%rax), %edx
LEHB26:
	call	__ZN10benchmarks4util13int_generatorEii
	movl	24(%rsp), %ecx
	testl	%ecx, %ecx
	jle	L386
	movslq	28(%rsp), %rbp
	movl	$0, 8(%rsp)
	leaq	0(%rbp,%rbp,2), %rax
	movq	%rbp, %rbx
	leaq	0(,%rax,8), %r15
	andq	$-4, %rbx
	leaq	-12(%r15), %rax
	movq	%rbx, 56(%rsp)
	movq	%rax, 48(%rsp)
	leaq	0(,%rbp,4), %rax
	movq	%rax, 40(%rsp)
	leaq	0(,%rbp,8), %rax
	movq	%rax, 32(%rsp)
	movq	%rbp, %rax
	leaq	0(,%rbx,4), %rdi
	shrq	$2, %rax
	salq	$4, %rax
	movq	%rdi, 72(%rsp)
	movq	%rax, 64(%rsp)
	leaq	(%rbx,%rbx,2), %rax
	leaq	0(,%rbx,8), %rcx
	leaq	0(,%rax,8), %rsi
	movq	%rbx, %rax
	movq	%rcx, 80(%rsp)
	leaq	1(%rbx), %rbx
	addq	$2, %rax
	movq	%rsi, 96(%rsp)
	movq	%rbx, 88(%rsp)
	movq	%rdi, %rbx
	leaq	4(%rdi), %rdi
	movq	%rax, 104(%rsp)
	movq	%rdi, 128(%rsp)
	leaq	8(%rbx), %rax
	movq	%rcx, %rdi
	leaq	8(%rcx), %rcx
	movq	%rax, 152(%rsp)
	movq	%rcx, 120(%rsp)
	leaq	16(%rdi), %rax
	movq	%rsi, %rcx
	movq	%rax, 144(%rsp)
	leaq	336(%rsp), %rbx
	leaq	48(%rcx), %rax
	leaq	24(%rsi), %rsi
	movq	%rax, 136(%rsp)
	leaq	632(%rbx), %rax
	movq	%rsi, 112(%rsp)
	movq	%rax, (%rsp)
	.align 4
L351:
	testq	%rbp, %rbp
	pxor	%xmm0, %xmm0
	movq	$0, 224(%rsp)
	movaps	%xmm0, 208(%rsp)
	je	L352
	movabsq	$768614336404564650, %rax
	cmpq	%rax, %rbp
	ja	L473
	movq	%r15, %rdi
	call	__Znwm
LEHE26:
	movq	__ZTV16non_trivial_type@GOTPCREL(%rip), %r12
	leaq	(%rax,%r15), %rsi
	movq	%rax, %xmm0
	movq	%rbp, %rdx
	punpcklqdq	%xmm0, %xmm0
	movq	%rsi, 224(%rsp)
	movaps	%xmm0, 208(%rsp)
	leaq	16(%r12), %rcx
	.align 4
L355:
	movl	$0, 8(%rax)
	addq	$24, %rax
	movq	$0x000000000, -8(%rax)
	movq	%rcx, -24(%rax)
	subq	$1, %rdx
	jne	L355
	movq	%r15, %rdi
	pxor	%xmm0, %xmm0
	movq	%rsi, 216(%rsp)
	movaps	%xmm0, 240(%rsp)
	movq	$0, 256(%rsp)
LEHB27:
	call	__Znwm
LEHE27:
	leaq	(%rax,%r15), %rsi
	movq	%rax, %xmm0
	movq	%rbp, %rdx
	punpcklqdq	%xmm0, %xmm0
	movq	%rsi, 256(%rsp)
	leaq	16(%r12), %rcx
	movaps	%xmm0, 240(%rsp)
	.align 4
L356:
	movl	$0, 8(%rax)
	addq	$24, %rax
	movq	$0x000000000, -8(%rax)
	movq	%rcx, -24(%rax)
	subq	$1, %rdx
	jne	L356
L409:
	movl	28(%rsp), %r14d
	movq	%rsi, 248(%rsp)
	leaq	272(%rsp), %rdi
	movl	%r14d, %esi
LEHB28:
	call	__ZN10benchmarks4util13generate_intsEj
LEHE28:
	leaq	304(%rsp), %rdi
	movl	%r14d, %esi
LEHB29:
	call	__ZN10benchmarks4util16generate_doublesEj
LEHE29:
	testq	%rbp, %rbp
	je	L363
	movq	208(%rsp), %rdi
	movq	304(%rsp), %rcx
	movq	32(%rsp), %r10
	movq	272(%rsp), %rsi
	leaq	16(%rdi), %rax
	leaq	(%rdi,%r15), %r9
	leaq	(%rcx,%r10), %r8
	leaq	8(%rdi), %rdx
	cmpq	%r8, %rax
	setnb	%r8b
	cmpq	%r9, %rcx
	setnb	%r9b
	orl	%r9d, %r8d
	leaq	-1(%rbp), %r9
	cmpq	$14, %r9
	seta	%r9b
	testb	%r9b, %r8b
	je	L360
	movq	40(%rsp), %r11
	leaq	(%rsi,%r11), %r8
	movq	48(%rsp), %r11
	cmpq	%r8, %rdx
	setnb	%r9b
	leaq	(%rdi,%r11), %r8
	cmpq	%r8, %rsi
	setnb	%r8b
	orb	%r8b, %r9b
	je	L360
	movq	64(%rsp), %r8
	xorl	%edx, %edx
	.align 4
L362:
	movdqu	(%rsi,%rdx), %xmm0
	addq	$96, %rax
	movq	(%rcx,%rdx,2), %xmm2
	movq	16(%rcx,%rdx,2), %xmm1
	pshufd	$85, %xmm0, %xmm3
	movhpd	8(%rcx,%rdx,2), %xmm2
	movhpd	24(%rcx,%rdx,2), %xmm1
	movd	%xmm3, -80(%rax)
	addq	$16, %rdx
	movdqa	%xmm0, %xmm3
	movd	%xmm0, -104(%rax)
	punpckhdq	%xmm0, %xmm3
	pshufd	$255, %xmm0, %xmm0
	movd	%xmm3, -56(%rax)
	movd	%xmm0, -32(%rax)
	movlpd	%xmm2, -96(%rax)
	movhpd	%xmm2, -72(%rax)
	movlpd	%xmm1, -48(%rax)
	movhpd	%xmm1, -24(%rax)
	cmpq	%r8, %rdx
	jne	L362
	cmpq	56(%rsp), %rbp
	je	L363
	movq	72(%rsp), %rax
	movl	(%rsi,%rax), %edx
	movq	80(%rsp), %rax
	movsd	(%rcx,%rax), %xmm0
	movq	96(%rsp), %rax
	addq	%rdi, %rax
	cmpq	88(%rsp), %rbp
	movl	%edx, 8(%rax)
	movsd	%xmm0, 16(%rax)
	jbe	L363
	movq	128(%rsp), %rax
	movl	(%rsi,%rax), %edx
	movq	120(%rsp), %rax
	movsd	(%rcx,%rax), %xmm0
	movq	112(%rsp), %rax
	addq	%rdi, %rax
	cmpq	104(%rsp), %rbp
	movl	%edx, 8(%rax)
	movsd	%xmm0, 16(%rax)
	jbe	L363
	movq	152(%rsp), %rax
	addq	136(%rsp), %rdi
	movl	(%rsi,%rax), %eax
	movq	144(%rsp), %rsi
	movsd	(%rcx,%rsi), %xmm0
	movl	%eax, 8(%rdi)
	movsd	%xmm0, 16(%rdi)
L363:
	call	__ZNSt6chrono3_V212system_clock3nowEv
	movq	216(%rsp), %rsi
	movabsq	$-6148914691236517205, %rdi
	movq	%rax, %r12
	movq	208(%rsp), %rax
	movq	240(%rsp), %rdx
	subq	%rax, %rsi
	movq	%rsi, %rcx
	sarq	$3, %rcx
	imulq	%rdi, %rcx
	testq	%rsi, %rsi
	jle	L358
	.align 4
L359:
	movl	8(%rax), %esi
	addq	$24, %rdx
	addq	$24, %rax
	movsd	-8(%rax), %xmm0
	movsd	%xmm0, -8(%rdx)
	movl	%esi, -16(%rdx)
	subq	$1, %rcx
	jne	L359
L358:
	movq	16(%rsp), %rsi
	leaq	8(%rsi), %rdi
	call	__ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEiRT_RKNS0_10param_typeE.isra.69
	movq	240(%rsp), %rdx
	cltq
	leaq	(%rax,%rax,2), %rax
	leaq	(%rdx,%rax,8), %rax
	movl	8(%rax), %eax
	movl	%eax, 12(%rsp)
	call	__ZNSt6chrono3_V212system_clock3nowEv
	movq	184(%rsp), %rsi
	movabsq	$4835703278458516699, %rdx
	subq	%r12, %rax
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	sarq	$18, %rdx
	subq	%rcx, %rdx
	cmpq	192(%rsp), %rsi
	movq	%rdx, 168(%rsp)
	je	L474
	movq	%rdx, (%rsi)
	addq	$8, %rsi
	movq	%rsi, 184(%rsp)
L369:
	movq	(%rsp), %rdi
	call	__ZNSt8ios_baseC2Ev
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	pxor	%xmm0, %xmm0
	xorl	%esi, %esi
	movaps	%xmm0, 1200(%rsp)
	movaps	%xmm0, 1216(%rsp)
	movq	$0, 1184(%rsp)
	addq	$16, %rax
	movq	%rax, 968(%rsp)
	xorl	%eax, %eax
	movw	%ax, 1192(%rsp)
	movq	__ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	movq	8(%rax), %r12
	movq	16(%rax), %r14
	movq	-24(%r12), %rdi
	movq	%r12, 336(%rsp)
	addq	%rbx, %rdi
	movq	%r14, (%rdi)
LEHB30:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE30:
	movq	__ZTVSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %r13
	leaq	8(%rbx), %rdi
	leaq	24(%r13), %rax
	movq	%rax, 336(%rsp)
	leaq	64(%r13), %rax
	movq	%rax, 968(%rsp)
LEHB31:
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
LEHE31:
	movq	(%rsp), %rdi
	leaq	8(%rbx), %rsi
LEHB32:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
	leaq	8(%rbx), %rdi
	movl	$16, %edx
	leaq	lC19(%rip), %rsi
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	movq	336(%rsp), %rdx
	movq	-24(%rdx), %rdi
	addq	%rbx, %rdi
	testq	%rax, %rax
	je	L475
	xorl	%esi, %esi
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
LEHE32:
L371:
	movl	12(%rsp), %esi
	movq	%rbx, %rdi
LEHB33:
	call	__ZNSolsEi
LEHE33:
	leaq	64(%r13), %rax
	movq	%rax, 968(%rsp)
	leaq	24(%r13), %rax
	leaq	8(%rbx), %rdi
	movq	%rax, %xmm0
	movq	__ZTVSt13basic_filebufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, %xmm4
	punpcklqdq	%xmm4, %xmm0
	movaps	%xmm0, 336(%rsp)
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	leaq	136(%rbx), %rdi
	call	__ZNSt12__basic_fileIcED1Ev
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	64(%rbx), %rdi
	addq	$16, %rax
	movq	%rax, 344(%rsp)
	call	__ZNSt6localeD1Ev
	movq	-24(%r12), %rax
	movq	%r12, 336(%rsp)
	movq	(%rsp), %rdi
	movq	%r14, 336(%rsp,%rax)
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, 968(%rsp)
	call	__ZNSt8ios_baseD2Ev
	movq	304(%rsp), %rdi
	testq	%rdi, %rdi
	je	L376
	call	__ZdlPv
L376:
	movq	272(%rsp), %rdi
	testq	%rdi, %rdi
	je	L377
	call	__ZdlPv
L377:
	movq	248(%rsp), %r14
	movq	240(%rsp), %r12
	cmpq	%r12, %r14
	je	L378
	movq	__ZN16non_trivial_typeD1Ev@GOTPCREL(%rip), %r13
	jmp	L380
	.align 4
L379:
	addq	$24, %r12
	cmpq	%r12, %r14
	je	L476
L380:
	movq	(%r12), %rax
	movq	(%rax), %rax
	cmpq	%r13, %rax
	je	L379
	movq	%r12, %rdi
	addq	$24, %r12
	call	*%rax
	cmpq	%r12, %r14
	jne	L380
L476:
	movq	240(%rsp), %r12
L378:
	testq	%r12, %r12
	je	L381
	movq	%r12, %rdi
	call	__ZdlPv
L381:
	movq	216(%rsp), %r14
	movq	208(%rsp), %r12
	cmpq	%r12, %r14
	je	L382
	movq	__ZN16non_trivial_typeD1Ev@GOTPCREL(%rip), %r13
	jmp	L384
	.align 4
L383:
	addq	$24, %r12
	cmpq	%r12, %r14
	je	L477
L384:
	movq	(%r12), %rax
	movq	(%rax), %rax
	cmpq	%r13, %rax
	je	L383
	movq	%r12, %rdi
	addq	$24, %r12
	call	*%rax
	cmpq	%r12, %r14
	jne	L384
L477:
	movq	208(%rsp), %r12
L382:
	testq	%r12, %r12
	je	L385
	movq	%r12, %rdi
	call	__ZdlPv
	addl	$1, 8(%rsp)
	movl	8(%rsp), %eax
	cmpl	%eax, 24(%rsp)
	jne	L351
L386:
	movq	184(%rsp), %rbp
	movq	176(%rsp), %r12
	cmpq	%rbp, %r12
	je	L350
	movq	%rbp, %rbx
	movl	$63, %edx
	movq	%rbp, %rsi
	subq	%r12, %rbx
	movq	%r12, %rdi
	movq	%rbx, %rax
	sarq	$3, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	cltq
	subq	%rax, %rdx
	addq	%rdx, %rdx
	call	__ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_.isra.161
	addq	$-128, %rbx
	jle	L388
	leaq	128(%r12), %rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	call	__ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_.constprop.168
	cmpq	%rbx, %rbp
	movq	%rbx, %rsi
	je	L469
	movq	(%rsi), %rcx
	leaq	-8(%rsi), %rax
	cmpq	-8(%rsi), %rcx
	jl	L392
	jmp	L478
	.align 4
L411:
	movq	%rdx, %rax
L392:
	movq	(%rax), %rdx
	cmpq	-8(%rax), %rcx
	movq	%rdx, 8(%rax)
	leaq	-8(%rax), %rdx
	jl	L411
L391:
	addq	$8, %rsi
	movq	%rcx, (%rax)
	cmpq	%rsi, %rbp
	je	L469
	movq	(%rsi), %rcx
	leaq	-8(%rsi), %rax
	cmpq	-8(%rsi), %rcx
	jl	L392
L478:
	movq	%rsi, %rax
	jmp	L391
	.align 4
L385:
	addl	$1, 8(%rsp)
	movl	8(%rsp), %eax
	cmpl	24(%rsp), %eax
	jne	L351
	jmp	L386
	.align 4
L475:
	movl	32(%rdi), %esi
	orl	$4, %esi
LEHB34:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
LEHE34:
	jmp	L371
	.align 4
L360:
	movq	%rdx, %rax
	xorl	%edx, %edx
	.align 4
L366:
	movl	(%rsi,%rdx,4), %edi
	addq	$24, %rax
	movsd	(%rcx,%rdx,8), %xmm0
	addq	$1, %rdx
	movsd	%xmm0, -16(%rax)
	movl	%edi, -24(%rax)
	cmpq	%rdx, %rbp
	jne	L366
	jmp	L363
	.align 4
L474:
	leaq	168(%rsp), %rdx
	leaq	176(%rsp), %rdi
LEHB35:
	call	__ZNSt6vectorINSt6chrono8durationIxSt5ratioILl1ELl1000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_
LEHE35:
	jmp	L369
L388:
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	__ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_.constprop.168
L469:
	movq	184(%rsp), %rbp
	movq	176(%rsp), %r12
L350:
	subq	%r12, %rbp
	movq	__ZSt4cout@GOTPCREL(%rip), %rdi
	sarq	$3, %rbp
	shrq	%rbp
	movq	(%r12,%rbp,8), %rsi
LEHB36:
	call	__ZNSo9_M_insertIxEERSoT_
	leaq	336(%rsp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	movb	$32, 336(%rsp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	L435
	call	__ZdlPv
L435:
	addq	$3752, %rsp
LCFI170:
	xorl	%eax, %eax
	popq	%rbx
LCFI171:
	popq	%rbp
LCFI172:
	popq	%r12
LCFI173:
	popq	%r13
LCFI174:
	popq	%r14
LCFI175:
	popq	%r15
LCFI176:
	ret
	.align 4
L352:
LCFI177:
	movq	%r15, 224(%rsp)
	xorl	%esi, %esi
	movq	$0, 216(%rsp)
	movq	$0, 240(%rsp)
	movq	%r15, 256(%rsp)
	jmp	L409
L472:
	leaq	0(,%rax,8), %rbx
	movq	%rbx, %rdi
	call	__Znwm
	movq	176(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	je	L347
	call	__ZdlPv
L347:
	leaq	0(%rbp,%rbx), %rax
	movq	%rbp, %xmm0
	punpcklqdq	%xmm0, %xmm0
	movq	%rax, 192(%rsp)
	movaps	%xmm0, 176(%rsp)
	jmp	L346
L471:
	leaq	lC18(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
L473:
	call	__ZSt17__throw_bad_allocv
LEHE36:
L421:
	movq	%rax, %rbp
	jmp	L372
L413:
	movq	%rax, %rbx
	jmp	L398
L412:
	movq	%rax, %rbx
	jmp	L396
L418:
	movq	%rax, %rbp
	jmp	L375
L420:
	movq	%rax, %rbp
	jmp	L373
L416:
	movq	%rax, %rbx
	jmp	L404
L414:
	movq	%rax, %rbx
	jmp	L406
L415:
	movq	%rax, %rbx
	jmp	L405
L419:
	movq	%rax, %rbp
	jmp	L400
L422:
	movq	%rax, %rbp
	jmp	L374
L417:
	movq	%rax, %rbx
	jmp	L402
	.section __DATA,__gcc_except_tab
GCC_except_table12:
LLSDA4182:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xc3,0x1
	.set L$set$53,LEHB22-LFB4182
	.long L$set$53
	.set L$set$54,LEHE22-LEHB22
	.long L$set$54
	.long	0
	.byte	0
	.set L$set$55,LEHB23-LFB4182
	.long L$set$55
	.set L$set$56,LEHE23-LEHB23
	.long L$set$56
	.set L$set$57,L412-LFB4182
	.long L$set$57
	.byte	0
	.set L$set$58,LEHB24-LFB4182
	.long L$set$58
	.set L$set$59,LEHE24-LEHB24
	.long L$set$59
	.long	0
	.byte	0
	.set L$set$60,LEHB25-LFB4182
	.long L$set$60
	.set L$set$61,LEHE25-LEHB25
	.long L$set$61
	.set L$set$62,L413-LFB4182
	.long L$set$62
	.byte	0
	.set L$set$63,LEHB26-LFB4182
	.long L$set$63
	.set L$set$64,LEHE26-LEHB26
	.long L$set$64
	.set L$set$65,L414-LFB4182
	.long L$set$65
	.byte	0
	.set L$set$66,LEHB27-LFB4182
	.long L$set$66
	.set L$set$67,LEHE27-LEHB27
	.long L$set$67
	.set L$set$68,L415-LFB4182
	.long L$set$68
	.byte	0
	.set L$set$69,LEHB28-LFB4182
	.long L$set$69
	.set L$set$70,LEHE28-LEHB28
	.long L$set$70
	.set L$set$71,L416-LFB4182
	.long L$set$71
	.byte	0
	.set L$set$72,LEHB29-LFB4182
	.long L$set$72
	.set L$set$73,LEHE29-LEHB29
	.long L$set$73
	.set L$set$74,L417-LFB4182
	.long L$set$74
	.byte	0
	.set L$set$75,LEHB30-LFB4182
	.long L$set$75
	.set L$set$76,LEHE30-LEHB30
	.long L$set$76
	.set L$set$77,L422-LFB4182
	.long L$set$77
	.byte	0
	.set L$set$78,LEHB31-LFB4182
	.long L$set$78
	.set L$set$79,LEHE31-LEHB31
	.long L$set$79
	.set L$set$80,L420-LFB4182
	.long L$set$80
	.byte	0
	.set L$set$81,LEHB32-LFB4182
	.long L$set$81
	.set L$set$82,LEHE32-LEHB32
	.long L$set$82
	.set L$set$83,L421-LFB4182
	.long L$set$83
	.byte	0
	.set L$set$84,LEHB33-LFB4182
	.long L$set$84
	.set L$set$85,LEHE33-LEHB33
	.long L$set$85
	.set L$set$86,L419-LFB4182
	.long L$set$86
	.byte	0
	.set L$set$87,LEHB34-LFB4182
	.long L$set$87
	.set L$set$88,LEHE34-LEHB34
	.long L$set$88
	.set L$set$89,L421-LFB4182
	.long L$set$89
	.byte	0
	.set L$set$90,LEHB35-LFB4182
	.long L$set$90
	.set L$set$91,LEHE35-LEHB35
	.long L$set$91
	.set L$set$92,L418-LFB4182
	.long L$set$92
	.byte	0
	.set L$set$93,LEHB36-LFB4182
	.long L$set$93
	.set L$set$94,LEHE36-LEHB36
	.long L$set$94
	.set L$set$95,L414-LFB4182
	.long L$set$95
	.byte	0
	.section __TEXT,__text_startup,regular,pure_instructions
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of__main:
_main.cold.177:
L372:
LCFI178:
	leaq	8(%rbx), %rdi
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
L373:
	movq	-24(%r12), %rax
	movq	%r12, 336(%rsp)
	movq	%r14, 336(%rsp,%rax)
L374:
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	632(%rbx), %rdi
	addq	$16, %rax
	movq	%rax, 968(%rsp)
	call	__ZNSt8ios_baseD2Ev
L375:
	movq	304(%rsp), %rdi
	testq	%rdi, %rdi
	je	L401
	call	__ZdlPv
L401:
	movq	%rbp, %rbx
L402:
	movq	272(%rsp), %rdi
	testq	%rdi, %rdi
	je	L404
	call	__ZdlPv
L404:
	leaq	240(%rsp), %rdi
	call	__ZNSt6vectorI16non_trivial_typeSaIS0_EED1Ev
L405:
	leaq	208(%rsp), %rdi
	call	__ZNSt6vectorI16non_trivial_typeSaIS0_EED1Ev
L406:
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	L407
	call	__ZdlPv
L407:
	movq	%rbx, %rdi
LEHB37:
	call	__Unwind_Resume
L398:
	movq	16(%rsp), %rax
	movq	1232(%rsp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L399
	call	__ZdlPv
L399:
	movq	%rbx, %rdi
	call	__Unwind_Resume
L396:
	movq	16(%rsp), %rax
	movq	1232(%rsp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L397
	call	__ZdlPv
L397:
	movq	%rbx, %rdi
	call	__Unwind_Resume
LEHE37:
L400:
	movq	%rbx, %rdi
	call	__ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	jmp	L375
LFE4182:
	.section __DATA,__gcc_except_tab
GCC_except_table13:
LLSDAC4182:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xd
	.set L$set$96,LEHB37-LCOLDB20
	.long L$set$96
	.set L$set$97,LEHE37-LEHB37
	.long L$set$97
	.long	0
	.byte	0
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE20:
	.section __TEXT,__text_startup,regular,pure_instructions
LHOTE20:
	.section __TEXT,__text_cold,regular,pure_instructions
	.section __TEXT,__text_startup,regular,pure_instructions
	.align 4
__GLOBAL__sub_I_use_std_copy.cpp:
LFB5294:
	leaq	__ZStL8__ioinit(%rip), %rdi
	subq	$8, %rsp
LCFI179:
	call	__ZNSt8ios_base4InitC1Ev
	movq	__ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
LCFI180:
	leaq	___dso_handle(%rip), %rdx
	leaq	__ZStL8__ioinit(%rip), %rsi
	jmp	___cxa_atexit
LFE5294:
	.globl __ZTS16non_trivial_type
	.weak_definition __ZTS16non_trivial_type
	.const
	.align 4
__ZTS16non_trivial_type:
	.ascii "16non_trivial_type\0"
	.globl __ZTI16non_trivial_type
	.weak_definition __ZTI16non_trivial_type
	.const_data
	.align 3
__ZTI16non_trivial_type:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTS16non_trivial_type
	.globl __ZTV16non_trivial_type
	.weak_definition __ZTV16non_trivial_type
	.align 3
__ZTV16non_trivial_type:
	.quad	0
	.quad	__ZTI16non_trivial_type
	.quad	__ZN16non_trivial_typeD1Ev
	.quad	__ZN16non_trivial_typeD0Ev
	.zerofill __DATA,__bss3,__ZGVZN10benchmarks4util13int_generatorEiiE2rd,8,3
	.zerofill __DATA,__bss5,__ZZN10benchmarks4util13int_generatorEiiE2rd,2504,5
	.zerofill __DATA,__bss3,__ZGVZN10benchmarks4util16double_generatorEvE2rd,8,3
	.zerofill __DATA,__bss5,__ZZN10benchmarks4util16double_generatorEvE2rd,2504,5
	.static_data
__ZStL8__ioinit:
	.space	1
	.literal8
	.align 3
lC2:
	.long	0
	.long	1048576
	.align 3
lC3:
	.long	4294967295
	.long	2146435071
	.align 3
lC6:
	.long	0
	.long	1072693248
	.literal16
	.align 4
lC7:
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.align 4
lC8:
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.align 4
lC9:
	.long	1
	.long	1
	.long	1
	.long	1
	.align 4
lC10:
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.literal4
	.align 2
lC11:
	.long	1333788672
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$98,LECIE1-LSCIE1
	.long L$set$98
LSCIE1:
	.long	0
	.byte	0x1
	.ascii "zPLR\0"
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.byte	0x7
	.byte	0x9b
	.long	___gxx_personality_v0+4@GOTPCREL
	.byte	0x10
	.byte	0x10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x90
	.byte	0x1
	.align 3
LECIE1:
LSFDE1:
	.set L$set$99,LEFDE1-LASFDE1
	.long L$set$99
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB4179-.
	.set L$set$100,LFE4179-LFB4179
	.quad L$set$100
	.byte	0x8
	.quad	0
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$101,LEFDE3-LASFDE3
	.long L$set$101
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB3101-.
	.set L$set$102,LFE3101-LFB3101
	.quad L$set$102
	.byte	0x8
	.quad	LLSDA3101-.
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$103,LEFDE5-LASFDE5
	.long L$set$103
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB4180-.
	.set L$set$104,LFE4180-LFB4180
	.quad L$set$104
	.byte	0x8
	.quad	0
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$105,LEFDE7-LASFDE7
	.long L$set$105
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB5465-.
	.set L$set$106,LFE5465-LFB5465
	.quad L$set$106
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$107,LCFI0-LFB5465
	.long L$set$107
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$108,LCFI1-LCFI0
	.long L$set$108
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$109,LCFI2-LCFI1
	.long L$set$109
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$110,LCFI3-LCFI2
	.long L$set$110
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$111,LCFI4-LCFI3
	.long L$set$111
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$112,LCFI5-LCFI4
	.long L$set$112
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$113,LCFI6-LCFI5
	.long L$set$113
	.byte	0xb
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$114,LEFDE9-LASFDE9
	.long L$set$114
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB5461-.
	.set L$set$115,LFE5461-LFB5461
	.quad L$set$115
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$116,LCFI7-LFB5461
	.long L$set$116
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$117,LCFI8-LCFI7
	.long L$set$117
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$118,LCFI9-LCFI8
	.long L$set$118
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$119,LCFI10-LCFI9
	.long L$set$119
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$120,LCFI11-LCFI10
	.long L$set$120
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$121,LCFI12-LCFI11
	.long L$set$121
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$122,LCFI13-LCFI12
	.long L$set$122
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$123,LCFI14-LCFI13
	.long L$set$123
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$124,LCFI15-LCFI14
	.long L$set$124
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$125,LCFI16-LCFI15
	.long L$set$125
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$126,LCFI17-LCFI16
	.long L$set$126
	.byte	0xb
	.byte	0x4
	.set L$set$127,LCFI18-LCFI17
	.long L$set$127
	.byte	0xe
	.byte	0x8
	.byte	0xc3
	.byte	0xc6
	.byte	0xcc
	.byte	0xcd
	.byte	0xce
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$128,LEFDE11-LASFDE11
	.long L$set$128
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB5386-.
	.set L$set$129,LFE5386-LFB5386
	.quad L$set$129
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$130,LCFI19-LFB5386
	.long L$set$130
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$131,LCFI20-LCFI19
	.long L$set$131
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$132,LCFI21-LCFI20
	.long L$set$132
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$133,LCFI22-LCFI21
	.long L$set$133
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$134,LCFI23-LCFI22
	.long L$set$134
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$135,LCFI24-LCFI23
	.long L$set$135
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$136,LCFI25-LCFI24
	.long L$set$136
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$137,LCFI26-LCFI25
	.long L$set$137
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$138,LCFI27-LCFI26
	.long L$set$138
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$139,LCFI28-LCFI27
	.long L$set$139
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$140,LCFI29-LCFI28
	.long L$set$140
	.byte	0xb
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$141,LEFDE13-LASFDE13
	.long L$set$141
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB5460-.
	.set L$set$142,LFE5460-LFB5460
	.quad L$set$142
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$143,LCFI30-LFB5460
	.long L$set$143
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$144,LCFI31-LCFI30
	.long L$set$144
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$145,LCFI32-LCFI31
	.long L$set$145
	.byte	0x8c
	.byte	0x3
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$146,LCFI33-LCFI32
	.long L$set$146
	.byte	0xa
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$147,LCFI34-LCFI33
	.long L$set$147
	.byte	0xb
	.align 3
LEFDE13:
LSFDE15:
	.set L$set$148,LEFDE15-LASFDE15
	.long L$set$148
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB5456-.
	.set L$set$149,LFE5456-LFB5456
	.quad L$set$149
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$150,LCFI35-LFB5456
	.long L$set$150
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$151,LCFI36-LCFI35
	.long L$set$151
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$152,LCFI37-LCFI36
	.long L$set$152
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$153,LCFI38-LCFI37
	.long L$set$153
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$154,LCFI39-LCFI38
	.long L$set$154
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$155,LCFI40-LCFI39
	.long L$set$155
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$156,LCFI41-LCFI40
	.long L$set$156
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$157,LCFI42-LCFI41
	.long L$set$157
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$158,LCFI43-LCFI42
	.long L$set$158
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$159,LCFI44-LCFI43
	.long L$set$159
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$160,LCFI45-LCFI44
	.long L$set$160
	.byte	0xb
	.align 3
LEFDE15:
LSFDE17:
	.set L$set$161,LEFDE17-LASFDE17
	.long L$set$161
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB4167-.
	.set L$set$162,LHOTE4-LFB4167
	.quad L$set$162
	.byte	0x8
	.quad	LLSDA4167-.
	.byte	0x4
	.set L$set$163,LCFI46-LFB4167
	.long L$set$163
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$164,LCFI47-LCFI46
	.long L$set$164
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$165,LCFI48-LCFI47
	.long L$set$165
	.byte	0xe
	.byte	0xf0,0x13
	.byte	0x4
	.set L$set$166,LCFI49-LCFI48
	.long L$set$166
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$167,LCFI50-LCFI49
	.long L$set$167
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$168,LCFI51-LCFI50
	.long L$set$168
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$169,LCFI52-LCFI51
	.long L$set$169
	.byte	0xb
	.align 3
LEFDE17:
LSFDE19:
	.set L$set$170,LEFDE19-LASFDE19
	.long L$set$170
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LCOLDB4-.
	.set L$set$171,LCOLDE4-LCOLDB4
	.quad L$set$171
	.byte	0x8
	.quad	LLSDAC4167-.
	.byte	0x4
	.set L$set$172,LCFI53-LCOLDB4
	.long L$set$172
	.byte	0xe
	.byte	0xf0,0x13
	.byte	0x83
	.byte	0x3
	.byte	0x86
	.byte	0x2
	.align 3
LEFDE19:
LSFDE21:
	.set L$set$173,LEFDE21-LASFDE21
	.long L$set$173
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB4169-.
	.set L$set$174,LHOTE13-LFB4169
	.quad L$set$174
	.byte	0x8
	.quad	LLSDA4169-.
	.byte	0x4
	.set L$set$175,LCFI54-LFB4169
	.long L$set$175
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$176,LCFI55-LCFI54
	.long L$set$176
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$177,LCFI56-LCFI55
	.long L$set$177
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$178,LCFI57-LCFI56
	.long L$set$178
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$179,LCFI58-LCFI57
	.long L$set$179
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$180,LCFI59-LCFI58
	.long L$set$180
	.byte	0xe
	.byte	0x90,0x28
	.byte	0x4
	.set L$set$181,LCFI60-LCFI59
	.long L$set$181
	.byte	0xa
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$182,LCFI61-LCFI60
	.long L$set$182
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$183,LCFI62-LCFI61
	.long L$set$183
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$184,LCFI63-LCFI62
	.long L$set$184
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$185,LCFI64-LCFI63
	.long L$set$185
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$186,LCFI65-LCFI64
	.long L$set$186
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$187,LCFI66-LCFI65
	.long L$set$187
	.byte	0xb
	.align 3
LEFDE21:
LSFDE23:
	.set L$set$188,LEFDE23-LASFDE23
	.long L$set$188
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LCOLDB13-.
	.set L$set$189,LCOLDE13-LCOLDB13
	.quad L$set$189
	.byte	0x8
	.quad	LLSDAC4169-.
	.byte	0x4
	.set L$set$190,LCFI67-LCOLDB13
	.long L$set$190
	.byte	0xe
	.byte	0x90,0x28
	.byte	0x83
	.byte	0x6
	.byte	0x86
	.byte	0x5
	.byte	0x8c
	.byte	0x4
	.byte	0x8d
	.byte	0x3
	.byte	0x8e
	.byte	0x2
	.align 3
LEFDE23:
LSFDE25:
	.set L$set$191,LEFDE25-LASFDE25
	.long L$set$191
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB4170-.
	.set L$set$192,LHOTE14-LFB4170
	.quad L$set$192
	.byte	0x8
	.quad	LLSDA4170-.
	.byte	0x4
	.set L$set$193,LCFI68-LFB4170
	.long L$set$193
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$194,LCFI69-LCFI68
	.long L$set$194
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$195,LCFI70-LCFI69
	.long L$set$195
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$196,LCFI71-LCFI70
	.long L$set$196
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$197,LCFI72-LCFI71
	.long L$set$197
	.byte	0xe
	.byte	0x80,0x14
	.byte	0x4
	.set L$set$198,LCFI73-LCFI72
	.long L$set$198
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$199,LCFI74-LCFI73
	.long L$set$199
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$200,LCFI75-LCFI74
	.long L$set$200
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$201,LCFI76-LCFI75
	.long L$set$201
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$202,LCFI77-LCFI76
	.long L$set$202
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$203,LCFI78-LCFI77
	.long L$set$203
	.byte	0xb
	.align 3
LEFDE25:
LSFDE27:
	.set L$set$204,LEFDE27-LASFDE27
	.long L$set$204
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LCOLDB14-.
	.set L$set$205,LCOLDE14-LCOLDB14
	.quad L$set$205
	.byte	0x8
	.quad	LLSDAC4170-.
	.byte	0x4
	.set L$set$206,LCFI79-LCOLDB14
	.long L$set$206
	.byte	0xe
	.byte	0x80,0x14
	.byte	0x83
	.byte	0x5
	.byte	0x86
	.byte	0x4
	.byte	0x8c
	.byte	0x3
	.byte	0x8d
	.byte	0x2
	.align 3
LEFDE27:
LSFDE29:
	.set L$set$207,LEFDE29-LASFDE29
	.long L$set$207
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB4243-.
	.set L$set$208,LFE4243-LFB4243
	.quad L$set$208
	.byte	0x8
	.quad	LLSDA4243-.
	.byte	0x4
	.set L$set$209,LCFI80-LFB4243
	.long L$set$209
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$210,LCFI81-LCFI80
	.long L$set$210
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$211,LCFI82-LCFI81
	.long L$set$211
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$212,LCFI83-LCFI82
	.long L$set$212
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$213,LCFI84-LCFI83
	.long L$set$213
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$214,LCFI85-LCFI84
	.long L$set$214
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$215,LCFI86-LCFI85
	.long L$set$215
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$216,LCFI87-LCFI86
	.long L$set$216
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$217,LCFI88-LCFI87
	.long L$set$217
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$218,LCFI89-LCFI88
	.long L$set$218
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$219,LCFI90-LCFI89
	.long L$set$219
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$220,LCFI91-LCFI90
	.long L$set$220
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$221,LCFI92-LCFI91
	.long L$set$221
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$222,LCFI93-LCFI92
	.long L$set$222
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$223,LCFI94-LCFI93
	.long L$set$223
	.byte	0xb
	.align 3
LEFDE29:
LSFDE31:
	.set L$set$224,LEFDE31-LASFDE31
	.long L$set$224
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB4603-.
	.set L$set$225,LFE4603-LFB4603
	.quad L$set$225
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$226,LCFI95-LFB4603
	.long L$set$226
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$227,LCFI96-LCFI95
	.long L$set$227
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$228,LCFI97-LCFI96
	.long L$set$228
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$229,LCFI98-LCFI97
	.long L$set$229
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$230,LCFI99-LCFI98
	.long L$set$230
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$231,LCFI100-LCFI99
	.long L$set$231
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$232,LCFI101-LCFI100
	.long L$set$232
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$233,LCFI102-LCFI101
	.long L$set$233
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$234,LCFI103-LCFI102
	.long L$set$234
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$235,LCFI104-LCFI103
	.long L$set$235
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$236,LCFI105-LCFI104
	.long L$set$236
	.byte	0xb
	.byte	0x4
	.set L$set$237,LCFI106-LCFI105
	.long L$set$237
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$238,LCFI107-LCFI106
	.long L$set$238
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$239,LCFI108-LCFI107
	.long L$set$239
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$240,LCFI109-LCFI108
	.long L$set$240
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$241,LCFI110-LCFI109
	.long L$set$241
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE31:
LSFDE33:
	.set L$set$242,LEFDE33-LASFDE33
	.long L$set$242
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB4905-.
	.set L$set$243,LFE4905-LFB4905
	.quad L$set$243
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$244,LCFI111-LFB4905
	.long L$set$244
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$245,LCFI112-LCFI111
	.long L$set$245
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$246,LCFI113-LCFI112
	.long L$set$246
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$247,LCFI114-LCFI113
	.long L$set$247
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$248,LCFI115-LCFI114
	.long L$set$248
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$249,LCFI116-LCFI115
	.long L$set$249
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$250,LCFI117-LCFI116
	.long L$set$250
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$251,LCFI118-LCFI117
	.long L$set$251
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$252,LCFI119-LCFI118
	.long L$set$252
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$253,LCFI120-LCFI119
	.long L$set$253
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$254,LCFI121-LCFI120
	.long L$set$254
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$255,LCFI122-LCFI121
	.long L$set$255
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$256,LCFI123-LCFI122
	.long L$set$256
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$257,LCFI124-LCFI123
	.long L$set$257
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$258,LCFI125-LCFI124
	.long L$set$258
	.byte	0xb
	.align 3
LEFDE33:
LSFDE35:
	.set L$set$259,LEFDE35-LASFDE35
	.long L$set$259
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LFB4995-.
	.set L$set$260,LFE4995-LFB4995
	.quad L$set$260
	.byte	0x8
	.quad	0
	.align 3
LEFDE35:
LSFDE37:
	.set L$set$261,LEFDE37-LASFDE37
	.long L$set$261
LASFDE37:
	.long	LASFDE37-EH_frame1
	.quad	LFB5364-.
	.set L$set$262,LFE5364-LFB5364
	.quad L$set$262
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$263,LCFI126-LFB5364
	.long L$set$263
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$264,LCFI127-LCFI126
	.long L$set$264
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$265,LCFI128-LCFI127
	.long L$set$265
	.byte	0xa
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$266,LCFI129-LCFI128
	.long L$set$266
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$267,LCFI130-LCFI129
	.long L$set$267
	.byte	0xb
	.byte	0x4
	.set L$set$268,LCFI131-LCFI130
	.long L$set$268
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$269,LCFI132-LCFI131
	.long L$set$269
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE37:
LSFDE39:
	.set L$set$270,LEFDE39-LASFDE39
	.long L$set$270
LASFDE39:
	.long	LASFDE39-EH_frame1
	.quad	LFB4173-.
	.set L$set$271,LHOTE15-LFB4173
	.quad L$set$271
	.byte	0x8
	.quad	LLSDA4173-.
	.byte	0x4
	.set L$set$272,LCFI133-LFB4173
	.long L$set$272
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$273,LCFI134-LCFI133
	.long L$set$273
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$274,LCFI135-LCFI134
	.long L$set$274
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$275,LCFI136-LCFI135
	.long L$set$275
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$276,LCFI137-LCFI136
	.long L$set$276
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$277,LCFI138-LCFI137
	.long L$set$277
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$278,LCFI139-LCFI138
	.long L$set$278
	.byte	0xe
	.byte	0x80,0x28
	.byte	0x4
	.set L$set$279,LCFI140-LCFI139
	.long L$set$279
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$280,LCFI141-LCFI140
	.long L$set$280
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$281,LCFI142-LCFI141
	.long L$set$281
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$282,LCFI143-LCFI142
	.long L$set$282
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$283,LCFI144-LCFI143
	.long L$set$283
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$284,LCFI145-LCFI144
	.long L$set$284
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$285,LCFI146-LCFI145
	.long L$set$285
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$286,LCFI147-LCFI146
	.long L$set$286
	.byte	0xb
	.align 3
LEFDE39:
LSFDE41:
	.set L$set$287,LEFDE41-LASFDE41
	.long L$set$287
LASFDE41:
	.long	LASFDE41-EH_frame1
	.quad	LCOLDB15-.
	.set L$set$288,LCOLDE15-LCOLDB15
	.quad L$set$288
	.byte	0x8
	.quad	LLSDAC4173-.
	.byte	0x4
	.set L$set$289,LCFI148-LCOLDB15
	.long L$set$289
	.byte	0xe
	.byte	0x80,0x28
	.byte	0x83
	.byte	0x7
	.byte	0x86
	.byte	0x6
	.byte	0x8c
	.byte	0x5
	.byte	0x8d
	.byte	0x4
	.byte	0x8e
	.byte	0x3
	.byte	0x8f
	.byte	0x2
	.align 3
LEFDE41:
LSFDE43:
	.set L$set$290,LEFDE43-LASFDE43
	.long L$set$290
LASFDE43:
	.long	LASFDE43-EH_frame1
	.quad	LFB4172-.
	.set L$set$291,LHOTE16-LFB4172
	.quad L$set$291
	.byte	0x8
	.quad	LLSDA4172-.
	.byte	0x4
	.set L$set$292,LCFI149-LFB4172
	.long L$set$292
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$293,LCFI150-LCFI149
	.long L$set$293
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$294,LCFI151-LCFI150
	.long L$set$294
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$295,LCFI152-LCFI151
	.long L$set$295
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$296,LCFI153-LCFI152
	.long L$set$296
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$297,LCFI154-LCFI153
	.long L$set$297
	.byte	0xe
	.byte	0xd0,0x27
	.byte	0x4
	.set L$set$298,LCFI155-LCFI154
	.long L$set$298
	.byte	0xa
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$299,LCFI156-LCFI155
	.long L$set$299
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$300,LCFI157-LCFI156
	.long L$set$300
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$301,LCFI158-LCFI157
	.long L$set$301
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$302,LCFI159-LCFI158
	.long L$set$302
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$303,LCFI160-LCFI159
	.long L$set$303
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$304,LCFI161-LCFI160
	.long L$set$304
	.byte	0xb
	.align 3
LEFDE43:
LSFDE45:
	.set L$set$305,LEFDE45-LASFDE45
	.long L$set$305
LASFDE45:
	.long	LASFDE45-EH_frame1
	.quad	LCOLDB16-.
	.set L$set$306,LCOLDE16-LCOLDB16
	.quad L$set$306
	.byte	0x8
	.quad	LLSDAC4172-.
	.byte	0x4
	.set L$set$307,LCFI162-LCOLDB16
	.long L$set$307
	.byte	0xe
	.byte	0xd0,0x27
	.byte	0x83
	.byte	0x6
	.byte	0x86
	.byte	0x5
	.byte	0x8c
	.byte	0x4
	.byte	0x8d
	.byte	0x3
	.byte	0x8e
	.byte	0x2
	.align 3
LEFDE45:
LSFDE47:
	.set L$set$308,LEFDE47-LASFDE47
	.long L$set$308
LASFDE47:
	.long	LASFDE47-EH_frame1
	.quad	LFB4182-.
	.set L$set$309,LHOTE20-LFB4182
	.quad L$set$309
	.byte	0x8
	.quad	LLSDA4182-.
	.byte	0x4
	.set L$set$310,LCFI163-LFB4182
	.long L$set$310
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$311,LCFI164-LCFI163
	.long L$set$311
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$312,LCFI165-LCFI164
	.long L$set$312
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$313,LCFI166-LCFI165
	.long L$set$313
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$314,LCFI167-LCFI166
	.long L$set$314
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$315,LCFI168-LCFI167
	.long L$set$315
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$316,LCFI169-LCFI168
	.long L$set$316
	.byte	0xe
	.byte	0xe0,0x1d
	.byte	0x4
	.set L$set$317,LCFI170-LCFI169
	.long L$set$317
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$318,LCFI171-LCFI170
	.long L$set$318
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$319,LCFI172-LCFI171
	.long L$set$319
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$320,LCFI173-LCFI172
	.long L$set$320
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$321,LCFI174-LCFI173
	.long L$set$321
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$322,LCFI175-LCFI174
	.long L$set$322
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$323,LCFI176-LCFI175
	.long L$set$323
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$324,LCFI177-LCFI176
	.long L$set$324
	.byte	0xb
	.align 3
LEFDE47:
LSFDE49:
	.set L$set$325,LEFDE49-LASFDE49
	.long L$set$325
LASFDE49:
	.long	LASFDE49-EH_frame1
	.quad	LCOLDB20-.
	.set L$set$326,LCOLDE20-LCOLDB20
	.quad L$set$326
	.byte	0x8
	.quad	LLSDAC4182-.
	.byte	0x4
	.set L$set$327,LCFI178-LCOLDB20
	.long L$set$327
	.byte	0xe
	.byte	0xe0,0x1d
	.byte	0x83
	.byte	0x7
	.byte	0x86
	.byte	0x6
	.byte	0x8c
	.byte	0x5
	.byte	0x8d
	.byte	0x4
	.byte	0x8e
	.byte	0x3
	.byte	0x8f
	.byte	0x2
	.align 3
LEFDE49:
LSFDE51:
	.set L$set$328,LEFDE51-LASFDE51
	.long L$set$328
LASFDE51:
	.long	LASFDE51-EH_frame1
	.quad	LFB5294-.
	.set L$set$329,LFE5294-LFB5294
	.quad L$set$329
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$330,LCFI179-LFB5294
	.long L$set$330
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$331,LCFI180-LCFI179
	.long L$set$331
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE51:
	.mod_init_func
	.align 3
	.quad	__GLOBAL__sub_I_use_std_copy.cpp
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
