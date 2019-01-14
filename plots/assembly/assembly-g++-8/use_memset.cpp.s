	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt13random_deviceD1Ev
	.weak_definition __ZNSt13random_deviceD1Ev
__ZNSt13random_deviceD1Ev:
LFB3106:
	jmp	__ZNSt13random_device7_M_finiEv
LFE3106:
	.section __DATA,__gcc_except_tab
GCC_except_table0:
LLSDA3106:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0
	.text
	.align 4,0x90
__ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.constprop.169:
LFB5438:
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
LFE5438:
	.align 4,0x90
__ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_.constprop.173:
LFB5434:
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
LFE5434:
	.cstring
lC0:
	.ascii "%d\0"
	.text
	.align 4,0x90
__ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.174:
LFB5433:
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
LFE5433:
	.cstring
	.align 3
lC1:
	.ascii "basic_string::_M_construct null not valid\0"
	.text
	.align 1,0x90
	.align 4,0x90
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_.isra.95:
LFB5358:
	pushq	%r13
LCFI24:
	leaq	16(%rdi), %r13
	pushq	%r12
LCFI25:
	pushq	%rbp
LCFI26:
	pushq	%rbx
LCFI27:
	subq	$24, %rsp
LCFI28:
	testq	%rsi, %rsi
	movq	%r13, (%rdi)
	je	L61
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movq	%rsi, %r12
	call	_strlen
	cmpq	$15, %rax
	movq	%rax, %rbp
	movq	%rax, 8(%rsp)
	ja	L72
	cmpq	$1, %rax
	jne	L65
	movzbl	(%r12), %eax
	movb	%al, 16(%rbx)
L66:
	movq	8(%rsp), %rax
	movq	(%rbx), %rdx
	movq	%rax, 8(%rbx)
	movb	$0, (%rdx,%rax)
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
L65:
LCFI34:
	testq	%rax, %rax
	je	L66
	jmp	L64
L72:
	leaq	8(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	movq	%rax, %r13
	movq	%rax, (%rbx)
	movq	8(%rsp), %rax
	movq	%rax, 16(%rbx)
L64:
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	_memcpy
	jmp	L66
L61:
	leaq	lC1(%rip), %rdi
	call	__ZSt19__throw_logic_errorPKc
LFE5358:
	.align 4,0x90
__ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_.isra.166:
LFB5429:
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
	jle	L73
	testq	%r14, %r14
	movq	%rdi, %rbx
	movq	%rsi, %r12
	je	L75
	leaq	8(%rdi), %r13
L77:
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
	jge	L82
	cmpq	%rax, %rcx
	jg	L87
	cmpq	%rdx, %rcx
	jg	L102
L103:
	movq	%rdx, (%rbx)
	movq	%rdi, 8(%rbx)
	movq	-8(%rsi), %rdi
L84:
	movq	(%rbx), %rcx
	movq	%r13, %rbp
	movq	%rsi, %rax
	.align 4,0x90
L88:
	movq	0(%rbp), %r8
	movq	%rbp, %r12
	cmpq	%rcx, %r8
	jl	L89
	leaq	-8(%rax), %rdx
	cmpq	%rcx, %rdi
	jle	L90
	subq	$16, %rax
	.align 4,0x90
L91:
	movq	%rax, %rdx
	subq	$8, %rax
	cmpq	%rcx, 8(%rax)
	jg	L91
L90:
	cmpq	%rdx, %rbp
	jnb	L104
	movq	(%rdx), %rax
	movq	%rax, 0(%rbp)
	movq	-8(%rdx), %rdi
	movq	%rdx, %rax
	movq	%r8, (%rdx)
	movq	(%rbx), %rcx
L89:
	addq	$8, %rbp
	jmp	L88
	.align 4,0x90
L82:
	cmpq	%rdx, %rcx
	jg	L103
	cmpq	%rax, %rcx
	jle	L87
L102:
	movq	%rcx, (%rbx)
	movq	%rdi, -8(%rsi)
	jmp	L84
	.align 4,0x90
L104:
	movq	%r14, %rdx
	movq	%rbp, %rdi
	call	__ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_.isra.166
	movq	%rbp, %rdx
	subq	%rbx, %rdx
	cmpq	$128, %rdx
	jle	L73
	testq	%r14, %r14
	movq	%rbp, %rsi
	jne	L77
L75:
	sarq	$3, %rdx
	leaq	-2(%rdx), %r13
	movq	%rdx, %rbp
	sarq	%r13
	jmp	L80
	.align 4,0x90
L78:
	subq	$1, %r13
L80:
	movq	(%rbx,%r13,8), %rcx
	movq	%rbp, %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	__ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.constprop.169
	testq	%r13, %r13
	jne	L78
	subq	$8, %r12
	.align 4,0x90
L79:
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
	call	__ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.constprop.169
	cmpq	$8, %rbp
	jg	L79
L73:
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
L87:
LCFI45:
	movq	%rax, (%rbx)
	movq	%rdi, (%r8)
	movq	-8(%rsi), %rdi
	jmp	L84
LFE5429:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB4:
	.text
LHOTB4:
	.align 4,0x90
	.globl __ZN10benchmarks4util16double_generatorEv
__ZN10benchmarks4util16double_generatorEv:
LFB4172:
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
LLSDA4172:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x1a
	.set L$set$0,LEHB0-LFB4172
	.long L$set$0
	.set L$set$1,LEHE0-LEHB0
	.long L$set$1
	.long	0
	.byte	0
	.set L$set$2,LEHB1-LFB4172
	.long L$set$2
	.set L$set$3,LEHE1-LEHB1
	.long L$set$3
	.set L$set$4,L113-LFB4172
	.long L$set$4
	.byte	0
	.text
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___ZN10benchmarks4util16double_generatorEv:
__ZN10benchmarks4util16double_generatorEv.cold.177:
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
LFE4172:
	.section __DATA,__gcc_except_tab
GCC_except_table2:
LLSDAC4172:
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
LFB4174:
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
LLSDA4174:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x1a
	.set L$set$7,LEHB3-LFB4174
	.long L$set$7
	.set L$set$8,LEHE3-LEHB3
	.long L$set$8
	.long	0
	.byte	0
	.set L$set$9,LEHB4-LFB4174
	.long L$set$9
	.set L$set$10,LEHE4-LEHB4
	.long L$set$10
	.set L$set$11,L146-LFB4174
	.long L$set$11
	.byte	0
	.text
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___ZN10benchmarks4util16generate_doublesEj:
__ZN10benchmarks4util16generate_doublesEj.cold.178:
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
LFE4174:
	.section __DATA,__gcc_except_tab
GCC_except_table4:
LLSDAC4174:
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
LFB4175:
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
LLSDA4175:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x1a
	.set L$set$14,LEHB6-LFB4175
	.long L$set$14
	.set L$set$15,LEHE6-LEHB6
	.long L$set$15
	.long	0
	.byte	0
	.set L$set$16,LEHB7-LFB4175
	.long L$set$16
	.set L$set$17,LEHE7-LEHB7
	.long L$set$17
	.set L$set$18,L175-LFB4175
	.long L$set$18
	.byte	0
	.text
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___ZN10benchmarks4util13int_generatorEii:
__ZN10benchmarks4util13int_generatorEii.cold.179:
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
LFE4175:
	.section __DATA,__gcc_except_tab
GCC_except_table6:
LLSDAC4175:
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
LFB4222:
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
	je	L197
	call	___error
LEHE10:
	cmpl	$34, (%rax)
	je	L186
	movl	$2147483648, %eax
	movl	$4294967295, %edx
	addq	%rbp, %rax
	cmpq	%rdx, %rax
	ja	L186
	testq	%r12, %r12
	je	L188
	movq	8(%rsp), %rax
	subq	%rbx, %rax
	movq	%rax, (%r12)
L188:
	call	___error
	movl	(%rax), %eax
	testl	%eax, %eax
	je	L198
L184:
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
L198:
LCFI94:
	call	___error
	movl	%r13d, (%rax)
	jmp	L184
L186:
	movq	%r14, %rdi
LEHB11:
	call	__ZSt20__throw_out_of_rangePKc
L197:
	movq	%r14, %rdi
	call	__ZSt24__throw_invalid_argumentPKc
LEHE11:
L192:
	movq	%rax, %rbx
L190:
	call	___error
	cmpl	$0, (%rax)
	jne	L191
	call	___error
	movl	%r13d, (%rax)
L191:
	movq	%rbx, %rdi
LEHB12:
	call	__Unwind_Resume
LEHE12:
LFE4222:
	.section __DATA,__gcc_except_tab
GCC_except_table7:
LLSDA4222:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x34
	.set L$set$21,LEHB9-LFB4222
	.long L$set$21
	.set L$set$22,LEHE9-LEHB9
	.long L$set$22
	.long	0
	.byte	0
	.set L$set$23,LEHB10-LFB4222
	.long L$set$23
	.set L$set$24,LEHE10-LEHB10
	.long L$set$24
	.set L$set$25,L192-LFB4222
	.long L$set$25
	.byte	0
	.set L$set$26,LEHB11-LFB4222
	.long L$set$26
	.set L$set$27,LEHE11-LEHB11
	.long L$set$27
	.set L$set$28,L192-LFB4222
	.long L$set$28
	.byte	0
	.set L$set$29,LEHB12-LFB4222
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
LFB4879:
	pushq	%r15
LCFI95:
	movq	%rdx, %r15
	movq	%rsi, %rdx
	pushq	%r14
LCFI96:
	pushq	%r13
LCFI97:
	movq	%rdi, %r13
	pushq	%r12
LCFI98:
	movq	%rsi, %r12
	pushq	%rbp
LCFI99:
	pushq	%rbx
LCFI100:
	subq	$40, %rsp
LCFI101:
	movq	8(%rdi), %rcx
	movq	(%rdi), %rbp
	movq	%rcx, %rax
	subq	%rbp, %rax
	subq	%rbp, %rdx
	sarq	$3, %rax
	testq	%rax, %rax
	je	L208
	leaq	(%rax,%rax), %rdi
	movq	$-8, %r14
	cmpq	%rdi, %rax
	jbe	L214
L201:
	movq	%r14, %rdi
	movq	%rdx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	call	__Znwm
	movq	16(%rsp), %rdx
	movq	8(%rsp), %rcx
	movq	%rax, %rbx
	addq	%rax, %r14
L202:
	movq	(%r15), %rax
	leaq	8(%rbx,%rdx), %r9
	movq	%rcx, %r15
	subq	%r12, %r15
	cmpq	%rbp, %r12
	movq	%rax, (%rbx,%rdx)
	leaq	(%r9,%r15), %rax
	movq	%rax, 8(%rsp)
	je	L203
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	%r9, 24(%rsp)
	movq	%rcx, 16(%rsp)
	call	_memmove
	movq	16(%rsp), %rcx
	movq	24(%rsp), %r9
	cmpq	%rcx, %r12
	je	L207
L204:
	movq	%r15, %rdx
	movq	%r12, %rsi
	movq	%r9, %rdi
	call	_memcpy
L206:
	testq	%rbp, %rbp
	jne	L207
L205:
	movq	%rbx, %xmm0
	movq	%r14, 16(%r13)
	movhps	8(%rsp), %xmm0
	movups	%xmm0, 0(%r13)
	addq	$40, %rsp
LCFI102:
	popq	%rbx
LCFI103:
	popq	%rbp
LCFI104:
	popq	%r12
LCFI105:
	popq	%r13
LCFI106:
	popq	%r14
LCFI107:
	popq	%r15
LCFI108:
	ret
	.align 4,0x90
L207:
LCFI109:
	movq	%rbp, %rdi
	call	__ZdlPv
	jmp	L205
	.align 4,0x90
L214:
	movabsq	$2305843009213693951, %rax
	cmpq	%rax, %rdi
	ja	L201
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	testq	%rdi, %rdi
	je	L202
	jmp	L200
	.align 4,0x90
L203:
	cmpq	%rcx, %r12
	jne	L204
	jmp	L206
	.align 4,0x90
L208:
	movl	$1, %edi
L200:
	leaq	0(,%rdi,8), %r14
	jmp	L201
LFE4879:
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	.weak_definition __ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv:
LFB4970:
	movq	2496(%rdi), %rax
	cmpq	$623, %rax
	ja	L216
	leaq	1(%rax), %rdx
	movl	(%rdi,%rax,4), %eax
L217:
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
L216:
	movdqa	lC8(%rip), %xmm3
	movq	%rdi, %rax
	pxor	%xmm7, %xmm7
	movdqa	lC7(%rip), %xmm2
	leaq	896(%rdi), %rdx
	movdqa	lC9(%rip), %xmm4
	movdqa	lC10(%rip), %xmm1
	.align 4,0x90
L218:
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
	jne	L218
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
L222:
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
	jne	L222
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
	jmp	L217
LFE4970:
	.align 1,0x90
	.align 4,0x90
__ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEiRT_RKNS0_10param_typeE.isra.70:
LFB5333:
	pushq	%rbx
LCFI110:
	subq	$16, %rsp
LCFI111:
	movl	4(%rsi), %r8d
	subl	(%rsi), %r8d
	cmpl	$-1, %r8d
	je	L234
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
	jmp	L244
	.align 4,0x90
L257:
	movl	(%rdi,%rcx,4), %edx
	addq	$1, %rcx
L236:
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
	ja	L256
L244:
	cmpq	$623, %rcx
	jbe	L257
	movq	%rdi, %rcx
	.align 4,0x90
L237:
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
	jne	L237
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
L241:
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
	jne	L241
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
	jmp	L236
	.align 4,0x90
L256:
	xorl	%edx, %edx
	divl	%r9d
	addl	(%rsi), %eax
	addq	$16, %rsp
LCFI112:
	popq	%rbx
LCFI113:
	ret
	.align 4,0x90
L234:
LCFI114:
	movq	%rsi, 8(%rsp)
	call	__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	movq	8(%rsp), %rsi
	addl	(%rsi), %eax
	addq	$16, %rsp
LCFI115:
	popq	%rbx
LCFI116:
	ret
LFE5333:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB15:
	.text
LHOTB15:
	.align 4,0x90
	.globl __ZN10benchmarks4util20generate_ints_stringB5cxx11Ei
__ZN10benchmarks4util20generate_ints_stringB5cxx11Ei:
LFB4178:
	pushq	%r15
LCFI117:
	movslq	%esi, %rsi
	pushq	%r14
LCFI118:
	pushq	%r13
LCFI119:
	pushq	%r12
LCFI120:
	pushq	%rbp
LCFI121:
	pushq	%rbx
LCFI122:
	movq	%rdi, %rbx
	subq	$5064, %rsp
LCFI123:
	testq	%rsi, %rsi
	je	L276
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, %rsi
	ja	L291
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
L259:
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
	je	L261
	leaq	8(%r15), %rbp
	movq	%rax, %r12
	movq	%rax, %r14
	.align 4,0x90
L262:
	movq	%r15, %rsi
	movq	%rbp, %rdi
	addq	$4, %r14
	call	__ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEiRT_RKNS0_10param_typeE.isra.70
	movl	%eax, -4(%r14)
	cmpq	%r14, %r13
	jne	L262
	movq	8(%rsp), %rax
	movq	$0, 8(%rbx)
	movb	$0, 16(%rbx)
	movq	%rax, (%rbx)
	leaq	16(%r15), %rax
	movq	%rax, 16(%rsp)
	jmp	L267
	.align 4,0x90
L266:
	movb	$32, (%rax,%rbp)
	movq	(%rbx), %rax
	addq	$4, %r12
	cmpq	%r12, %r13
	movq	%r14, 8(%rbx)
	movb	$0, 1(%rax,%rbp)
	je	L275
L267:
	movl	(%r12), %r8d
	movl	$16, %edx
	movq	%r15, %rdi
	xorl	%eax, %eax
	movq	_vsnprintf@GOTPCREL(%rip), %rsi
	leaq	lC0(%rip), %rcx
	call	__ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.174
	movq	2552(%rsp), %rdx
	movq	%rbx, %rdi
	movq	2544(%rsp), %rsi
LEHB15:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
LEHE15:
	movq	2544(%rsp), %rdi
	cmpq	16(%rsp), %rdi
	je	L264
	call	__ZdlPv
L264:
	movq	8(%rbx), %rbp
	movq	(%rbx), %rax
	cmpq	8(%rsp), %rax
	leaq	1(%rbp), %r14
	je	L277
	movq	16(%rbx), %rdx
L265:
	cmpq	%rdx, %r14
	jbe	L266
	movl	$1, %r8d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
LEHB16:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE16:
	movq	(%rbx), %rax
	jmp	L266
	.align 4,0x90
L277:
	movl	$15, %edx
	jmp	L265
	.align 4,0x90
L261:
	leaq	16(%rbx), %rax
	movq	$0, 8(%rbx)
	movq	%rax, (%rbx)
	movb	$0, 16(%rbx)
	.align 4,0x90
L275:
	movq	24(%rsp), %rax
	testq	%rax, %rax
	je	L258
	movq	%rax, %rdi
	call	__ZdlPv
L258:
	addq	$5064, %rsp
LCFI124:
	movq	%rbx, %rax
	popq	%rbx
LCFI125:
	popq	%rbp
LCFI126:
	popq	%r12
LCFI127:
	popq	%r13
LCFI128:
	popq	%r14
LCFI129:
	popq	%r15
LCFI130:
	ret
	.align 4,0x90
L276:
LCFI131:
	movq	$0, 24(%rsp)
	xorl	%r13d, %r13d
	jmp	L259
L291:
LEHB17:
	call	__ZSt17__throw_bad_allocv
LEHE17:
L279:
	movq	%rax, %rbp
	jmp	L271
L280:
	movq	%rax, %rbp
	jmp	L269
L278:
	movq	%rax, %rbp
	jmp	L273
	.section __DATA,__gcc_except_tab
GCC_except_table8:
LLSDA4178:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x41
	.set L$set$31,LEHB13-LFB4178
	.long L$set$31
	.set L$set$32,LEHE13-LEHB13
	.long L$set$32
	.long	0
	.byte	0
	.set L$set$33,LEHB14-LFB4178
	.long L$set$33
	.set L$set$34,LEHE14-LEHB14
	.long L$set$34
	.set L$set$35,L278-LFB4178
	.long L$set$35
	.byte	0
	.set L$set$36,LEHB15-LFB4178
	.long L$set$36
	.set L$set$37,LEHE15-LEHB15
	.long L$set$37
	.set L$set$38,L280-LFB4178
	.long L$set$38
	.byte	0
	.set L$set$39,LEHB16-LFB4178
	.long L$set$39
	.set L$set$40,LEHE16-LEHB16
	.long L$set$40
	.set L$set$41,L279-LFB4178
	.long L$set$41
	.byte	0
	.set L$set$42,LEHB17-LFB4178
	.long L$set$42
	.set L$set$43,LEHE17-LEHB17
	.long L$set$43
	.long	0
	.byte	0
	.text
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___ZN10benchmarks4util20generate_ints_stringB5cxx11Ei:
__ZN10benchmarks4util20generate_ints_stringB5cxx11Ei.cold.180:
L269:
LCFI132:
	movq	2544(%rsp), %rdi
	addq	$16, %r15
	cmpq	%r15, %rdi
	je	L271
	call	__ZdlPv
L271:
	movq	(%rbx), %rdi
	cmpq	8(%rsp), %rdi
	je	L273
	call	__ZdlPv
L273:
	cmpq	$0, 24(%rsp)
	je	L274
	movq	24(%rsp), %rdi
	call	__ZdlPv
L274:
	movq	%rbp, %rdi
LEHB18:
	call	__Unwind_Resume
LEHE18:
LFE4178:
	.section __DATA,__gcc_except_tab
GCC_except_table9:
LLSDAC4178:
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
LFB4177:
	pushq	%r14
LCFI133:
	movl	%esi, %esi
	pxor	%xmm0, %xmm0
	pushq	%r13
LCFI134:
	pushq	%r12
LCFI135:
	pushq	%rbp
LCFI136:
	xorl	%ebp, %ebp
	pushq	%rbx
LCFI137:
	movq	%rdi, %rbx
	subq	$5024, %rsp
LCFI138:
	testq	%rsi, %rsi
	movups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	je	L311
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
L311:
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
	je	L292
	movdqa	lC8(%rip), %xmm5
	movdqa	lC7(%rip), %xmm4
	movdqa	lC9(%rip), %xmm3
	.align 4,0x90
L307:
	movl	2512(%rsp), %edi
	movl	2516(%rsp), %ecx
	subl	%edi, %ecx
	cmpl	$-1, %ecx
	je	L295
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
	jmp	L305
	.align 4,0x90
L331:
	movl	2520(%rsp,%rsi,4), %edx
	addq	$1, %rsi
	.align 4,0x90
L297:
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
	ja	L330
L305:
	cmpq	$623, %rsi
	jbe	L331
	leaq	8(%rbp), %rax
	.align 4,0x90
L298:
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
	jne	L298
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
L302:
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
	jne	L302
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
	jmp	L297
	.align 4,0x90
L330:
	xorl	%edx, %edx
	movq	%rsi, 5016(%rsp)
	divl	%r8d
L306:
	addl	%edi, %eax
	addq	$4, %r13
	movl	%eax, -4(%r13)
	cmpq	%r13, %r12
	jne	L307
L292:
	addq	$5024, %rsp
LCFI139:
	movq	%rbx, %rax
	popq	%rbx
LCFI140:
	popq	%rbp
LCFI141:
	popq	%r12
LCFI142:
	popq	%r13
LCFI143:
	popq	%r14
LCFI144:
	ret
	.align 4,0x90
L295:
LCFI145:
	leaq	8(%rbp), %rdi
	call	__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	movl	2512(%rsp), %edi
	movdqa	lC9(%rip), %xmm3
	movdqa	lC7(%rip), %xmm4
	movdqa	lC8(%rip), %xmm5
	jmp	L306
L312:
	movq	%rax, %rbp
	jmp	L309
	.section __DATA,__gcc_except_tab
GCC_except_table10:
LLSDA4177:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x1a
	.set L$set$46,LEHB19-LFB4177
	.long L$set$46
	.set L$set$47,LEHE19-LEHB19
	.long L$set$47
	.long	0
	.byte	0
	.set L$set$48,LEHB20-LFB4177
	.long L$set$48
	.set L$set$49,LEHE20-LEHB20
	.long L$set$49
	.set L$set$50,L312-LFB4177
	.long L$set$50
	.byte	0
	.text
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___ZN10benchmarks4util13generate_intsEj:
__ZN10benchmarks4util13generate_intsEj.cold.181:
L309:
LCFI146:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	L310
	call	__ZdlPv
L310:
	movq	%rbp, %rdi
LEHB21:
	call	__Unwind_Resume
LEHE21:
LFE4177:
	.section __DATA,__gcc_except_tab
GCC_except_table11:
LLSDAC4177:
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
	.ascii "do_not_optimize.txt\0"
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB20:
	.section __TEXT,__text_startup,regular,pure_instructions
LHOTB20:
	.align 4
	.globl _main
_main:
LFB4180:
	pushq	%r15
LCFI147:
	pushq	%r14
LCFI148:
	pushq	%r13
LCFI149:
	pushq	%r12
LCFI150:
	pushq	%rbp
LCFI151:
	movq	%rsi, %rbp
	pushq	%rbx
LCFI152:
	subq	$3512, %rsp
LCFI153:
	movq	8(%rsi), %rsi
	leaq	992(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, %r14
	movq	%rax, 16(%rsp)
LEHB22:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_.isra.95
LEHE22:
	movq	_strtol@GOTPCREL(%rip), %rbx
	movl	$10, %r8d
	xorl	%ecx, %ecx
	movq	992(%rsp), %rdx
	leaq	lC17(%rip), %rsi
	movq	%rbx, %rdi
LEHB23:
	call	__ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
LEHE23:
	movq	992(%rsp), %rdi
	movl	%eax, 28(%rsp)
	movq	%r14, %rax
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L333
	call	__ZdlPv
L333:
	movq	16(%rsp), %r15
	movq	16(%rbp), %rsi
	movq	%r15, %rdi
LEHB24:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_.isra.95
LEHE24:
	movl	$10, %r8d
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	992(%rsp), %rdx
	leaq	lC17(%rip), %rsi
LEHB25:
	call	__ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
LEHE25:
	movq	992(%rsp), %rdi
	movl	%eax, %ebp
	leaq	16(%r15), %rax
	cmpq	%rax, %rdi
	je	L334
	call	__ZdlPv
L334:
	movslq	28(%rsp), %rax
	pxor	%xmm0, %xmm0
	movabsq	$2305843009213693951, %rdx
	movaps	%xmm0, 64(%rsp)
	movq	$0, 80(%rsp)
	cmpq	%rdx, %rax
	ja	L405
	testq	%rax, %rax
	jne	L406
L336:
	movq	16(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%esi, %esi
LEHB26:
	call	__ZN10benchmarks4util13int_generatorEii
	movl	28(%rsp), %edx
	movslq	%ebp, %rax
	movl	$0, 24(%rsp)
	movq	%rax, 32(%rsp)
	testl	%edx, %edx
	jle	L350
	leaq	56(%rsp), %rax
	leaq	96(%rsp), %rbx
	movq	%rax, 40(%rsp)
	leaq	632(%rbx), %rax
	movq	%rax, 8(%rsp)
	jmp	L351
	.align 4
L408:
	movq	%r15, %rdi
	call	__Znwm
LEHE26:
	movq	%rax, %rbp
	movq	%r15, %rdx
	xorl	%esi, %esi
	leaq	0(%rbp,%r15), %r13
	movq	%rax, %rdi
	call	_memset
L341:
	movl	$1, %esi
	movq	%rbx, %rdi
LEHB27:
	call	__ZN10benchmarks4util13generate_intsEj
LEHE27:
	movq	96(%rsp), %rdi
	movl	(%rdi), %r14d
	call	__ZdlPv
	call	__ZNSt6chrono3_V212system_clock3nowEv
	movq	%r13, %rdx
	movq	%rbp, %rdi
	subq	%rbp, %rdx
	movq	%rax, %r12
	movzbl	%r14b, %esi
	call	_memset
	movq	16(%rsp), %rsi
	leaq	8(%rsi), %rdi
	call	__ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEiRT_RKNS0_10param_typeE.isra.70
	cltq
	movzbl	0(%rbp,%rax), %r15d
	call	__ZNSt6chrono3_V212system_clock3nowEv
	movq	72(%rsp), %rsi
	subq	%r12, %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rax
	imulq	%rcx
	sarq	$63, %rcx
	sarq	$18, %rdx
	subq	%rcx, %rdx
	cmpq	80(%rsp), %rsi
	movq	%rdx, 56(%rsp)
	je	L342
	movq	%rdx, (%rsi)
	addq	$8, %rsi
	movq	%rsi, 72(%rsp)
L343:
	movq	8(%rsp), %rdi
	call	__ZNSt8ios_baseC2Ev
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	pxor	%xmm0, %xmm0
	xorl	%esi, %esi
	movaps	%xmm0, 960(%rsp)
	movaps	%xmm0, 976(%rsp)
	movq	$0, 944(%rsp)
	addq	$16, %rax
	movq	%rax, 728(%rsp)
	xorl	%eax, %eax
	movw	%ax, 952(%rsp)
	movq	__ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	movq	8(%rax), %r12
	movq	16(%rax), %r14
	movq	-24(%r12), %rcx
	movq	%r12, 96(%rsp)
	addq	%rbx, %rcx
	movq	%rcx, %rdi
	movq	%r14, (%rcx)
LEHB28:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE28:
	movq	__ZTVSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %r13
	leaq	8(%rbx), %rdi
	leaq	24(%r13), %rax
	movq	%rax, 96(%rsp)
	leaq	64(%r13), %rax
	movq	%rax, 728(%rsp)
LEHB29:
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
LEHE29:
	movq	8(%rsp), %rdi
	leaq	8(%rbx), %rsi
LEHB30:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
	leaq	8(%rbx), %rdi
	movl	$16, %edx
	leaq	lC19(%rip), %rsi
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	movq	96(%rsp), %rdx
	movq	-24(%rdx), %rdi
	addq	%rbx, %rdi
	testq	%rax, %rax
	je	L407
	xorl	%esi, %esi
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
LEHE30:
L345:
	leaq	55(%rsp), %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	movb	%r15b, 55(%rsp)
LEHB31:
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
LEHE31:
	leaq	64(%r13), %rax
	movq	%rax, 728(%rsp)
	leaq	24(%r13), %rax
	leaq	8(%rbx), %rdi
	movq	%rax, %xmm0
	movq	__ZTVSt13basic_filebufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, %xmm1
	punpcklqdq	%xmm1, %xmm0
	movaps	%xmm0, 96(%rsp)
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	leaq	136(%rbx), %rdi
	call	__ZNSt12__basic_fileIcED1Ev
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	64(%rbx), %rdi
	addq	$16, %rax
	movq	%rax, 104(%rsp)
	call	__ZNSt6localeD1Ev
	movq	-24(%r12), %rax
	movq	%r12, 96(%rsp)
	movq	8(%rsp), %rdi
	movq	%r14, 96(%rsp,%rax)
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, 728(%rsp)
	call	__ZNSt8ios_baseD2Ev
	movq	%rbp, %rdi
	call	__ZdlPv
	addl	$1, 24(%rsp)
	movl	24(%rsp), %eax
	cmpl	%eax, 28(%rsp)
	je	L350
L351:
	movq	32(%rsp), %r15
	testq	%r15, %r15
	jne	L408
	xorl	%ebp, %ebp
	xorl	%r13d, %r13d
	jmp	L341
	.align 4
L407:
	movl	32(%rdi), %esi
	orl	$4, %esi
LEHB32:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
LEHE32:
	jmp	L345
	.align 4
L342:
	movq	40(%rsp), %rdx
	leaq	64(%rsp), %rdi
LEHB33:
	call	__ZNSt6vectorINSt6chrono8durationIxSt5ratioILl1ELl1000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_
LEHE33:
	jmp	L343
	.align 4
L350:
	movq	72(%rsp), %rbp
	movq	64(%rsp), %r12
	cmpq	%rbp, %r12
	je	L340
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
	call	__ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_.isra.166
	addq	$-128, %rbx
	jle	L352
	leaq	128(%r12), %rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	call	__ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_.constprop.173
	cmpq	%rbx, %rbp
	movq	%rbx, %rsi
	je	L403
	movq	(%rsi), %rcx
	leaq	-8(%rsi), %rax
	cmpq	%rcx, -8(%rsi)
	jg	L356
	jmp	L409
	.align 4
L372:
	movq	%rdx, %rax
L356:
	movq	(%rax), %rdx
	cmpq	-8(%rax), %rcx
	movq	%rdx, 8(%rax)
	leaq	-8(%rax), %rdx
	jl	L372
L355:
	addq	$8, %rsi
	movq	%rcx, (%rax)
	cmpq	%rsi, %rbp
	je	L403
	movq	(%rsi), %rcx
	leaq	-8(%rsi), %rax
	cmpq	%rcx, -8(%rsi)
	jg	L356
L409:
	movq	%rsi, %rax
	jmp	L355
L352:
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	__ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_.constprop.173
L403:
	movq	72(%rsp), %rbp
	movq	64(%rsp), %r12
L340:
	subq	%r12, %rbp
	movq	__ZSt4cout@GOTPCREL(%rip), %rdi
	sarq	$3, %rbp
	shrq	%rbp
	movq	(%r12,%rbp,8), %rsi
LEHB34:
	call	__ZNSo9_M_insertIxEERSoT_
	leaq	56(%rsp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	movb	$32, 56(%rsp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	L387
	call	__ZdlPv
L387:
	addq	$3512, %rsp
LCFI154:
	xorl	%eax, %eax
	popq	%rbx
LCFI155:
	popq	%rbp
LCFI156:
	popq	%r12
LCFI157:
	popq	%r13
LCFI158:
	popq	%r14
LCFI159:
	popq	%r15
LCFI160:
	ret
L406:
LCFI161:
	leaq	0(,%rax,8), %rbx
	movq	%rbx, %rdi
	call	__Znwm
	movq	64(%rsp), %rdi
	movq	%rax, %r12
	testq	%rdi, %rdi
	je	L337
	call	__ZdlPv
L337:
	leaq	(%r12,%rbx), %rax
	movq	%r12, %xmm0
	punpcklqdq	%xmm0, %xmm0
	movq	%rax, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	jmp	L336
L405:
	leaq	lC18(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LEHE34:
L377:
	movq	%rax, %r12
	jmp	L364
L379:
	movq	%rax, %r13
	jmp	L346
L373:
	movq	%rax, %rbx
	jmp	L360
L381:
	movq	%rax, %r13
	jmp	L348
L375:
	movq	%rax, %rbx
	jmp	L367
L378:
	movq	%rax, %r13
	jmp	L347
L380:
	movq	%rax, %rbx
	jmp	L365
L374:
	movq	%rax, %rbx
	jmp	L362
L376:
	movq	%rax, %rbx
	jmp	L369
	.section __DATA,__gcc_except_tab
GCC_except_table12:
LLSDA4180:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xa9,0x1
	.set L$set$53,LEHB22-LFB4180
	.long L$set$53
	.set L$set$54,LEHE22-LEHB22
	.long L$set$54
	.long	0
	.byte	0
	.set L$set$55,LEHB23-LFB4180
	.long L$set$55
	.set L$set$56,LEHE23-LEHB23
	.long L$set$56
	.set L$set$57,L373-LFB4180
	.long L$set$57
	.byte	0
	.set L$set$58,LEHB24-LFB4180
	.long L$set$58
	.set L$set$59,LEHE24-LEHB24
	.long L$set$59
	.long	0
	.byte	0
	.set L$set$60,LEHB25-LFB4180
	.long L$set$60
	.set L$set$61,LEHE25-LEHB25
	.long L$set$61
	.set L$set$62,L374-LFB4180
	.long L$set$62
	.byte	0
	.set L$set$63,LEHB26-LFB4180
	.long L$set$63
	.set L$set$64,LEHE26-LEHB26
	.long L$set$64
	.set L$set$65,L375-LFB4180
	.long L$set$65
	.byte	0
	.set L$set$66,LEHB27-LFB4180
	.long L$set$66
	.set L$set$67,LEHE27-LEHB27
	.long L$set$67
	.set L$set$68,L380-LFB4180
	.long L$set$68
	.byte	0
	.set L$set$69,LEHB28-LFB4180
	.long L$set$69
	.set L$set$70,LEHE28-LEHB28
	.long L$set$70
	.set L$set$71,L381-LFB4180
	.long L$set$71
	.byte	0
	.set L$set$72,LEHB29-LFB4180
	.long L$set$72
	.set L$set$73,LEHE29-LEHB29
	.long L$set$73
	.set L$set$74,L378-LFB4180
	.long L$set$74
	.byte	0
	.set L$set$75,LEHB30-LFB4180
	.long L$set$75
	.set L$set$76,LEHE30-LEHB30
	.long L$set$76
	.set L$set$77,L379-LFB4180
	.long L$set$77
	.byte	0
	.set L$set$78,LEHB31-LFB4180
	.long L$set$78
	.set L$set$79,LEHE31-LEHB31
	.long L$set$79
	.set L$set$80,L377-LFB4180
	.long L$set$80
	.byte	0
	.set L$set$81,LEHB32-LFB4180
	.long L$set$81
	.set L$set$82,LEHE32-LEHB32
	.long L$set$82
	.set L$set$83,L379-LFB4180
	.long L$set$83
	.byte	0
	.set L$set$84,LEHB33-LFB4180
	.long L$set$84
	.set L$set$85,LEHE33-LEHB33
	.long L$set$85
	.set L$set$86,L376-LFB4180
	.long L$set$86
	.byte	0
	.set L$set$87,LEHB34-LFB4180
	.long L$set$87
	.set L$set$88,LEHE34-LEHB34
	.long L$set$88
	.set L$set$89,L375-LFB4180
	.long L$set$89
	.byte	0
	.section __TEXT,__text_startup,regular,pure_instructions
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of__main:
_main.cold.182:
L364:
LCFI162:
	movq	%rbx, %rdi
	movq	%r12, %rbx
	call	__ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
L369:
	movq	%rbp, %rdi
	call	__ZdlPv
L367:
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	L368
	call	__ZdlPv
L368:
	movq	%rbx, %rdi
LEHB35:
	call	__Unwind_Resume
L346:
	leaq	8(%rbx), %rdi
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
L347:
	movq	-24(%r12), %rax
	movq	%r12, 96(%rsp)
	movq	%r14, 96(%rsp,%rax)
L348:
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	632(%rbx), %rdi
	movq	%r13, %rbx
	addq	$16, %rax
	movq	%rax, 728(%rsp)
	call	__ZNSt8ios_baseD2Ev
	jmp	L369
L362:
	movq	16(%rsp), %rdx
	movq	992(%rsp), %rdi
	addq	$16, %rdx
	cmpq	%rdx, %rdi
	je	L363
	call	__ZdlPv
L363:
	movq	%rbx, %rdi
	call	__Unwind_Resume
L360:
	movq	16(%rsp), %rax
	movq	992(%rsp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	L361
	call	__ZdlPv
L361:
	movq	%rbx, %rdi
	call	__Unwind_Resume
LEHE35:
L365:
	testq	%rbp, %rbp
	jne	L369
	jmp	L367
LFE4180:
	.section __DATA,__gcc_except_tab
GCC_except_table13:
LLSDAC4180:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xd
	.set L$set$90,LEHB35-LCOLDB20
	.long L$set$90
	.set L$set$91,LEHE35-LEHB35
	.long L$set$91
	.long	0
	.byte	0
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE20:
	.section __TEXT,__text_startup,regular,pure_instructions
LHOTE20:
	.section __TEXT,__text_cold,regular,pure_instructions
	.section __TEXT,__text_startup,regular,pure_instructions
	.align 4
__GLOBAL__sub_I_use_memset.cpp:
LFB5262:
	leaq	__ZStL8__ioinit(%rip), %rdi
	subq	$8, %rsp
LCFI163:
	call	__ZNSt8ios_base4InitC1Ev
	movq	__ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
LCFI164:
	leaq	___dso_handle(%rip), %rdx
	leaq	__ZStL8__ioinit(%rip), %rsi
	jmp	___cxa_atexit
LFE5262:
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
	.set L$set$92,LECIE1-LSCIE1
	.long L$set$92
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
	.set L$set$93,LEFDE1-LASFDE1
	.long L$set$93
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB3106-.
	.set L$set$94,LFE3106-LFB3106
	.quad L$set$94
	.byte	0x8
	.quad	LLSDA3106-.
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$95,LEFDE3-LASFDE3
	.long L$set$95
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB5438-.
	.set L$set$96,LFE5438-LFB5438
	.quad L$set$96
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$97,LCFI0-LFB5438
	.long L$set$97
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$98,LCFI1-LCFI0
	.long L$set$98
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$99,LCFI2-LCFI1
	.long L$set$99
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$100,LCFI3-LCFI2
	.long L$set$100
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$101,LCFI4-LCFI3
	.long L$set$101
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$102,LCFI5-LCFI4
	.long L$set$102
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$103,LCFI6-LCFI5
	.long L$set$103
	.byte	0xb
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$104,LEFDE5-LASFDE5
	.long L$set$104
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB5434-.
	.set L$set$105,LFE5434-LFB5434
	.quad L$set$105
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$106,LCFI7-LFB5434
	.long L$set$106
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$107,LCFI8-LCFI7
	.long L$set$107
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$108,LCFI9-LCFI8
	.long L$set$108
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$109,LCFI10-LCFI9
	.long L$set$109
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$110,LCFI11-LCFI10
	.long L$set$110
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$111,LCFI12-LCFI11
	.long L$set$111
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$112,LCFI13-LCFI12
	.long L$set$112
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$113,LCFI14-LCFI13
	.long L$set$113
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$114,LCFI15-LCFI14
	.long L$set$114
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$115,LCFI16-LCFI15
	.long L$set$115
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$116,LCFI17-LCFI16
	.long L$set$116
	.byte	0xb
	.byte	0x4
	.set L$set$117,LCFI18-LCFI17
	.long L$set$117
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
	.set L$set$118,LEFDE7-LASFDE7
	.long L$set$118
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB5433-.
	.set L$set$119,LFE5433-LFB5433
	.quad L$set$119
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$120,LCFI19-LFB5433
	.long L$set$120
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$121,LCFI20-LCFI19
	.long L$set$121
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$122,LCFI21-LCFI20
	.long L$set$122
	.byte	0x8c
	.byte	0x3
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$123,LCFI22-LCFI21
	.long L$set$123
	.byte	0xa
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$124,LCFI23-LCFI22
	.long L$set$124
	.byte	0xb
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$125,LEFDE9-LASFDE9
	.long L$set$125
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB5358-.
	.set L$set$126,LFE5358-LFB5358
	.quad L$set$126
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$127,LCFI24-LFB5358
	.long L$set$127
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$128,LCFI25-LCFI24
	.long L$set$128
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$129,LCFI26-LCFI25
	.long L$set$129
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$130,LCFI27-LCFI26
	.long L$set$130
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$131,LCFI28-LCFI27
	.long L$set$131
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$132,LCFI29-LCFI28
	.long L$set$132
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$133,LCFI30-LCFI29
	.long L$set$133
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$134,LCFI31-LCFI30
	.long L$set$134
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$135,LCFI32-LCFI31
	.long L$set$135
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$136,LCFI33-LCFI32
	.long L$set$136
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$137,LCFI34-LCFI33
	.long L$set$137
	.byte	0xb
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$138,LEFDE11-LASFDE11
	.long L$set$138
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB5429-.
	.set L$set$139,LFE5429-LFB5429
	.quad L$set$139
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$140,LCFI35-LFB5429
	.long L$set$140
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$141,LCFI36-LCFI35
	.long L$set$141
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$142,LCFI37-LCFI36
	.long L$set$142
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$143,LCFI38-LCFI37
	.long L$set$143
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$144,LCFI39-LCFI38
	.long L$set$144
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$145,LCFI40-LCFI39
	.long L$set$145
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$146,LCFI41-LCFI40
	.long L$set$146
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$147,LCFI42-LCFI41
	.long L$set$147
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$148,LCFI43-LCFI42
	.long L$set$148
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$149,LCFI44-LCFI43
	.long L$set$149
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$150,LCFI45-LCFI44
	.long L$set$150
	.byte	0xb
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$151,LEFDE13-LASFDE13
	.long L$set$151
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB4172-.
	.set L$set$152,LHOTE4-LFB4172
	.quad L$set$152
	.byte	0x8
	.quad	LLSDA4172-.
	.byte	0x4
	.set L$set$153,LCFI46-LFB4172
	.long L$set$153
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$154,LCFI47-LCFI46
	.long L$set$154
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$155,LCFI48-LCFI47
	.long L$set$155
	.byte	0xe
	.byte	0xf0,0x13
	.byte	0x4
	.set L$set$156,LCFI49-LCFI48
	.long L$set$156
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$157,LCFI50-LCFI49
	.long L$set$157
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$158,LCFI51-LCFI50
	.long L$set$158
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$159,LCFI52-LCFI51
	.long L$set$159
	.byte	0xb
	.align 3
LEFDE13:
LSFDE15:
	.set L$set$160,LEFDE15-LASFDE15
	.long L$set$160
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LCOLDB4-.
	.set L$set$161,LCOLDE4-LCOLDB4
	.quad L$set$161
	.byte	0x8
	.quad	LLSDAC4172-.
	.byte	0x4
	.set L$set$162,LCFI53-LCOLDB4
	.long L$set$162
	.byte	0xe
	.byte	0xf0,0x13
	.byte	0x83
	.byte	0x3
	.byte	0x86
	.byte	0x2
	.align 3
LEFDE15:
LSFDE17:
	.set L$set$163,LEFDE17-LASFDE17
	.long L$set$163
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB4174-.
	.set L$set$164,LHOTE13-LFB4174
	.quad L$set$164
	.byte	0x8
	.quad	LLSDA4174-.
	.byte	0x4
	.set L$set$165,LCFI54-LFB4174
	.long L$set$165
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$166,LCFI55-LCFI54
	.long L$set$166
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$167,LCFI56-LCFI55
	.long L$set$167
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$168,LCFI57-LCFI56
	.long L$set$168
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$169,LCFI58-LCFI57
	.long L$set$169
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$170,LCFI59-LCFI58
	.long L$set$170
	.byte	0xe
	.byte	0x90,0x28
	.byte	0x4
	.set L$set$171,LCFI60-LCFI59
	.long L$set$171
	.byte	0xa
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$172,LCFI61-LCFI60
	.long L$set$172
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$173,LCFI62-LCFI61
	.long L$set$173
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$174,LCFI63-LCFI62
	.long L$set$174
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$175,LCFI64-LCFI63
	.long L$set$175
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$176,LCFI65-LCFI64
	.long L$set$176
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$177,LCFI66-LCFI65
	.long L$set$177
	.byte	0xb
	.align 3
LEFDE17:
LSFDE19:
	.set L$set$178,LEFDE19-LASFDE19
	.long L$set$178
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LCOLDB13-.
	.set L$set$179,LCOLDE13-LCOLDB13
	.quad L$set$179
	.byte	0x8
	.quad	LLSDAC4174-.
	.byte	0x4
	.set L$set$180,LCFI67-LCOLDB13
	.long L$set$180
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
	.set L$set$181,LEFDE21-LASFDE21
	.long L$set$181
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB4175-.
	.set L$set$182,LHOTE14-LFB4175
	.quad L$set$182
	.byte	0x8
	.quad	LLSDA4175-.
	.byte	0x4
	.set L$set$183,LCFI68-LFB4175
	.long L$set$183
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$184,LCFI69-LCFI68
	.long L$set$184
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$185,LCFI70-LCFI69
	.long L$set$185
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$186,LCFI71-LCFI70
	.long L$set$186
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$187,LCFI72-LCFI71
	.long L$set$187
	.byte	0xe
	.byte	0x80,0x14
	.byte	0x4
	.set L$set$188,LCFI73-LCFI72
	.long L$set$188
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$189,LCFI74-LCFI73
	.long L$set$189
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$190,LCFI75-LCFI74
	.long L$set$190
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$191,LCFI76-LCFI75
	.long L$set$191
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$192,LCFI77-LCFI76
	.long L$set$192
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$193,LCFI78-LCFI77
	.long L$set$193
	.byte	0xb
	.align 3
LEFDE21:
LSFDE23:
	.set L$set$194,LEFDE23-LASFDE23
	.long L$set$194
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LCOLDB14-.
	.set L$set$195,LCOLDE14-LCOLDB14
	.quad L$set$195
	.byte	0x8
	.quad	LLSDAC4175-.
	.byte	0x4
	.set L$set$196,LCFI79-LCOLDB14
	.long L$set$196
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
	.set L$set$197,LEFDE25-LASFDE25
	.long L$set$197
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB4222-.
	.set L$set$198,LFE4222-LFB4222
	.quad L$set$198
	.byte	0x8
	.quad	LLSDA4222-.
	.byte	0x4
	.set L$set$199,LCFI80-LFB4222
	.long L$set$199
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$200,LCFI81-LCFI80
	.long L$set$200
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$201,LCFI82-LCFI81
	.long L$set$201
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$202,LCFI83-LCFI82
	.long L$set$202
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$203,LCFI84-LCFI83
	.long L$set$203
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$204,LCFI85-LCFI84
	.long L$set$204
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$205,LCFI86-LCFI85
	.long L$set$205
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$206,LCFI87-LCFI86
	.long L$set$206
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$207,LCFI88-LCFI87
	.long L$set$207
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$208,LCFI89-LCFI88
	.long L$set$208
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$209,LCFI90-LCFI89
	.long L$set$209
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$210,LCFI91-LCFI90
	.long L$set$210
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$211,LCFI92-LCFI91
	.long L$set$211
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$212,LCFI93-LCFI92
	.long L$set$212
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$213,LCFI94-LCFI93
	.long L$set$213
	.byte	0xb
	.align 3
LEFDE25:
LSFDE27:
	.set L$set$214,LEFDE27-LASFDE27
	.long L$set$214
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB4879-.
	.set L$set$215,LFE4879-LFB4879
	.quad L$set$215
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$216,LCFI95-LFB4879
	.long L$set$216
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$217,LCFI96-LCFI95
	.long L$set$217
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$218,LCFI97-LCFI96
	.long L$set$218
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$219,LCFI98-LCFI97
	.long L$set$219
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$220,LCFI99-LCFI98
	.long L$set$220
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$221,LCFI100-LCFI99
	.long L$set$221
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$222,LCFI101-LCFI100
	.long L$set$222
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$223,LCFI102-LCFI101
	.long L$set$223
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$224,LCFI103-LCFI102
	.long L$set$224
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$225,LCFI104-LCFI103
	.long L$set$225
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$226,LCFI105-LCFI104
	.long L$set$226
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$227,LCFI106-LCFI105
	.long L$set$227
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$228,LCFI107-LCFI106
	.long L$set$228
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$229,LCFI108-LCFI107
	.long L$set$229
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$230,LCFI109-LCFI108
	.long L$set$230
	.byte	0xb
	.align 3
LEFDE27:
LSFDE29:
	.set L$set$231,LEFDE29-LASFDE29
	.long L$set$231
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB4970-.
	.set L$set$232,LFE4970-LFB4970
	.quad L$set$232
	.byte	0x8
	.quad	0
	.align 3
LEFDE29:
LSFDE31:
	.set L$set$233,LEFDE31-LASFDE31
	.long L$set$233
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB5333-.
	.set L$set$234,LFE5333-LFB5333
	.quad L$set$234
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$235,LCFI110-LFB5333
	.long L$set$235
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$236,LCFI111-LCFI110
	.long L$set$236
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$237,LCFI112-LCFI111
	.long L$set$237
	.byte	0xa
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$238,LCFI113-LCFI112
	.long L$set$238
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$239,LCFI114-LCFI113
	.long L$set$239
	.byte	0xb
	.byte	0x4
	.set L$set$240,LCFI115-LCFI114
	.long L$set$240
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$241,LCFI116-LCFI115
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
	.quad	LFB4178-.
	.set L$set$243,LHOTE15-LFB4178
	.quad L$set$243
	.byte	0x8
	.quad	LLSDA4178-.
	.byte	0x4
	.set L$set$244,LCFI117-LFB4178
	.long L$set$244
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$245,LCFI118-LCFI117
	.long L$set$245
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$246,LCFI119-LCFI118
	.long L$set$246
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$247,LCFI120-LCFI119
	.long L$set$247
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$248,LCFI121-LCFI120
	.long L$set$248
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$249,LCFI122-LCFI121
	.long L$set$249
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$250,LCFI123-LCFI122
	.long L$set$250
	.byte	0xe
	.byte	0x80,0x28
	.byte	0x4
	.set L$set$251,LCFI124-LCFI123
	.long L$set$251
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$252,LCFI125-LCFI124
	.long L$set$252
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$253,LCFI126-LCFI125
	.long L$set$253
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$254,LCFI127-LCFI126
	.long L$set$254
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$255,LCFI128-LCFI127
	.long L$set$255
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$256,LCFI129-LCFI128
	.long L$set$256
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$257,LCFI130-LCFI129
	.long L$set$257
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$258,LCFI131-LCFI130
	.long L$set$258
	.byte	0xb
	.align 3
LEFDE33:
LSFDE35:
	.set L$set$259,LEFDE35-LASFDE35
	.long L$set$259
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LCOLDB15-.
	.set L$set$260,LCOLDE15-LCOLDB15
	.quad L$set$260
	.byte	0x8
	.quad	LLSDAC4178-.
	.byte	0x4
	.set L$set$261,LCFI132-LCOLDB15
	.long L$set$261
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
	.set L$set$262,LEFDE37-LASFDE37
	.long L$set$262
LASFDE37:
	.long	LASFDE37-EH_frame1
	.quad	LFB4177-.
	.set L$set$263,LHOTE16-LFB4177
	.quad L$set$263
	.byte	0x8
	.quad	LLSDA4177-.
	.byte	0x4
	.set L$set$264,LCFI133-LFB4177
	.long L$set$264
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$265,LCFI134-LCFI133
	.long L$set$265
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$266,LCFI135-LCFI134
	.long L$set$266
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$267,LCFI136-LCFI135
	.long L$set$267
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$268,LCFI137-LCFI136
	.long L$set$268
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$269,LCFI138-LCFI137
	.long L$set$269
	.byte	0xe
	.byte	0xd0,0x27
	.byte	0x4
	.set L$set$270,LCFI139-LCFI138
	.long L$set$270
	.byte	0xa
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$271,LCFI140-LCFI139
	.long L$set$271
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$272,LCFI141-LCFI140
	.long L$set$272
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$273,LCFI142-LCFI141
	.long L$set$273
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$274,LCFI143-LCFI142
	.long L$set$274
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$275,LCFI144-LCFI143
	.long L$set$275
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$276,LCFI145-LCFI144
	.long L$set$276
	.byte	0xb
	.align 3
LEFDE37:
LSFDE39:
	.set L$set$277,LEFDE39-LASFDE39
	.long L$set$277
LASFDE39:
	.long	LASFDE39-EH_frame1
	.quad	LCOLDB16-.
	.set L$set$278,LCOLDE16-LCOLDB16
	.quad L$set$278
	.byte	0x8
	.quad	LLSDAC4177-.
	.byte	0x4
	.set L$set$279,LCFI146-LCOLDB16
	.long L$set$279
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
LEFDE39:
LSFDE41:
	.set L$set$280,LEFDE41-LASFDE41
	.long L$set$280
LASFDE41:
	.long	LASFDE41-EH_frame1
	.quad	LFB4180-.
	.set L$set$281,LHOTE20-LFB4180
	.quad L$set$281
	.byte	0x8
	.quad	LLSDA4180-.
	.byte	0x4
	.set L$set$282,LCFI147-LFB4180
	.long L$set$282
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$283,LCFI148-LCFI147
	.long L$set$283
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$284,LCFI149-LCFI148
	.long L$set$284
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$285,LCFI150-LCFI149
	.long L$set$285
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$286,LCFI151-LCFI150
	.long L$set$286
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$287,LCFI152-LCFI151
	.long L$set$287
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$288,LCFI153-LCFI152
	.long L$set$288
	.byte	0xe
	.byte	0xf0,0x1b
	.byte	0x4
	.set L$set$289,LCFI154-LCFI153
	.long L$set$289
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$290,LCFI155-LCFI154
	.long L$set$290
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$291,LCFI156-LCFI155
	.long L$set$291
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$292,LCFI157-LCFI156
	.long L$set$292
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$293,LCFI158-LCFI157
	.long L$set$293
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$294,LCFI159-LCFI158
	.long L$set$294
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$295,LCFI160-LCFI159
	.long L$set$295
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$296,LCFI161-LCFI160
	.long L$set$296
	.byte	0xb
	.align 3
LEFDE41:
LSFDE43:
	.set L$set$297,LEFDE43-LASFDE43
	.long L$set$297
LASFDE43:
	.long	LASFDE43-EH_frame1
	.quad	LCOLDB20-.
	.set L$set$298,LCOLDE20-LCOLDB20
	.quad L$set$298
	.byte	0x8
	.quad	LLSDAC4180-.
	.byte	0x4
	.set L$set$299,LCFI162-LCOLDB20
	.long L$set$299
	.byte	0xe
	.byte	0xf0,0x1b
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
LEFDE43:
LSFDE45:
	.set L$set$300,LEFDE45-LASFDE45
	.long L$set$300
LASFDE45:
	.long	LASFDE45-EH_frame1
	.quad	LFB5262-.
	.set L$set$301,LFE5262-LFB5262
	.quad L$set$301
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$302,LCFI163-LFB5262
	.long L$set$302
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$303,LCFI164-LCFI163
	.long L$set$303
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE45:
	.mod_init_func
	.align 3
	.quad	__GLOBAL__sub_I_use_memset.cpp
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
