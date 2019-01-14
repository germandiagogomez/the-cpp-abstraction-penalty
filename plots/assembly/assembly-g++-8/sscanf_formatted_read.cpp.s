	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt13random_deviceD1Ev
	.weak_definition __ZNSt13random_deviceD1Ev
__ZNSt13random_deviceD1Ev:
LFB2665:
	jmp	__ZNSt13random_device7_M_finiEv
LFE2665:
	.section __DATA,__gcc_except_tab
GCC_except_table0:
LLSDA2665:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0
	.text
	.align 4,0x90
__ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.constprop.136:
LFB5169:
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
LFE5169:
	.align 4,0x90
__ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_.constprop.140:
LFB5165:
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
	movq	%rbp, (%rax)
L39:
	addq	$8, %rbx
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
	.align 4,0x90
L38:
LCFI17:
	movq	%rbx, %rax
	movq	%rbp, (%rax)
	jmp	L39
	.align 4,0x90
L34:
LCFI18:
	ret
LFE5165:
	.cstring
lC0:
	.ascii "%d\0"
	.text
	.align 4,0x90
__ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.141:
LFB5164:
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
	je	L50
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm1, -128(%rbp)
	movaps	%xmm2, -112(%rbp)
	movaps	%xmm3, -96(%rbp)
	movaps	%xmm4, -80(%rbp)
	movaps	%xmm5, -64(%rbp)
	movaps	%xmm6, -48(%rbp)
	movaps	%xmm7, -32(%rbp)
L50:
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
	jne	L42
	movzbl	(%r12), %eax
	movl	$1, %ecx
	movb	%al, 16(%rbx)
L43:
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
L42:
LCFI23:
	cmpl	$8, %eax
	jnb	L44
	testb	$4, %al
	jne	L59
	testl	%eax, %eax
	je	L45
	movzbl	(%r12), %esi
	testb	$2, %al
	movb	%sil, 16(%rbx)
	jne	L60
L45:
	movq	(%rbx), %rdx
	jmp	L43
	.align 4,0x90
L44:
	movl	%eax, %esi
	subl	$1, %eax
	movq	-8(%r12,%rsi), %rdi
	cmpl	$8, %eax
	movq	%rdi, -8(%rdx,%rsi)
	jb	L45
	andl	$-8, %eax
	xorl	%esi, %esi
L48:
	movl	%esi, %edi
	addl	$8, %esi
	movq	(%r12,%rdi), %r8
	cmpl	%eax, %esi
	movq	%r8, (%rdx,%rdi)
	jb	L48
	jmp	L45
	.align 4,0x90
L59:
	movl	(%r12), %esi
	movl	%eax, %eax
	movl	%esi, 16(%rbx)
	movl	-4(%r12,%rax), %esi
	movl	%esi, -4(%rdx,%rax)
	jmp	L45
L60:
	movl	%eax, %eax
	movzwl	-2(%r12,%rax), %esi
	movw	%si, -2(%rdx,%rax)
	jmp	L45
LFE5164:
	.cstring
	.align 3
lC1:
	.ascii "basic_string::_M_construct null not valid\0"
	.text
	.align 1,0x90
	.align 4,0x90
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_.isra.78:
LFB5105:
	pushq	%r13
LCFI24:
	pushq	%r12
LCFI25:
	pushq	%rbp
LCFI26:
	leaq	16(%rdi), %rbp
	pushq	%rbx
LCFI27:
	subq	$24, %rsp
LCFI28:
	testq	%rsi, %rsi
	movq	%rbp, (%rdi)
	je	L62
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movq	%rsi, %r12
	call	_strlen
	cmpq	$15, %rax
	movq	%rax, %r13
	movq	%rax, 8(%rsp)
	ja	L73
	cmpq	$1, %rax
	jne	L66
	movzbl	(%r12), %edx
	movb	%dl, 16(%rbx)
L67:
	movq	%rax, 8(%rbx)
	movb	$0, 0(%rbp,%rax)
	addq	$24, %rsp
LCFI29:
	popq	%rbx
LCFI30:
	popq	%rbp
LCFI31:
	popq	%r12
LCFI32:
	popq	%r13
LCFI33:
	ret
	.align 4,0x90
L66:
LCFI34:
	testq	%rax, %rax
	je	L67
	jmp	L65
	.align 4,0x90
L73:
	leaq	8(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	movq	%rax, %rbp
	movq	%rax, (%rbx)
	movq	8(%rsp), %rax
	movq	%rax, 16(%rbx)
L65:
	movq	%rbp, %rdi
	movq	%r13, %rdx
	movq	%r12, %rsi
	call	_memcpy
	movq	8(%rsp), %rax
	movq	(%rbx), %rbp
	jmp	L67
L62:
	leaq	lC1(%rip), %rdi
	call	__ZSt19__throw_logic_errorPKc
LFE5105:
	.align 4,0x90
__ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_.isra.133:
LFB5160:
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
	jle	L74
	testq	%r14, %r14
	movq	%rdi, %rbx
	movq	%rsi, %r12
	je	L76
	leaq	8(%rdi), %r13
L78:
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
	jge	L83
	cmpq	%rax, %rcx
	jg	L88
	cmpq	%rdx, %rcx
	jg	L103
L104:
	movq	%rdx, (%rbx)
	movq	%rdi, 8(%rbx)
	movq	-8(%rsi), %rdi
L85:
	movq	(%rbx), %rcx
	movq	%r13, %rbp
	movq	%rsi, %rax
	.align 4,0x90
L89:
	movq	0(%rbp), %r8
	movq	%rbp, %r12
	cmpq	%rcx, %r8
	jl	L90
	leaq	-8(%rax), %rdx
	cmpq	%rcx, %rdi
	jle	L91
	subq	$16, %rax
	.align 4,0x90
L92:
	movq	%rax, %rdx
	subq	$8, %rax
	cmpq	%rcx, 8(%rax)
	jg	L92
L91:
	cmpq	%rdx, %rbp
	jnb	L105
	movq	(%rdx), %rax
	movq	%rax, 0(%rbp)
	movq	-8(%rdx), %rdi
	movq	%rdx, %rax
	movq	%r8, (%rdx)
	movq	(%rbx), %rcx
L90:
	addq	$8, %rbp
	jmp	L89
	.align 4,0x90
L83:
	cmpq	%rdx, %rcx
	jg	L104
	cmpq	%rax, %rcx
	jle	L88
L103:
	movq	%rcx, (%rbx)
	movq	%rdi, -8(%rsi)
	jmp	L85
	.align 4,0x90
L105:
	movq	%r14, %rdx
	movq	%rbp, %rdi
	call	__ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_.isra.133
	movq	%rbp, %rdx
	subq	%rbx, %rdx
	cmpq	$128, %rdx
	jle	L74
	testq	%r14, %r14
	movq	%rbp, %rsi
	jne	L78
L76:
	sarq	$3, %rdx
	leaq	-2(%rdx), %r13
	movq	%rdx, %rbp
	sarq	%r13
	jmp	L81
	.align 4,0x90
L79:
	subq	$1, %r13
L81:
	movq	(%rbx,%r13,8), %rcx
	movq	%rbp, %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	__ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.constprop.136
	testq	%r13, %r13
	jne	L79
	subq	$8, %r12
	.align 4,0x90
L80:
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
	call	__ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.constprop.136
	cmpq	$8, %rbp
	jg	L80
L74:
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
L88:
LCFI45:
	movq	%rax, (%rbx)
	movq	%rdi, (%r8)
	movq	-8(%rsi), %rdi
	jmp	L85
LFE5160:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB4:
	.text
LHOTB4:
	.align 4,0x90
	.globl __ZN10benchmarks4util16double_generatorEv
__ZN10benchmarks4util16double_generatorEv:
LFB4048:
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
	jne	L108
	leaq	__ZGVZN10benchmarks4util16double_generatorEvE2rd(%rip), %rdi
	movq	%rsp, %rbx
	call	___cxa_guard_acquire
	testl	%eax, %eax
	jne	L122
L108:
	leaq	__ZZN10benchmarks4util16double_generatorEvE2rd(%rip), %rdi
LEHB0:
	call	__ZNSt13random_device9_M_getvalEv
LEHE0:
	movl	$1, %edx
	movl	%eax, %ecx
	movl	%eax, (%rsp)
	.align 4,0x90
L111:
	movl	%ecx, %eax
	shrl	$30, %eax
	xorl	%ecx, %eax
	imull	$1812433253, %eax, %eax
	leal	(%rax,%rdx), %ecx
	movl	%ecx, (%rbx,%rdx,4)
	addq	$1, %rdx
	cmpq	$624, %rdx
	jne	L111
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
L122:
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
	je	L108
	call	__ZdlPv
	jmp	L108
L114:
	movq	%rax, %rbp
	jmp	L112
	.section __DATA,__gcc_except_tab
GCC_except_table1:
LLSDA4048:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x1a
	.set L$set$0,LEHB0-LFB4048
	.long L$set$0
	.set L$set$1,LEHE0-LEHB0
	.long L$set$1
	.long	0
	.byte	0
	.set L$set$2,LEHB1-LFB4048
	.long L$set$2
	.set L$set$3,LEHE1-LEHB1
	.long L$set$3
	.set L$set$4,L114-LFB4048
	.long L$set$4
	.byte	0
	.text
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___ZN10benchmarks4util16double_generatorEv:
__ZN10benchmarks4util16double_generatorEv.cold.144:
L112:
LCFI53:
	movq	(%rsp), %rdi
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	je	L113
	call	__ZdlPv
L113:
	leaq	__ZGVZN10benchmarks4util16double_generatorEvE2rd(%rip), %rdi
	call	___cxa_guard_abort
	movq	%rbp, %rdi
LEHB2:
	call	__Unwind_Resume
LEHE2:
LFE4048:
	.section __DATA,__gcc_except_tab
GCC_except_table2:
LLSDAC4048:
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
LFB4050:
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
	je	L145
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
L145:
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
	je	L123
	movsd	lC6(%rip), %xmm6
	subsd	%xmm8, %xmm7
	flds	lC11(%rip)
	movdqa	lC7(%rip), %xmm5
	movdqa	lC8(%rip), %xmm4
	movdqa	lC9(%rip), %xmm3
	jmp	L126
	.align 4,0x90
L165:
	divsd	%xmm2, %xmm1
	comisd	%xmm6, %xmm1
	jnb	L164
	mulsd	%xmm7, %xmm1
	addq	$8, %r14
	addsd	%xmm8, %xmm1
	movsd	%xmm1, -8(%r14)
	cmpq	%r14, %r13
	je	L167
L126:
	cmpq	$623, %rbp
	movl	$2, %edx
	pxor	%xmm1, %xmm1
	movapd	%xmm6, %xmm2
	leaq	896(%r12), %rsi
	pxor	%xmm10, %xmm10
	movdqa	lC10(%rip), %xmm11
	leaq	2492(%r12), %rcx
	ja	L127
L166:
	movl	2560(%rsp,%rbp,4), %edi
	addq	$1, %rbp
L128:
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
	je	L165
	cmpq	$623, %rbp
	movl	$1, %edx
	jbe	L166
L127:
	movq	%r12, %rax
	.align 4,0x90
L129:
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
	jne	L129
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
L133:
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
	jne	L133
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
	jmp	L128
	.align 4,0x90
L164:
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
	jne	L126
	fstp	%st(0)
	jmp	L123
	.align 4,0x90
L167:
	fstp	%st(0)
L123:
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
L147:
LCFI66:
	movq	%rax, %rbp
	jmp	L143
	.section __DATA,__gcc_except_tab
GCC_except_table3:
LLSDA4050:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x1a
	.set L$set$7,LEHB3-LFB4050
	.long L$set$7
	.set L$set$8,LEHE3-LEHB3
	.long L$set$8
	.long	0
	.byte	0
	.set L$set$9,LEHB4-LFB4050
	.long L$set$9
	.set L$set$10,LEHE4-LEHB4
	.long L$set$10
	.set L$set$11,L147-LFB4050
	.long L$set$11
	.byte	0
	.text
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___ZN10benchmarks4util16generate_doublesEj:
__ZN10benchmarks4util16generate_doublesEj.cold.145:
L143:
LCFI67:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	L144
	call	__ZdlPv
L144:
	movq	%rbp, %rdi
LEHB5:
	call	__Unwind_Resume
LEHE5:
LFE4050:
	.section __DATA,__gcc_except_tab
GCC_except_table4:
LLSDAC4050:
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
LFB4051:
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
	jne	L170
	leaq	__ZGVZN10benchmarks4util13int_generatorEiiE2rd(%rip), %rdi
	movq	%rsp, %rbx
	call	___cxa_guard_acquire
	testl	%eax, %eax
	jne	L184
L170:
	leaq	__ZZN10benchmarks4util13int_generatorEiiE2rd(%rip), %rdi
LEHB6:
	call	__ZNSt13random_device9_M_getvalEv
LEHE6:
	movl	$1, %edx
	movl	%eax, %ecx
	movl	%eax, (%rsp)
	.align 4,0x90
L173:
	movl	%ecx, %eax
	shrl	$30, %eax
	xorl	%ecx, %eax
	imull	$1812433253, %eax, %eax
	leal	(%rax,%rdx), %ecx
	movl	%ecx, (%rbx,%rdx,4)
	addq	$1, %rdx
	cmpq	$624, %rdx
	jne	L173
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
L184:
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
	je	L170
	call	__ZdlPv
	jmp	L170
L176:
	movq	%rax, %rbp
	jmp	L174
	.section __DATA,__gcc_except_tab
GCC_except_table5:
LLSDA4051:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x1a
	.set L$set$14,LEHB6-LFB4051
	.long L$set$14
	.set L$set$15,LEHE6-LEHB6
	.long L$set$15
	.long	0
	.byte	0
	.set L$set$16,LEHB7-LFB4051
	.long L$set$16
	.set L$set$17,LEHE7-LEHB7
	.long L$set$17
	.set L$set$18,L176-LFB4051
	.long L$set$18
	.byte	0
	.text
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___ZN10benchmarks4util13int_generatorEii:
__ZN10benchmarks4util13int_generatorEii.cold.146:
L174:
LCFI79:
	movq	(%rsp), %rdi
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	je	L175
	call	__ZdlPv
L175:
	leaq	__ZGVZN10benchmarks4util13int_generatorEiiE2rd(%rip), %rdi
	call	___cxa_guard_abort
	movq	%rbp, %rdi
LEHB8:
	call	__Unwind_Resume
LEHE8:
LFE4051:
	.section __DATA,__gcc_except_tab
GCC_except_table6:
LLSDAC4051:
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
	.cstring
lC15:
	.ascii "%d%n\0"
	.text
	.align 4,0x90
	.globl __Z12read_numbersRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
__Z12read_numbersRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
LFB4055:
	pushq	%r15
LCFI80:
	xorl	%r15d, %r15d
	pushq	%r14
LCFI81:
	pushq	%r13
LCFI82:
	pushq	%r12
LCFI83:
	pushq	%rbp
LCFI84:
	leaq	lC15(%rip), %rbp
	pushq	%rbx
LCFI85:
	xorl	%ebx, %ebx
	subq	$24, %rsp
LCFI86:
	movq	(%rdi), %r14
	movl	$0, 8(%rsp)
	leaq	12(%rsp), %r13
	movl	$0, 12(%rsp)
	leaq	8(%rsp), %r12
	jmp	L187
	.align 4,0x90
L189:
	addl	12(%rsp), %r15d
	addl	$1, %ebx
L187:
	movslq	%r15d, %rdi
	xorl	%eax, %eax
	addq	%r14, %rdi
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbp, %rsi
	call	_sscanf
	cmpl	$1, %eax
	je	L189
	addq	$24, %rsp
LCFI87:
	movl	%ebx, %eax
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
LFE4055:
	.align 4,0x90
	.globl __ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.weak_definition __ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
__ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
LFB4098:
	pushq	%r15
LCFI94:
	movl	%r8d, %r15d
	pushq	%r14
LCFI95:
	movq	%rsi, %r14
	pushq	%r13
LCFI96:
	pushq	%r12
LCFI97:
	movq	%rcx, %r12
	pushq	%rbp
LCFI98:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI99:
	movq	%rdx, %rbx
	subq	$24, %rsp
LCFI100:
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
	je	L203
	call	___error
LEHE10:
	cmpl	$34, (%rax)
	je	L192
	movl	$2147483648, %eax
	movl	$4294967295, %edx
	addq	%rbp, %rax
	cmpq	%rdx, %rax
	ja	L192
	testq	%r12, %r12
	je	L194
	movq	8(%rsp), %rax
	subq	%rbx, %rax
	movq	%rax, (%r12)
L194:
	call	___error
	movl	(%rax), %eax
	testl	%eax, %eax
	je	L204
L190:
	addq	$24, %rsp
LCFI101:
	movl	%ebp, %eax
	popq	%rbx
LCFI102:
	popq	%rbp
LCFI103:
	popq	%r12
LCFI104:
	popq	%r13
LCFI105:
	popq	%r14
LCFI106:
	popq	%r15
LCFI107:
	ret
	.align 4,0x90
L204:
LCFI108:
	call	___error
	movl	%r13d, (%rax)
	jmp	L190
L192:
	movq	%r14, %rdi
LEHB11:
	call	__ZSt20__throw_out_of_rangePKc
L203:
	movq	%r14, %rdi
	call	__ZSt24__throw_invalid_argumentPKc
LEHE11:
L198:
	movq	%rax, %rbx
L196:
	call	___error
	cmpl	$0, (%rax)
	jne	L197
	call	___error
	movl	%r13d, (%rax)
L197:
	movq	%rbx, %rdi
LEHB12:
	call	__Unwind_Resume
LEHE12:
LFE4098:
	.section __DATA,__gcc_except_tab
GCC_except_table7:
LLSDA4098:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x34
	.set L$set$21,LEHB9-LFB4098
	.long L$set$21
	.set L$set$22,LEHE9-LEHB9
	.long L$set$22
	.long	0
	.byte	0
	.set L$set$23,LEHB10-LFB4098
	.long L$set$23
	.set L$set$24,LEHE10-LEHB10
	.long L$set$24
	.set L$set$25,L198-LFB4098
	.long L$set$25
	.byte	0
	.set L$set$26,LEHB11-LFB4098
	.long L$set$26
	.set L$set$27,LEHE11-LEHB11
	.long L$set$27
	.set L$set$28,L198-LFB4098
	.long L$set$28
	.byte	0
	.set L$set$29,LEHB12-LFB4098
	.long L$set$29
	.set L$set$30,LEHE12-LEHB12
	.long L$set$30
	.long	0
	.byte	0
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt6vectorINSt6chrono8durationIxSt5ratioILl1ELl1000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_
	.weak_definition __ZNSt6vectorINSt6chrono8durationIxSt5ratioILl1ELl1000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_
__ZNSt6vectorINSt6chrono8durationIxSt5ratioILl1ELl1000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:
LFB4694:
	pushq	%r15
LCFI109:
	movq	%rdx, %r15
	movq	%rsi, %rdx
	pushq	%r14
LCFI110:
	pushq	%r13
LCFI111:
	movq	%rdi, %r13
	pushq	%r12
LCFI112:
	movq	%rsi, %r12
	pushq	%rbp
LCFI113:
	pushq	%rbx
LCFI114:
	subq	$40, %rsp
LCFI115:
	movq	8(%rdi), %rcx
	movq	(%rdi), %rbp
	movq	%rcx, %rax
	subq	%rbp, %rax
	subq	%rbp, %rdx
	sarq	$3, %rax
	testq	%rax, %rax
	je	L214
	leaq	(%rax,%rax), %rdi
	movq	$-8, %r14
	cmpq	%rdi, %rax
	jbe	L220
L207:
	movq	%r14, %rdi
	movq	%rdx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	call	__Znwm
	movq	16(%rsp), %rdx
	movq	8(%rsp), %rcx
	movq	%rax, %rbx
	addq	%rax, %r14
L208:
	movq	(%r15), %rax
	leaq	8(%rbx,%rdx), %r9
	movq	%rcx, %r15
	subq	%r12, %r15
	cmpq	%rbp, %r12
	movq	%rax, (%rbx,%rdx)
	leaq	(%r9,%r15), %rax
	movq	%rax, 8(%rsp)
	je	L209
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	%r9, 24(%rsp)
	movq	%rcx, 16(%rsp)
	call	_memmove
	movq	16(%rsp), %rcx
	movq	24(%rsp), %r9
	cmpq	%rcx, %r12
	je	L213
L210:
	movq	%r15, %rdx
	movq	%r12, %rsi
	movq	%r9, %rdi
	call	_memcpy
L212:
	testq	%rbp, %rbp
	jne	L213
L211:
	movq	%rbx, %xmm0
	movq	%r14, 16(%r13)
	movhps	8(%rsp), %xmm0
	movups	%xmm0, 0(%r13)
	addq	$40, %rsp
LCFI116:
	popq	%rbx
LCFI117:
	popq	%rbp
LCFI118:
	popq	%r12
LCFI119:
	popq	%r13
LCFI120:
	popq	%r14
LCFI121:
	popq	%r15
LCFI122:
	ret
	.align 4,0x90
L213:
LCFI123:
	movq	%rbp, %rdi
	call	__ZdlPv
	jmp	L211
	.align 4,0x90
L220:
	movabsq	$2305843009213693951, %rax
	cmpq	%rax, %rdi
	ja	L207
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	testq	%rdi, %rdi
	je	L208
	jmp	L206
	.align 4,0x90
L209:
	cmpq	%rcx, %r12
	jne	L210
	jmp	L212
	.align 4,0x90
L214:
	movl	$1, %edi
L206:
	leaq	0(,%rdi,8), %r14
	jmp	L207
LFE4694:
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	.weak_definition __ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv:
LFB4765:
	movq	2496(%rdi), %rax
	cmpq	$623, %rax
	ja	L222
	leaq	1(%rax), %rdx
	movl	(%rdi,%rax,4), %eax
L223:
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
L222:
	movdqa	lC8(%rip), %xmm3
	movq	%rdi, %rax
	pxor	%xmm7, %xmm7
	movdqa	lC7(%rip), %xmm2
	leaq	896(%rdi), %rdx
	movdqa	lC9(%rip), %xmm4
	movdqa	lC10(%rip), %xmm1
	.align 4,0x90
L224:
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
	jne	L224
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
L228:
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
	jne	L228
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
	jmp	L223
LFE4765:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB16:
	.text
LHOTB16:
	.align 4,0x90
	.globl __ZN10benchmarks4util20generate_ints_stringB5cxx11Ei
__ZN10benchmarks4util20generate_ints_stringB5cxx11Ei:
LFB4054:
	pushq	%r15
LCFI124:
	movslq	%esi, %rsi
	pushq	%r14
LCFI125:
	pushq	%r13
LCFI126:
	pushq	%r12
LCFI127:
	pushq	%rbp
LCFI128:
	pushq	%rbx
LCFI129:
	movq	%rdi, %rbx
	subq	$5064, %rsp
LCFI130:
	testq	%rsi, %rsi
	je	L269
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, %rsi
	ja	L293
	leaq	0(,%rsi,4), %r14
	movq	%r14, %rdi
LEHB13:
	call	__Znwm
LEHE13:
	movq	%r14, %rdx
	xorl	%esi, %esi
	movq	%rax, %r15
	movq	%rax, %rdi
	movq	%rax, 24(%rsp)
	call	_memset
	addq	%r15, %r14
L240:
	leaq	32(%rsp), %r12
	movl	$2147483647, %edx
	movl	$-2147483648, %esi
	movq	%r12, %rdi
LEHB14:
	call	__ZN10benchmarks4util13int_generatorEii
LEHE14:
	leaq	2544(%rsp), %rbp
	movl	$2512, %edx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	_memcpy
	leaq	16(%rbx), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rsp), %rax
	cmpq	%r14, %rax
	je	L242
	movl	2544(%rsp), %r9d
	movq	%rax, %r15
	movq	%rax, %r12
	movdqa	lC8(%rip), %xmm5
	movdqa	lC7(%rip), %xmm4
	movdqa	lC9(%rip), %xmm3
	.align 4,0x90
L255:
	movl	2548(%rsp), %ecx
	subl	%r9d, %ecx
	cmpl	$-1, %ecx
	je	L243
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
	jmp	L253
	.align 4,0x90
L295:
	movl	2552(%rsp,%rsi,4), %r11d
	addq	$1, %rsi
	.align 4,0x90
L245:
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
	ja	L294
L253:
	cmpq	$623, %rsi
	jbe	L295
	leaq	8(%rbp), %rax
	.align 4,0x90
L246:
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
	jne	L246
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
L250:
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
	jne	L250
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
	jmp	L245
	.align 4,0x90
L294:
	xorl	%edx, %edx
	movq	%rsi, 5048(%rsp)
	divl	%edi
L254:
	addl	%r9d, %eax
	addq	$4, %r12
	movl	%eax, -4(%r12)
	cmpq	%r12, %r14
	jne	L255
	movq	8(%rsp), %rax
	movq	$0, 8(%rbx)
	movb	$0, 16(%rbx)
	movq	%rax, (%rbx)
	leaq	16(%rbp), %rax
	movq	%rax, 16(%rsp)
	jmp	L260
	.align 4,0x90
L259:
	movb	$32, (%rax,%r12)
	movq	(%rbx), %rax
	addq	$4, %r15
	cmpq	%r15, %r14
	movq	%r13, 8(%rbx)
	movb	$0, 1(%rax,%r12)
	je	L268
L260:
	movl	(%r15), %r8d
	movl	$16, %edx
	movq	%rbp, %rdi
	xorl	%eax, %eax
	movq	_vsnprintf@GOTPCREL(%rip), %rsi
	leaq	lC0(%rip), %rcx
	call	__ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.141
	movq	2552(%rsp), %rdx
	movq	%rbx, %rdi
	movq	2544(%rsp), %rsi
LEHB15:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
LEHE15:
	movq	2544(%rsp), %rdi
	cmpq	16(%rsp), %rdi
	je	L257
	call	__ZdlPv
L257:
	movq	8(%rbx), %r12
	movq	(%rbx), %rax
	cmpq	8(%rsp), %rax
	leaq	1(%r12), %r13
	je	L270
	movq	16(%rbx), %rdx
L258:
	cmpq	%rdx, %r13
	jbe	L259
	movl	$1, %r8d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%rbx, %rdi
LEHB16:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE16:
	movq	(%rbx), %rax
	jmp	L259
	.align 4,0x90
L243:
	leaq	8(%rbp), %rdi
	call	__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	movl	2544(%rsp), %r9d
	movdqa	lC9(%rip), %xmm3
	movdqa	lC7(%rip), %xmm4
	movdqa	lC8(%rip), %xmm5
	jmp	L254
	.align 4,0x90
L270:
	movl	$15, %edx
	jmp	L258
	.align 4,0x90
L242:
	leaq	16(%rbx), %rax
	movq	$0, 8(%rbx)
	movq	%rax, (%rbx)
	movb	$0, 16(%rbx)
	.align 4,0x90
L268:
	movq	24(%rsp), %rax
	testq	%rax, %rax
	je	L239
	movq	%rax, %rdi
	call	__ZdlPv
L239:
	addq	$5064, %rsp
LCFI131:
	movq	%rbx, %rax
	popq	%rbx
LCFI132:
	popq	%rbp
LCFI133:
	popq	%r12
LCFI134:
	popq	%r13
LCFI135:
	popq	%r14
LCFI136:
	popq	%r15
LCFI137:
	ret
	.align 4,0x90
L269:
LCFI138:
	movq	$0, 24(%rsp)
	xorl	%r14d, %r14d
	jmp	L240
L293:
LEHB17:
	call	__ZSt17__throw_bad_allocv
LEHE17:
L272:
	movq	%rax, %rbp
	jmp	L264
L273:
	movq	%rax, %r12
	jmp	L262
L271:
	movq	%rax, %rbp
	jmp	L266
	.section __DATA,__gcc_except_tab
GCC_except_table8:
LLSDA4054:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x41
	.set L$set$31,LEHB13-LFB4054
	.long L$set$31
	.set L$set$32,LEHE13-LEHB13
	.long L$set$32
	.long	0
	.byte	0
	.set L$set$33,LEHB14-LFB4054
	.long L$set$33
	.set L$set$34,LEHE14-LEHB14
	.long L$set$34
	.set L$set$35,L271-LFB4054
	.long L$set$35
	.byte	0
	.set L$set$36,LEHB15-LFB4054
	.long L$set$36
	.set L$set$37,LEHE15-LEHB15
	.long L$set$37
	.set L$set$38,L273-LFB4054
	.long L$set$38
	.byte	0
	.set L$set$39,LEHB16-LFB4054
	.long L$set$39
	.set L$set$40,LEHE16-LEHB16
	.long L$set$40
	.set L$set$41,L272-LFB4054
	.long L$set$41
	.byte	0
	.set L$set$42,LEHB17-LFB4054
	.long L$set$42
	.set L$set$43,LEHE17-LEHB17
	.long L$set$43
	.long	0
	.byte	0
	.text
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___ZN10benchmarks4util20generate_ints_stringB5cxx11Ei:
__ZN10benchmarks4util20generate_ints_stringB5cxx11Ei.cold.147:
L262:
LCFI139:
	movq	2544(%rsp), %rdi
	addq	$16, %rbp
	cmpq	%rbp, %rdi
	je	L263
	call	__ZdlPv
L263:
	movq	%r12, %rbp
L264:
	movq	(%rbx), %rdi
	cmpq	8(%rsp), %rdi
	je	L266
	call	__ZdlPv
L266:
	cmpq	$0, 24(%rsp)
	je	L267
	movq	24(%rsp), %rdi
	call	__ZdlPv
L267:
	movq	%rbp, %rdi
LEHB18:
	call	__Unwind_Resume
LEHE18:
LFE4054:
	.section __DATA,__gcc_except_tab
GCC_except_table9:
LLSDAC4054:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xd
	.set L$set$44,LEHB18-LCOLDB16
	.long L$set$44
	.set L$set$45,LEHE18-LEHB18
	.long L$set$45
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
LFB4056:
	pushq	%r15
LCFI140:
	pushq	%r14
LCFI141:
	pushq	%r13
LCFI142:
	pushq	%r12
LCFI143:
	movq	%rsi, %r12
	pushq	%rbp
LCFI144:
	pushq	%rbx
LCFI145:
	subq	$120, %rsp
LCFI146:
	movq	8(%rsi), %rsi
	leaq	80(%rsp), %rbp
	movq	%rbp, %rdi
LEHB19:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_.isra.78
LEHE19:
	movq	_strtol@GOTPCREL(%rip), %rbx
	movl	$10, %r8d
	xorl	%ecx, %ecx
	movq	80(%rsp), %rdx
	leaq	lC17(%rip), %rsi
	movq	%rbx, %rdi
LEHB20:
	call	__ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
LEHE20:
	movq	80(%rsp), %rdi
	movl	%eax, %r15d
	leaq	16(%rbp), %rax
	cmpq	%rax, %rdi
	je	L297
	call	__ZdlPv
L297:
	movq	16(%r12), %rsi
	movq	%rbp, %rdi
LEHB21:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_.isra.78
LEHE21:
	movq	80(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	leaq	lC17(%rip), %rsi
	movl	$10, %r8d
LEHB22:
	call	__ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
LEHE22:
	movq	80(%rsp), %rdi
	movl	%eax, 28(%rsp)
	leaq	16(%rbp), %rax
	cmpq	%rax, %rdi
	je	L298
	call	__ZdlPv
L298:
	movq	$0, 64(%rsp)
	movslq	%r15d, %rax
	pxor	%xmm0, %xmm0
	movabsq	$2305843009213693951, %rdx
	cmpq	%rdx, %rax
	movaps	%xmm0, 48(%rsp)
	ja	L355
	testq	%rax, %rax
	jne	L349
L353:
	movq	48(%rsp), %r13
	movq	56(%rsp), %r12
L303:
	subq	%r13, %r12
	movq	__ZSt4cout@GOTPCREL(%rip), %rdi
	sarq	$3, %r12
	shrq	%r12
	movq	0(%r13,%r12,8), %rsi
LEHB23:
	call	__ZNSo9_M_insertIxEERSoT_
	movl	$1, %edx
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movb	$32, 80(%rsp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	L338
	call	__ZdlPv
L338:
	addq	$120, %rsp
LCFI147:
	xorl	%eax, %eax
	popq	%rbx
LCFI148:
	popq	%rbp
LCFI149:
	popq	%r12
LCFI150:
	popq	%r13
LCFI151:
	popq	%r14
LCFI152:
	popq	%r15
LCFI153:
	ret
L349:
LCFI154:
	leaq	0(,%rax,8), %rbx
	movq	%rbx, %rdi
	call	__Znwm
	movq	48(%rsp), %rdi
	movq	%rax, %r12
	testq	%rdi, %rdi
	je	L301
	call	__ZdlPv
L301:
	leaq	(%r12,%rbx), %rax
	movq	%r12, %xmm0
	xorl	%ebx, %ebx
	testl	%r15d, %r15d
	punpcklqdq	%xmm0, %xmm0
	movq	%rax, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	jle	L353
	leaq	40(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	36(%rsp), %rax
	movq	%rax, 16(%rsp)
	.align 4
L302:
	movl	28(%rsp), %esi
	movq	%rbp, %rdi
	call	__ZN10benchmarks4util20generate_ints_stringB5cxx11Ei
LEHE23:
	call	__ZNSt6chrono3_V212system_clock3nowEv
	xorl	%r14d, %r14d
	movl	$0, 36(%rsp)
	movq	80(%rsp), %r12
	movq	%rax, %r13
	movl	$0, 40(%rsp)
	jmp	L305
	.align 4
L356:
	addl	40(%rsp), %r14d
L305:
	movq	8(%rsp), %rcx
	movslq	%r14d, %rdi
	xorl	%eax, %eax
	movq	16(%rsp), %rdx
	leaq	lC15(%rip), %rsi
	addq	%r12, %rdi
	call	_sscanf
	cmpl	$1, %eax
	je	L356
	call	__ZNSt6chrono3_V212system_clock3nowEv
	movq	56(%rsp), %rsi
	subq	%r13, %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rax
	imulq	%rcx
	sarq	$63, %rcx
	sarq	$18, %rdx
	subq	%rcx, %rdx
	cmpq	64(%rsp), %rsi
	movq	%rdx, 40(%rsp)
	je	L306
	movq	%rdx, (%rsi)
	addq	$8, %rsi
	movq	%rsi, 56(%rsp)
L307:
	movq	80(%rsp), %rdi
	leaq	16(%rbp), %rax
	cmpq	%rax, %rdi
	je	L308
	call	__ZdlPv
	addl	$1, %ebx
	cmpl	%ebx, %r15d
	jne	L302
L309:
	movq	56(%rsp), %r12
	movq	48(%rsp), %r13
	movq	%r12, %rbx
	subq	%r13, %rbx
	movq	%rbx, %rax
	sarq	$3, %rax
	cmpq	%r12, %r13
	je	L303
	bsrq	%rax, %rax
	movl	$63, %edx
	movq	%r12, %rsi
	xorq	$63, %rax
	movq	%r13, %rdi
	cltq
	subq	%rax, %rdx
	addq	%rdx, %rdx
	call	__ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_.isra.133
	addq	$-128, %rbx
	jle	L311
	leaq	128(%r13), %rbx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	call	__ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_.constprop.140
	cmpq	%rbx, %r12
	movq	%rbx, %rsi
	je	L353
	movq	(%rsi), %rcx
	leaq	-8(%rsi), %rax
	cmpq	-8(%rsi), %rcx
	jl	L315
	jmp	L357
	.align 4
L329:
	movq	%rdx, %rax
L315:
	movq	(%rax), %rdx
	cmpq	-8(%rax), %rcx
	movq	%rdx, 8(%rax)
	leaq	-8(%rax), %rdx
	jl	L329
L314:
	addq	$8, %rsi
	movq	%rcx, (%rax)
	cmpq	%rsi, %r12
	je	L353
	movq	(%rsi), %rcx
	leaq	-8(%rsi), %rax
	cmpq	-8(%rsi), %rcx
	jl	L315
L357:
	movq	%rsi, %rax
	jmp	L314
	.align 4
L308:
	addl	$1, %ebx
	cmpl	%r15d, %ebx
	jne	L302
	jmp	L309
	.align 4
L306:
	movq	8(%rsp), %rdx
	leaq	48(%rsp), %rdi
LEHB24:
	call	__ZNSt6vectorINSt6chrono8durationIxSt5ratioILl1ELl1000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_
LEHE24:
	jmp	L307
L311:
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	__ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_.constprop.140
	jmp	L353
L355:
	leaq	lC18(%rip), %rdi
LEHB25:
	call	__ZSt20__throw_length_errorPKc
LEHE25:
L331:
	movq	%rax, %rbx
	jmp	L321
L330:
	movq	%rax, %rbx
	jmp	L319
L333:
	movq	%rax, %rbx
	jmp	L323
L332:
	movq	%rax, %rbx
	jmp	L325
	.section __DATA,__gcc_except_tab
GCC_except_table10:
LLSDA4056:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x5b
	.set L$set$46,LEHB19-LFB4056
	.long L$set$46
	.set L$set$47,LEHE19-LEHB19
	.long L$set$47
	.long	0
	.byte	0
	.set L$set$48,LEHB20-LFB4056
	.long L$set$48
	.set L$set$49,LEHE20-LEHB20
	.long L$set$49
	.set L$set$50,L330-LFB4056
	.long L$set$50
	.byte	0
	.set L$set$51,LEHB21-LFB4056
	.long L$set$51
	.set L$set$52,LEHE21-LEHB21
	.long L$set$52
	.long	0
	.byte	0
	.set L$set$53,LEHB22-LFB4056
	.long L$set$53
	.set L$set$54,LEHE22-LEHB22
	.long L$set$54
	.set L$set$55,L331-LFB4056
	.long L$set$55
	.byte	0
	.set L$set$56,LEHB23-LFB4056
	.long L$set$56
	.set L$set$57,LEHE23-LEHB23
	.long L$set$57
	.set L$set$58,L332-LFB4056
	.long L$set$58
	.byte	0
	.set L$set$59,LEHB24-LFB4056
	.long L$set$59
	.set L$set$60,LEHE24-LEHB24
	.long L$set$60
	.set L$set$61,L333-LFB4056
	.long L$set$61
	.byte	0
	.set L$set$62,LEHB25-LFB4056
	.long L$set$62
	.set L$set$63,LEHE25-LEHB25
	.long L$set$63
	.set L$set$64,L332-LFB4056
	.long L$set$64
	.byte	0
	.section __TEXT,__text_startup,regular,pure_instructions
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of__main:
_main.cold.148:
L321:
LCFI155:
	movq	80(%rsp), %rdi
	addq	$16, %rbp
	cmpq	%rbp, %rdi
	je	L322
	call	__ZdlPv
L322:
	movq	%rbx, %rdi
LEHB26:
	call	__Unwind_Resume
L319:
	movq	80(%rsp), %rdi
	addq	$16, %rbp
	cmpq	%rbp, %rdi
	je	L320
	call	__ZdlPv
L320:
	movq	%rbx, %rdi
	call	__Unwind_Resume
L323:
	movq	80(%rsp), %rdi
	addq	$16, %rbp
	cmpq	%rbp, %rdi
	je	L325
	call	__ZdlPv
L325:
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	L326
	call	__ZdlPv
L326:
	movq	%rbx, %rdi
	call	__Unwind_Resume
LEHE26:
LFE4056:
	.section __DATA,__gcc_except_tab
GCC_except_table11:
LLSDAC4056:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xd
	.set L$set$65,LEHB26-LCOLDB19
	.long L$set$65
	.set L$set$66,LEHE26-LEHB26
	.long L$set$66
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
LFB4053:
	pushq	%r14
LCFI156:
	movl	%esi, %esi
	pxor	%xmm0, %xmm0
	pushq	%r13
LCFI157:
	pushq	%r12
LCFI158:
	pushq	%rbp
LCFI159:
	xorl	%ebp, %ebp
	pushq	%rbx
LCFI160:
	movq	%rdi, %rbx
	subq	$5024, %rsp
LCFI161:
	testq	%rsi, %rsi
	movups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	je	L377
	leaq	0(,%rsi,4), %r12
	movq	%r12, %rdi
LEHB27:
	call	__Znwm
LEHE27:
	movq	%r12, %rdx
	xorl	%esi, %esi
	leaq	(%rax,%r12), %rbp
	movq	%rax, (%rbx)
	movq	%rax, %rdi
	movq	%rbp, 16(%rbx)
	call	_memset
L377:
	movq	%rsp, %r14
	movq	%rbp, 8(%rbx)
	movl	$2147483647, %edx
	movl	$-2147483648, %esi
	movq	%r14, %rdi
LEHB28:
	call	__ZN10benchmarks4util13int_generatorEii
LEHE28:
	movq	8(%rbx), %r12
	leaq	2512(%rsp), %rbp
	movl	$2512, %edx
	movq	%r14, %rsi
	movq	(%rbx), %r13
	movq	%rbp, %rdi
	call	_memcpy
	cmpq	%r12, %r13
	je	L358
	movdqa	lC8(%rip), %xmm5
	movdqa	lC7(%rip), %xmm4
	movdqa	lC9(%rip), %xmm3
	.align 4,0x90
L373:
	movl	2512(%rsp), %edi
	movl	2516(%rsp), %ecx
	subl	%edi, %ecx
	cmpl	$-1, %ecx
	je	L361
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
	jmp	L371
	.align 4,0x90
L397:
	movl	2520(%rsp,%rsi,4), %edx
	addq	$1, %rsi
	.align 4,0x90
L363:
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
	ja	L396
L371:
	cmpq	$623, %rsi
	jbe	L397
	leaq	8(%rbp), %rax
	.align 4,0x90
L364:
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
	jne	L364
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
L368:
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
	jne	L368
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
	jmp	L363
	.align 4,0x90
L396:
	xorl	%edx, %edx
	movq	%rsi, 5016(%rsp)
	divl	%r8d
L372:
	addl	%edi, %eax
	addq	$4, %r13
	movl	%eax, -4(%r13)
	cmpq	%r13, %r12
	jne	L373
L358:
	addq	$5024, %rsp
LCFI162:
	movq	%rbx, %rax
	popq	%rbx
LCFI163:
	popq	%rbp
LCFI164:
	popq	%r12
LCFI165:
	popq	%r13
LCFI166:
	popq	%r14
LCFI167:
	ret
	.align 4,0x90
L361:
LCFI168:
	leaq	8(%rbp), %rdi
	call	__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	movl	2512(%rsp), %edi
	movdqa	lC9(%rip), %xmm3
	movdqa	lC7(%rip), %xmm4
	movdqa	lC8(%rip), %xmm5
	jmp	L372
L378:
	movq	%rax, %rbp
	jmp	L375
	.section __DATA,__gcc_except_tab
GCC_except_table12:
LLSDA4053:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x1a
	.set L$set$67,LEHB27-LFB4053
	.long L$set$67
	.set L$set$68,LEHE27-LEHB27
	.long L$set$68
	.long	0
	.byte	0
	.set L$set$69,LEHB28-LFB4053
	.long L$set$69
	.set L$set$70,LEHE28-LEHB28
	.long L$set$70
	.set L$set$71,L378-LFB4053
	.long L$set$71
	.byte	0
	.text
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___ZN10benchmarks4util13generate_intsEj:
__ZN10benchmarks4util13generate_intsEj.cold.149:
L375:
LCFI169:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	L376
	call	__ZdlPv
L376:
	movq	%rbp, %rdi
LEHB29:
	call	__Unwind_Resume
LEHE29:
LFE4053:
	.section __DATA,__gcc_except_tab
GCC_except_table13:
LLSDAC4053:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xd
	.set L$set$72,LEHB29-LCOLDB20
	.long L$set$72
	.set L$set$73,LEHE29-LEHB29
	.long L$set$73
	.long	0
	.byte	0
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE20:
	.text
LHOTE20:
	.section __TEXT,__text_cold,regular,pure_instructions
	.section __TEXT,__text_startup,regular,pure_instructions
	.align 4
__GLOBAL__sub_I_sscanf_formatted_read.cpp:
LFB5026:
	leaq	__ZStL8__ioinit(%rip), %rdi
	subq	$8, %rsp
LCFI170:
	call	__ZNSt8ios_base4InitC1Ev
	movq	__ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
LCFI171:
	leaq	___dso_handle(%rip), %rdx
	leaq	__ZStL8__ioinit(%rip), %rsi
	jmp	___cxa_atexit
LFE5026:
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
	.set L$set$74,LECIE1-LSCIE1
	.long L$set$74
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
	.set L$set$75,LEFDE1-LASFDE1
	.long L$set$75
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB2665-.
	.set L$set$76,LFE2665-LFB2665
	.quad L$set$76
	.byte	0x8
	.quad	LLSDA2665-.
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$77,LEFDE3-LASFDE3
	.long L$set$77
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB5169-.
	.set L$set$78,LFE5169-LFB5169
	.quad L$set$78
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$79,LCFI0-LFB5169
	.long L$set$79
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$80,LCFI1-LCFI0
	.long L$set$80
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$81,LCFI2-LCFI1
	.long L$set$81
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$82,LCFI3-LCFI2
	.long L$set$82
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$83,LCFI4-LCFI3
	.long L$set$83
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$84,LCFI5-LCFI4
	.long L$set$84
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$85,LCFI6-LCFI5
	.long L$set$85
	.byte	0xb
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$86,LEFDE5-LASFDE5
	.long L$set$86
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB5165-.
	.set L$set$87,LFE5165-LFB5165
	.quad L$set$87
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$88,LCFI7-LFB5165
	.long L$set$88
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$89,LCFI8-LCFI7
	.long L$set$89
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$90,LCFI9-LCFI8
	.long L$set$90
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$91,LCFI10-LCFI9
	.long L$set$91
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$92,LCFI11-LCFI10
	.long L$set$92
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$93,LCFI12-LCFI11
	.long L$set$93
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$94,LCFI13-LCFI12
	.long L$set$94
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$95,LCFI14-LCFI13
	.long L$set$95
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$96,LCFI15-LCFI14
	.long L$set$96
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$97,LCFI16-LCFI15
	.long L$set$97
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$98,LCFI17-LCFI16
	.long L$set$98
	.byte	0xb
	.byte	0x4
	.set L$set$99,LCFI18-LCFI17
	.long L$set$99
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
	.set L$set$100,LEFDE7-LASFDE7
	.long L$set$100
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB5164-.
	.set L$set$101,LFE5164-LFB5164
	.quad L$set$101
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$102,LCFI19-LFB5164
	.long L$set$102
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$103,LCFI20-LCFI19
	.long L$set$103
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$104,LCFI21-LCFI20
	.long L$set$104
	.byte	0x8c
	.byte	0x3
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$105,LCFI22-LCFI21
	.long L$set$105
	.byte	0xa
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$106,LCFI23-LCFI22
	.long L$set$106
	.byte	0xb
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$107,LEFDE9-LASFDE9
	.long L$set$107
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB5105-.
	.set L$set$108,LFE5105-LFB5105
	.quad L$set$108
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$109,LCFI24-LFB5105
	.long L$set$109
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$110,LCFI25-LCFI24
	.long L$set$110
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$111,LCFI26-LCFI25
	.long L$set$111
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$112,LCFI27-LCFI26
	.long L$set$112
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$113,LCFI28-LCFI27
	.long L$set$113
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$114,LCFI29-LCFI28
	.long L$set$114
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$115,LCFI30-LCFI29
	.long L$set$115
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$116,LCFI31-LCFI30
	.long L$set$116
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$117,LCFI32-LCFI31
	.long L$set$117
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$118,LCFI33-LCFI32
	.long L$set$118
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$119,LCFI34-LCFI33
	.long L$set$119
	.byte	0xb
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$120,LEFDE11-LASFDE11
	.long L$set$120
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB5160-.
	.set L$set$121,LFE5160-LFB5160
	.quad L$set$121
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$122,LCFI35-LFB5160
	.long L$set$122
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$123,LCFI36-LCFI35
	.long L$set$123
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$124,LCFI37-LCFI36
	.long L$set$124
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$125,LCFI38-LCFI37
	.long L$set$125
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$126,LCFI39-LCFI38
	.long L$set$126
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$127,LCFI40-LCFI39
	.long L$set$127
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$128,LCFI41-LCFI40
	.long L$set$128
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$129,LCFI42-LCFI41
	.long L$set$129
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$130,LCFI43-LCFI42
	.long L$set$130
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$131,LCFI44-LCFI43
	.long L$set$131
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$132,LCFI45-LCFI44
	.long L$set$132
	.byte	0xb
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$133,LEFDE13-LASFDE13
	.long L$set$133
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB4048-.
	.set L$set$134,LHOTE4-LFB4048
	.quad L$set$134
	.byte	0x8
	.quad	LLSDA4048-.
	.byte	0x4
	.set L$set$135,LCFI46-LFB4048
	.long L$set$135
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$136,LCFI47-LCFI46
	.long L$set$136
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$137,LCFI48-LCFI47
	.long L$set$137
	.byte	0xe
	.byte	0xf0,0x13
	.byte	0x4
	.set L$set$138,LCFI49-LCFI48
	.long L$set$138
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$139,LCFI50-LCFI49
	.long L$set$139
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$140,LCFI51-LCFI50
	.long L$set$140
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$141,LCFI52-LCFI51
	.long L$set$141
	.byte	0xb
	.align 3
LEFDE13:
LSFDE15:
	.set L$set$142,LEFDE15-LASFDE15
	.long L$set$142
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LCOLDB4-.
	.set L$set$143,LCOLDE4-LCOLDB4
	.quad L$set$143
	.byte	0x8
	.quad	LLSDAC4048-.
	.byte	0x4
	.set L$set$144,LCFI53-LCOLDB4
	.long L$set$144
	.byte	0xe
	.byte	0xf0,0x13
	.byte	0x83
	.byte	0x3
	.byte	0x86
	.byte	0x2
	.align 3
LEFDE15:
LSFDE17:
	.set L$set$145,LEFDE17-LASFDE17
	.long L$set$145
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB4050-.
	.set L$set$146,LHOTE13-LFB4050
	.quad L$set$146
	.byte	0x8
	.quad	LLSDA4050-.
	.byte	0x4
	.set L$set$147,LCFI54-LFB4050
	.long L$set$147
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$148,LCFI55-LCFI54
	.long L$set$148
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$149,LCFI56-LCFI55
	.long L$set$149
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$150,LCFI57-LCFI56
	.long L$set$150
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$151,LCFI58-LCFI57
	.long L$set$151
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$152,LCFI59-LCFI58
	.long L$set$152
	.byte	0xe
	.byte	0x90,0x28
	.byte	0x4
	.set L$set$153,LCFI60-LCFI59
	.long L$set$153
	.byte	0xa
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$154,LCFI61-LCFI60
	.long L$set$154
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$155,LCFI62-LCFI61
	.long L$set$155
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$156,LCFI63-LCFI62
	.long L$set$156
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$157,LCFI64-LCFI63
	.long L$set$157
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$158,LCFI65-LCFI64
	.long L$set$158
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$159,LCFI66-LCFI65
	.long L$set$159
	.byte	0xb
	.align 3
LEFDE17:
LSFDE19:
	.set L$set$160,LEFDE19-LASFDE19
	.long L$set$160
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LCOLDB13-.
	.set L$set$161,LCOLDE13-LCOLDB13
	.quad L$set$161
	.byte	0x8
	.quad	LLSDAC4050-.
	.byte	0x4
	.set L$set$162,LCFI67-LCOLDB13
	.long L$set$162
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
	.set L$set$163,LEFDE21-LASFDE21
	.long L$set$163
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB4051-.
	.set L$set$164,LHOTE14-LFB4051
	.quad L$set$164
	.byte	0x8
	.quad	LLSDA4051-.
	.byte	0x4
	.set L$set$165,LCFI68-LFB4051
	.long L$set$165
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$166,LCFI69-LCFI68
	.long L$set$166
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$167,LCFI70-LCFI69
	.long L$set$167
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$168,LCFI71-LCFI70
	.long L$set$168
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$169,LCFI72-LCFI71
	.long L$set$169
	.byte	0xe
	.byte	0x80,0x14
	.byte	0x4
	.set L$set$170,LCFI73-LCFI72
	.long L$set$170
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$171,LCFI74-LCFI73
	.long L$set$171
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$172,LCFI75-LCFI74
	.long L$set$172
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$173,LCFI76-LCFI75
	.long L$set$173
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$174,LCFI77-LCFI76
	.long L$set$174
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$175,LCFI78-LCFI77
	.long L$set$175
	.byte	0xb
	.align 3
LEFDE21:
LSFDE23:
	.set L$set$176,LEFDE23-LASFDE23
	.long L$set$176
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LCOLDB14-.
	.set L$set$177,LCOLDE14-LCOLDB14
	.quad L$set$177
	.byte	0x8
	.quad	LLSDAC4051-.
	.byte	0x4
	.set L$set$178,LCFI79-LCOLDB14
	.long L$set$178
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
	.set L$set$179,LEFDE25-LASFDE25
	.long L$set$179
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB4055-.
	.set L$set$180,LFE4055-LFB4055
	.quad L$set$180
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$181,LCFI80-LFB4055
	.long L$set$181
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$182,LCFI81-LCFI80
	.long L$set$182
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$183,LCFI82-LCFI81
	.long L$set$183
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$184,LCFI83-LCFI82
	.long L$set$184
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$185,LCFI84-LCFI83
	.long L$set$185
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$186,LCFI85-LCFI84
	.long L$set$186
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$187,LCFI86-LCFI85
	.long L$set$187
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$188,LCFI87-LCFI86
	.long L$set$188
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$189,LCFI88-LCFI87
	.long L$set$189
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$190,LCFI89-LCFI88
	.long L$set$190
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$191,LCFI90-LCFI89
	.long L$set$191
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$192,LCFI91-LCFI90
	.long L$set$192
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$193,LCFI92-LCFI91
	.long L$set$193
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$194,LCFI93-LCFI92
	.long L$set$194
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE25:
LSFDE27:
	.set L$set$195,LEFDE27-LASFDE27
	.long L$set$195
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB4098-.
	.set L$set$196,LFE4098-LFB4098
	.quad L$set$196
	.byte	0x8
	.quad	LLSDA4098-.
	.byte	0x4
	.set L$set$197,LCFI94-LFB4098
	.long L$set$197
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$198,LCFI95-LCFI94
	.long L$set$198
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$199,LCFI96-LCFI95
	.long L$set$199
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$200,LCFI97-LCFI96
	.long L$set$200
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$201,LCFI98-LCFI97
	.long L$set$201
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$202,LCFI99-LCFI98
	.long L$set$202
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$203,LCFI100-LCFI99
	.long L$set$203
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$204,LCFI101-LCFI100
	.long L$set$204
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$205,LCFI102-LCFI101
	.long L$set$205
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$206,LCFI103-LCFI102
	.long L$set$206
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$207,LCFI104-LCFI103
	.long L$set$207
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$208,LCFI105-LCFI104
	.long L$set$208
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$209,LCFI106-LCFI105
	.long L$set$209
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$210,LCFI107-LCFI106
	.long L$set$210
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$211,LCFI108-LCFI107
	.long L$set$211
	.byte	0xb
	.align 3
LEFDE27:
LSFDE29:
	.set L$set$212,LEFDE29-LASFDE29
	.long L$set$212
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB4694-.
	.set L$set$213,LFE4694-LFB4694
	.quad L$set$213
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$214,LCFI109-LFB4694
	.long L$set$214
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$215,LCFI110-LCFI109
	.long L$set$215
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$216,LCFI111-LCFI110
	.long L$set$216
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$217,LCFI112-LCFI111
	.long L$set$217
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$218,LCFI113-LCFI112
	.long L$set$218
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$219,LCFI114-LCFI113
	.long L$set$219
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$220,LCFI115-LCFI114
	.long L$set$220
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$221,LCFI116-LCFI115
	.long L$set$221
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$222,LCFI117-LCFI116
	.long L$set$222
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$223,LCFI118-LCFI117
	.long L$set$223
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$224,LCFI119-LCFI118
	.long L$set$224
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$225,LCFI120-LCFI119
	.long L$set$225
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$226,LCFI121-LCFI120
	.long L$set$226
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$227,LCFI122-LCFI121
	.long L$set$227
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$228,LCFI123-LCFI122
	.long L$set$228
	.byte	0xb
	.align 3
LEFDE29:
LSFDE31:
	.set L$set$229,LEFDE31-LASFDE31
	.long L$set$229
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB4765-.
	.set L$set$230,LFE4765-LFB4765
	.quad L$set$230
	.byte	0x8
	.quad	0
	.align 3
LEFDE31:
LSFDE33:
	.set L$set$231,LEFDE33-LASFDE33
	.long L$set$231
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB4054-.
	.set L$set$232,LHOTE16-LFB4054
	.quad L$set$232
	.byte	0x8
	.quad	LLSDA4054-.
	.byte	0x4
	.set L$set$233,LCFI124-LFB4054
	.long L$set$233
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$234,LCFI125-LCFI124
	.long L$set$234
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$235,LCFI126-LCFI125
	.long L$set$235
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$236,LCFI127-LCFI126
	.long L$set$236
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$237,LCFI128-LCFI127
	.long L$set$237
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$238,LCFI129-LCFI128
	.long L$set$238
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$239,LCFI130-LCFI129
	.long L$set$239
	.byte	0xe
	.byte	0x80,0x28
	.byte	0x4
	.set L$set$240,LCFI131-LCFI130
	.long L$set$240
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$241,LCFI132-LCFI131
	.long L$set$241
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$242,LCFI133-LCFI132
	.long L$set$242
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$243,LCFI134-LCFI133
	.long L$set$243
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$244,LCFI135-LCFI134
	.long L$set$244
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$245,LCFI136-LCFI135
	.long L$set$245
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$246,LCFI137-LCFI136
	.long L$set$246
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$247,LCFI138-LCFI137
	.long L$set$247
	.byte	0xb
	.align 3
LEFDE33:
LSFDE35:
	.set L$set$248,LEFDE35-LASFDE35
	.long L$set$248
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LCOLDB16-.
	.set L$set$249,LCOLDE16-LCOLDB16
	.quad L$set$249
	.byte	0x8
	.quad	LLSDAC4054-.
	.byte	0x4
	.set L$set$250,LCFI139-LCOLDB16
	.long L$set$250
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
LEFDE35:
LSFDE37:
	.set L$set$251,LEFDE37-LASFDE37
	.long L$set$251
LASFDE37:
	.long	LASFDE37-EH_frame1
	.quad	LFB4056-.
	.set L$set$252,LHOTE19-LFB4056
	.quad L$set$252
	.byte	0x8
	.quad	LLSDA4056-.
	.byte	0x4
	.set L$set$253,LCFI140-LFB4056
	.long L$set$253
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$254,LCFI141-LCFI140
	.long L$set$254
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$255,LCFI142-LCFI141
	.long L$set$255
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$256,LCFI143-LCFI142
	.long L$set$256
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$257,LCFI144-LCFI143
	.long L$set$257
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$258,LCFI145-LCFI144
	.long L$set$258
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$259,LCFI146-LCFI145
	.long L$set$259
	.byte	0xe
	.byte	0xb0,0x1
	.byte	0x4
	.set L$set$260,LCFI147-LCFI146
	.long L$set$260
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$261,LCFI148-LCFI147
	.long L$set$261
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$262,LCFI149-LCFI148
	.long L$set$262
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$263,LCFI150-LCFI149
	.long L$set$263
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$264,LCFI151-LCFI150
	.long L$set$264
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$265,LCFI152-LCFI151
	.long L$set$265
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$266,LCFI153-LCFI152
	.long L$set$266
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$267,LCFI154-LCFI153
	.long L$set$267
	.byte	0xb
	.align 3
LEFDE37:
LSFDE39:
	.set L$set$268,LEFDE39-LASFDE39
	.long L$set$268
LASFDE39:
	.long	LASFDE39-EH_frame1
	.quad	LCOLDB19-.
	.set L$set$269,LCOLDE19-LCOLDB19
	.quad L$set$269
	.byte	0x8
	.quad	LLSDAC4056-.
	.byte	0x4
	.set L$set$270,LCFI155-LCOLDB19
	.long L$set$270
	.byte	0xe
	.byte	0xb0,0x1
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
LEFDE39:
LSFDE41:
	.set L$set$271,LEFDE41-LASFDE41
	.long L$set$271
LASFDE41:
	.long	LASFDE41-EH_frame1
	.quad	LFB4053-.
	.set L$set$272,LHOTE20-LFB4053
	.quad L$set$272
	.byte	0x8
	.quad	LLSDA4053-.
	.byte	0x4
	.set L$set$273,LCFI156-LFB4053
	.long L$set$273
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$274,LCFI157-LCFI156
	.long L$set$274
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$275,LCFI158-LCFI157
	.long L$set$275
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$276,LCFI159-LCFI158
	.long L$set$276
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$277,LCFI160-LCFI159
	.long L$set$277
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$278,LCFI161-LCFI160
	.long L$set$278
	.byte	0xe
	.byte	0xd0,0x27
	.byte	0x4
	.set L$set$279,LCFI162-LCFI161
	.long L$set$279
	.byte	0xa
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$280,LCFI163-LCFI162
	.long L$set$280
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$281,LCFI164-LCFI163
	.long L$set$281
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$282,LCFI165-LCFI164
	.long L$set$282
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$283,LCFI166-LCFI165
	.long L$set$283
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$284,LCFI167-LCFI166
	.long L$set$284
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$285,LCFI168-LCFI167
	.long L$set$285
	.byte	0xb
	.align 3
LEFDE41:
LSFDE43:
	.set L$set$286,LEFDE43-LASFDE43
	.long L$set$286
LASFDE43:
	.long	LASFDE43-EH_frame1
	.quad	LCOLDB20-.
	.set L$set$287,LCOLDE20-LCOLDB20
	.quad L$set$287
	.byte	0x8
	.quad	LLSDAC4053-.
	.byte	0x4
	.set L$set$288,LCFI169-LCOLDB20
	.long L$set$288
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
LEFDE43:
LSFDE45:
	.set L$set$289,LEFDE45-LASFDE45
	.long L$set$289
LASFDE45:
	.long	LASFDE45-EH_frame1
	.quad	LFB5026-.
	.set L$set$290,LFE5026-LFB5026
	.quad L$set$290
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$291,LCFI170-LFB5026
	.long L$set$291
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$292,LCFI171-LCFI170
	.long L$set$292
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE45:
	.mod_init_func
	.align 3
	.quad	__GLOBAL__sub_I_sscanf_formatted_read.cpp
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
