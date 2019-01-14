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
__ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.constprop.177:
LFB5488:
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
LFE5488:
	.cstring
lC0:
	.ascii "%d\0"
	.text
	.align 4,0x90
__ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.182:
LFB5483:
	pushq	%rbp
LCFI7:
	movq	%rsp, %rbp
LCFI8:
	pushq	%r12
	pushq	%rbx
LCFI9:
	movq	%rdi, %rbx
	subq	$208, %rsp
	testb	%al, %al
	movq	%r8, -160(%rbp)
	movq	%r9, -152(%rbp)
	je	L32
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm1, -128(%rbp)
	movaps	%xmm2, -112(%rbp)
	movaps	%xmm3, -96(%rbp)
	movaps	%xmm4, -80(%rbp)
	movaps	%xmm5, -64(%rbp)
	movaps	%xmm6, -48(%rbp)
	movaps	%xmm7, -32(%rbp)
L32:
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
	jne	L24
	movzbl	(%r12), %eax
	movl	$1, %ecx
	movb	%al, 16(%rbx)
L25:
	movq	%rcx, 8(%rbx)
	movq	%rbx, %rax
	movb	$0, (%rdx,%rcx)
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
LCFI10:
	ret
	.align 4,0x90
L24:
LCFI11:
	cmpl	$8, %eax
	jnb	L26
	testb	$4, %al
	jne	L41
	testl	%eax, %eax
	je	L27
	movzbl	(%r12), %esi
	testb	$2, %al
	movb	%sil, 16(%rbx)
	jne	L42
L27:
	movq	(%rbx), %rdx
	jmp	L25
	.align 4,0x90
L26:
	movl	%eax, %esi
	subl	$1, %eax
	movq	-8(%r12,%rsi), %rdi
	cmpl	$8, %eax
	movq	%rdi, -8(%rdx,%rsi)
	jb	L27
	andl	$-8, %eax
	xorl	%esi, %esi
L30:
	movl	%esi, %edi
	addl	$8, %esi
	movq	(%r12,%rdi), %r8
	cmpl	%eax, %esi
	movq	%r8, (%rdx,%rdi)
	jb	L30
	jmp	L27
	.align 4,0x90
L41:
	movl	(%r12), %esi
	movl	%eax, %eax
	movl	%esi, 16(%rbx)
	movl	-4(%r12,%rax), %esi
	movl	%esi, -4(%rdx,%rax)
	jmp	L27
L42:
	movl	%eax, %eax
	movzwl	-2(%r12,%rax), %esi
	movw	%si, -2(%rdx,%rax)
	jmp	L27
LFE5483:
	.cstring
	.align 3
lC1:
	.ascii "basic_string::_M_construct null not valid\0"
	.text
	.align 1,0x90
	.align 4,0x90
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_.isra.104:
LFB5410:
	pushq	%r13
LCFI12:
	leaq	16(%rdi), %r13
	pushq	%r12
LCFI13:
	pushq	%rbp
LCFI14:
	pushq	%rbx
LCFI15:
	subq	$24, %rsp
LCFI16:
	testq	%rsi, %rsi
	movq	%r13, (%rdi)
	je	L44
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movq	%rsi, %r12
	call	_strlen
	cmpq	$15, %rax
	movq	%rax, %rbp
	movq	%rax, 8(%rsp)
	ja	L55
	cmpq	$1, %rax
	jne	L48
	movzbl	(%r12), %eax
	movb	%al, 16(%rbx)
L49:
	movq	8(%rsp), %rax
	movq	(%rbx), %rdx
	movq	%rax, 8(%rbx)
	movb	$0, (%rdx,%rax)
	addq	$24, %rsp
LCFI17:
	popq	%rbx
LCFI18:
	popq	%rbp
LCFI19:
	popq	%r12
LCFI20:
	popq	%r13
LCFI21:
	ret
L48:
LCFI22:
	testq	%rax, %rax
	je	L49
	jmp	L47
L55:
	leaq	8(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	movq	%rax, %r13
	movq	%rax, (%rbx)
	movq	8(%rsp), %rax
	movq	%rax, 16(%rbx)
L47:
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	_memcpy
	jmp	L49
L44:
	leaq	lC1(%rip), %rdi
	call	__ZSt19__throw_logic_errorPKc
LFE5410:
	.align 4,0x90
__ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_.isra.173:
LFB5479:
	pushq	%r14
LCFI23:
	movq	%rdx, %r14
	movq	%rsi, %rdx
	subq	%rdi, %rdx
	pushq	%r13
LCFI24:
	cmpq	$128, %rdx
	pushq	%r12
LCFI25:
	pushq	%rbp
LCFI26:
	pushq	%rbx
LCFI27:
	jle	L56
	testq	%r14, %r14
	movq	%rdi, %rbx
	movq	%rsi, %r12
	je	L58
	leaq	8(%rdi), %r13
L60:
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
	jge	L65
	cmpq	%rax, %rcx
	jg	L70
	cmpq	%rdx, %rcx
	jg	L85
L86:
	movq	%rdx, (%rbx)
	movq	%rdi, 8(%rbx)
	movq	-8(%rsi), %rdi
L67:
	movq	(%rbx), %rcx
	movq	%r13, %rbp
	movq	%rsi, %rax
	.align 4,0x90
L71:
	movq	0(%rbp), %r8
	movq	%rbp, %r12
	cmpq	%rcx, %r8
	jl	L72
	leaq	-8(%rax), %rdx
	cmpq	%rcx, %rdi
	jle	L73
	subq	$16, %rax
	.align 4,0x90
L74:
	movq	%rax, %rdx
	subq	$8, %rax
	cmpq	%rcx, 8(%rax)
	jg	L74
L73:
	cmpq	%rdx, %rbp
	jnb	L87
	movq	(%rdx), %rax
	movq	%rax, 0(%rbp)
	movq	-8(%rdx), %rdi
	movq	%rdx, %rax
	movq	%r8, (%rdx)
	movq	(%rbx), %rcx
L72:
	addq	$8, %rbp
	jmp	L71
	.align 4,0x90
L65:
	cmpq	%rdx, %rcx
	jg	L86
	cmpq	%rax, %rcx
	jle	L70
L85:
	movq	%rcx, (%rbx)
	movq	%rdi, -8(%rsi)
	jmp	L67
	.align 4,0x90
L87:
	movq	%r14, %rdx
	movq	%rbp, %rdi
	call	__ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_.isra.173
	movq	%rbp, %rdx
	subq	%rbx, %rdx
	cmpq	$128, %rdx
	jle	L56
	testq	%r14, %r14
	movq	%rbp, %rsi
	jne	L60
L58:
	sarq	$3, %rdx
	leaq	-2(%rdx), %r13
	movq	%rdx, %rbp
	sarq	%r13
	jmp	L63
	.align 4,0x90
L61:
	subq	$1, %r13
L63:
	movq	(%rbx,%r13,8), %rcx
	movq	%rbp, %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	__ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.constprop.177
	testq	%r13, %r13
	jne	L61
	subq	$8, %r12
	.align 4,0x90
L62:
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
	call	__ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.constprop.177
	cmpq	$8, %rbp
	jg	L62
L56:
	popq	%rbx
LCFI28:
	popq	%rbp
LCFI29:
	popq	%r12
LCFI30:
	popq	%r13
LCFI31:
	popq	%r14
LCFI32:
	ret
	.align 4,0x90
L70:
LCFI33:
	movq	%rax, (%rbx)
	movq	%rdi, (%r8)
	movq	-8(%rsi), %rdi
	jmp	L67
LFE5479:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB4:
	.text
LHOTB4:
	.align 4,0x90
	.globl __ZN10benchmarks4util16double_generatorEv
__ZN10benchmarks4util16double_generatorEv:
LFB4172:
	pushq	%rbp
LCFI34:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI35:
	subq	$2520, %rsp
LCFI36:
	movzbl	__ZGVZN10benchmarks4util16double_generatorEvE2rd(%rip), %eax
	movq	%rsp, %rbx
	testb	%al, %al
	jne	L90
	leaq	__ZGVZN10benchmarks4util16double_generatorEvE2rd(%rip), %rdi
	movq	%rsp, %rbx
	call	___cxa_guard_acquire
	testl	%eax, %eax
	jne	L104
L90:
	leaq	__ZZN10benchmarks4util16double_generatorEvE2rd(%rip), %rdi
LEHB0:
	call	__ZNSt13random_device9_M_getvalEv
LEHE0:
	movl	$1, %edx
	movl	%eax, %ecx
	movl	%eax, (%rsp)
	.align 4,0x90
L93:
	movl	%ecx, %eax
	shrl	$30, %eax
	xorl	%ecx, %eax
	imull	$1812433253, %eax, %eax
	leal	(%rax,%rdx), %ecx
	movl	%ecx, (%rbx,%rdx,4)
	addq	$1, %rdx
	cmpq	$624, %rdx
	jne	L93
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
LCFI37:
	movq	%rbp, %rax
	popq	%rbx
LCFI38:
	popq	%rbp
LCFI39:
	ret
L104:
LCFI40:
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
	je	L90
	call	__ZdlPv
	jmp	L90
L96:
	movq	%rax, %rbp
	jmp	L94
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
	.set L$set$4,L96-LFB4172
	.long L$set$4
	.byte	0
	.text
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___ZN10benchmarks4util16double_generatorEv:
__ZN10benchmarks4util16double_generatorEv.cold.185:
L94:
LCFI41:
	movq	(%rsp), %rdi
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	je	L95
	call	__ZdlPv
L95:
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
LCFI42:
	movl	%esi, %esi
	pxor	%xmm0, %xmm0
	pushq	%r13
LCFI43:
	pushq	%r12
LCFI44:
	pushq	%rbp
LCFI45:
	xorl	%ebp, %ebp
	pushq	%rbx
LCFI46:
	movq	%rdi, %rbx
	subq	$5088, %rsp
LCFI47:
	testq	%rsi, %rsi
	movups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	je	L127
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
L127:
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
	je	L105
	movsd	lC6(%rip), %xmm6
	subsd	%xmm8, %xmm7
	flds	lC11(%rip)
	movdqa	lC7(%rip), %xmm5
	movdqa	lC8(%rip), %xmm4
	movdqa	lC9(%rip), %xmm3
	jmp	L108
	.align 4,0x90
L147:
	divsd	%xmm2, %xmm1
	comisd	%xmm6, %xmm1
	jnb	L146
	mulsd	%xmm7, %xmm1
	addq	$8, %r14
	addsd	%xmm8, %xmm1
	movsd	%xmm1, -8(%r14)
	cmpq	%r14, %r13
	je	L149
L108:
	cmpq	$623, %rbp
	movl	$2, %edx
	pxor	%xmm1, %xmm1
	movapd	%xmm6, %xmm2
	leaq	896(%r12), %rsi
	pxor	%xmm10, %xmm10
	movdqa	lC10(%rip), %xmm11
	leaq	2492(%r12), %rcx
	ja	L109
L148:
	movl	2560(%rsp,%rbp,4), %edi
	addq	$1, %rbp
L110:
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
	je	L147
	cmpq	$623, %rbp
	movl	$1, %edx
	jbe	L148
L109:
	movq	%r12, %rax
	.align 4,0x90
L111:
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
	jne	L111
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
L115:
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
	jne	L115
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
	jmp	L110
	.align 4,0x90
L146:
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
	jne	L108
	fstp	%st(0)
	jmp	L105
	.align 4,0x90
L149:
	fstp	%st(0)
L105:
	addq	$5088, %rsp
LCFI48:
	movq	%rbx, %rax
	popq	%rbx
LCFI49:
	popq	%rbp
LCFI50:
	popq	%r12
LCFI51:
	popq	%r13
LCFI52:
	popq	%r14
LCFI53:
	ret
L129:
LCFI54:
	movq	%rax, %rbp
	jmp	L125
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
	.set L$set$11,L129-LFB4174
	.long L$set$11
	.byte	0
	.text
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___ZN10benchmarks4util16generate_doublesEj:
__ZN10benchmarks4util16generate_doublesEj.cold.186:
L125:
LCFI55:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	L126
	call	__ZdlPv
L126:
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
LCFI56:
	movl	%esi, %r13d
	pushq	%r12
LCFI57:
	movl	%edx, %r12d
	pushq	%rbp
LCFI58:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI59:
	subq	$2520, %rsp
LCFI60:
	movzbl	__ZGVZN10benchmarks4util13int_generatorEiiE2rd(%rip), %eax
	movq	%rsp, %rbx
	testb	%al, %al
	jne	L152
	leaq	__ZGVZN10benchmarks4util13int_generatorEiiE2rd(%rip), %rdi
	movq	%rsp, %rbx
	call	___cxa_guard_acquire
	testl	%eax, %eax
	jne	L166
L152:
	leaq	__ZZN10benchmarks4util13int_generatorEiiE2rd(%rip), %rdi
LEHB6:
	call	__ZNSt13random_device9_M_getvalEv
LEHE6:
	movl	$1, %edx
	movl	%eax, %ecx
	movl	%eax, (%rsp)
	.align 4,0x90
L155:
	movl	%ecx, %eax
	shrl	$30, %eax
	xorl	%ecx, %eax
	imull	$1812433253, %eax, %eax
	leal	(%rax,%rdx), %ecx
	movl	%ecx, (%rbx,%rdx,4)
	addq	$1, %rdx
	cmpq	$624, %rdx
	jne	L155
	movl	%r13d, 0(%rbp)
	leaq	8(%rbp), %rdi
	movq	%rbx, %rsi
	movl	$2504, %edx
	movl	%r12d, 4(%rbp)
	movq	$624, 2496(%rsp)
	call	_memcpy
	addq	$2520, %rsp
LCFI61:
	movq	%rbp, %rax
	popq	%rbx
LCFI62:
	popq	%rbp
LCFI63:
	popq	%r12
LCFI64:
	popq	%r13
LCFI65:
	ret
L166:
LCFI66:
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
	je	L152
	call	__ZdlPv
	jmp	L152
L158:
	movq	%rax, %rbp
	jmp	L156
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
	.set L$set$18,L158-LFB4175
	.long L$set$18
	.byte	0
	.text
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___ZN10benchmarks4util13int_generatorEii:
__ZN10benchmarks4util13int_generatorEii.cold.187:
L156:
LCFI67:
	movq	(%rsp), %rdi
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	je	L157
	call	__ZdlPv
L157:
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
LFB4226:
	pushq	%r15
LCFI68:
	movl	%r8d, %r15d
	pushq	%r14
LCFI69:
	movq	%rsi, %r14
	pushq	%r13
LCFI70:
	pushq	%r12
LCFI71:
	movq	%rcx, %r12
	pushq	%rbp
LCFI72:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI73:
	movq	%rdx, %rbx
	subq	$24, %rsp
LCFI74:
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
	je	L180
	call	___error
LEHE10:
	cmpl	$34, (%rax)
	je	L169
	movl	$2147483648, %eax
	movl	$4294967295, %edx
	addq	%rbp, %rax
	cmpq	%rdx, %rax
	ja	L169
	testq	%r12, %r12
	je	L171
	movq	8(%rsp), %rax
	subq	%rbx, %rax
	movq	%rax, (%r12)
L171:
	call	___error
	movl	(%rax), %eax
	testl	%eax, %eax
	je	L181
L167:
	addq	$24, %rsp
LCFI75:
	movl	%ebp, %eax
	popq	%rbx
LCFI76:
	popq	%rbp
LCFI77:
	popq	%r12
LCFI78:
	popq	%r13
LCFI79:
	popq	%r14
LCFI80:
	popq	%r15
LCFI81:
	ret
	.align 4,0x90
L181:
LCFI82:
	call	___error
	movl	%r13d, (%rax)
	jmp	L167
L169:
	movq	%r14, %rdi
LEHB11:
	call	__ZSt20__throw_out_of_rangePKc
L180:
	movq	%r14, %rdi
	call	__ZSt24__throw_invalid_argumentPKc
LEHE11:
L175:
	movq	%rax, %rbx
L173:
	call	___error
	cmpl	$0, (%rax)
	jne	L174
	call	___error
	movl	%r13d, (%rax)
L174:
	movq	%rbx, %rdi
LEHB12:
	call	__Unwind_Resume
LEHE12:
LFE4226:
	.section __DATA,__gcc_except_tab
GCC_except_table7:
LLSDA4226:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x34
	.set L$set$21,LEHB9-LFB4226
	.long L$set$21
	.set L$set$22,LEHE9-LEHB9
	.long L$set$22
	.long	0
	.byte	0
	.set L$set$23,LEHB10-LFB4226
	.long L$set$23
	.set L$set$24,LEHE10-LEHB10
	.long L$set$24
	.set L$set$25,L175-LFB4226
	.long L$set$25
	.byte	0
	.set L$set$26,LEHB11-LFB4226
	.long L$set$26
	.set L$set$27,LEHE11-LEHB11
	.long L$set$27
	.set L$set$28,L175-LFB4226
	.long L$set$28
	.byte	0
	.set L$set$29,LEHB12-LFB4226
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
LFB4897:
	pushq	%r15
LCFI83:
	movq	%rdx, %r15
	movq	%rsi, %rdx
	pushq	%r14
LCFI84:
	pushq	%r13
LCFI85:
	movq	%rdi, %r13
	pushq	%r12
LCFI86:
	movq	%rsi, %r12
	pushq	%rbp
LCFI87:
	pushq	%rbx
LCFI88:
	subq	$40, %rsp
LCFI89:
	movq	8(%rdi), %rcx
	movq	(%rdi), %rbp
	movq	%rcx, %rax
	subq	%rbp, %rax
	subq	%rbp, %rdx
	sarq	$3, %rax
	testq	%rax, %rax
	je	L191
	leaq	(%rax,%rax), %rdi
	movq	$-8, %r14
	cmpq	%rdi, %rax
	jbe	L197
L184:
	movq	%r14, %rdi
	movq	%rdx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	call	__Znwm
	movq	16(%rsp), %rdx
	movq	8(%rsp), %rcx
	movq	%rax, %rbx
	addq	%rax, %r14
L185:
	movq	(%r15), %rax
	leaq	8(%rbx,%rdx), %r9
	movq	%rcx, %r15
	subq	%r12, %r15
	cmpq	%rbp, %r12
	movq	%rax, (%rbx,%rdx)
	leaq	(%r9,%r15), %rax
	movq	%rax, 8(%rsp)
	je	L186
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	%r9, 24(%rsp)
	movq	%rcx, 16(%rsp)
	call	_memmove
	movq	16(%rsp), %rcx
	movq	24(%rsp), %r9
	cmpq	%rcx, %r12
	je	L190
L187:
	movq	%r15, %rdx
	movq	%r12, %rsi
	movq	%r9, %rdi
	call	_memcpy
L189:
	testq	%rbp, %rbp
	jne	L190
L188:
	movq	%rbx, %xmm0
	movq	%r14, 16(%r13)
	movhps	8(%rsp), %xmm0
	movups	%xmm0, 0(%r13)
	addq	$40, %rsp
LCFI90:
	popq	%rbx
LCFI91:
	popq	%rbp
LCFI92:
	popq	%r12
LCFI93:
	popq	%r13
LCFI94:
	popq	%r14
LCFI95:
	popq	%r15
LCFI96:
	ret
	.align 4,0x90
L190:
LCFI97:
	movq	%rbp, %rdi
	call	__ZdlPv
	jmp	L188
	.align 4,0x90
L197:
	movabsq	$2305843009213693951, %rax
	cmpq	%rax, %rdi
	ja	L184
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	testq	%rdi, %rdi
	je	L185
	jmp	L183
	.align 4,0x90
L186:
	cmpq	%rcx, %r12
	jne	L187
	jmp	L189
	.align 4,0x90
L191:
	movl	$1, %edi
L183:
	leaq	0(,%rdi,8), %r14
	jmp	L184
LFE4897:
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	.weak_definition __ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv:
LFB4987:
	movq	2496(%rdi), %rax
	cmpq	$623, %rax
	ja	L199
	leaq	1(%rax), %rdx
	movl	(%rdi,%rax,4), %eax
L200:
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
L199:
	movdqa	lC8(%rip), %xmm3
	movq	%rdi, %rax
	pxor	%xmm7, %xmm7
	movdqa	lC7(%rip), %xmm2
	leaq	896(%rdi), %rdx
	movdqa	lC9(%rip), %xmm4
	movdqa	lC10(%rip), %xmm1
	.align 4,0x90
L201:
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
	jne	L201
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
L205:
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
	jne	L205
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
	jmp	L200
LFE4987:
	.align 1,0x90
	.align 4,0x90
__ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEiRT_RKNS0_10param_typeE.isra.72:
LFB5378:
	pushq	%rbx
LCFI98:
	subq	$16, %rsp
LCFI99:
	movl	4(%rsi), %r8d
	subl	(%rsi), %r8d
	cmpl	$-1, %r8d
	je	L217
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
	jmp	L227
	.align 4,0x90
L240:
	movl	(%rdi,%rcx,4), %edx
	addq	$1, %rcx
L219:
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
	ja	L239
L227:
	cmpq	$623, %rcx
	jbe	L240
	movq	%rdi, %rcx
	.align 4,0x90
L220:
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
	jne	L220
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
L224:
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
	jne	L224
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
	jmp	L219
	.align 4,0x90
L239:
	xorl	%edx, %edx
	divl	%r9d
	addl	(%rsi), %eax
	addq	$16, %rsp
LCFI100:
	popq	%rbx
LCFI101:
	ret
	.align 4,0x90
L217:
LCFI102:
	movq	%rsi, 8(%rsp)
	call	__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	movq	8(%rsp), %rsi
	addl	(%rsi), %eax
	addq	$16, %rsp
LCFI103:
	popq	%rbx
LCFI104:
	ret
LFE5378:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB15:
	.text
LHOTB15:
	.align 4,0x90
	.globl __ZN10benchmarks4util20generate_ints_stringB5cxx11Ei
__ZN10benchmarks4util20generate_ints_stringB5cxx11Ei:
LFB4178:
	pushq	%r15
LCFI105:
	movslq	%esi, %rsi
	pushq	%r14
LCFI106:
	pushq	%r13
LCFI107:
	pushq	%r12
LCFI108:
	pushq	%rbp
LCFI109:
	pushq	%rbx
LCFI110:
	movq	%rdi, %rbx
	subq	$5064, %rsp
LCFI111:
	testq	%rsi, %rsi
	je	L259
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, %rsi
	ja	L274
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
L242:
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
	je	L244
	leaq	8(%r15), %rbp
	movq	%rax, %r12
	movq	%rax, %r14
	.align 4,0x90
L245:
	movq	%r15, %rsi
	movq	%rbp, %rdi
	addq	$4, %r14
	call	__ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEiRT_RKNS0_10param_typeE.isra.72
	movl	%eax, -4(%r14)
	cmpq	%r14, %r13
	jne	L245
	movq	8(%rsp), %rax
	movq	$0, 8(%rbx)
	movb	$0, 16(%rbx)
	movq	%rax, (%rbx)
	leaq	16(%r15), %rax
	movq	%rax, 16(%rsp)
	jmp	L250
	.align 4,0x90
L249:
	movb	$32, (%rax,%rbp)
	movq	(%rbx), %rax
	addq	$4, %r12
	cmpq	%r12, %r13
	movq	%r14, 8(%rbx)
	movb	$0, 1(%rax,%rbp)
	je	L258
L250:
	movl	(%r12), %r8d
	movl	$16, %edx
	movq	%r15, %rdi
	xorl	%eax, %eax
	movq	_vsnprintf@GOTPCREL(%rip), %rsi
	leaq	lC0(%rip), %rcx
	call	__ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z.constprop.182
	movq	2552(%rsp), %rdx
	movq	%rbx, %rdi
	movq	2544(%rsp), %rsi
LEHB15:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
LEHE15:
	movq	2544(%rsp), %rdi
	cmpq	16(%rsp), %rdi
	je	L247
	call	__ZdlPv
L247:
	movq	8(%rbx), %rbp
	movq	(%rbx), %rax
	cmpq	8(%rsp), %rax
	leaq	1(%rbp), %r14
	je	L260
	movq	16(%rbx), %rdx
L248:
	cmpq	%rdx, %r14
	jbe	L249
	movl	$1, %r8d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
LEHB16:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
LEHE16:
	movq	(%rbx), %rax
	jmp	L249
	.align 4,0x90
L260:
	movl	$15, %edx
	jmp	L248
	.align 4,0x90
L244:
	leaq	16(%rbx), %rax
	movq	$0, 8(%rbx)
	movq	%rax, (%rbx)
	movb	$0, 16(%rbx)
	.align 4,0x90
L258:
	movq	24(%rsp), %rax
	testq	%rax, %rax
	je	L241
	movq	%rax, %rdi
	call	__ZdlPv
L241:
	addq	$5064, %rsp
LCFI112:
	movq	%rbx, %rax
	popq	%rbx
LCFI113:
	popq	%rbp
LCFI114:
	popq	%r12
LCFI115:
	popq	%r13
LCFI116:
	popq	%r14
LCFI117:
	popq	%r15
LCFI118:
	ret
	.align 4,0x90
L259:
LCFI119:
	movq	$0, 24(%rsp)
	xorl	%r13d, %r13d
	jmp	L242
L274:
LEHB17:
	call	__ZSt17__throw_bad_allocv
LEHE17:
L262:
	movq	%rax, %rbp
	jmp	L254
L263:
	movq	%rax, %rbp
	jmp	L252
L261:
	movq	%rax, %rbp
	jmp	L256
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
	.set L$set$35,L261-LFB4178
	.long L$set$35
	.byte	0
	.set L$set$36,LEHB15-LFB4178
	.long L$set$36
	.set L$set$37,LEHE15-LEHB15
	.long L$set$37
	.set L$set$38,L263-LFB4178
	.long L$set$38
	.byte	0
	.set L$set$39,LEHB16-LFB4178
	.long L$set$39
	.set L$set$40,LEHE16-LEHB16
	.long L$set$40
	.set L$set$41,L262-LFB4178
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
__ZN10benchmarks4util20generate_ints_stringB5cxx11Ei.cold.188:
L252:
LCFI120:
	movq	2544(%rsp), %rdi
	addq	$16, %r15
	cmpq	%r15, %rdi
	je	L254
	call	__ZdlPv
L254:
	movq	(%rbx), %rdi
	cmpq	8(%rsp), %rdi
	je	L256
	call	__ZdlPv
L256:
	cmpq	$0, 24(%rsp)
	je	L257
	movq	24(%rsp), %rdi
	call	__ZdlPv
L257:
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
LCFI121:
	movl	%esi, %esi
	pxor	%xmm0, %xmm0
	pushq	%r13
LCFI122:
	pushq	%r12
LCFI123:
	pushq	%rbp
LCFI124:
	xorl	%ebp, %ebp
	pushq	%rbx
LCFI125:
	movq	%rdi, %rbx
	subq	$5024, %rsp
LCFI126:
	testq	%rsi, %rsi
	movups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	je	L294
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
L294:
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
	je	L275
	movdqa	lC8(%rip), %xmm5
	movdqa	lC7(%rip), %xmm4
	movdqa	lC9(%rip), %xmm3
	.align 4,0x90
L290:
	movl	2512(%rsp), %edi
	movl	2516(%rsp), %ecx
	subl	%edi, %ecx
	cmpl	$-1, %ecx
	je	L278
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
	jmp	L288
	.align 4,0x90
L314:
	movl	2520(%rsp,%rsi,4), %edx
	addq	$1, %rsi
	.align 4,0x90
L280:
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
	ja	L313
L288:
	cmpq	$623, %rsi
	jbe	L314
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
	cmpq	%rax, %r10
	jne	L281
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
L285:
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
	jne	L285
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
	jmp	L280
	.align 4,0x90
L313:
	xorl	%edx, %edx
	movq	%rsi, 5016(%rsp)
	divl	%r8d
L289:
	addl	%edi, %eax
	addq	$4, %r13
	movl	%eax, -4(%r13)
	cmpq	%r13, %r12
	jne	L290
L275:
	addq	$5024, %rsp
LCFI127:
	movq	%rbx, %rax
	popq	%rbx
LCFI128:
	popq	%rbp
LCFI129:
	popq	%r12
LCFI130:
	popq	%r13
LCFI131:
	popq	%r14
LCFI132:
	ret
	.align 4,0x90
L278:
LCFI133:
	leaq	8(%rbp), %rdi
	call	__ZNSt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	movl	2512(%rsp), %edi
	movdqa	lC9(%rip), %xmm3
	movdqa	lC7(%rip), %xmm4
	movdqa	lC8(%rip), %xmm5
	jmp	L289
L295:
	movq	%rax, %rbp
	jmp	L292
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
	.set L$set$50,L295-LFB4177
	.long L$set$50
	.byte	0
	.text
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___ZN10benchmarks4util13generate_intsEj:
__ZN10benchmarks4util13generate_intsEj.cold.189:
L292:
LCFI134:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	L293
	call	__ZdlPv
L293:
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
LFB4181:
	pushq	%r15
LCFI135:
	pushq	%r14
LCFI136:
	pushq	%r13
LCFI137:
	pushq	%r12
LCFI138:
	movq	%rsi, %r12
	pushq	%rbp
LCFI139:
	pushq	%rbx
LCFI140:
	subq	$5320, %rsp
LCFI141:
	movq	8(%rsi), %rsi
	leaq	2752(%rsp), %rbx
	movq	%rbx, %rdi
LEHB22:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_.isra.104
LEHE22:
	movq	_strtol@GOTPCREL(%rip), %rbp
	movl	$10, %r8d
	xorl	%ecx, %ecx
	movq	2752(%rsp), %rdx
	leaq	lC17(%rip), %rsi
	movq	%rbp, %rdi
LEHB23:
	call	__ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
LEHE23:
	movq	2752(%rsp), %rdi
	movl	%eax, 112(%rsp)
	leaq	16(%rbx), %rax
	cmpq	%rax, %rdi
	je	L316
	call	__ZdlPv
L316:
	movq	16(%r12), %rsi
	movq	%rbx, %rdi
LEHB24:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_.isra.104
LEHE24:
	movl	$10, %r8d
	xorl	%ecx, %ecx
	movq	%rbp, %rdi
	movq	2752(%rsp), %rdx
	leaq	lC17(%rip), %rsi
LEHB25:
	call	__ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
LEHE25:
	movq	2752(%rsp), %rdi
	movl	%eax, 116(%rsp)
	leaq	16(%rbx), %rax
	cmpq	%rax, %rdi
	je	L317
	call	__ZdlPv
L317:
	movslq	112(%rsp), %rax
	pxor	%xmm0, %xmm0
	movabsq	$2305843009213693951, %rdx
	movaps	%xmm0, 144(%rsp)
	movq	$0, 160(%rsp)
	cmpq	%rdx, %rax
	ja	L476
	testq	%rax, %rax
	jne	L477
L319:
	movl	116(%rsp), %r14d
	leaq	240(%rsp), %rdi
	xorl	%esi, %esi
	movq	%rdi, 80(%rsp)
	leal	-1(%r14), %edx
LEHB26:
	call	__ZN10benchmarks4util13int_generatorEii
	movl	112(%rsp), %edx
	movslq	%r14d, %rax
	movl	$0, 92(%rsp)
	movq	%rax, 48(%rsp)
	salq	$4, %rax
	movq	%rax, 96(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 120(%rsp)
	testl	%edx, %edx
	jle	L383
	.align 4
L324:
	movq	48(%rsp), %rax
	testq	%rax, %rax
	je	L325
L486:
	movabsq	$1152921504606846975, %rcx
	cmpq	%rcx, %rax
	ja	L478
	movq	96(%rsp), %rdi
	call	__Znwm
LEHE26:
	movq	48(%rsp), %rdx
	movq	%rax, 8(%rsp)
	.align 4
L328:
	movl	$0, (%rax)
	addq	$16, %rax
	movq	$0x000000000, -8(%rax)
	subq	$1, %rdx
	jne	L328
	movq	8(%rsp), %rax
	movq	96(%rsp), %rdi
	addq	%rdi, %rax
	movq	%rax, 64(%rsp)
LEHB27:
	call	__Znwm
LEHE27:
	movq	48(%rsp), %rdx
	movq	%rax, (%rsp)
	.align 4
L329:
	movl	$0, (%rax)
	addq	$16, %rax
	movq	$0x000000000, -8(%rax)
	subq	$1, %rdx
	jne	L329
	movq	(%rsp), %rax
	addq	96(%rsp), %rax
	movq	%rax, 56(%rsp)
L399:
	movl	116(%rsp), %r14d
	movq	120(%rsp), %rdi
	movl	%r14d, %esi
LEHB28:
	call	__ZN10benchmarks4util13generate_intsEj
LEHE28:
	leaq	208(%rsp), %rdi
	movl	%r14d, %esi
LEHB29:
	call	__ZN10benchmarks4util16generate_doublesEj
LEHE29:
	cmpq	$0, 48(%rsp)
	je	L356
	movq	64(%rsp), %rax
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	subq	8(%rsp), %rax
	movq	%rax, 16(%rsp)
	sarq	$4, %rax
	movq	%rax, 24(%rsp)
	movq	56(%rsp), %rax
	subq	(%rsp), %rax
	movq	%rax, 40(%rsp)
	sarq	$4, %rax
	movq	%rax, 32(%rsp)
	leaq	2800(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	136(%rsp), %rax
	movq	%rax, 104(%rsp)
	jmp	L357
	.align 4
L350:
	xorl	%esi, %esi
LEHB30:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
LEHE30:
L351:
	movl	88(%rsp), %esi
	movq	%rbx, %rdi
LEHB31:
	call	__ZNSolsEi
LEHE31:
	leaq	64(%r13), %rax
	addq	$1, %r15
	addq	$4, %rbp
	movq	%rax, 3384(%rsp)
	leaq	24(%r13), %rax
	leaq	8(%rbx), %rdi
	movq	%rax, %xmm0
	movq	__ZTVSt13basic_filebufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, %xmm1
	punpcklqdq	%xmm1, %xmm0
	movaps	%xmm0, 2752(%rsp)
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	leaq	136(%rbx), %rdi
	call	__ZNSt12__basic_fileIcED1Ev
	movq	__ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	64(%rbx), %rdi
	addq	$16, %rax
	movq	%rax, 2760(%rsp)
	call	__ZNSt6localeD1Ev
	movq	-24(%r12), %rax
	movq	%r12, 2752(%rsp)
	leaq	632(%rbx), %rdi
	movq	%r14, 2752(%rsp,%rax)
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, 3384(%rsp)
	call	__ZNSt8ios_baseD2Ev
	cmpq	%r15, 48(%rsp)
	je	L356
L357:
	movq	176(%rsp), %rax
	movq	208(%rsp), %rdx
	movq	8(%rsp), %rcx
	movl	(%rax,%rbp), %eax
	leaq	(%rdx,%r15,8), %rdx
	movsd	(%rdx), %xmm0
	movl	%eax, (%rcx,%rbp,4)
	movsd	%xmm0, 8(%rcx,%rbp,4)
	movq	(%rsp), %rcx
	movsd	(%rdx), %xmm0
	movq	$0, 2768(%rsp)
	movl	%eax, (%rcx,%rbp,4)
	xorl	%eax, %eax
	cmpq	$0, 24(%rsp)
	movsd	%xmm0, 8(%rcx,%rbp,4)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, 2752(%rsp)
	je	L334
	movabsq	$1152921504606846975, %rsi
	cmpq	%rsi, 24(%rsp)
	ja	L479
	movq	16(%rsp), %rdi
LEHB32:
	call	__Znwm
L334:
	movq	16(%rsp), %rdx
	movq	%rax, %xmm0
	movq	8(%rsp), %rsi
	punpcklqdq	%xmm0, %xmm0
	movaps	%xmm0, 2752(%rsp)
	cmpq	%rsi, 64(%rsp)
	leaq	(%rax,%rdx), %r12
	movq	%r12, 2768(%rsp)
	je	L336
	movq	%rax, %rdi
	call	_memcpy
L336:
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	cmpq	$0, 32(%rsp)
	movq	%r12, 2760(%rsp)
	movups	%xmm0, 2776(%rsp)
	movq	$0, 2792(%rsp)
	je	L338
	movabsq	$1152921504606846975, %rsi
	cmpq	%rsi, 32(%rsp)
	ja	L480
	movq	40(%rsp), %rdi
	call	__Znwm
LEHE32:
L338:
	movq	40(%rsp), %rdx
	movq	%rax, %xmm0
	movq	(%rsp), %rcx
	punpcklqdq	%xmm0, %xmm0
	movups	%xmm0, 2776(%rsp)
	movq	56(%rsp), %rsi
	leaq	(%rax,%rdx), %r12
	movq	%r12, 2792(%rsp)
	cmpq	%rsi, %rcx
	je	L340
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_memcpy
L340:
	movq	80(%rsp), %rsi
	movl	$2512, %edx
	movq	%r12, 2784(%rsp)
	movq	72(%rsp), %rdi
	call	_memcpy
	call	__ZNSt6chrono3_V212system_clock3nowEv
	movq	2760(%rsp), %rsi
	movq	%rax, %r12
	movq	2776(%rsp), %rcx
	movq	2752(%rsp), %rdx
	movq	2784(%rsp), %rax
	movq	%rsi, %rdi
	subq	%rdx, %rdi
	subq	%rcx, %rax
	cmpq	%rax, %rdi
	jne	L341
L474:
	cmpq	%rdx, %rsi
	je	L341
	movl	(%rcx), %eax
	cmpl	%eax, (%rdx)
	je	L481
L341:
	leaq	56(%rbx), %rdi
	leaq	48(%rbx), %rsi
	call	__ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEiRT_RKNS0_10param_typeE.isra.72
	cltq
	salq	$4, %rax
	addq	2776(%rsp), %rax
	movl	(%rax), %eax
	movl	%eax, 88(%rsp)
	call	__ZNSt6chrono3_V212system_clock3nowEv
	movq	2776(%rsp), %rdi
	subq	%r12, %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rax
	imulq	%rcx
	sarq	$63, %rcx
	sarq	$18, %rdx
	subq	%rcx, %rdx
	testq	%rdi, %rdi
	movq	%rdx, 136(%rsp)
	je	L346
	call	__ZdlPv
L346:
	movq	2752(%rsp), %rdi
	testq	%rdi, %rdi
	je	L347
	call	__ZdlPv
L347:
	movq	152(%rsp), %rsi
	cmpq	160(%rsp), %rsi
	je	L348
	movq	136(%rsp), %rax
	addq	$8, %rsi
	movq	%rax, -8(%rsi)
	movq	%rsi, 152(%rsp)
L349:
	leaq	632(%rbx), %rdi
	call	__ZNSt8ios_baseC2Ev
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	pxor	%xmm0, %xmm0
	xorl	%esi, %esi
	movaps	%xmm0, 3616(%rsp)
	movaps	%xmm0, 3632(%rsp)
	movq	$0, 3600(%rsp)
	addq	$16, %rax
	movq	%rax, 3384(%rsp)
	xorl	%eax, %eax
	movw	%ax, 3608(%rsp)
	movq	__ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	movq	8(%rax), %r12
	movq	16(%rax), %r14
	movq	-24(%r12), %rdi
	movq	%r12, 2752(%rsp)
	addq	%rbx, %rdi
	movq	%r14, (%rdi)
LEHB33:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
LEHE33:
	movq	__ZTVSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %r13
	leaq	8(%rbx), %rdi
	leaq	24(%r13), %rax
	movq	%rax, 2752(%rsp)
	leaq	64(%r13), %rax
	movq	%rax, 3384(%rsp)
LEHB34:
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
LEHE34:
	leaq	8(%rbx), %rsi
	leaq	632(%rbx), %rdi
LEHB35:
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
	leaq	8(%rbx), %rdi
	movl	$16, %edx
	leaq	lC19(%rip), %rsi
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	movq	2752(%rsp), %rdx
	movq	-24(%rdx), %rdi
	addq	%rbx, %rdi
	testq	%rax, %rax
	jne	L350
	movl	32(%rdi), %esi
	orl	$4, %esi
	call	__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
LEHE35:
	jmp	L351
	.align 4
L481:
	movsd	8(%rdx), %xmm0
	ucomisd	8(%rcx), %xmm0
	jp	L341
	jne	L341
	addq	$16, %rdx
	addq	$16, %rcx
	jmp	L474
	.align 4
L348:
	movq	104(%rsp), %rdx
	leaq	144(%rsp), %rdi
LEHB36:
	call	__ZNSt6vectorINSt6chrono8durationIxSt5ratioILl1ELl1000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_
	jmp	L349
	.align 4
L356:
	movq	152(%rsp), %r13
	movq	144(%rsp), %r14
	movq	%r13, %rbp
	subq	%r14, %rbp
	movq	%rbp, %rdx
	sarq	$3, %rdx
	cmpq	%r13, %r14
	movq	%rdx, %rax
	je	L332
	bsrq	%rdx, %rdx
	movl	$63, %eax
	movq	%r13, %rsi
	leaq	8(%r14), %r12
	xorq	$63, %rdx
	movq	%r14, %rdi
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movq	%rax, %rdx
	addq	%rdx, %rdx
	call	__ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_.isra.173
	addq	$-128, %rbp
	jle	L358
	leaq	128(%r14), %r15
	jmp	L364
	.align 4
L483:
	cmpq	%r12, %r14
	je	L360
	movq	%r12, %rdx
	movl	$8, %eax
	movq	%r14, %rsi
	leaq	(%r14,%rax), %rdi
	subq	%r14, %rdx
	call	_memmove
L360:
	addq	$8, %r12
	movq	%rbp, (%r14)
	cmpq	%r12, %r15
	je	L482
L364:
	movq	(%r12), %rbp
	cmpq	(%r14), %rbp
	jl	L483
	cmpq	-8(%r12), %rbp
	leaq	-8(%r12), %rax
	jl	L363
	jmp	L484
	.align 4
L401:
	movq	%rdx, %rax
L363:
	movq	(%rax), %rdx
	cmpq	-8(%rax), %rbp
	movq	%rdx, 8(%rax)
	leaq	-8(%rax), %rdx
	jl	L401
L362:
	addq	$8, %r12
	movq	%rbp, (%rax)
	cmpq	%r12, %r15
	jne	L364
L482:
	cmpq	%r15, %r13
	je	L366
	.align 4
L369:
	movq	(%r15), %rcx
	leaq	-8(%r15), %rax
	cmpq	%rcx, -8(%r15)
	jg	L368
	jmp	L485
	.align 4
L403:
	movq	%rdx, %rax
L368:
	movq	(%rax), %rdx
	cmpq	-8(%rax), %rcx
	movq	%rdx, 8(%rax)
	leaq	-8(%rax), %rdx
	jl	L403
	addq	$8, %r15
	movq	%rcx, (%rax)
	cmpq	%r15, %r13
	jne	L369
L366:
	movq	144(%rsp), %r13
	movq	152(%rsp), %rax
	subq	%r13, %rax
	sarq	$3, %rax
L332:
	shrq	%rax
	movq	__ZSt4cout@GOTPCREL(%rip), %rdi
	movq	0(%r13,%rax,8), %rsi
	call	__ZNSo9_M_insertIxEERSoT_
	leaq	135(%rsp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	movb	$32, 135(%rsp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
LEHE36:
	movq	208(%rsp), %rdi
	testq	%rdi, %rdi
	je	L379
	call	__ZdlPv
L379:
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	L380
	call	__ZdlPv
L380:
	movq	(%rsp), %rax
	testq	%rax, %rax
	je	L381
	movq	%rax, %rdi
	call	__ZdlPv
L381:
	movq	8(%rsp), %rax
	testq	%rax, %rax
	je	L382
	movq	%rax, %rdi
	call	__ZdlPv
	addl	$1, 92(%rsp)
	movl	92(%rsp), %eax
	cmpl	%eax, 112(%rsp)
	jne	L324
L383:
	movq	144(%rsp), %rdi
	testq	%rdi, %rdi
	je	L462
	call	__ZdlPv
L462:
	addq	$5320, %rsp
LCFI142:
	xorl	%eax, %eax
	popq	%rbx
LCFI143:
	popq	%rbp
LCFI144:
	popq	%r12
LCFI145:
	popq	%r13
LCFI146:
	popq	%r14
LCFI147:
	popq	%r15
LCFI148:
	ret
	.align 4
L382:
LCFI149:
	addl	$1, 92(%rsp)
	movl	92(%rsp), %eax
	cmpl	112(%rsp), %eax
	je	L383
	movq	48(%rsp), %rax
	testq	%rax, %rax
	jne	L486
L325:
	movq	$0, 64(%rsp)
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 56(%rsp)
	jmp	L399
	.align 4
L358:
	cmpq	%r12, %r13
	movl	$8, %ebp
	jne	L377
	jmp	L366
	.align 4
L487:
	cmpq	%r12, %r14
	je	L373
	leaq	(%r14,%rbp), %rdi
	movq	%r12, %rdx
	movq	%r14, %rsi
	subq	%r14, %rdx
	call	_memmove
L373:
	movq	%r15, (%r14)
L374:
	addq	$8, %r12
	cmpq	%r12, %r13
	je	L366
L377:
	movq	(%r12), %r15
	cmpq	(%r14), %r15
	jl	L487
	cmpq	-8(%r12), %r15
	leaq	-8(%r12), %rax
	jl	L376
	jmp	L488
	.align 4
L405:
	movq	%rdx, %rax
L376:
	movq	(%rax), %rdx
	cmpq	-8(%rax), %r15
	movq	%rdx, 8(%rax)
	leaq	-8(%rax), %rdx
	jl	L405
L375:
	movq	%r15, (%rax)
	jmp	L374
	.align 4
L485:
	movq	%r15, %rax
	addq	$8, %r15
	cmpq	%r15, %r13
	movq	%rcx, (%rax)
	jne	L369
	jmp	L366
L484:
	movq	%r12, %rax
	jmp	L362
L488:
	movq	%r12, %rax
	jmp	L375
L477:
	leaq	0(,%rax,8), %rbp
	movq	%rbp, %rdi
LEHB37:
	call	__Znwm
LEHE37:
	movq	144(%rsp), %rdi
	movq	%rax, %r12
	testq	%rdi, %rdi
	je	L320
	call	__ZdlPv
L320:
	leaq	(%r12,%rbp), %rax
	movq	%r12, %xmm0
	punpcklqdq	%xmm0, %xmm0
	movq	%rax, 160(%rsp)
	movaps	%xmm0, 144(%rsp)
	jmp	L319
L479:
LEHB38:
	call	__ZSt17__throw_bad_allocv
L480:
	call	__ZSt17__throw_bad_allocv
LEHE38:
L478:
LEHB39:
	call	__ZSt17__throw_bad_allocv
L476:
	leaq	lC18(%rip), %rdi
	call	__ZSt20__throw_length_errorPKc
LEHE39:
L414:
	movq	%rax, %rbp
	jmp	L353
L416:
	movq	%rax, %rbx
	jmp	L396
L411:
	movq	%rax, %rbx
	jmp	L391
L410:
	movq	%rax, %rbx
	jmp	L393
L413:
	movq	%rax, %rbp
	jmp	L355
L408:
	movq	%rax, %rbp
	jmp	L387
L412:
	movq	%rax, %rbp
	jmp	L389
L407:
	movq	%rax, %rbp
	jmp	L385
L409:
	movq	%rax, %rbx
	jmp	L397
L417:
	movq	%rax, %rbp
	jmp	L354
L415:
	movq	%rax, %rbp
	jmp	L352
	.section __DATA,__gcc_except_tab
GCC_except_table12:
LLSDA4181:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xea,0x1
	.set L$set$53,LEHB22-LFB4181
	.long L$set$53
	.set L$set$54,LEHE22-LEHB22
	.long L$set$54
	.long	0
	.byte	0
	.set L$set$55,LEHB23-LFB4181
	.long L$set$55
	.set L$set$56,LEHE23-LEHB23
	.long L$set$56
	.set L$set$57,L407-LFB4181
	.long L$set$57
	.byte	0
	.set L$set$58,LEHB24-LFB4181
	.long L$set$58
	.set L$set$59,LEHE24-LEHB24
	.long L$set$59
	.long	0
	.byte	0
	.set L$set$60,LEHB25-LFB4181
	.long L$set$60
	.set L$set$61,LEHE25-LEHB25
	.long L$set$61
	.set L$set$62,L408-LFB4181
	.long L$set$62
	.byte	0
	.set L$set$63,LEHB26-LFB4181
	.long L$set$63
	.set L$set$64,LEHE26-LEHB26
	.long L$set$64
	.set L$set$65,L409-LFB4181
	.long L$set$65
	.byte	0
	.set L$set$66,LEHB27-LFB4181
	.long L$set$66
	.set L$set$67,LEHE27-LEHB27
	.long L$set$67
	.set L$set$68,L416-LFB4181
	.long L$set$68
	.byte	0
	.set L$set$69,LEHB28-LFB4181
	.long L$set$69
	.set L$set$70,LEHE28-LEHB28
	.long L$set$70
	.set L$set$71,L410-LFB4181
	.long L$set$71
	.byte	0
	.set L$set$72,LEHB29-LFB4181
	.long L$set$72
	.set L$set$73,LEHE29-LEHB29
	.long L$set$73
	.set L$set$74,L411-LFB4181
	.long L$set$74
	.byte	0
	.set L$set$75,LEHB30-LFB4181
	.long L$set$75
	.set L$set$76,LEHE30-LEHB30
	.long L$set$76
	.set L$set$77,L415-LFB4181
	.long L$set$77
	.byte	0
	.set L$set$78,LEHB31-LFB4181
	.long L$set$78
	.set L$set$79,LEHE31-LEHB31
	.long L$set$79
	.set L$set$80,L412-LFB4181
	.long L$set$80
	.byte	0
	.set L$set$81,LEHB32-LFB4181
	.long L$set$81
	.set L$set$82,LEHE32-LEHB32
	.long L$set$82
	.set L$set$83,L413-LFB4181
	.long L$set$83
	.byte	0
	.set L$set$84,LEHB33-LFB4181
	.long L$set$84
	.set L$set$85,LEHE33-LEHB33
	.long L$set$85
	.set L$set$86,L417-LFB4181
	.long L$set$86
	.byte	0
	.set L$set$87,LEHB34-LFB4181
	.long L$set$87
	.set L$set$88,LEHE34-LEHB34
	.long L$set$88
	.set L$set$89,L414-LFB4181
	.long L$set$89
	.byte	0
	.set L$set$90,LEHB35-LFB4181
	.long L$set$90
	.set L$set$91,LEHE35-LEHB35
	.long L$set$91
	.set L$set$92,L415-LFB4181
	.long L$set$92
	.byte	0
	.set L$set$93,LEHB36-LFB4181
	.long L$set$93
	.set L$set$94,LEHE36-LEHB36
	.long L$set$94
	.set L$set$95,L413-LFB4181
	.long L$set$95
	.byte	0
	.set L$set$96,LEHB37-LFB4181
	.long L$set$96
	.set L$set$97,LEHE37-LEHB37
	.long L$set$97
	.set L$set$98,L409-LFB4181
	.long L$set$98
	.byte	0
	.set L$set$99,LEHB38-LFB4181
	.long L$set$99
	.set L$set$100,LEHE38-LEHB38
	.long L$set$100
	.set L$set$101,L413-LFB4181
	.long L$set$101
	.byte	0
	.set L$set$102,LEHB39-LFB4181
	.long L$set$102
	.set L$set$103,LEHE39-LEHB39
	.long L$set$103
	.set L$set$104,L409-LFB4181
	.long L$set$104
	.byte	0
	.section __TEXT,__text_startup,regular,pure_instructions
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of__main:
_main.cold.190:
L352:
LCFI150:
	leaq	8(%rbx), %rdi
	call	__ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
L353:
	movq	-24(%r12), %rax
	movq	%r12, 2752(%rsp)
	movq	%r14, 2752(%rsp,%rax)
L354:
	movq	__ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	leaq	632(%rbx), %rdi
	addq	$16, %rax
	movq	%rax, 3384(%rsp)
	call	__ZNSt8ios_baseD2Ev
L355:
	movq	208(%rsp), %rdi
	testq	%rdi, %rdi
	je	L390
	call	__ZdlPv
L390:
	movq	%rbp, %rbx
L391:
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	L393
	call	__ZdlPv
L393:
	cmpq	$0, (%rsp)
	je	L394
	movq	(%rsp), %rdi
	call	__ZdlPv
L394:
	cmpq	$0, 8(%rsp)
	je	L397
L396:
	movq	8(%rsp), %rdi
	call	__ZdlPv
L397:
	movq	144(%rsp), %rdi
	testq	%rdi, %rdi
	je	L398
	call	__ZdlPv
L398:
	movq	%rbx, %rdi
LEHB40:
	call	__Unwind_Resume
L387:
	movq	2752(%rsp), %rdi
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	je	L388
	call	__ZdlPv
L388:
	movq	%rbp, %rdi
	call	__Unwind_Resume
L389:
	movq	%rbx, %rdi
	call	__ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	jmp	L355
L385:
	movq	2752(%rsp), %rdi
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	je	L386
	call	__ZdlPv
L386:
	movq	%rbp, %rdi
	call	__Unwind_Resume
LEHE40:
LFE4181:
	.section __DATA,__gcc_except_tab
GCC_except_table13:
LLSDAC4181:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xd
	.set L$set$105,LEHB40-LCOLDB20
	.long L$set$105
	.set L$set$106,LEHE40-LEHB40
	.long L$set$106
	.long	0
	.byte	0
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE20:
	.section __TEXT,__text_startup,regular,pure_instructions
LHOTE20:
	.section __TEXT,__text_cold,regular,pure_instructions
	.section __TEXT,__text_startup,regular,pure_instructions
	.align 4
__GLOBAL__sub_I_use_std_equal.cpp:
LFB5305:
	leaq	__ZStL8__ioinit(%rip), %rdi
	subq	$8, %rsp
LCFI151:
	call	__ZNSt8ios_base4InitC1Ev
	movq	__ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
LCFI152:
	leaq	___dso_handle(%rip), %rdx
	leaq	__ZStL8__ioinit(%rip), %rsi
	jmp	___cxa_atexit
LFE5305:
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
	.set L$set$107,LECIE1-LSCIE1
	.long L$set$107
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
	.set L$set$108,LEFDE1-LASFDE1
	.long L$set$108
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB3106-.
	.set L$set$109,LFE3106-LFB3106
	.quad L$set$109
	.byte	0x8
	.quad	LLSDA3106-.
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$110,LEFDE3-LASFDE3
	.long L$set$110
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB5488-.
	.set L$set$111,LFE5488-LFB5488
	.quad L$set$111
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$112,LCFI0-LFB5488
	.long L$set$112
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$113,LCFI1-LCFI0
	.long L$set$113
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$114,LCFI2-LCFI1
	.long L$set$114
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$115,LCFI3-LCFI2
	.long L$set$115
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$116,LCFI4-LCFI3
	.long L$set$116
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$117,LCFI5-LCFI4
	.long L$set$117
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$118,LCFI6-LCFI5
	.long L$set$118
	.byte	0xb
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$119,LEFDE5-LASFDE5
	.long L$set$119
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB5483-.
	.set L$set$120,LFE5483-LFB5483
	.quad L$set$120
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$121,LCFI7-LFB5483
	.long L$set$121
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$122,LCFI8-LCFI7
	.long L$set$122
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$123,LCFI9-LCFI8
	.long L$set$123
	.byte	0x8c
	.byte	0x3
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$124,LCFI10-LCFI9
	.long L$set$124
	.byte	0xa
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$125,LCFI11-LCFI10
	.long L$set$125
	.byte	0xb
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$126,LEFDE7-LASFDE7
	.long L$set$126
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB5410-.
	.set L$set$127,LFE5410-LFB5410
	.quad L$set$127
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$128,LCFI12-LFB5410
	.long L$set$128
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$129,LCFI13-LCFI12
	.long L$set$129
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$130,LCFI14-LCFI13
	.long L$set$130
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$131,LCFI15-LCFI14
	.long L$set$131
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$132,LCFI16-LCFI15
	.long L$set$132
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$133,LCFI17-LCFI16
	.long L$set$133
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$134,LCFI18-LCFI17
	.long L$set$134
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$135,LCFI19-LCFI18
	.long L$set$135
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$136,LCFI20-LCFI19
	.long L$set$136
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$137,LCFI21-LCFI20
	.long L$set$137
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$138,LCFI22-LCFI21
	.long L$set$138
	.byte	0xb
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$139,LEFDE9-LASFDE9
	.long L$set$139
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB5479-.
	.set L$set$140,LFE5479-LFB5479
	.quad L$set$140
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$141,LCFI23-LFB5479
	.long L$set$141
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$142,LCFI24-LCFI23
	.long L$set$142
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$143,LCFI25-LCFI24
	.long L$set$143
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$144,LCFI26-LCFI25
	.long L$set$144
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$145,LCFI27-LCFI26
	.long L$set$145
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$146,LCFI28-LCFI27
	.long L$set$146
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$147,LCFI29-LCFI28
	.long L$set$147
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$148,LCFI30-LCFI29
	.long L$set$148
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$149,LCFI31-LCFI30
	.long L$set$149
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$150,LCFI32-LCFI31
	.long L$set$150
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$151,LCFI33-LCFI32
	.long L$set$151
	.byte	0xb
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$152,LEFDE11-LASFDE11
	.long L$set$152
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB4172-.
	.set L$set$153,LHOTE4-LFB4172
	.quad L$set$153
	.byte	0x8
	.quad	LLSDA4172-.
	.byte	0x4
	.set L$set$154,LCFI34-LFB4172
	.long L$set$154
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$155,LCFI35-LCFI34
	.long L$set$155
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$156,LCFI36-LCFI35
	.long L$set$156
	.byte	0xe
	.byte	0xf0,0x13
	.byte	0x4
	.set L$set$157,LCFI37-LCFI36
	.long L$set$157
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$158,LCFI38-LCFI37
	.long L$set$158
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$159,LCFI39-LCFI38
	.long L$set$159
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$160,LCFI40-LCFI39
	.long L$set$160
	.byte	0xb
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$161,LEFDE13-LASFDE13
	.long L$set$161
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LCOLDB4-.
	.set L$set$162,LCOLDE4-LCOLDB4
	.quad L$set$162
	.byte	0x8
	.quad	LLSDAC4172-.
	.byte	0x4
	.set L$set$163,LCFI41-LCOLDB4
	.long L$set$163
	.byte	0xe
	.byte	0xf0,0x13
	.byte	0x83
	.byte	0x3
	.byte	0x86
	.byte	0x2
	.align 3
LEFDE13:
LSFDE15:
	.set L$set$164,LEFDE15-LASFDE15
	.long L$set$164
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB4174-.
	.set L$set$165,LHOTE13-LFB4174
	.quad L$set$165
	.byte	0x8
	.quad	LLSDA4174-.
	.byte	0x4
	.set L$set$166,LCFI42-LFB4174
	.long L$set$166
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$167,LCFI43-LCFI42
	.long L$set$167
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$168,LCFI44-LCFI43
	.long L$set$168
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$169,LCFI45-LCFI44
	.long L$set$169
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$170,LCFI46-LCFI45
	.long L$set$170
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$171,LCFI47-LCFI46
	.long L$set$171
	.byte	0xe
	.byte	0x90,0x28
	.byte	0x4
	.set L$set$172,LCFI48-LCFI47
	.long L$set$172
	.byte	0xa
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$173,LCFI49-LCFI48
	.long L$set$173
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$174,LCFI50-LCFI49
	.long L$set$174
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$175,LCFI51-LCFI50
	.long L$set$175
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$176,LCFI52-LCFI51
	.long L$set$176
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$177,LCFI53-LCFI52
	.long L$set$177
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$178,LCFI54-LCFI53
	.long L$set$178
	.byte	0xb
	.align 3
LEFDE15:
LSFDE17:
	.set L$set$179,LEFDE17-LASFDE17
	.long L$set$179
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LCOLDB13-.
	.set L$set$180,LCOLDE13-LCOLDB13
	.quad L$set$180
	.byte	0x8
	.quad	LLSDAC4174-.
	.byte	0x4
	.set L$set$181,LCFI55-LCOLDB13
	.long L$set$181
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
LEFDE17:
LSFDE19:
	.set L$set$182,LEFDE19-LASFDE19
	.long L$set$182
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB4175-.
	.set L$set$183,LHOTE14-LFB4175
	.quad L$set$183
	.byte	0x8
	.quad	LLSDA4175-.
	.byte	0x4
	.set L$set$184,LCFI56-LFB4175
	.long L$set$184
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$185,LCFI57-LCFI56
	.long L$set$185
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$186,LCFI58-LCFI57
	.long L$set$186
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$187,LCFI59-LCFI58
	.long L$set$187
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$188,LCFI60-LCFI59
	.long L$set$188
	.byte	0xe
	.byte	0x80,0x14
	.byte	0x4
	.set L$set$189,LCFI61-LCFI60
	.long L$set$189
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$190,LCFI62-LCFI61
	.long L$set$190
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$191,LCFI63-LCFI62
	.long L$set$191
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$192,LCFI64-LCFI63
	.long L$set$192
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$193,LCFI65-LCFI64
	.long L$set$193
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$194,LCFI66-LCFI65
	.long L$set$194
	.byte	0xb
	.align 3
LEFDE19:
LSFDE21:
	.set L$set$195,LEFDE21-LASFDE21
	.long L$set$195
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LCOLDB14-.
	.set L$set$196,LCOLDE14-LCOLDB14
	.quad L$set$196
	.byte	0x8
	.quad	LLSDAC4175-.
	.byte	0x4
	.set L$set$197,LCFI67-LCOLDB14
	.long L$set$197
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
LEFDE21:
LSFDE23:
	.set L$set$198,LEFDE23-LASFDE23
	.long L$set$198
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB4226-.
	.set L$set$199,LFE4226-LFB4226
	.quad L$set$199
	.byte	0x8
	.quad	LLSDA4226-.
	.byte	0x4
	.set L$set$200,LCFI68-LFB4226
	.long L$set$200
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$201,LCFI69-LCFI68
	.long L$set$201
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$202,LCFI70-LCFI69
	.long L$set$202
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$203,LCFI71-LCFI70
	.long L$set$203
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$204,LCFI72-LCFI71
	.long L$set$204
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$205,LCFI73-LCFI72
	.long L$set$205
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$206,LCFI74-LCFI73
	.long L$set$206
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$207,LCFI75-LCFI74
	.long L$set$207
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$208,LCFI76-LCFI75
	.long L$set$208
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$209,LCFI77-LCFI76
	.long L$set$209
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$210,LCFI78-LCFI77
	.long L$set$210
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$211,LCFI79-LCFI78
	.long L$set$211
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$212,LCFI80-LCFI79
	.long L$set$212
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$213,LCFI81-LCFI80
	.long L$set$213
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$214,LCFI82-LCFI81
	.long L$set$214
	.byte	0xb
	.align 3
LEFDE23:
LSFDE25:
	.set L$set$215,LEFDE25-LASFDE25
	.long L$set$215
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB4897-.
	.set L$set$216,LFE4897-LFB4897
	.quad L$set$216
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$217,LCFI83-LFB4897
	.long L$set$217
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$218,LCFI84-LCFI83
	.long L$set$218
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$219,LCFI85-LCFI84
	.long L$set$219
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$220,LCFI86-LCFI85
	.long L$set$220
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$221,LCFI87-LCFI86
	.long L$set$221
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$222,LCFI88-LCFI87
	.long L$set$222
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$223,LCFI89-LCFI88
	.long L$set$223
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$224,LCFI90-LCFI89
	.long L$set$224
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$225,LCFI91-LCFI90
	.long L$set$225
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$226,LCFI92-LCFI91
	.long L$set$226
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$227,LCFI93-LCFI92
	.long L$set$227
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$228,LCFI94-LCFI93
	.long L$set$228
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$229,LCFI95-LCFI94
	.long L$set$229
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$230,LCFI96-LCFI95
	.long L$set$230
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$231,LCFI97-LCFI96
	.long L$set$231
	.byte	0xb
	.align 3
LEFDE25:
LSFDE27:
	.set L$set$232,LEFDE27-LASFDE27
	.long L$set$232
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB4987-.
	.set L$set$233,LFE4987-LFB4987
	.quad L$set$233
	.byte	0x8
	.quad	0
	.align 3
LEFDE27:
LSFDE29:
	.set L$set$234,LEFDE29-LASFDE29
	.long L$set$234
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB5378-.
	.set L$set$235,LFE5378-LFB5378
	.quad L$set$235
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$236,LCFI98-LFB5378
	.long L$set$236
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$237,LCFI99-LCFI98
	.long L$set$237
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$238,LCFI100-LCFI99
	.long L$set$238
	.byte	0xa
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$239,LCFI101-LCFI100
	.long L$set$239
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$240,LCFI102-LCFI101
	.long L$set$240
	.byte	0xb
	.byte	0x4
	.set L$set$241,LCFI103-LCFI102
	.long L$set$241
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$242,LCFI104-LCFI103
	.long L$set$242
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE29:
LSFDE31:
	.set L$set$243,LEFDE31-LASFDE31
	.long L$set$243
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB4178-.
	.set L$set$244,LHOTE15-LFB4178
	.quad L$set$244
	.byte	0x8
	.quad	LLSDA4178-.
	.byte	0x4
	.set L$set$245,LCFI105-LFB4178
	.long L$set$245
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$246,LCFI106-LCFI105
	.long L$set$246
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$247,LCFI107-LCFI106
	.long L$set$247
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$248,LCFI108-LCFI107
	.long L$set$248
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$249,LCFI109-LCFI108
	.long L$set$249
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$250,LCFI110-LCFI109
	.long L$set$250
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$251,LCFI111-LCFI110
	.long L$set$251
	.byte	0xe
	.byte	0x80,0x28
	.byte	0x4
	.set L$set$252,LCFI112-LCFI111
	.long L$set$252
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$253,LCFI113-LCFI112
	.long L$set$253
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$254,LCFI114-LCFI113
	.long L$set$254
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$255,LCFI115-LCFI114
	.long L$set$255
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$256,LCFI116-LCFI115
	.long L$set$256
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$257,LCFI117-LCFI116
	.long L$set$257
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$258,LCFI118-LCFI117
	.long L$set$258
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$259,LCFI119-LCFI118
	.long L$set$259
	.byte	0xb
	.align 3
LEFDE31:
LSFDE33:
	.set L$set$260,LEFDE33-LASFDE33
	.long L$set$260
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LCOLDB15-.
	.set L$set$261,LCOLDE15-LCOLDB15
	.quad L$set$261
	.byte	0x8
	.quad	LLSDAC4178-.
	.byte	0x4
	.set L$set$262,LCFI120-LCOLDB15
	.long L$set$262
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
LEFDE33:
LSFDE35:
	.set L$set$263,LEFDE35-LASFDE35
	.long L$set$263
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LFB4177-.
	.set L$set$264,LHOTE16-LFB4177
	.quad L$set$264
	.byte	0x8
	.quad	LLSDA4177-.
	.byte	0x4
	.set L$set$265,LCFI121-LFB4177
	.long L$set$265
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$266,LCFI122-LCFI121
	.long L$set$266
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$267,LCFI123-LCFI122
	.long L$set$267
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$268,LCFI124-LCFI123
	.long L$set$268
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$269,LCFI125-LCFI124
	.long L$set$269
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$270,LCFI126-LCFI125
	.long L$set$270
	.byte	0xe
	.byte	0xd0,0x27
	.byte	0x4
	.set L$set$271,LCFI127-LCFI126
	.long L$set$271
	.byte	0xa
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$272,LCFI128-LCFI127
	.long L$set$272
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$273,LCFI129-LCFI128
	.long L$set$273
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$274,LCFI130-LCFI129
	.long L$set$274
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$275,LCFI131-LCFI130
	.long L$set$275
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$276,LCFI132-LCFI131
	.long L$set$276
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$277,LCFI133-LCFI132
	.long L$set$277
	.byte	0xb
	.align 3
LEFDE35:
LSFDE37:
	.set L$set$278,LEFDE37-LASFDE37
	.long L$set$278
LASFDE37:
	.long	LASFDE37-EH_frame1
	.quad	LCOLDB16-.
	.set L$set$279,LCOLDE16-LCOLDB16
	.quad L$set$279
	.byte	0x8
	.quad	LLSDAC4177-.
	.byte	0x4
	.set L$set$280,LCFI134-LCOLDB16
	.long L$set$280
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
LEFDE37:
LSFDE39:
	.set L$set$281,LEFDE39-LASFDE39
	.long L$set$281
LASFDE39:
	.long	LASFDE39-EH_frame1
	.quad	LFB4181-.
	.set L$set$282,LHOTE20-LFB4181
	.quad L$set$282
	.byte	0x8
	.quad	LLSDA4181-.
	.byte	0x4
	.set L$set$283,LCFI135-LFB4181
	.long L$set$283
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$284,LCFI136-LCFI135
	.long L$set$284
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$285,LCFI137-LCFI136
	.long L$set$285
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$286,LCFI138-LCFI137
	.long L$set$286
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$287,LCFI139-LCFI138
	.long L$set$287
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$288,LCFI140-LCFI139
	.long L$set$288
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$289,LCFI141-LCFI140
	.long L$set$289
	.byte	0xe
	.byte	0x80,0x2a
	.byte	0x4
	.set L$set$290,LCFI142-LCFI141
	.long L$set$290
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$291,LCFI143-LCFI142
	.long L$set$291
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$292,LCFI144-LCFI143
	.long L$set$292
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$293,LCFI145-LCFI144
	.long L$set$293
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$294,LCFI146-LCFI145
	.long L$set$294
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$295,LCFI147-LCFI146
	.long L$set$295
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$296,LCFI148-LCFI147
	.long L$set$296
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$297,LCFI149-LCFI148
	.long L$set$297
	.byte	0xb
	.align 3
LEFDE39:
LSFDE41:
	.set L$set$298,LEFDE41-LASFDE41
	.long L$set$298
LASFDE41:
	.long	LASFDE41-EH_frame1
	.quad	LCOLDB20-.
	.set L$set$299,LCOLDE20-LCOLDB20
	.quad L$set$299
	.byte	0x8
	.quad	LLSDAC4181-.
	.byte	0x4
	.set L$set$300,LCFI150-LCOLDB20
	.long L$set$300
	.byte	0xe
	.byte	0x80,0x2a
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
	.set L$set$301,LEFDE43-LASFDE43
	.long L$set$301
LASFDE43:
	.long	LASFDE43-EH_frame1
	.quad	LFB5305-.
	.set L$set$302,LFE5305-LFB5305
	.quad L$set$302
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$303,LCFI151-LFB5305
	.long L$set$303
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$304,LCFI152-LCFI151
	.long L$set$304
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE43:
	.mod_init_func
	.align 3
	.quad	__GLOBAL__sub_I_use_std_equal.cpp
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
