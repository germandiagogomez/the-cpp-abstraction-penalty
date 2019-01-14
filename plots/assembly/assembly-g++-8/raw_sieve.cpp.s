	.text
	.align 4,0x90
__ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.constprop.79:
LFB3666:
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
	jge	L2
	movq	%rsi, %r10
	jmp	L3
	.align 4,0x90
L19:
	movq	(%rax), %r8
	cmpq	%r9, %rbp
	movq	%r8, (%rdi,%r10,8)
	jle	L5
L6:
	movq	%r9, %r10
L3:
	leaq	1(%r10), %rax
	leaq	(%rax,%rax), %r9
	salq	$4, %rax
	leaq	-1(%r9), %r8
	addq	%rdi, %rax
	leaq	(%rdi,%r8,8), %rbx
	movq	(%rbx), %r11
	cmpq	(%rax), %r11
	jle	L19
	cmpq	%r8, %rbp
	movq	%r11, (%rdi,%r10,8)
	jle	L20
	movq	%r8, %r9
	jmp	L6
	.align 4,0x90
L20:
	movq	%rbx, %rax
	movq	%r8, %r9
L5:
	testq	%r12, %r12
	je	L11
L7:
	leaq	-1(%r9), %rdx
	movq	%rdx, %r8
	shrq	$63, %r8
	addq	%rdx, %r8
	sarq	%r8
	cmpq	%rsi, %r9
	jle	L8
	leaq	(%rdi,%r8,8), %r10
	cmpq	%rcx, (%r10)
	jl	L9
	jmp	L8
	.align 4,0x90
L10:
	leaq	(%rdi,%rdx,8), %r10
	movq	%r8, %r9
	movq	%rdx, %r8
	cmpq	%rcx, (%r10)
	jge	L8
L9:
	movq	(%r10), %rax
	movq	%rax, (%rdi,%r9,8)
	leaq	-1(%r8), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rax, %rdx
	leaq	(%rdi,%r8,8), %rax
	sarq	%rdx
	cmpq	%r8, %rsi
	jl	L10
L8:
	movq	%rcx, (%rax)
	popq	%rbx
LCFI3:
	popq	%rbp
LCFI4:
	popq	%r12
LCFI5:
	ret
	.align 4,0x90
L2:
LCFI6:
	leaq	(%rdi,%rsi,8), %rax
	testq	%r12, %r12
	movq	%rsi, %r9
	jne	L8
	.align 4,0x90
L11:
	leaq	-2(%rdx), %r8
	movq	%r8, %rdx
	shrq	$63, %rdx
	addq	%r8, %rdx
	sarq	%rdx
	cmpq	%r9, %rdx
	jne	L7
	leaq	1(%r9,%r9), %r9
	leaq	(%rdi,%r9,8), %rdx
	movq	(%rdx), %r8
	movq	%r8, (%rax)
	movq	%rdx, %rax
	jmp	L7
LFE3666:
	.align 4,0x90
__ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_.constprop.83:
LFB3662:
	cmpq	%rsi, %rdi
	je	L33
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
	je	L21
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	$8, %r13d
	jmp	L28
	.align 4,0x90
L36:
	cmpq	%rbx, %r14
	je	L24
	leaq	(%r14,%r13), %rdi
	movq	%rbx, %rdx
	movq	%r14, %rsi
	subq	%r14, %rdx
	call	_memmove
L24:
	addq	$8, %rbx
	movq	%rbp, (%r14)
	cmpq	%rbx, %r12
	je	L21
L28:
	movq	(%rbx), %rbp
	cmpq	(%r14), %rbp
	jl	L36
	cmpq	-8(%rbx), %rbp
	leaq	-8(%rbx), %rax
	jl	L27
	jmp	L37
	.align 4,0x90
L30:
	movq	%rdx, %rax
L27:
	movq	(%rax), %rdx
	cmpq	-8(%rax), %rbp
	movq	%rdx, 8(%rax)
	leaq	-8(%rax), %rdx
	jl	L30
	movq	%rbp, (%rax)
L38:
	addq	$8, %rbx
	cmpq	%rbx, %r12
	jne	L28
L21:
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
L37:
LCFI17:
	movq	%rbx, %rax
	movq	%rbp, (%rax)
	jmp	L38
	.align 4,0x90
L33:
LCFI18:
	ret
LFE3662:
	.align 4,0x90
__ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_.isra.75:
LFB3660:
	pushq	%r14
LCFI19:
	movq	%rdx, %r14
	movq	%rsi, %rdx
	subq	%rdi, %rdx
	pushq	%r13
LCFI20:
	cmpq	$128, %rdx
	pushq	%r12
LCFI21:
	pushq	%rbp
LCFI22:
	pushq	%rbx
LCFI23:
	jle	L39
	testq	%r14, %r14
	movq	%rdi, %rbx
	movq	%rsi, %r12
	je	L41
	leaq	8(%rdi), %r13
L43:
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
	jge	L48
	cmpq	%rax, %rcx
	jg	L53
	cmpq	%rdx, %rcx
	jg	L68
L69:
	movq	%rdx, (%rbx)
	movq	%rdi, 8(%rbx)
	movq	-8(%rsi), %rdi
L50:
	movq	(%rbx), %rcx
	movq	%r13, %rbp
	movq	%rsi, %rax
	.align 4,0x90
L54:
	movq	0(%rbp), %r8
	movq	%rbp, %r12
	cmpq	%rcx, %r8
	jl	L55
	leaq	-8(%rax), %rdx
	cmpq	%rcx, %rdi
	jle	L56
	subq	$16, %rax
	.align 4,0x90
L57:
	movq	%rax, %rdx
	subq	$8, %rax
	cmpq	%rcx, 8(%rax)
	jg	L57
L56:
	cmpq	%rdx, %rbp
	jnb	L70
	movq	(%rdx), %rax
	movq	%rax, 0(%rbp)
	movq	-8(%rdx), %rdi
	movq	%rdx, %rax
	movq	%r8, (%rdx)
	movq	(%rbx), %rcx
L55:
	addq	$8, %rbp
	jmp	L54
	.align 4,0x90
L48:
	cmpq	%rdx, %rcx
	jg	L69
	cmpq	%rax, %rcx
	jle	L53
L68:
	movq	%rcx, (%rbx)
	movq	%rdi, -8(%rsi)
	jmp	L50
	.align 4,0x90
L70:
	movq	%r14, %rdx
	movq	%rbp, %rdi
	call	__ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_.isra.75
	movq	%rbp, %rdx
	subq	%rbx, %rdx
	cmpq	$128, %rdx
	jle	L39
	testq	%r14, %r14
	movq	%rbp, %rsi
	jne	L43
L41:
	sarq	$3, %rdx
	leaq	-2(%rdx), %r13
	movq	%rdx, %rbp
	sarq	%r13
	jmp	L46
	.align 4,0x90
L44:
	subq	$1, %r13
L46:
	movq	(%rbx,%r13,8), %rcx
	movq	%rbp, %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	__ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.constprop.79
	testq	%r13, %r13
	jne	L44
	subq	$8, %r12
	.align 4,0x90
L45:
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
	call	__ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.constprop.79
	cmpq	$8, %rbp
	jg	L45
L39:
	popq	%rbx
LCFI24:
	popq	%rbp
LCFI25:
	popq	%r12
LCFI26:
	popq	%r13
LCFI27:
	popq	%r14
LCFI28:
	ret
	.align 4,0x90
L53:
LCFI29:
	movq	%rax, (%rbx)
	movq	%rdi, (%r8)
	movq	-8(%rsi), %rdi
	jmp	L50
LFE3660:
	.cstring
lC0:
	.ascii "bitset::set\0"
	.align 3
lC1:
	.ascii "%s: __position (which is %zu) >= _Nb (which is %zu)\0"
	.text
	.align 4,0x90
	.globl __Z13execute_sieveILm100000000EE11sieve_tableIXT_EEv
	.weak_definition __Z13execute_sieveILm100000000EE11sieve_tableIXT_EEv
__Z13execute_sieveILm100000000EE11sieve_tableIXT_EEv:
LFB3172:
	subq	$8, %rsp
LCFI30:
	movl	$6250000, %edx
	xorl	%esi, %esi
	call	_memset
	movl	$3, %edi
	movl	$1, %r9d
	movq	%rax, %r8
	.align 4,0x90
L81:
	movl	%edi, %esi
	movl	$1, %eax
	jmp	L72
	.align 4,0x90
L74:
	movq	%rax, %rdx
	imulq	%rax, %rdx
	cmpq	$99999999, %rdx
	ja	L73
L72:
	addq	$1, %rax
	cmpq	$100000000, %rax
	jne	L74
L73:
	cmpq	%rdi, %rax
	jbe	L71
	imull	%esi, %esi
	movslq	%esi, %rsi
	movq	%rsi, %rdx
	shrq	%rdx
	subq	$1, %rdx
	cmpq	$49999998, %rdx
	ja	L85
	leaq	(%rdi,%rdi), %r10
	movq	%rdx, %rax
	andl	$63, %edx
	shrq	$6, %rax
	movq	%r9, %r11
	movl	%edx, %ecx
	salq	%cl, %r11
	orq	%r11, (%r8,%rax,8)
	.align 4,0x90
L84:
	addq	%r10, %rsi
	cmpq	$100000000, %rsi
	ja	L77
L87:
	xorl	%edx, %edx
	movq	%rsi, %rax
	divq	%rdi
	testq	%rdx, %rdx
	jne	L84
	movq	%rsi, %rcx
	shrq	%rcx
	subq	$1, %rcx
	cmpq	$49999999, %rcx
	je	L86
	movq	%rcx, %rax
	movq	%r9, %rdx
	andl	$63, %ecx
	shrq	$6, %rax
	addq	%r10, %rsi
	salq	%cl, %rdx
	orq	%rdx, (%r8,%rax,8)
	cmpq	$100000000, %rsi
	jbe	L87
L77:
	addq	$2, %rdi
	jmp	L81
	.align 4,0x90
L71:
	movq	%r8, %rax
	addq	$8, %rsp
LCFI31:
	ret
L86:
LCFI32:
	leaq	lC0(%rip), %rsi
	movl	$49999999, %edx
	xorl	%eax, %eax
	leaq	lC1(%rip), %rdi
	call	__ZSt24__throw_out_of_range_fmtPKcz
L85:
	leaq	lC0(%rip), %rsi
	movl	$49999999, %ecx
	xorl	%eax, %eax
	leaq	lC1(%rip), %rdi
	call	__ZSt24__throw_out_of_range_fmtPKcz
LFE3172:
	.section __DATA,__gcc_except_tab
GCC_except_table0:
LLSDA3172:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0
	.text
	.align 1,0x90
	.align 4,0x90
	.globl __ZNSt6vectorINSt6chrono8durationIxSt5ratioILl1ELl1000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_
	.weak_definition __ZNSt6vectorINSt6chrono8durationIxSt5ratioILl1ELl1000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_
__ZNSt6vectorINSt6chrono8durationIxSt5ratioILl1ELl1000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:
LFB3347:
	pushq	%r15
LCFI33:
	movq	%rdx, %r15
	movq	%rsi, %rdx
	pushq	%r14
LCFI34:
	pushq	%r13
LCFI35:
	movq	%rdi, %r13
	pushq	%r12
LCFI36:
	movq	%rsi, %r12
	pushq	%rbp
LCFI37:
	pushq	%rbx
LCFI38:
	subq	$40, %rsp
LCFI39:
	movq	8(%rdi), %rcx
	movq	(%rdi), %rbp
	movq	%rcx, %rax
	subq	%rbp, %rax
	subq	%rbp, %rdx
	sarq	$3, %rax
	testq	%rax, %rax
	je	L97
	leaq	(%rax,%rax), %rdi
	movq	$-8, %r14
	cmpq	%rdi, %rax
	jbe	L103
L90:
	movq	%r14, %rdi
	movq	%rdx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	call	__Znwm
	movq	16(%rsp), %rdx
	movq	8(%rsp), %rcx
	movq	%rax, %rbx
	addq	%rax, %r14
L91:
	movq	(%r15), %rax
	leaq	8(%rbx,%rdx), %r9
	movq	%rcx, %r15
	subq	%r12, %r15
	cmpq	%rbp, %r12
	movq	%rax, (%rbx,%rdx)
	leaq	(%r9,%r15), %rax
	movq	%rax, 8(%rsp)
	je	L92
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	%r9, 24(%rsp)
	movq	%rcx, 16(%rsp)
	call	_memmove
	movq	16(%rsp), %rcx
	movq	24(%rsp), %r9
	cmpq	%rcx, %r12
	je	L96
L93:
	movq	%r15, %rdx
	movq	%r12, %rsi
	movq	%r9, %rdi
	call	_memcpy
L95:
	testq	%rbp, %rbp
	jne	L96
L94:
	movq	%rbx, %xmm0
	movq	%r14, 16(%r13)
	movhps	8(%rsp), %xmm0
	movups	%xmm0, 0(%r13)
	addq	$40, %rsp
LCFI40:
	popq	%rbx
LCFI41:
	popq	%rbp
LCFI42:
	popq	%r12
LCFI43:
	popq	%r13
LCFI44:
	popq	%r14
LCFI45:
	popq	%r15
LCFI46:
	ret
	.align 4,0x90
L96:
LCFI47:
	movq	%rbp, %rdi
	call	__ZdlPv
	jmp	L94
	.align 4,0x90
L103:
	movabsq	$2305843009213693951, %rax
	cmpq	%rax, %rdi
	ja	L90
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	testq	%rdi, %rdi
	je	L91
	jmp	L89
	.align 4,0x90
L92:
	cmpq	%rcx, %r12
	jne	L93
	jmp	L95
	.align 4,0x90
L97:
	movl	$1, %edi
L89:
	leaq	0(,%rdi,8), %r14
	jmp	L90
LFE3347:
	.cstring
	.align 3
lC2:
	.ascii "basic_string::_M_construct null not valid\0"
lC3:
	.ascii "stoi\0"
lC4:
	.ascii "vector::reserve\0"
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB5:
	.section __TEXT,__text_startup,regular,pure_instructions
LHOTB5:
	.align 4
	.globl _main
_main:
LFB2835:
	pushq	%r15
LCFI48:
	pushq	%r14
LCFI49:
	pushq	%r13
LCFI50:
	pushq	%r12
LCFI51:
	pushq	%rbp
LCFI52:
	pushq	%rbx
LCFI53:
	subq	$6250040, %rsp
LCFI54:
	movq	8(%rsi), %r12
	leaq	32(%rsp), %rbp
	leaq	16(%rbp), %r13
	movq	%r13, 32(%rsp)
	testq	%r12, %r12
	je	L105
	movq	%r12, %rdi
	call	_strlen
	cmpq	$15, %rax
	movq	%rax, %rbx
	movq	%rax, (%rsp)
	ja	L168
	cmpq	$1, %rax
	jne	L109
	movzbl	(%r12), %eax
	movb	%al, 48(%rsp)
L110:
	movq	(%rsp), %rax
	movq	32(%rsp), %rdx
	movq	%rax, 40(%rsp)
	movb	$0, (%rdx,%rax)
	movq	32(%rsp), %r12
LEHB0:
	call	___error
	movl	(%rax), %ebx
	call	___error
LEHE0:
	movq	%rsp, %r14
	movl	$0, (%rax)
	movl	$10, %edx
	movq	%r12, %rdi
	movq	%r14, %rsi
	call	_strtol
	cmpq	(%rsp), %r12
	movq	%rax, %r15
	je	L169
LEHB1:
	call	___error
LEHE1:
	cmpl	$34, (%rax)
	je	L112
	movl	$2147483648, %eax
	movl	$4294967295, %edx
	addq	%r15, %rax
	cmpq	%rdx, %rax
	ja	L112
	call	___error
	movl	(%rax), %eax
	testl	%eax, %eax
	je	L170
L114:
	movq	32(%rsp), %rdi
	leaq	16(%rbp), %rax
	cmpq	%rax, %rdi
	je	L116
	call	__ZdlPv
L116:
	movabsq	$2305843009213693951, %rax
	pxor	%xmm0, %xmm0
	movq	$0, 16(%rsp)
	cmpq	%rax, %r15
	movaps	%xmm0, (%rsp)
	ja	L171
	testq	%r15, %r15
	jne	L164
L166:
	movq	(%rsp), %r13
	movq	8(%rsp), %r12
L124:
	subq	%r13, %r12
	movq	__ZSt4cout@GOTPCREL(%rip), %rdi
	sarq	$3, %r12
	shrq	%r12
	movq	0(%r13,%r12,8), %rsi
LEHB2:
	call	__ZNSo9_M_insertIxEERSoT_
	movl	$1, %edx
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movb	$32, 32(%rsp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
LEHE2:
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	L149
	call	__ZdlPv
L149:
	addq	$6250040, %rsp
LCFI55:
	xorl	%eax, %eax
	popq	%rbx
LCFI56:
	popq	%rbp
LCFI57:
	popq	%r12
LCFI58:
	popq	%r13
LCFI59:
	popq	%r14
LCFI60:
	popq	%r15
LCFI61:
	ret
L109:
LCFI62:
	testq	%rax, %rax
	je	L110
	movq	%r13, %rax
	jmp	L108
L170:
	call	___error
	movl	%ebx, (%rax)
	jmp	L114
L168:
	xorl	%edx, %edx
	movq	%rsp, %rsi
	movq	%rbp, %rdi
LEHB3:
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
LEHE3:
	movq	(%rsp), %rdx
	movq	%rax, 32(%rsp)
	movq	%rdx, 48(%rsp)
L108:
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	_memcpy
	jmp	L110
L164:
	leaq	0(,%r15,8), %r13
	movq	%r13, %rdi
LEHB4:
	call	__Znwm
	movq	(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	je	L122
	call	__ZdlPv
L122:
	movq	%rbx, %xmm0
	addq	%r13, %rbx
	movl	%r15d, %r12d
	movq	%rbx, 16(%rsp)
	xorl	%ebx, %ebx
	testq	%r15, %r15
	punpcklqdq	%xmm0, %xmm0
	movabsq	$4835703278458516699, %r13
	movaps	%xmm0, (%rsp)
	jne	L123
	jmp	L166
	.align 4
L173:
	addl	$1, %ebx
	movq	%rdx, (%rsi)
	addq	$8, %rsi
	cmpl	%r12d, %ebx
	movq	%rsi, 8(%rsp)
	je	L172
L123:
	call	__ZNSt6chrono3_V212system_clock3nowEv
	movq	%rbp, %rdi
	movq	%rax, %r15
	call	__Z13execute_sieveILm100000000EE11sieve_tableIXT_EEv
	call	__ZNSt6chrono3_V212system_clock3nowEv
	movq	8(%rsp), %rsi
	subq	%r15, %rax
	movq	%rax, %rcx
	imulq	%r13
	sarq	$63, %rcx
	sarq	$18, %rdx
	subq	%rcx, %rdx
	cmpq	16(%rsp), %rsi
	movq	%rdx, 32(%rsp)
	jne	L173
	movq	%rbp, %rdx
	movq	%r14, %rdi
	call	__ZNSt6vectorINSt6chrono8durationIxSt5ratioILl1ELl1000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_
LEHE4:
	addl	$1, %ebx
	cmpl	%r12d, %ebx
	jne	L123
	.align 4
L172:
	movq	8(%rsp), %r12
	movq	(%rsp), %r13
	movq	%r12, %rbx
	subq	%r13, %rbx
	movq	%rbx, %rax
	sarq	$3, %rax
	cmpq	%r13, %r12
	je	L124
	bsrq	%rax, %rax
	movl	$63, %edx
	movq	%r12, %rsi
	xorq	$63, %rax
	movq	%r13, %rdi
	cltq
	subq	%rax, %rdx
	addq	%rdx, %rdx
	call	__ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_.isra.75
	addq	$-128, %rbx
	jle	L127
	leaq	128(%r13), %rbx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	call	__ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_.constprop.83
	cmpq	%rbx, %r12
	movq	%rbx, %rsi
	je	L166
	movq	(%rsi), %rcx
	leaq	-8(%rsi), %rax
	cmpq	-8(%rsi), %rcx
	jl	L131
	jmp	L174
	.align 4
L140:
	movq	%rdx, %rax
L131:
	movq	(%rax), %rdx
	cmpq	-8(%rax), %rcx
	movq	%rdx, 8(%rax)
	leaq	-8(%rax), %rdx
	jl	L140
L130:
	addq	$8, %rsi
	movq	%rcx, (%rax)
	cmpq	%rsi, %r12
	je	L166
	movq	(%rsi), %rcx
	leaq	-8(%rsi), %rax
	cmpq	-8(%rsi), %rcx
	jl	L131
L174:
	movq	%rsi, %rax
	jmp	L130
L127:
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	__ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt6chrono8durationIxSt5ratioILl1ELl1000EEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_.constprop.83
	jmp	L166
L112:
	leaq	lC3(%rip), %rdi
LEHB5:
	call	__ZSt20__throw_out_of_rangePKc
LEHE5:
L105:
	leaq	lC2(%rip), %rdi
LEHB6:
	call	__ZSt19__throw_logic_errorPKc
LEHE6:
L169:
	leaq	lC3(%rip), %rdi
LEHB7:
	call	__ZSt24__throw_invalid_argumentPKc
LEHE7:
L171:
	leaq	lC4(%rip), %rdi
LEHB8:
	call	__ZSt20__throw_length_errorPKc
LEHE8:
L143:
	movq	%rax, %r12
	jmp	L117
L142:
	movq	%rax, %rbx
	jmp	L136
L141:
	movq	%rax, %r12
	jmp	L119
	.section __DATA,__gcc_except_tab
GCC_except_table1:
LLSDA2835:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x75
	.set L$set$0,LEHB0-LFB2835
	.long L$set$0
	.set L$set$1,LEHE0-LEHB0
	.long L$set$1
	.set L$set$2,L141-LFB2835
	.long L$set$2
	.byte	0
	.set L$set$3,LEHB1-LFB2835
	.long L$set$3
	.set L$set$4,LEHE1-LEHB1
	.long L$set$4
	.set L$set$5,L143-LFB2835
	.long L$set$5
	.byte	0
	.set L$set$6,LEHB2-LFB2835
	.long L$set$6
	.set L$set$7,LEHE2-LEHB2
	.long L$set$7
	.set L$set$8,L142-LFB2835
	.long L$set$8
	.byte	0
	.set L$set$9,LEHB3-LFB2835
	.long L$set$9
	.set L$set$10,LEHE3-LEHB3
	.long L$set$10
	.long	0
	.byte	0
	.set L$set$11,LEHB4-LFB2835
	.long L$set$11
	.set L$set$12,LEHE4-LEHB4
	.long L$set$12
	.set L$set$13,L142-LFB2835
	.long L$set$13
	.byte	0
	.set L$set$14,LEHB5-LFB2835
	.long L$set$14
	.set L$set$15,LEHE5-LEHB5
	.long L$set$15
	.set L$set$16,L143-LFB2835
	.long L$set$16
	.byte	0
	.set L$set$17,LEHB6-LFB2835
	.long L$set$17
	.set L$set$18,LEHE6-LEHB6
	.long L$set$18
	.long	0
	.byte	0
	.set L$set$19,LEHB7-LFB2835
	.long L$set$19
	.set L$set$20,LEHE7-LEHB7
	.long L$set$20
	.set L$set$21,L143-LFB2835
	.long L$set$21
	.byte	0
	.set L$set$22,LEHB8-LFB2835
	.long L$set$22
	.set L$set$23,LEHE8-LEHB8
	.long L$set$23
	.set L$set$24,L142-LFB2835
	.long L$set$24
	.byte	0
	.section __TEXT,__text_startup,regular,pure_instructions
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of__main:
_main.cold.84:
L117:
LCFI63:
	call	___error
	cmpl	$0, (%rax)
	jne	L119
	call	___error
	movl	%ebx, (%rax)
L119:
	movq	32(%rsp), %rdi
	addq	$16, %rbp
	cmpq	%rbp, %rdi
	je	L135
	call	__ZdlPv
L135:
	movq	%r12, %rdi
LEHB9:
	call	__Unwind_Resume
L136:
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	L137
	call	__ZdlPv
L137:
	movq	%rbx, %rdi
	call	__Unwind_Resume
LEHE9:
LFE2835:
	.section __DATA,__gcc_except_tab
GCC_except_table2:
LLSDAC2835:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0xd
	.set L$set$25,LEHB9-LCOLDB5
	.long L$set$25
	.set L$set$26,LEHE9-LEHB9
	.long L$set$26
	.long	0
	.byte	0
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE5:
	.section __TEXT,__text_startup,regular,pure_instructions
LHOTE5:
	.section __TEXT,__text_cold,regular,pure_instructions
	.section __TEXT,__text_startup,regular,pure_instructions
	.align 4
__GLOBAL__sub_I_raw_sieve.cpp:
LFB3584:
	leaq	__ZStL8__ioinit(%rip), %rdi
	subq	$8, %rsp
LCFI64:
	call	__ZNSt8ios_base4InitC1Ev
	movq	__ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
LCFI65:
	leaq	___dso_handle(%rip), %rdx
	leaq	__ZStL8__ioinit(%rip), %rsi
	jmp	___cxa_atexit
LFE3584:
	.static_data
__ZStL8__ioinit:
	.space	1
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$27,LECIE1-LSCIE1
	.long L$set$27
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
	.set L$set$28,LEFDE1-LASFDE1
	.long L$set$28
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB3666-.
	.set L$set$29,LFE3666-LFB3666
	.quad L$set$29
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$30,LCFI0-LFB3666
	.long L$set$30
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$31,LCFI1-LCFI0
	.long L$set$31
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$32,LCFI2-LCFI1
	.long L$set$32
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$33,LCFI3-LCFI2
	.long L$set$33
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$34,LCFI4-LCFI3
	.long L$set$34
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$35,LCFI5-LCFI4
	.long L$set$35
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$36,LCFI6-LCFI5
	.long L$set$36
	.byte	0xb
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$37,LEFDE3-LASFDE3
	.long L$set$37
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB3662-.
	.set L$set$38,LFE3662-LFB3662
	.quad L$set$38
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$39,LCFI7-LFB3662
	.long L$set$39
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$40,LCFI8-LCFI7
	.long L$set$40
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$41,LCFI9-LCFI8
	.long L$set$41
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$42,LCFI10-LCFI9
	.long L$set$42
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$43,LCFI11-LCFI10
	.long L$set$43
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$44,LCFI12-LCFI11
	.long L$set$44
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$45,LCFI13-LCFI12
	.long L$set$45
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$46,LCFI14-LCFI13
	.long L$set$46
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$47,LCFI15-LCFI14
	.long L$set$47
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$48,LCFI16-LCFI15
	.long L$set$48
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$49,LCFI17-LCFI16
	.long L$set$49
	.byte	0xb
	.byte	0x4
	.set L$set$50,LCFI18-LCFI17
	.long L$set$50
	.byte	0xe
	.byte	0x8
	.byte	0xc3
	.byte	0xc6
	.byte	0xcc
	.byte	0xcd
	.byte	0xce
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$51,LEFDE5-LASFDE5
	.long L$set$51
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB3660-.
	.set L$set$52,LFE3660-LFB3660
	.quad L$set$52
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$53,LCFI19-LFB3660
	.long L$set$53
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$54,LCFI20-LCFI19
	.long L$set$54
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$55,LCFI21-LCFI20
	.long L$set$55
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$56,LCFI22-LCFI21
	.long L$set$56
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$57,LCFI23-LCFI22
	.long L$set$57
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$58,LCFI24-LCFI23
	.long L$set$58
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$59,LCFI25-LCFI24
	.long L$set$59
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$60,LCFI26-LCFI25
	.long L$set$60
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$61,LCFI27-LCFI26
	.long L$set$61
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$62,LCFI28-LCFI27
	.long L$set$62
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$63,LCFI29-LCFI28
	.long L$set$63
	.byte	0xb
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$64,LEFDE7-LASFDE7
	.long L$set$64
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB3172-.
	.set L$set$65,LFE3172-LFB3172
	.quad L$set$65
	.byte	0x8
	.quad	LLSDA3172-.
	.byte	0x4
	.set L$set$66,LCFI30-LFB3172
	.long L$set$66
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$67,LCFI31-LCFI30
	.long L$set$67
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$68,LCFI32-LCFI31
	.long L$set$68
	.byte	0xb
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$69,LEFDE9-LASFDE9
	.long L$set$69
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB3347-.
	.set L$set$70,LFE3347-LFB3347
	.quad L$set$70
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$71,LCFI33-LFB3347
	.long L$set$71
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$72,LCFI34-LCFI33
	.long L$set$72
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$73,LCFI35-LCFI34
	.long L$set$73
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$74,LCFI36-LCFI35
	.long L$set$74
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$75,LCFI37-LCFI36
	.long L$set$75
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$76,LCFI38-LCFI37
	.long L$set$76
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$77,LCFI39-LCFI38
	.long L$set$77
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$78,LCFI40-LCFI39
	.long L$set$78
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$79,LCFI41-LCFI40
	.long L$set$79
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$80,LCFI42-LCFI41
	.long L$set$80
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$81,LCFI43-LCFI42
	.long L$set$81
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$82,LCFI44-LCFI43
	.long L$set$82
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$83,LCFI45-LCFI44
	.long L$set$83
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$84,LCFI46-LCFI45
	.long L$set$84
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$85,LCFI47-LCFI46
	.long L$set$85
	.byte	0xb
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$86,LEFDE11-LASFDE11
	.long L$set$86
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB2835-.
	.set L$set$87,LHOTE5-LFB2835
	.quad L$set$87
	.byte	0x8
	.quad	LLSDA2835-.
	.byte	0x4
	.set L$set$88,LCFI48-LFB2835
	.long L$set$88
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$89,LCFI49-LCFI48
	.long L$set$89
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$90,LCFI50-LCFI49
	.long L$set$90
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$91,LCFI51-LCFI50
	.long L$set$91
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$92,LCFI52-LCFI51
	.long L$set$92
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$93,LCFI53-LCFI52
	.long L$set$93
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$94,LCFI54-LCFI53
	.long L$set$94
	.byte	0xe
	.byte	0xf0,0xbc,0xfd,0x2
	.byte	0x4
	.set L$set$95,LCFI55-LCFI54
	.long L$set$95
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$96,LCFI56-LCFI55
	.long L$set$96
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$97,LCFI57-LCFI56
	.long L$set$97
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$98,LCFI58-LCFI57
	.long L$set$98
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$99,LCFI59-LCFI58
	.long L$set$99
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$100,LCFI60-LCFI59
	.long L$set$100
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$101,LCFI61-LCFI60
	.long L$set$101
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$102,LCFI62-LCFI61
	.long L$set$102
	.byte	0xb
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$103,LEFDE13-LASFDE13
	.long L$set$103
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LCOLDB5-.
	.set L$set$104,LCOLDE5-LCOLDB5
	.quad L$set$104
	.byte	0x8
	.quad	LLSDAC2835-.
	.byte	0x4
	.set L$set$105,LCFI63-LCOLDB5
	.long L$set$105
	.byte	0xe
	.byte	0xf0,0xbc,0xfd,0x2
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
LEFDE13:
LSFDE15:
	.set L$set$106,LEFDE15-LASFDE15
	.long L$set$106
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB3584-.
	.set L$set$107,LFE3584-LFB3584
	.quad L$set$107
	.byte	0x8
	.quad	0
	.byte	0x4
	.set L$set$108,LCFI64-LFB3584
	.long L$set$108
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$109,LCFI65-LCFI64
	.long L$set$109
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE15:
	.mod_init_func
	.align 3
	.quad	__GLOBAL__sub_I_raw_sieve.cpp
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
