	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt13random_deviceD1Ev
	.weak_definition __ZNSt13random_deviceD1Ev
__ZNSt13random_deviceD1Ev:
LFB3034:
	jmp	__ZNSt13random_device7_M_finiEv
LFE3034:
	.section __DATA,__gcc_except_tab
GCC_except_table0:
LLSDA3034:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0
	.text
	.align 4,0x90
__ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.constprop.140:
LFB5265:
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
	jge	L4
	movq	%rsi, %r10
	jmp	L5
	.align 4,0x90
L20:
	movq	(%rax), %r8
	cmpq	%r9, %rbp
	movq	%r8, (%rdi,%r10,8)
	jle	L7
L8:
	movq	%r9, %r10
L5:
	leaq	1(%r10), %rax
	leaq	(%rax,%rax), %r9
	salq	$4, %rax
	leaq	-1(%r9), %r8
	addq	%rdi, %rax
	leaq	(%rdi,%r8,8), %rbx
	movq	(%rbx), %r11
	cmpq	(%rax), %r11
	jle	L20
	cmpq	%r8, %rbp
	movq	%r11, (%rdi,%r10,8)
	jle	L21
	movq	%r8, %r9
	jmp	L8
	.align 4,0x90
L21:
	movq	%rbx, %rax
	movq	%r8, %r9
L7:
	testq	%r12, %r12
	je	L13
L9:
	leaq	-1(%r9), %rdx
	movq	%rdx, %r8
	shrq	$63, %r8
	addq	%rdx, %r8
	sarq	%r8
	cmpq	%rsi, %r9
	jle	L10
	leaq	(%rdi,%r8,8), %r10
	cmpq	%rcx, (%r10)
	jl	L11
	jmp	L10
	.align 4,0x90
L12:
	leaq	(%rdi,%rdx,8), %r10
	movq	%r8, %r9
	movq	%rdx, %r8
	cmpq	%rcx, (%r10)
	jge	L10
L11:
	movq	(%r10), %rax
	movq	%rax, (%rdi,%r9,8)
	leaq	-1(%r8), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rax, %rdx
	leaq	(%rdi,%r8,8), %rax
	sarq	%rdx
	cmpq	%r8, %rsi
	jl	L12
L10:
	movq	%rcx, (%rax)
	popq	%rbx
LCFI3:
	popq	%rbp
LCFI4:
	popq	%r12
LCFI5:
	ret
	.align 4,0x90
L4:
LCFI6:
	leaq	(%rdi,%rsi,8), %rax
	testq	%r12, %r12
	movq	%rsi, %r9
	jne	L10
	.align 4,0x90
L13:
	leaq	-2(%rdx), %r8
	movq	%r8, %rdx
	shrq	$63, %rdx
	addq	%r8, %rdx
	sarq	%rdx
	cmpq	%r9, %rdx
	jne	L9
	leaq	1(%r9,%r9), %r9
	leaq	(%rdi,%r9,8), %rdx
	movq	(%rdx), %r8
	movq	%r8, (%rax)
	movq	%rdx, %rax
	jmp	L9
LFE5265:
	.align 4,0x90
__ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_.constprop.144:
LFB5261:
	cmpq	%rsi, %rdi
	je	L34
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
	je	L22
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	$8, %r13d
	jmp	L29
	.align 4,0x90
L37:
	cmpq	%rbx, %r14
	je	L25
	leaq	(%r14,%r13), %rdi
	movq	%rbx, %rdx
	movq	%r14, %rsi
	subq	%r14, %rdx
	call	_memmove
L25:
	addq	$8, %rbx
	movq	%rbp, (%r14)
	cmpq	%rbx, %r12
	je	L22
L29:
	movq	(%rbx), %rbp
	cmpq	(%r14), %rbp
	jl	L37
	cmpq	-8(%rbx), %rbp
	leaq	-8(%rbx), %rax
	jl	L28
	jmp	L38
	.align 4,0x90
L31:
	movq	%rdx, %rax
L28:
	movq	(%rax), %rdx
	cmpq	-8(%rax), %rbp
	movq	%rdx, 8(%rax)
	leaq	-8(%rax), %rdx
	jl	L31
L27:
	addq	$8, %rbx
	movq	%rbp, (%rax)
	cmpq	%rbx, %r12
	jne	L29
L22:
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
L38:
LCFI17:
	movq	%rbx, %rax
	jmp	L27
L34:
LCFI18:
	ret
LFE5261:
	.cstring
lC0:
	.ascii "%d\0"
	.text
	.align 4,0x90
__ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.145:
LFB5260:
	pushq	%rbp
LCFI19:
	movq	%rsp, %rbp
LCFI20:
	pushq	%r12
	pushq	%rbx
LCFI21:
	movq	%rdi, %rbx
	subq	$208, %rsp
	testb	%al, %al
	movq	%r8, -160(%rbp)
	movq	%r9, -152(%rbp)
	je	L49
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm1, -128(%rbp)
	movaps	%xmm2, -112(%rbp)
	movaps	%xmm3, -96(%rbp)
	movaps	%xmm4, -80(%rbp)
	movaps	%xmm5, -64(%rbp)
	movaps	%xmm6, -48(%rbp)
	movaps	%xmm7, -32(%rbp)
L49:
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
	leaq	lC0(%rip), %rdx
	movq	%rax, -200(%rbp)
	call	_vsnprintf
	leaq	16(%rbx), %rdx
	cmpl	$1, %eax
	movslq	%eax, %rcx
	movq	%rdx, (%rbx)
	jne	L41
	movzbl	(%r12), %eax
	movl	$1, %ecx
	movb	%al, 16(%rbx)
L42:
	movq	%rcx, 8(%rbx)
	movq	%rbx, %rax
	movb	$0, (%rdx,%rcx)
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
LCFI22:
	ret
	.align 4,0x90
L41:
LCFI23:
	cmpl	$8, %eax
	jnb	L43
	testb	$4, %al
	jne	L58
	testl	%eax, %eax
	je	L44
	movzbl	(%r12), %esi
	testb	$2, %al
	movb	%sil, 16(%rbx)
	jne	L59
L44:
	movq	(%rbx), %rdx
	jmp	L42
	.align 4,0x90
L43:
	movl	%eax, %esi
	subl	$1, %eax
	movq	-8(%r12,%rsi), %rdi
	cmpl	$8, %eax
	movq	%rdi, -8(%rdx,%rsi)
	jb	L44
	andl	$-8, %eax
	xorl	%esi, %esi
L47:
	movl	%esi, %edi
	addl	$8, %esi
	movq	(%r12,%rdi), %r8
	cmpl	%eax, %esi
	movq	%r8, (%rdx,%rdi)
	jb	L47
	jmp	L44
	.align 4,0x90
L58:
	movl	(%r12), %esi
	movl	%eax, %eax
	movl	%esi, 16(%rbx)
	movl	-4(%r12,%rax), %esi
	movl	%esi, -4(%rdx,%rax)
	jmp	L44
L59:
	movl	%eax, %eax
	movzwl	-2(%r12,%rax), %esi
	movw	%si, -2(%rdx,%rax)
	jmp	L44
LFE5260:
	.align 4,0x90
__ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_.isra.137:
LFB5256:
	pushq	%r14
LCFI24:
	movq	%rdx, %r14
	movq	%rsi, %rdx
	subq	%rdi, %rdx
	pushq	%r13
LCFI25:
	cmpq	$128, %rdx
	pushq	%r12
LCFI26:
	pushq	%rbp
LCFI27:
	pushq	%rbx
LCFI28:
	jle	L60
	testq	%r14, %r14
	movq	%rdi, %rbx
	movq	%rsi, %r12
	je	L62
	leaq	8(%rdi), %r13
L64:
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
	jge	L69
	cmpq	%rax, %rcx
	jg	L74
	cmpq	%rdx, %rcx
	jg	L89
L90:
	movq	%rdx, (%rbx)
	movq	%rdi, 8(%rbx)
	movq	-8(%rsi), %rdi
L71:
	movq	(%rbx), %rcx
	movq	%r13, %rbp
	movq	%rsi, %rax
	.align 4,0x90
L75:
	movq	0(%rbp), %r8
	movq	%rbp, %r12
	cmpq	%rcx, %r8
	jl	L76
	leaq	-8(%rax), %rdx
	cmpq	%rcx, %rdi
	jle	L77
	subq	$16, %rax
	.align 4,0x90
L78:
	movq	%rax, %rdx
	subq	$8, %rax
	cmpq	%rcx, 8(%rax)
	jg	L78
L77:
	cmpq	%rdx, %rbp
	jnb	L91
	movq	(%rdx), %rax
	movq	%rax, 0(%rbp)
	movq	-8(%rdx), %rdi
	movq	%rdx, %rax
	movq	%r8, (%rdx)
	movq	(%rbx), %rcx
L76:
	addq	$8, %rbp
	jmp	L75
	.align 4,0x90
L69:
	cmpq	%rdx, %rcx
	jg	L90
	cmpq	%rax, %rcx
	jle	L74
L89:
	movq	%rcx, (%rbx)
	movq	%rdi, -8(%rsi)
	jmp	L71
	.align 4,0x90
L91:
	movq	%r14, %rdx
	movq	%rbp, %rdi
	call	__ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_.isra.137
	movq	%rbp, %rdx
	subq	%rbx, %rdx
	cmpq	$128, %rdx
	jle	L60
	testq	%r14, %r14
	movq	%rbp, %rsi
	jne	L64
L62:
	sarq	$3, %rdx
	leaq	-2(%rdx), %r13
	movq	%rdx, %rbp
	sarq	%r13
	jmp	L67
	.align 4,0x90
L65:
	subq	$1, %r13
L67:
	movq	(%rbx,%r13,8), %rcx
	movq	%rbp, %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	__ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.constprop.140
	testq	%r13, %r13
	jne	L65
	subq	$8, %r12
	.align 4,0x90
L66:
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
	call	__ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.constprop.140
	cmpq	$8, %rbp
	jg	L66
L60:
	popq	%rbx
LCFI29:
	popq	%rbp
LCFI30:
	popq	%r12
LCFI31:
	popq	%r13
LCFI32:
	popq	%r14
LCFI33:
	ret
	.align 4,0x90
L74:
LCFI34:
	movq	%rax, (%rbx)
	movq	%rdi, (%r8)
	movq	-8(%rsi), %rdi
	jmp	L71
LFE5256:
	.cstring
	.align 3
lC1:
	.ascii "basic_string::_M_construct null not valid\0"
	.text
	.align 1,0x90
	.align 4,0x90
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_.isra.80:
LFB5199:
	pushq	%r13
LCFI35:
	leaq	16(%rdi), %r13
	pushq	%r12
LCFI36:
	pushq	%rbp
LCFI37:
	pushq	%rbx
LCFI38:
	subq	$24, %rsp
LCFI39:
	testq	%rsi, %rsi
	movq	%r13, (%rdi)
	je	L93
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movq	%rsi, %r12
	call	_strlen
	cmpq	$15, %rax
	movq	%rax, %rbp
	movq	%rax, 8(%rsp)
	ja	L104
	cmpq	$1, %rax
	jne	L97
	movzbl	(%r12), %eax
	movb	%al, 16(%rbx)
L98:
	movq	8(%rsp), %rax
	movq	(%rbx), %rdx
	movq	%rax, 8(%rbx)
	movb	$0, (%rdx,%rax)
	addq	$24, %rsp
LCFI40:
	popq	%rbx
LCFI41:
	popq	%rbp
LCFI42:
	popq	%r12
LCFI43:
	popq	%r13
LCFI44:
	ret
L97:
LCFI45:
	testq	%rax, %rax
	je	L98
	jmp	L96
L104:
	leaq	8(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	movq	%rax, %r13
	movq	%rax, (%rbx)
	movq	8(%rsp), %rax
	movq	%rax, 16(%rbx)
L96:
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	_memcpy
	jmp	L98
L93:
	leaq	lC1(%rip), %rdi
	call	__ZSt19__throw_logic_errorPKc
LFE5199:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB4:
	.text
LHOTB4:
	.align 4,0x90
	.globl __ZN10benchmarks4util16double_generatorEv
__ZN10benchmarks4util16double_generatorEv:
LFB4100:
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
	jne	L107
	leaq	__ZGVZN10benchmarks4util16double_generatorEvE2rd(%rip), %rdi
	movq	%rsp, %rbx
	call	___cxa_guard_acquire
	testl	%eax, %eax
	jne	L121
L107:
	leaq	__ZZN10benchmarks4util16double_generatorEvE2rd(%rip), %rdi
LEHB0:
	call	__ZNSt13random_device9_M_getvalEv
LEHE0:
	movl	$1, %edx
	movl	%eax, %ecx
	movl	%eax, (%rsp)
	.align 4,0x90
L110:
	movl	%ecx, %eax
	shrl	$30, %eax
	xorl	%ecx, %eax
	imull	$1812433253, %eax, %eax
	leal	(%rax,%rdx), %ecx
	movl	%ecx, (%rbx,%rdx,4)
	addq	$1, %rdx
	cmpq	$624, %rdx
	jne	L110
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
L121:
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
	je	L107
	call	__ZdlPv
	jmp	L107
L113:
	movq	%rax, %rbp
	jmp	L111
	.section __DATA,__gcc_except_tab
GCC_except_table1:
LLSDA4100:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x1a
	.set L$set$0,LEHB0-LFB4100
	.long L$set$0
	.set L$set$1,LEHE0-LEHB0
	.long L$set$1
	.long	0
	.byte	0
	.set L$set$2,LEHB1-LFB4100
	.long L$set$2
	.set L$set$3,LEHE1-LEHB1
	.long L$set$3
	.set L$set$4,L113-LFB4100
	.long L$set$4
	.byte	0
	.text
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___ZN10benchmarks4util16double_generatorEv:
__ZN10benchmarks4util16double_generatorEv.cold.148:
L111:
LCFI53:
	movq	(%rsp), %rdi
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	je	L112
	call	__ZdlPv
L112:
	leaq	__ZGVZN10benchmarks4util16double_generatorEvE2rd(%rip), %rdi
	call	___cxa_guard_abort
	movq	%rbp, %rdi
LEHB2:
	call	__Unwind_Resume
LEHE2:
LFE4100:
	.section __DATA,__gcc_except_tab
GCC_except_table2:
LLSDAC4100:
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
LFB4102:
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
	je	L144
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
L144:
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
	je	L122
	movsd	lC6(%rip), %xmm6
	subsd	%xmm8, %xmm7
	flds	lC11(%rip)
	movdqa	lC7(%rip), %xmm5
	movdqa	lC8(%rip), %xmm4
	movdqa	lC9(%rip), %xmm3
	jmp	L125
	.align 4,0x90
L164:
	divsd	%xmm2, %xmm1
	comisd	%xmm6, %xmm1
	jnb	L163
	mulsd	%xmm7, %xmm1
	addq	$8, %r14
	addsd	%xmm8, %xmm1
	movsd	%xmm1, -8(%r14)
	cmpq	%r14, %r13
	je	L166
L125:
	cmpq	$623, %rbp
	movl	$2, %edx
	pxor	%xmm1, %xmm1
	movapd	%xmm6, %xmm2
	leaq	896(%r12), %rsi
	pxor	%xmm10, %xmm10
	movdqa	lC10(%rip), %xmm11
	leaq	2492(%r12), %rcx
	ja	L126
L165:
	movl	2560(%rsp,%rbp,4), %edi
	addq	$1, %rbp
L127:
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
	je	L164
	cmpq	$623, %rbp
	movl	$1, %edx
	jbe	L165
L126:
	movq	%r12, %rax
	.align 4,0x90
L128:
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
	jne	L128
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
L132:
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
	jne	L132
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
	jmp	L127
	.align 4,0x90
L163:
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
	jne	L125
	fstp	%st(0)
	jmp	L122
	.align 4,0x90
L166:
	fstp	%st(0)
L122:
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
L146:
LCFI66:
	movq	%rax, %rbp
	jmp	L142
	.section __DATA,__gcc_except_tab
GCC_except_table3:
LLSDA4102:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x1a
	.set L$set$7,LEHB3-LFB4102
	.long L$set$7
	.set L$set$8,LEHE3-LEHB3
	.long L$set$8
	.long	0
	.byte	0
	.set L$set$9,LEHB4-LFB4102
	.long L$set$9
	.set L$set$10,LEHE4-LEHB4
	.long L$set$10
	.set L$set$11,L146-LFB4102
	.long L$set$11
	.byte	0
	.text
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___ZN10benchmarks4util16generate_doublesEj:
__ZN10benchmarks4util16generate_doublesEj.cold.149:
L142:
LCFI67:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	L143
	call	__ZdlPv
L143:
	movq	%rbp, %rdi
LEHB5:
	call	__Unwind_Resume
LEHE5:
LFE4102:
	.section __DATA,__gcc_except_tab
GCC_except_table4:
LLSDAC4102:
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
LFB4103:
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
	jne	L169
	leaq	__ZGVZN10benchmarks4util13int_generatorEiiE2rd(%rip), %rdi
	movq	%rsp, %rbx
	call	___cxa_guard_acquire
	testl	%eax, %eax
	jne	L183
L169:
	leaq	__ZZN10benchmarks4util13int_generatorEiiE2rd(%rip), %rdi
LEHB6:
	call	__ZNSt13random_device9_M_getvalEv
LEHE6:
	movl	$1, %edx
	movl	%eax, %ecx
	movl	%eax, (%rsp)
	.align 4,0x90
L172:
	movl	%ecx, %eax
	shrl	$30, %eax
	xorl	%ecx, %eax
	imull	$1812433253, %eax, %eax
	leal	(%rax,%rdx), %ecx
	movl	%ecx, (%rbx,%rdx,4)
	addq	$1, %rdx
	cmpq	$624, %rdx
	jne	L172
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
L183:
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
	je	L169
	call	__ZdlPv
	jmp	L169
L175:
	movq	%rax, %rbp
	jmp	L173
	.section __DATA,__gcc_except_tab
GCC_except_table5:
LLSDA4103:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x1a
	.set L$set$14,LEHB6-LFB4103
	.long L$set$14
	.set L$set$15,LEHE6-LEHB6
	.long L$set$15
	.long	0
	.byte	0
	.set L$set$16,LEHB7-LFB4103
	.long L$set$16
	.set L$set$17,LEHE7-LEHB7
	.long L$set$17
	.set L$set$18,L175-LFB4103
	.long L$set$18
	.byte	0
	.text
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___ZN10benchmarks4util13int_generatorEii:
__ZN10benchmarks4util13int_generatorEii.cold.150:
L173:
LCFI79:
	movq	(%rsp), %rdi
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	je	L174
	call	__ZdlPv
L174:
	leaq	__ZGVZN10benchmarks4util13int_generatorEiiE2rd(%rip), %rdi
	call	___cxa_guard_abort
	movq	%rbp, %rdi
LEHB8:
	call	__Unwind_Resume
LEHE8:
LFE4103:
	.section __DATA,__gcc_except_tab
GCC_except_table6:
LLSDAC4103:
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
LCOLDB15:
	.text
LHOTB15:
	.align 4,0x90
	.globl __Z12read_numbersRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
__Z12read_numbersRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
LFB4107:
	pushq	%r15
LCFI80:
	pushq	%r14
LCFI81:
	pushq	%r13
LCFI82:
	pushq	%r12
LCFI83:
	pushq	%rbp
LCFI84:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI85:
	subq	$408, %rsp
LCFI86:
	leaq	16(%rsp), %rbx
	leaq	120(%rbx), %rdi
	call	__ZNSt8ios_baseC2Ev
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	pxor	%xmm0, %xmm0
	xorl	%esi, %esi
	movaps	%xmm0, 368(%rsp)
	movaps	%xmm0, 384(%rsp)
	movq	$0, 352(%rsp)
	addq	$16, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	movw	%ax, 360(%rsp)
	movq	__ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	8(%rax), %r13
	movq	16(%rax), %r15
	movq	-24(%r13), %rax
	movq	%r13, 16(%rsp)
	movq	%r15, 16(%rsp,%rax)
	movq	$0, 24(%rsp)
	movq	-24(%r13), %rdi
	addq	%rbx, %rdi
LEHB9:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE9:
	movq	__ZTVNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	leaq	72(%rbx), %rdi
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	addq	$24, %rax
	movq	%rax, 16(%rsp)
	movq	__ZTVNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	$0, 80(%rsp)
	addq	$64, %rax
	movq	%rax, 136(%rsp)
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, 32(%rsp)
	call	__ZNSt6localeC1Ev
	movq	__ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movl	$0, 96(%rsp)
	movq	0(%rbp), %r14
	movq	8(%rbp), %r12
	addq	$16, %rax
	movq	%rax, 32(%rsp)
	leaq	104(%rbx), %rax
	movq	%rax, 104(%rsp)
	movq	%r14, %rax
	addq	%r12, %rax
	je	L185
	testq	%r14, %r14
	je	L222
L185:
	cmpq	$15, %r12
	movq	%r12, 8(%rsp)
	ja	L223
	cmpq	$1, %r12
	jne	L188
	movzbl	(%r14), %eax
	movb	%al, 120(%rsp)
	leaq	104(%rbx), %rax
L189:
	movq	%r12, 112(%rsp)
	leaq	16(%rbx), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movb	$0, (%rax,%r12)
	movq	104(%rsp), %rsi
	movl	$8, 96(%rsp)
LEHB10:
	call	__ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm
LEHE10:
	leaq	16(%rbx), %rsi
	leaq	120(%rbx), %rdi
LEHB11:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE11:
	movl	$0, 8(%rsp)
	leaq	8(%rsp), %rbp
	xorl	%r12d, %r12d
	jmp	L200
	.align 4,0x90
L224:
	addl	$1, %r12d
L200:
	movq	%rbp, %rsi
	movq	%rbx, %rdi
LEHB12:
	call	__ZNSirsERi
LEHE12:
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	je	L224
	movq	__ZTVNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	104(%rsp), %rdi
	addq	$24, %rax
	movq	%rax, 16(%rsp)
	movq	__ZTVNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq	$64, %rax
	movq	%rax, 136(%rsp)
	movq	__ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, 32(%rsp)
	leaq	104(%rbx), %rax
	cmpq	%rax, %rdi
	je	L201
	call	__ZdlPv
L201:
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	72(%rbx), %rdi
	addq	$16, %rax
	movq	%rax, 32(%rsp)
	call	__ZNSt6localeD1Ev
	movq	-24(%r13), %rax
	movq	%r13, 16(%rsp)
	leaq	120(%rbx), %rdi
	movq	%r15, 16(%rsp,%rax)
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	movq	$0, 24(%rsp)
	addq	$16, %rax
	movq	%rax, 136(%rsp)
	call	__ZNSt8ios_baseD2Ev
	addq	$408, %rsp
LCFI87:
	movl	%r12d, %eax
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
L188:
LCFI94:
	leaq	104(%rbx), %rax
	testq	%r12, %r12
	je	L189
	jmp	L187
	.align 4,0x90
L223:
	leaq	8(%rsp), %rbp
	xorl	%edx, %edx
	leaq	88(%rbx), %rdi
	movq	%rbp, %rsi
LEHB13:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	movq	8(%rsp), %rdx
	movq	%rax, 104(%rsp)
	movq	%rdx, 120(%rsp)
L187:
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%rax, %rdi
	call	_memcpy
	movq	8(%rsp), %r12
	movq	104(%rsp), %rax
	jmp	L189
L222:
	leaq	lC1(%rip), %rdi
	call	__ZSt19__throw_logic_errorPKc
LEHE13:
L208:
	movq	%rax, %rbp
	jmp	L198
L207:
	movq	%rax, %rbp
	jmp	L221
L204:
	movq	%rax, %rbp
	jmp	L202
L205:
	movq	%rax, %rbp
	jmp	L196
L206:
	movq	%rax, %rbp
	jmp	L197
	.section __DATA,__gcc_except_tab
GCC_except_table7:
LLSDA4107:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x41
	.set L$set$21,LEHB9-LFB4107
	.long L$set$21
	.set L$set$22,LEHE9-LEHB9
	.long L$set$22
	.set L$set$23,L208-LFB4107
	.long L$set$23
	.byte	0
	.set L$set$24,LEHB10-LFB4107
	.long L$set$24
	.set L$set$25,LEHE10-LEHB10
	.long L$set$25
	.set L$set$26,L207-LFB4107
	.long L$set$26
	.byte	0
	.set L$set$27,LEHB11-LFB4107
	.long L$set$27
	.set L$set$28,LEHE11-LEHB11
	.long L$set$28
	.set L$set$29,L205-LFB4107
	.long L$set$29
	.byte	0
	.set L$set$30,LEHB12-LFB4107
	.long L$set$30
	.set L$set$31,LEHE12-LEHB12
	.long L$set$31
	.set L$set$32,L204-LFB4107
	.long L$set$32
	.byte	0
	.set L$set$33,LEHB13-LFB4107
	.long L$set$33
	.set L$set$34,LEHE13-LEHB13
	.long L$set$34
	.set L$set$35,L206-LFB4107
	.long L$set$35
	.byte	0
	.text
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___Z12read_numbersRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
__Z12read_numbersRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.cold.151:
L196:
LCFI95:
	movq	__ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, 32(%rsp)
L221:
	movq	104(%rsp), %rdi
	leaq	104(%rbx), %rax
	cmpq	%rax, %rdi
	je	L197
	call	__ZdlPv
L197:
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	72(%rbx), %rdi
	addq	$16, %rax
	movq	%rax, 32(%rsp)
	call	__ZNSt6localeD1Ev
	movq	-24(%r13), %rax
	movq	%r13, 16(%rsp)
	movq	%r15, 16(%rsp,%rax)
	movq	$0, 24(%rsp)
L198:
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	120(%rbx), %rdi
	addq	$16, %rax
	movq	%rax, 136(%rsp)
	call	__ZNSt8ios_baseD2Ev
	movq	%rbp, %rdi
LEHB14:
	call	__Unwind_Resume
L202:
	movq	%rbx, %rdi
	call	__ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev
	movq	%rbp, %rdi
	call	__Unwind_Resume
LEHE14:
LFE4107:
	.section __DATA,__gcc_except_tab
GCC_except_table8:
LLSDAC4107:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xd
	.set L$set$36,LEHB14-LCOLDB15
	.long L$set$36
	.set L$set$37,LEHE14-LEHB14
	.long L$set$37
	.long	0
	.byte	0
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE15:
	.text
LHOTE15:
	.section __TEXT,__text_cold,regular,pure_instructions
	.text
	.align 4,0x90
	.globl __ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.weak_definition __ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
__ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
LFB4150:
	pushq	%r15
LCFI96:
	movl	%r8d, %r15d
	pushq	%r14
LCFI97:
	movq	%rsi, %r14
	pushq	%r13
LCFI98:
	pushq	%r12
LCFI99:
	movq	%rcx, %r12
	pushq	%rbp
LCFI100:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI101:
	movq	%rdx, %rbx
	subq	$24, %rsp
LCFI102:
LEHB15:
	call	___error
	movl	(%rax), %r13d
	call	___error
LEHE15:
	leaq	8(%rsp), %rsi
	movl	%r15d, %edx
	movq	%rbx, %rdi
	movl	$0, (%rax)
LEHB16:
	call	*%rbp
	cmpq	%rbx, 8(%rsp)
	movq	%rax, %rbp
	je	L238
	call	___error
LEHE16:
	cmpl	$34, (%rax)
	je	L227
	movl	$2147483648, %eax
	movl	$4294967295, %edx
	addq	%rbp, %rax
	cmpq	%rdx, %rax
	ja	L227
	testq	%r12, %r12
	je	L229
	movq	8(%rsp), %rax
	subq	%rbx, %rax
	movq	%rax, (%r12)
L229:
	call	___error
	movl	(%rax), %eax
	testl	%eax, %eax
	je	L239
L225:
	addq	$24, %rsp
LCFI103:
	movl	%ebp, %eax
	popq	%rbx
LCFI104:
	popq	%rbp
LCFI105:
	popq	%r12
LCFI106:
	popq	%r13
LCFI107:
	popq	%r14
LCFI108:
	popq	%r15
LCFI109:
	ret
	.align 4,0x90
L239:
LCFI110:
	call	___error
	movl	%r13d, (%rax)
	jmp	L225
L227:
	movq	%r14, %rdi
LEHB17:
	call	__ZSt20__throw_out_of_rangePKc
L238:
	movq	%r14, %rdi
	call	__ZSt24__throw_invalid_argumentPKc
LEHE17:
L233:
	movq	%rax, %rbx
L231:
	call	___error
	cmpl	$0, (%rax)
	jne	L232
	call	___error
	movl	%r13d, (%rax)
L232:
	movq	%rbx, %rdi
LEHB18:
	call	__Unwind_Resume
LEHE18:
LFE4150:
	.section __DATA,__gcc_except_tab
GCC_except_table9:
LLSDA4150:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x34
	.set L$set$38,LEHB15-LFB4150
	.long L$set$38
	.set L$set$39,LEHE15-LEHB15
	.long L$set$39
	.long	0
	.byte	0
	.set L$set$40,LEHB16-LFB4150
	.long L$set$40
	.set L$set$41,LEHE16-LEHB16
	.long L$set$41
	.set L$set$42,L233-LFB4150
	.long L$set$42
	.byte	0
	.set L$set$43,LEHB17-LFB4150
	.long L$set$43
	.set L$set$44,LEHE17-LEHB17
	.long L$set$44
	.set L$set$45,L233-LFB4150
	.long L$set$45
	.byte	0
	.set L$set$46,LEHB18-LFB4150
	.long L$set$46
	.set L$set$47,LEHE18-LEHB18
	.long L$set$47
	.long	0
	.byte	0
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt6vectorINSt6chrono8durationIxSt5ratioILl1ELl1000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_
	.weak_definition __ZNSt6vectorINSt6chrono8durationIxSt5ratioILl1ELl1000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_
__ZNSt6vectorINSt6chrono8durationIxSt5ratioILl1ELl1000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:
LFB4780:
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
	je	L249
	leaq	(%rax,%rax), %rdi
	movq	$-8, %r14
	cmpq	%rdi, %rax
	jbe	L255
L242:
	movq	%r14, %rdi
	movq	%rdx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	call	__Znwm
	movq	16(%rsp), %rdx
	movq	8(%rsp), %rcx
	movq	%rax, %rbx
	addq	%rax, %r14
L243:
	movq	(%r15), %rax
	leaq	8(%rbx,%rdx), %r9
	movq	%rcx, %r15
	subq	%r12, %r15
	cmpq	%rbp, %r12
	movq	%rax, (%rbx,%rdx)
	leaq	(%r9,%r15), %rax
	movq	%rax, 8(%rsp)
	je	L244
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	%r9, 24(%rsp)
	movq	%rcx, 16(%rsp)
	call	_memmove
	movq	16(%rsp), %rcx
	movq	24(%rsp), %r9
	cmpq	%rcx, %r12
	je	L248
L245:
	movq	%r15, %rdx
	movq	%r12, %rsi
	movq	%r9, %rdi
	call	_memcpy
L247:
	testq	%rbp, %rbp
	jne	L248
L246:
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
L248:
LCFI125:
	movq	%rbp, %rdi
	call	__ZdlPv
	jmp	L246
	.align 4,0x90
L255:
	movabsq	$2305843009213693951, %rax
	cmpq	%rax, %rdi
	ja	L242
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	testq	%rdi, %rdi
	je	L243
	jmp	L241
	.align 4,0x90
L244:
	cmpq	%rcx, %r12
	jne	L245
	jmp	L247
	.align 4,0x90
L249:
	movl	$1, %edi
L241:
	leaq	0(,%rdi,8), %r14
	jmp	L242
LFE4780:
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	.weak_definition __ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv:
LFB4851:
	movq	2496(%rdi), %rax
	cmpq	$623, %rax
	ja	L257
	leaq	1(%rax), %rdx
	movl	(%rdi,%rax,4), %eax
L258:
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
L257:
	movdqa	lC8(%rip), %xmm3
	movq	%rdi, %rax
	pxor	%xmm7, %xmm7
	movdqa	lC7(%rip), %xmm2
	leaq	896(%rdi), %rdx
	movdqa	lC9(%rip), %xmm4
	movdqa	lC10(%rip), %xmm1
	.align 4,0x90
L259:
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
	jne	L259
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
L263:
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
	jne	L263
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
	jmp	L258
LFE4851:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB16:
	.text
LHOTB16:
	.align 4,0x90
	.globl __ZN10benchmarks4util20generate_ints_stringB5cxx11Ei
__ZN10benchmarks4util20generate_ints_stringB5cxx11Ei:
LFB4106:
	pushq	%r15
LCFI126:
	movslq	%esi, %rsi
	pushq	%r14
LCFI127:
	pushq	%r13
LCFI128:
	pushq	%r12
LCFI129:
	pushq	%rbp
LCFI130:
	pushq	%rbx
LCFI131:
	movq	%rdi, %rbx
	subq	$5064, %rsp
LCFI132:
	testq	%rsi, %rsi
	je	L304
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, %rsi
	ja	L328
	leaq	0(,%rsi,4), %r14
	movq	%r14, %rdi
LEHB19:
	call	__Znwm
LEHE19:
	movq	%r14, %rdx
	xorl	%esi, %esi
	movq	%rax, %r15
	movq	%rax, %rdi
	movq	%rax, 24(%rsp)
	call	_memset
	addq	%r15, %r14
L275:
	leaq	32(%rsp), %r12
	movl	$2147483647, %edx
	movl	$-2147483648, %esi
	movq	%r12, %rdi
LEHB20:
	call	__ZN10benchmarks4util13int_generatorEii
LEHE20:
	leaq	2544(%rsp), %rbp
	movl	$2512, %edx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	_memcpy
	leaq	16(%rbx), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rsp), %rax
	cmpq	%r14, %rax
	je	L277
	movl	2544(%rsp), %r9d
	movq	%rax, %r15
	movq	%rax, %r12
	movdqa	lC8(%rip), %xmm5
	movdqa	lC7(%rip), %xmm4
	movdqa	lC9(%rip), %xmm3
	.align 4,0x90
L290:
	movl	2548(%rsp), %ecx
	subl	%r9d, %ecx
	cmpl	$-1, %ecx
	je	L278
	addl	$1, %ecx
	movl	$-1, %eax
	xorl	%edx, %edx
	movq	5048(%rsp), %rsi
	divl	%ecx
	movdqa	lC10(%rip), %xmm2
	pxor	%xmm1, %xmm1
	leaq	904(%rbp), %r10
	leaq	2500(%rbp), %r8
	movl	%eax, %edi
	imull	%eax, %ecx
	jmp	L288
	.align 4,0x90
L330:
	movl	2552(%rsp,%rsi,4), %r11d
	addq	$1, %rsi
	.align 4,0x90
L280:
	movl	%r11d, %eax
	shrl	$11, %eax
	xorl	%r11d, %eax
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
	ja	L329
L288:
	cmpq	$623, %rsi
	jbe	L330
	leaq	8(%rbp), %rax
	.align 4,0x90
L281:
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
	cmpq	%r10, %rax
	jne	L281
	movl	3452(%rsp), %eax
	movl	3448(%rsp), %esi
	movl	%eax, %edx
	andl	$2147483647, %edx
	andl	$-2147483648, %esi
	orl	%edx, %esi
	movl	%esi, %edx
	shrl	%edx
	xorl	5036(%rsp), %edx
	movl	%edx, %r11d
	xorl	$-1727483681, %r11d
	andl	$1, %esi
	movl	3456(%rsp), %esi
	cmovne	%r11d, %edx
	andl	$-2147483648, %eax
	movl	%edx, 3448(%rsp)
	movl	%esi, %edx
	andl	$2147483647, %edx
	orl	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	xorl	5040(%rsp), %edx
	movl	%edx, %r11d
	xorl	$-1727483681, %r11d
	testb	$1, %al
	cmovne	%r11d, %edx
	andl	$-2147483648, %esi
	movl	%edx, 3452(%rsp)
	movl	3460(%rsp), %edx
	andl	$2147483647, %edx
	orl	%esi, %edx
	movl	%edx, %eax
	shrl	%eax
	xorl	5044(%rsp), %eax
	movl	%eax, %esi
	xorl	$-1727483681, %esi
	andl	$1, %edx
	cmovne	%esi, %eax
	movl	%eax, 3456(%rsp)
	leaq	916(%rbp), %rax
	.align 4,0x90
L285:
	movdqu	4(%rax), %xmm0
	addq	$16, %rax
	movdqu	-16(%rax), %xmm6
	movdqu	-924(%rax), %xmm7
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
	movups	%xmm0, -16(%rax)
	cmpq	%rax, %r8
	jne	L285
	movl	2552(%rsp), %r11d
	movl	5044(%rsp), %eax
	movl	%r11d, %edx
	andl	$2147483647, %edx
	andl	$-2147483648, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	xorl	4136(%rsp), %edx
	movl	%edx, %esi
	xorl	$-1727483681, %esi
	testb	$1, %al
	cmovne	%esi, %edx
	movl	$1, %esi
	movl	%edx, 5044(%rsp)
	jmp	L280
	.align 4,0x90
L329:
	xorl	%edx, %edx
	movq	%rsi, 5048(%rsp)
	divl	%edi
L289:
	addl	%r9d, %eax
	addq	$4, %r12
	movl	%eax, -4(%r12)
	cmpq	%r12, %r14
	jne	L290
	movq	8(%rsp), %rax
	movq	$0, 8(%rbx)
	movb	$0, 16(%rbx)
	movq	%rax, (%rbx)
	leaq	16(%rbp), %rax
	movq	%rax, 16(%rsp)
	jmp	L295
	.align 4,0x90
L294:
	movb	$32, (%rax,%r12)
	movq	(%rbx), %rax
	addq	$4, %r15
	cmpq	%r15, %r14
	movq	%r13, 8(%rbx)
	movb	$0, 1(%rax,%r12)
	je	L303
L295:
	movl	(%r15), %r8d
	movl	$16, %edx
	movq	%rbp, %rdi
	xorl	%eax, %eax
	movq	_vsnprintf@GOTPCREL(%rip), %rsi
	leaq	lC0(%rip), %rcx
	call	__ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.145
	movq	2552(%rsp), %rdx
	movq	%rbx, %rdi
	movq	2544(%rsp), %rsi
LEHB21:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
LEHE21:
	movq	2544(%rsp), %rdi
	cmpq	16(%rsp), %rdi
	je	L292
	call	__ZdlPv
L292:
	movq	8(%rbx), %r12
	movq	(%rbx), %rax
	cmpq	8(%rsp), %rax
	leaq	1(%r12), %r13
	je	L305
	movq	16(%rbx), %rdx
L293:
	cmpq	%rdx, %r13
	jbe	L294
	movl	$1, %r8d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%rbx, %rdi
LEHB22:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE22:
	movq	(%rbx), %rax
	jmp	L294
	.align 4,0x90
L278:
	leaq	8(%rbp), %rdi
	call	__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	movl	2544(%rsp), %r9d
	movdqa	lC9(%rip), %xmm3
	movdqa	lC7(%rip), %xmm4
	movdqa	lC8(%rip), %xmm5
	jmp	L289
	.align 4,0x90
L305:
	movl	$15, %edx
	jmp	L293
	.align 4,0x90
L277:
	leaq	16(%rbx), %rax
	movq	$0, 8(%rbx)
	movq	%rax, (%rbx)
	movb	$0, 16(%rbx)
	.align 4,0x90
L303:
	movq	24(%rsp), %rax
	testq	%rax, %rax
	je	L274
	movq	%rax, %rdi
	call	__ZdlPv
L274:
	addq	$5064, %rsp
LCFI133:
	movq	%rbx, %rax
	popq	%rbx
LCFI134:
	popq	%rbp
LCFI135:
	popq	%r12
LCFI136:
	popq	%r13
LCFI137:
	popq	%r14
LCFI138:
	popq	%r15
LCFI139:
	ret
	.align 4,0x90
L304:
LCFI140:
	movq	$0, 24(%rsp)
	xorl	%r14d, %r14d
	jmp	L275
L328:
LEHB23:
	call	__ZSt17__throw_bad_allocv
LEHE23:
L307:
	movq	%rax, %rbp
	jmp	L299
L308:
	movq	%rax, %r12
	jmp	L297
L306:
	movq	%rax, %rbp
	jmp	L301
	.section __DATA,__gcc_except_tab
GCC_except_table10:
LLSDA4106:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x41
	.set L$set$48,LEHB19-LFB4106
	.long L$set$48
	.set L$set$49,LEHE19-LEHB19
	.long L$set$49
	.long	0
	.byte	0
	.set L$set$50,LEHB20-LFB4106
	.long L$set$50
	.set L$set$51,LEHE20-LEHB20
	.long L$set$51
	.set L$set$52,L306-LFB4106
	.long L$set$52
	.byte	0
	.set L$set$53,LEHB21-LFB4106
	.long L$set$53
	.set L$set$54,LEHE21-LEHB21
	.long L$set$54
	.set L$set$55,L308-LFB4106
	.long L$set$55
	.byte	0
	.set L$set$56,LEHB22-LFB4106
	.long L$set$56
	.set L$set$57,LEHE22-LEHB22
	.long L$set$57
	.set L$set$58,L307-LFB4106
	.long L$set$58
	.byte	0
	.set L$set$59,LEHB23-LFB4106
	.long L$set$59
	.set L$set$60,LEHE23-LEHB23
	.long L$set$60
	.long	0
	.byte	0
	.text
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___ZN10benchmarks4util20generate_ints_stringB5cxx11Ei:
__ZN10benchmarks4util20generate_ints_stringB5cxx11Ei.cold.152:
L297:
LCFI141:
	movq	2544(%rsp), %rdi
	addq	$16, %rbp
	cmpq	%rbp, %rdi
	je	L298
	call	__ZdlPv
L298:
	movq	%r12, %rbp
L299:
	movq	(%rbx), %rdi
	cmpq	8(%rsp), %rdi
	je	L301
	call	__ZdlPv
L301:
	cmpq	$0, 24(%rsp)
	je	L302
	movq	24(%rsp), %rdi
	call	__ZdlPv
L302:
	movq	%rbp, %rdi
LEHB24:
	call	__Unwind_Resume
LEHE24:
LFE4106:
	.section __DATA,__gcc_except_tab
GCC_except_table11:
LLSDAC4106:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xd
	.set L$set$61,LEHB24-LCOLDB16
	.long L$set$61
	.set L$set$62,LEHE24-LEHB24
	.long L$set$62
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
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB19:
	.section __TEXT,__text_startup,regular,pure_instructions
LHOTB19:
	.align 4
	.globl _main
_main:
LFB4108:
	pushq	%r15
LCFI142:
	pushq	%r14
LCFI143:
	pushq	%r13
LCFI144:
	pushq	%r12
LCFI145:
	movq	%rsi, %r12
	pushq	%rbp
LCFI146:
	pushq	%rbx
LCFI147:
	subq	$104, %rsp
LCFI148:
	movq	8(%rsi), %rsi
	leaq	64(%rsp), %rbp
	movq	%rbp, %rdi
LEHB25:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_.isra.80
LEHE25:
	movq	_strtol@GOTPCREL(%rip), %rbx
	movl	$10, %r8d
	xorl	%ecx, %ecx
	movq	64(%rsp), %rdx
	leaq	lC17(%rip), %rsi
	movq	%rbx, %rdi
LEHB26:
	call	__ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
LEHE26:
	movq	64(%rsp), %rdi
	movl	%eax, %r13d
	leaq	16(%rbp), %rax
	cmpq	%rax, %rdi
	je	L332
	call	__ZdlPv
L332:
	movq	16(%r12), %rsi
	movq	%rbp, %rdi
LEHB27:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_.isra.80
LEHE27:
	movq	64(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	leaq	lC17(%rip), %rsi
	movl	$10, %r8d
LEHB28:
	call	__ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
LEHE28:
	movq	64(%rsp), %rdi
	movl	%eax, %r14d
	leaq	16(%rbp), %rax
	cmpq	%rax, %rdi
	je	L333
	call	__ZdlPv
L333:
	movq	$0, 48(%rsp)
	movslq	%r13d, %rax
	pxor	%xmm0, %xmm0
	movabsq	$2305843009213693951, %rdx
	cmpq	%rdx, %rax
	movaps	%xmm0, 32(%rsp)
	ja	L387
	testq	%rax, %rax
	jne	L382
L385:
	movq	32(%rsp), %r13
	movq	40(%rsp), %r12
L338:
	subq	%r13, %r12
	movq	__ZSt4cout@GOTPCREL(%rip), %rdi
	sarq	$3, %r12
	shrq	%r12
	movq	0(%r13,%r12,8), %rsi
LEHB29:
	call	__ZNSo9_M_insertIxEERSoT_
	movl	$1, %edx
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movb	$32, 64(%rsp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	L371
	call	__ZdlPv
L371:
	addq	$104, %rsp
LCFI149:
	xorl	%eax, %eax
	popq	%rbx
LCFI150:
	popq	%rbp
LCFI151:
	popq	%r12
LCFI152:
	popq	%r13
LCFI153:
	popq	%r14
LCFI154:
	popq	%r15
LCFI155:
	ret
L382:
LCFI156:
	leaq	0(,%rax,8), %rbx
	movq	%rbx, %rdi
	call	__Znwm
	movq	32(%rsp), %rdi
	movq	%rax, %r12
	testq	%rdi, %rdi
	je	L336
	call	__ZdlPv
L336:
	leaq	(%r12,%rbx), %rax
	movq	%r12, %xmm0
	xorl	%ebx, %ebx
	testl	%r13d, %r13d
	punpcklqdq	%xmm0, %xmm0
	movq	%rax, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	jle	L385
	leaq	24(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	16(%rbp), %r15
	.align 4
L337:
	movl	%r14d, %esi
	movq	%rbp, %rdi
	call	__ZN10benchmarks4util20generate_ints_stringB5cxx11Ei
LEHE29:
	call	__ZNSt6chrono3_V212system_clock3nowEv
	movq	%rbp, %rdi
	movq	%rax, %r12
LEHB30:
	call	__Z12read_numbersRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	call	__ZNSt6chrono3_V212system_clock3nowEv
	movq	40(%rsp), %rsi
	subq	%r12, %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rax
	imulq	%rcx
	sarq	$63, %rcx
	sarq	$18, %rdx
	subq	%rcx, %rdx
	cmpq	48(%rsp), %rsi
	movq	%rdx, 24(%rsp)
	je	L339
	movq	%rdx, (%rsi)
	addq	$8, %rsi
	movq	%rsi, 40(%rsp)
L340:
	movq	64(%rsp), %rdi
	cmpq	%r15, %rdi
	je	L341
	call	__ZdlPv
	addl	$1, %ebx
	cmpl	%ebx, %r13d
	jne	L337
L342:
	movq	40(%rsp), %r12
	movq	32(%rsp), %r13
	movq	%r12, %rbx
	subq	%r13, %rbx
	movq	%rbx, %rax
	sarq	$3, %rax
	cmpq	%r12, %r13
	je	L338
	bsrq	%rax, %rax
	movl	$63, %edx
	movq	%r12, %rsi
	xorq	$63, %rax
	movq	%r13, %rdi
	cltq
	subq	%rax, %rdx
	addq	%rdx, %rdx
	call	__ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_.isra.137
	addq	$-128, %rbx
	jle	L344
	leaq	128(%r13), %rbx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	call	__ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_.constprop.144
	cmpq	%rbx, %r12
	movq	%rbx, %rsi
	je	L385
	movq	(%rsi), %rcx
	leaq	-8(%rsi), %rax
	cmpq	-8(%rsi), %rcx
	jl	L348
	jmp	L388
	.align 4
L362:
	movq	%rdx, %rax
L348:
	movq	(%rax), %rdx
	cmpq	-8(%rax), %rcx
	movq	%rdx, 8(%rax)
	leaq	-8(%rax), %rdx
	jl	L362
L347:
	addq	$8, %rsi
	movq	%rcx, (%rax)
	cmpq	%rsi, %r12
	je	L385
	movq	(%rsi), %rcx
	leaq	-8(%rsi), %rax
	cmpq	-8(%rsi), %rcx
	jl	L348
L388:
	movq	%rsi, %rax
	jmp	L347
	.align 4
L341:
	addl	$1, %ebx
	cmpl	%r13d, %ebx
	jne	L337
	jmp	L342
	.align 4
L339:
	movq	(%rsp), %rdx
	movq	8(%rsp), %rdi
	call	__ZNSt6vectorINSt6chrono8durationIxSt5ratioILl1ELl1000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_
LEHE30:
	jmp	L340
L344:
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	__ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_.constprop.144
	jmp	L385
L387:
	leaq	lC18(%rip), %rdi
LEHB31:
	call	__ZSt20__throw_length_errorPKc
LEHE31:
L364:
	movq	%rax, %rbx
	jmp	L354
L363:
	movq	%rax, %rbx
	jmp	L352
L366:
	movq	%rax, %rbx
	jmp	L356
L365:
	movq	%rax, %rbx
	jmp	L358
	.section __DATA,__gcc_except_tab
GCC_except_table12:
LLSDA4108:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x5b
	.set L$set$63,LEHB25-LFB4108
	.long L$set$63
	.set L$set$64,LEHE25-LEHB25
	.long L$set$64
	.long	0
	.byte	0
	.set L$set$65,LEHB26-LFB4108
	.long L$set$65
	.set L$set$66,LEHE26-LEHB26
	.long L$set$66
	.set L$set$67,L363-LFB4108
	.long L$set$67
	.byte	0
	.set L$set$68,LEHB27-LFB4108
	.long L$set$68
	.set L$set$69,LEHE27-LEHB27
	.long L$set$69
	.long	0
	.byte	0
	.set L$set$70,LEHB28-LFB4108
	.long L$set$70
	.set L$set$71,LEHE28-LEHB28
	.long L$set$71
	.set L$set$72,L364-LFB4108
	.long L$set$72
	.byte	0
	.set L$set$73,LEHB29-LFB4108
	.long L$set$73
	.set L$set$74,LEHE29-LEHB29
	.long L$set$74
	.set L$set$75,L365-LFB4108
	.long L$set$75
	.byte	0
	.set L$set$76,LEHB30-LFB4108
	.long L$set$76
	.set L$set$77,LEHE30-LEHB30
	.long L$set$77
	.set L$set$78,L366-LFB4108
	.long L$set$78
	.byte	0
	.set L$set$79,LEHB31-LFB4108
	.long L$set$79
	.set L$set$80,LEHE31-LEHB31
	.long L$set$80
	.set L$set$81,L365-LFB4108
	.long L$set$81
	.byte	0
	.section __TEXT,__text_startup,regular,pure_instructions
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of__main:
_main.cold.153:
L354:
LCFI157:
	movq	64(%rsp), %rdi
	addq	$16, %rbp
	cmpq	%rbp, %rdi
	je	L355
	call	__ZdlPv
L355:
	movq	%rbx, %rdi
LEHB32:
	call	__Unwind_Resume
L352:
	movq	64(%rsp), %rdi
	addq	$16, %rbp
	cmpq	%rbp, %rdi
	je	L353
	call	__ZdlPv
L353:
	movq	%rbx, %rdi
	call	__Unwind_Resume
L356:
	movq	64(%rsp), %rdi
	addq	$16, %rbp
	cmpq	%rbp, %rdi
	je	L358
	call	__ZdlPv
L358:
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	L359
	call	__ZdlPv
L359:
	movq	%rbx, %rdi
	call	__Unwind_Resume
LEHE32:
LFE4108:
	.section __DATA,__gcc_except_tab
GCC_except_table13:
LLSDAC4108:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xd
	.set L$set$82,LEHB32-LCOLDB19
	.long L$set$82
	.set L$set$83,LEHE32-LEHB32
	.long L$set$83
	.long	0
	.byte	0
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE19:
	.section __TEXT,__text_startup,regular,pure_instructions
LHOTE19:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB20:
	.text
LHOTB20:
	.align 4,0x90
	.globl __ZN10benchmarks4util13generate_intsEj
__ZN10benchmarks4util13generate_intsEj:
LFB4105:
	pushq	%r14
LCFI158:
	movl	%esi, %esi
	pxor	%xmm0, %xmm0
	pushq	%r13
LCFI159:
	pushq	%r12
LCFI160:
	pushq	%rbp
LCFI161:
	xorl	%ebp, %ebp
	pushq	%rbx
LCFI162:
	movq	%rdi, %rbx
	subq	$5024, %rsp
LCFI163:
	testq	%rsi, %rsi
	movups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	je	L408
	leaq	0(,%rsi,4), %r12
	movq	%r12, %rdi
LEHB33:
	call	__Znwm
LEHE33:
	movq	%r12, %rdx
	xorl	%esi, %esi
	leaq	(%rax,%r12), %rbp
	movq	%rax, (%rbx)
	movq	%rax, %rdi
	movq	%rbp, 16(%rbx)
	call	_memset
L408:
	movq	%rsp, %r14
	movq	%rbp, 8(%rbx)
	movl	$2147483647, %edx
	movl	$-2147483648, %esi
	movq	%r14, %rdi
LEHB34:
	call	__ZN10benchmarks4util13int_generatorEii
LEHE34:
	movq	8(%rbx), %r12
	leaq	2512(%rsp), %rbp
	movl	$2512, %edx
	movq	%r14, %rsi
	movq	(%rbx), %r13
	movq	%rbp, %rdi
	call	_memcpy
	cmpq	%r12, %r13
	je	L389
	movdqa	lC8(%rip), %xmm5
	movdqa	lC7(%rip), %xmm4
	movdqa	lC9(%rip), %xmm3
	.align 4,0x90
L404:
	movl	2512(%rsp), %edi
	movl	2516(%rsp), %ecx
	subl	%edi, %ecx
	cmpl	$-1, %ecx
	je	L392
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
	jmp	L402
	.align 4,0x90
L428:
	movl	2520(%rsp,%rsi,4), %edx
	addq	$1, %rsi
	.align 4,0x90
L394:
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
	ja	L427
L402:
	cmpq	$623, %rsi
	jbe	L428
	leaq	8(%rbp), %rax
	.align 4,0x90
L395:
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
	jne	L395
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
L399:
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
	jne	L399
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
	jmp	L394
	.align 4,0x90
L427:
	xorl	%edx, %edx
	movq	%rsi, 5016(%rsp)
	divl	%r8d
L403:
	addl	%edi, %eax
	addq	$4, %r13
	movl	%eax, -4(%r13)
	cmpq	%r13, %r12
	jne	L404
L389:
	addq	$5024, %rsp
LCFI164:
	movq	%rbx, %rax
	popq	%rbx
LCFI165:
	popq	%rbp
LCFI166:
	popq	%r12
LCFI167:
	popq	%r13
LCFI168:
	popq	%r14
LCFI169:
	ret
	.align 4,0x90
L392:
LCFI170:
	leaq	8(%rbp), %rdi
	call	__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	movl	2512(%rsp), %edi
	movdqa	lC9(%rip), %xmm3
	movdqa	lC7(%rip), %xmm4
	movdqa	lC8(%rip), %xmm5
	jmp	L403
L409:
	movq	%rax, %rbp
	jmp	L406
	.section __DATA,__gcc_except_tab
GCC_except_table14:
LLSDA4105:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x1a
	.set L$set$84,LEHB33-LFB4105
	.long L$set$84
	.set L$set$85,LEHE33-LEHB33
	.long L$set$85
	.long	0
	.byte	0
	.set L$set$86,LEHB34-LFB4105
	.long L$set$86
	.set L$set$87,LEHE34-LEHB34
	.long L$set$87
	.set L$set$88,L409-LFB4105
	.long L$set$88
	.byte	0
	.text
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___ZN10benchmarks4util13generate_intsEj:
__ZN10benchmarks4util13generate_intsEj.cold.154:
L406:
LCFI171:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	L407
	call	__ZdlPv
L407:
	movq	%rbp, %rdi
LEHB35:
	call	__Unwind_Resume
LEHE35:
LFE4105:
	.section __DATA,__gcc_except_tab
GCC_except_table15:
LLSDAC4105:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xd
	.set L$set$89,LEHB35-LCOLDB20
	.long L$set$89
	.set L$set$90,LEHE35-LEHB35
	.long L$set$90
	.long	0
	.byte	0
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE20:
	.text
LHOTE20:
	.section __TEXT,__text_cold,regular,pure_instructions
	.section __TEXT,__text_startup,regular,pure_instructions
	.align 4
__GLOBAL__sub_I_stringstream_formatted_read.cpp:
LFB5118:
	leaq	__ZStL8__ioinit(%rip), %rdi
	subq	$8, %rsp
LCFI172:
	call	__ZNSt8ios_base4InitC1Ev
	movq	__ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
LCFI173:
	leaq	___dso_handle(%rip), %rdx
	leaq	__ZStL8__ioinit(%rip), %rsi
	jmp	___cxa_atexit
LFE5118:
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
	.set L$set$91,LECIE1-LSCIE1
	.long L$set$91
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
	.set L$set$92,LEFDE1-LASFDE1
	.long L$set$92
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB3034-.
	.set L$set$93,LFE3034-LFB3034
	.quad L$set$93
	.byte	0x8
	.quad	LLSDA3034-.
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$94,LEFDE3-LASFDE3
	.long L$set$94
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB5265-.
	.set L$set$95,LFE5265-LFB5265
	.quad L$set$95
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$96,LCFI0-LFB5265
	.long L$set$96
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$97,LCFI1-LCFI0
	.long L$set$97
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$98,LCFI2-LCFI1
	.long L$set$98
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$99,LCFI3-LCFI2
	.long L$set$99
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$100,LCFI4-LCFI3
	.long L$set$100
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$101,LCFI5-LCFI4
	.long L$set$101
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$102,LCFI6-LCFI5
	.long L$set$102
	.byte	0xb
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$103,LEFDE5-LASFDE5
	.long L$set$103
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB5261-.
	.set L$set$104,LFE5261-LFB5261
	.quad L$set$104
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$105,LCFI7-LFB5261
	.long L$set$105
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$106,LCFI8-LCFI7
	.long L$set$106
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$107,LCFI9-LCFI8
	.long L$set$107
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$108,LCFI10-LCFI9
	.long L$set$108
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$109,LCFI11-LCFI10
	.long L$set$109
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$110,LCFI12-LCFI11
	.long L$set$110
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$111,LCFI13-LCFI12
	.long L$set$111
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$112,LCFI14-LCFI13
	.long L$set$112
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$113,LCFI15-LCFI14
	.long L$set$113
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$114,LCFI16-LCFI15
	.long L$set$114
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$115,LCFI17-LCFI16
	.long L$set$115
	.byte	0xb
	.byte	0x4
	.set L$set$116,LCFI18-LCFI17
	.long L$set$116
	.byte	0xe
	.byte	0x8
	.byte	0xc3
	.byte	0xc6
	.byte	0xcc
	.byte	0xcd
	.byte	0xce
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$117,LEFDE7-LASFDE7
	.long L$set$117
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB5260-.
	.set L$set$118,LFE5260-LFB5260
	.quad L$set$118
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$119,LCFI19-LFB5260
	.long L$set$119
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$120,LCFI20-LCFI19
	.long L$set$120
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$121,LCFI21-LCFI20
	.long L$set$121
	.byte	0x8c
	.byte	0x3
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$122,LCFI22-LCFI21
	.long L$set$122
	.byte	0xa
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$123,LCFI23-LCFI22
	.long L$set$123
	.byte	0xb
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$124,LEFDE9-LASFDE9
	.long L$set$124
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB5256-.
	.set L$set$125,LFE5256-LFB5256
	.quad L$set$125
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$126,LCFI24-LFB5256
	.long L$set$126
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$127,LCFI25-LCFI24
	.long L$set$127
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$128,LCFI26-LCFI25
	.long L$set$128
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$129,LCFI27-LCFI26
	.long L$set$129
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$130,LCFI28-LCFI27
	.long L$set$130
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$131,LCFI29-LCFI28
	.long L$set$131
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$132,LCFI30-LCFI29
	.long L$set$132
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$133,LCFI31-LCFI30
	.long L$set$133
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$134,LCFI32-LCFI31
	.long L$set$134
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$135,LCFI33-LCFI32
	.long L$set$135
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$136,LCFI34-LCFI33
	.long L$set$136
	.byte	0xb
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$137,LEFDE11-LASFDE11
	.long L$set$137
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB5199-.
	.set L$set$138,LFE5199-LFB5199
	.quad L$set$138
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$139,LCFI35-LFB5199
	.long L$set$139
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$140,LCFI36-LCFI35
	.long L$set$140
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$141,LCFI37-LCFI36
	.long L$set$141
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$142,LCFI38-LCFI37
	.long L$set$142
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$143,LCFI39-LCFI38
	.long L$set$143
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$144,LCFI40-LCFI39
	.long L$set$144
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$145,LCFI41-LCFI40
	.long L$set$145
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$146,LCFI42-LCFI41
	.long L$set$146
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$147,LCFI43-LCFI42
	.long L$set$147
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$148,LCFI44-LCFI43
	.long L$set$148
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$149,LCFI45-LCFI44
	.long L$set$149
	.byte	0xb
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$150,LEFDE13-LASFDE13
	.long L$set$150
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB4100-.
	.set L$set$151,LHOTE4-LFB4100
	.quad L$set$151
	.byte	0x8
	.quad	LLSDA4100-.
	.byte	0x4
	.set L$set$152,LCFI46-LFB4100
	.long L$set$152
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$153,LCFI47-LCFI46
	.long L$set$153
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$154,LCFI48-LCFI47
	.long L$set$154
	.byte	0xe
	.byte	0xf0,0x13
	.byte	0x4
	.set L$set$155,LCFI49-LCFI48
	.long L$set$155
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$156,LCFI50-LCFI49
	.long L$set$156
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$157,LCFI51-LCFI50
	.long L$set$157
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$158,LCFI52-LCFI51
	.long L$set$158
	.byte	0xb
	.align 3
LEFDE13:
LSFDE15:
	.set L$set$159,LEFDE15-LASFDE15
	.long L$set$159
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LCOLDB4-.
	.set L$set$160,LCOLDE4-LCOLDB4
	.quad L$set$160
	.byte	0x8
	.quad	LLSDAC4100-.
	.byte	0x4
	.set L$set$161,LCFI53-LCOLDB4
	.long L$set$161
	.byte	0xe
	.byte	0xf0,0x13
	.byte	0x83
	.byte	0x3
	.byte	0x86
	.byte	0x2
	.align 3
LEFDE15:
LSFDE17:
	.set L$set$162,LEFDE17-LASFDE17
	.long L$set$162
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB4102-.
	.set L$set$163,LHOTE13-LFB4102
	.quad L$set$163
	.byte	0x8
	.quad	LLSDA4102-.
	.byte	0x4
	.set L$set$164,LCFI54-LFB4102
	.long L$set$164
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$165,LCFI55-LCFI54
	.long L$set$165
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$166,LCFI56-LCFI55
	.long L$set$166
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$167,LCFI57-LCFI56
	.long L$set$167
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$168,LCFI58-LCFI57
	.long L$set$168
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$169,LCFI59-LCFI58
	.long L$set$169
	.byte	0xe
	.byte	0x90,0x28
	.byte	0x4
	.set L$set$170,LCFI60-LCFI59
	.long L$set$170
	.byte	0xa
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$171,LCFI61-LCFI60
	.long L$set$171
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$172,LCFI62-LCFI61
	.long L$set$172
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$173,LCFI63-LCFI62
	.long L$set$173
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$174,LCFI64-LCFI63
	.long L$set$174
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$175,LCFI65-LCFI64
	.long L$set$175
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$176,LCFI66-LCFI65
	.long L$set$176
	.byte	0xb
	.align 3
LEFDE17:
LSFDE19:
	.set L$set$177,LEFDE19-LASFDE19
	.long L$set$177
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LCOLDB13-.
	.set L$set$178,LCOLDE13-LCOLDB13
	.quad L$set$178
	.byte	0x8
	.quad	LLSDAC4102-.
	.byte	0x4
	.set L$set$179,LCFI67-LCOLDB13
	.long L$set$179
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
LEFDE19:
LSFDE21:
	.set L$set$180,LEFDE21-LASFDE21
	.long L$set$180
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB4103-.
	.set L$set$181,LHOTE14-LFB4103
	.quad L$set$181
	.byte	0x8
	.quad	LLSDA4103-.
	.byte	0x4
	.set L$set$182,LCFI68-LFB4103
	.long L$set$182
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$183,LCFI69-LCFI68
	.long L$set$183
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$184,LCFI70-LCFI69
	.long L$set$184
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$185,LCFI71-LCFI70
	.long L$set$185
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$186,LCFI72-LCFI71
	.long L$set$186
	.byte	0xe
	.byte	0x80,0x14
	.byte	0x4
	.set L$set$187,LCFI73-LCFI72
	.long L$set$187
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$188,LCFI74-LCFI73
	.long L$set$188
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$189,LCFI75-LCFI74
	.long L$set$189
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$190,LCFI76-LCFI75
	.long L$set$190
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$191,LCFI77-LCFI76
	.long L$set$191
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$192,LCFI78-LCFI77
	.long L$set$192
	.byte	0xb
	.align 3
LEFDE21:
LSFDE23:
	.set L$set$193,LEFDE23-LASFDE23
	.long L$set$193
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LCOLDB14-.
	.set L$set$194,LCOLDE14-LCOLDB14
	.quad L$set$194
	.byte	0x8
	.quad	LLSDAC4103-.
	.byte	0x4
	.set L$set$195,LCFI79-LCOLDB14
	.long L$set$195
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
LEFDE23:
LSFDE25:
	.set L$set$196,LEFDE25-LASFDE25
	.long L$set$196
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB4107-.
	.set L$set$197,LHOTE15-LFB4107
	.quad L$set$197
	.byte	0x8
	.quad	LLSDA4107-.
	.byte	0x4
	.set L$set$198,LCFI80-LFB4107
	.long L$set$198
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$199,LCFI81-LCFI80
	.long L$set$199
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$200,LCFI82-LCFI81
	.long L$set$200
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$201,LCFI83-LCFI82
	.long L$set$201
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$202,LCFI84-LCFI83
	.long L$set$202
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$203,LCFI85-LCFI84
	.long L$set$203
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$204,LCFI86-LCFI85
	.long L$set$204
	.byte	0xe
	.byte	0xd0,0x3
	.byte	0x4
	.set L$set$205,LCFI87-LCFI86
	.long L$set$205
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$206,LCFI88-LCFI87
	.long L$set$206
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$207,LCFI89-LCFI88
	.long L$set$207
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$208,LCFI90-LCFI89
	.long L$set$208
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$209,LCFI91-LCFI90
	.long L$set$209
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$210,LCFI92-LCFI91
	.long L$set$210
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$211,LCFI93-LCFI92
	.long L$set$211
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$212,LCFI94-LCFI93
	.long L$set$212
	.byte	0xb
	.align 3
LEFDE25:
LSFDE27:
	.set L$set$213,LEFDE27-LASFDE27
	.long L$set$213
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LCOLDB15-.
	.set L$set$214,LCOLDE15-LCOLDB15
	.quad L$set$214
	.byte	0x8
	.quad	LLSDAC4107-.
	.byte	0x4
	.set L$set$215,LCFI95-LCOLDB15
	.long L$set$215
	.byte	0xe
	.byte	0xd0,0x3
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
LEFDE27:
LSFDE29:
	.set L$set$216,LEFDE29-LASFDE29
	.long L$set$216
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB4150-.
	.set L$set$217,LFE4150-LFB4150
	.quad L$set$217
	.byte	0x8
	.quad	LLSDA4150-.
	.byte	0x4
	.set L$set$218,LCFI96-LFB4150
	.long L$set$218
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$219,LCFI97-LCFI96
	.long L$set$219
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$220,LCFI98-LCFI97
	.long L$set$220
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$221,LCFI99-LCFI98
	.long L$set$221
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$222,LCFI100-LCFI99
	.long L$set$222
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$223,LCFI101-LCFI100
	.long L$set$223
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$224,LCFI102-LCFI101
	.long L$set$224
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$225,LCFI103-LCFI102
	.long L$set$225
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$226,LCFI104-LCFI103
	.long L$set$226
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$227,LCFI105-LCFI104
	.long L$set$227
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$228,LCFI106-LCFI105
	.long L$set$228
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$229,LCFI107-LCFI106
	.long L$set$229
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$230,LCFI108-LCFI107
	.long L$set$230
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$231,LCFI109-LCFI108
	.long L$set$231
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$232,LCFI110-LCFI109
	.long L$set$232
	.byte	0xb
	.align 3
LEFDE29:
LSFDE31:
	.set L$set$233,LEFDE31-LASFDE31
	.long L$set$233
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB4780-.
	.set L$set$234,LFE4780-LFB4780
	.quad L$set$234
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$235,LCFI111-LFB4780
	.long L$set$235
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$236,LCFI112-LCFI111
	.long L$set$236
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$237,LCFI113-LCFI112
	.long L$set$237
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$238,LCFI114-LCFI113
	.long L$set$238
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$239,LCFI115-LCFI114
	.long L$set$239
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$240,LCFI116-LCFI115
	.long L$set$240
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$241,LCFI117-LCFI116
	.long L$set$241
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$242,LCFI118-LCFI117
	.long L$set$242
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$243,LCFI119-LCFI118
	.long L$set$243
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$244,LCFI120-LCFI119
	.long L$set$244
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$245,LCFI121-LCFI120
	.long L$set$245
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$246,LCFI122-LCFI121
	.long L$set$246
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$247,LCFI123-LCFI122
	.long L$set$247
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$248,LCFI124-LCFI123
	.long L$set$248
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$249,LCFI125-LCFI124
	.long L$set$249
	.byte	0xb
	.align 3
LEFDE31:
LSFDE33:
	.set L$set$250,LEFDE33-LASFDE33
	.long L$set$250
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB4851-.
	.set L$set$251,LFE4851-LFB4851
	.quad L$set$251
	.byte	0x8
	.quad	0
	.align 3
LEFDE33:
LSFDE35:
	.set L$set$252,LEFDE35-LASFDE35
	.long L$set$252
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LFB4106-.
	.set L$set$253,LHOTE16-LFB4106
	.quad L$set$253
	.byte	0x8
	.quad	LLSDA4106-.
	.byte	0x4
	.set L$set$254,LCFI126-LFB4106
	.long L$set$254
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$255,LCFI127-LCFI126
	.long L$set$255
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$256,LCFI128-LCFI127
	.long L$set$256
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$257,LCFI129-LCFI128
	.long L$set$257
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$258,LCFI130-LCFI129
	.long L$set$258
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$259,LCFI131-LCFI130
	.long L$set$259
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$260,LCFI132-LCFI131
	.long L$set$260
	.byte	0xe
	.byte	0x80,0x28
	.byte	0x4
	.set L$set$261,LCFI133-LCFI132
	.long L$set$261
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$262,LCFI134-LCFI133
	.long L$set$262
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$263,LCFI135-LCFI134
	.long L$set$263
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$264,LCFI136-LCFI135
	.long L$set$264
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$265,LCFI137-LCFI136
	.long L$set$265
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$266,LCFI138-LCFI137
	.long L$set$266
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$267,LCFI139-LCFI138
	.long L$set$267
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$268,LCFI140-LCFI139
	.long L$set$268
	.byte	0xb
	.align 3
LEFDE35:
LSFDE37:
	.set L$set$269,LEFDE37-LASFDE37
	.long L$set$269
LASFDE37:
	.long	LASFDE37-EH_frame1
	.quad	LCOLDB16-.
	.set L$set$270,LCOLDE16-LCOLDB16
	.quad L$set$270
	.byte	0x8
	.quad	LLSDAC4106-.
	.byte	0x4
	.set L$set$271,LCFI141-LCOLDB16
	.long L$set$271
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
LEFDE37:
LSFDE39:
	.set L$set$272,LEFDE39-LASFDE39
	.long L$set$272
LASFDE39:
	.long	LASFDE39-EH_frame1
	.quad	LFB4108-.
	.set L$set$273,LHOTE19-LFB4108
	.quad L$set$273
	.byte	0x8
	.quad	LLSDA4108-.
	.byte	0x4
	.set L$set$274,LCFI142-LFB4108
	.long L$set$274
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$275,LCFI143-LCFI142
	.long L$set$275
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$276,LCFI144-LCFI143
	.long L$set$276
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$277,LCFI145-LCFI144
	.long L$set$277
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$278,LCFI146-LCFI145
	.long L$set$278
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$279,LCFI147-LCFI146
	.long L$set$279
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$280,LCFI148-LCFI147
	.long L$set$280
	.byte	0xe
	.byte	0xa0,0x1
	.byte	0x4
	.set L$set$281,LCFI149-LCFI148
	.long L$set$281
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$282,LCFI150-LCFI149
	.long L$set$282
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$283,LCFI151-LCFI150
	.long L$set$283
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$284,LCFI152-LCFI151
	.long L$set$284
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$285,LCFI153-LCFI152
	.long L$set$285
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$286,LCFI154-LCFI153
	.long L$set$286
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$287,LCFI155-LCFI154
	.long L$set$287
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$288,LCFI156-LCFI155
	.long L$set$288
	.byte	0xb
	.align 3
LEFDE39:
LSFDE41:
	.set L$set$289,LEFDE41-LASFDE41
	.long L$set$289
LASFDE41:
	.long	LASFDE41-EH_frame1
	.quad	LCOLDB19-.
	.set L$set$290,LCOLDE19-LCOLDB19
	.quad L$set$290
	.byte	0x8
	.quad	LLSDAC4108-.
	.byte	0x4
	.set L$set$291,LCFI157-LCOLDB19
	.long L$set$291
	.byte	0xe
	.byte	0xa0,0x1
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
	.set L$set$292,LEFDE43-LASFDE43
	.long L$set$292
LASFDE43:
	.long	LASFDE43-EH_frame1
	.quad	LFB4105-.
	.set L$set$293,LHOTE20-LFB4105
	.quad L$set$293
	.byte	0x8
	.quad	LLSDA4105-.
	.byte	0x4
	.set L$set$294,LCFI158-LFB4105
	.long L$set$294
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$295,LCFI159-LCFI158
	.long L$set$295
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$296,LCFI160-LCFI159
	.long L$set$296
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$297,LCFI161-LCFI160
	.long L$set$297
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$298,LCFI162-LCFI161
	.long L$set$298
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$299,LCFI163-LCFI162
	.long L$set$299
	.byte	0xe
	.byte	0xd0,0x27
	.byte	0x4
	.set L$set$300,LCFI164-LCFI163
	.long L$set$300
	.byte	0xa
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$301,LCFI165-LCFI164
	.long L$set$301
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$302,LCFI166-LCFI165
	.long L$set$302
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$303,LCFI167-LCFI166
	.long L$set$303
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$304,LCFI168-LCFI167
	.long L$set$304
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$305,LCFI169-LCFI168
	.long L$set$305
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$306,LCFI170-LCFI169
	.long L$set$306
	.byte	0xb
	.align 3
LEFDE43:
LSFDE45:
	.set L$set$307,LEFDE45-LASFDE45
	.long L$set$307
LASFDE45:
	.long	LASFDE45-EH_frame1
	.quad	LCOLDB20-.
	.set L$set$308,LCOLDE20-LCOLDB20
	.quad L$set$308
	.byte	0x8
	.quad	LLSDAC4105-.
	.byte	0x4
	.set L$set$309,LCFI171-LCOLDB20
	.long L$set$309
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
	.set L$set$310,LEFDE47-LASFDE47
	.long L$set$310
LASFDE47:
	.long	LASFDE47-EH_frame1
	.quad	LFB5118-.
	.set L$set$311,LFE5118-LFB5118
	.quad L$set$311
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$312,LCFI172-LFB5118
	.long L$set$312
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$313,LCFI173-LCFI172
	.long L$set$313
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE47:
	.mod_init_func
	.align 3
	.quad	__GLOBAL__sub_I_stringstream_formatted_read.cpp
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
