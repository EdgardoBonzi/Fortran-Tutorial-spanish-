	.file	"G1e13.f90"
# GNU Fortran2008 (Ubuntu 9.4.0-1ubuntu1~20.04.1) version 9.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 9.4.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  G1e13.f90 -mtune=generic -march=x86-64 -fverbose-asm
# -fintrinsic-modules-path /usr/lib/gcc/x86_64-linux-gnu/9/finclude
# -fpre-include=/usr/include/finclude/math-vector-fortran.h
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -fassume-phsa -fasynchronous-unwind-tables -fauto-inc-dec -fcommon
# -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -ffp-int-builtin-inexact -ffunction-cse
# -fgcse-lm -fgnu-runtime -fgnu-unique -fident -finline-atomics
# -fipa-stack-alignment -fira-hoist-pressure -fira-share-save-slots
# -fira-share-spill-slots -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -flto-odr-type-merging
# -fmerge-debug-strings -fpeephole -fplt -fprefetch-loop-arrays
# -freg-struct-return -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
# -fsemantic-interposition -fshow-column -fshrink-wrap-separate
# -fsigned-zeros -fsplit-ivs-in-unroller -fssa-backprop -fstdarg-opt
# -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math -ftree-cselim
# -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
# -ftree-reassoc -ftree-scev-cprop -funit-at-a-time -funwind-tables
# -fverbose-asm -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -malign-stringops -mavx256-split-unaligned-load
# -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387 -mfxsr
# -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone
# -msse -msse2 -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
	.section	.rodata
.LC1:
	.string	"G1e13.f90"
.LC2:
	.ascii	" 1000000 * 0.1_wp = "
.LC3:
	.ascii	"datossal/a_y_suma_b.dat "
	.align 8
.LC4:
	.ascii	"# n, n * 0.1_wp , suma1 , ( suma1 - n * 0.1_wp)"
.LC6:
	.ascii	"(I8, 3(1X, ES20.13) )"
	.align 8
.LC7:
	.ascii	" suma de 1 a 1000000 de 0.1_wp = "
.LC8:
	.ascii	"datossal/a_y_suma_c.dat "
	.align 8
.LC9:
	.ascii	"# n, n * 100. _wp , suma2 , (suma2 - n * 100._wp)"
	.align 8
.LC11:
	.ascii	" suma de 1 a 1000 de 1 a 1000 de 0.1_wp = "
.LC12:
	.ascii	"gnuplot -p G1e13.plt"
	.text
	.type	MAIN__, @function
MAIN__:
.LFB0:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$584, %rsp	#,
	.cfi_offset 3, -24
# G1e13.f90:52:   nmax = 1000000
	movl	$1000000, -24(%rbp)	#, nmax
# G1e13.f90:57:   suma1 = nmax * 0.1_wp
	cvtsi2ssl	-24(%rbp), %xmm1	# nmax, _1
	movss	.LC0(%rip), %xmm0	#, tmp127
	mulss	%xmm1, %xmm0	# _1, _2
	movss	%xmm0, -36(%rbp)	# _2, suma1
# G1e13.f90:58:   write(*,*) ' 1000000 * 0.1_wp = ',suma1
	leaq	.LC1(%rip), %rax	#, tmp128
	movq	%rax, -584(%rbp)	# tmp128, dt_parm.0.common.filename
	movl	$58, -576(%rbp)	#, dt_parm.0.common.line
	movl	$128, -592(%rbp)	#, dt_parm.0.common.flags
	movl	$6, -588(%rbp)	#, dt_parm.0.common.unit
	leaq	-592(%rbp), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	call	_gfortran_st_write@PLT	#
	leaq	-592(%rbp), %rax	#, tmp130
	movl	$20, %edx	#,
	leaq	.LC2(%rip), %rsi	#,
	movq	%rax, %rdi	# tmp130,
	call	_gfortran_transfer_character_write@PLT	#
	leaq	-36(%rbp), %rcx	#, tmp131
	leaq	-592(%rbp), %rax	#, tmp132
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp131,
	movq	%rax, %rdi	# tmp132,
	call	_gfortran_transfer_real_write@PLT	#
	leaq	-592(%rbp), %rax	#, tmp133
	movq	%rax, %rdi	# tmp133,
	call	_gfortran_st_write_done@PLT	#
# G1e13.f90:62:    open(newunit = fu, file = 'datossal/a_y_suma_b.dat ')
	leaq	.LC1(%rip), %rax	#, tmp134
	movq	%rax, -584(%rbp)	# tmp134, open_parm.1.common.filename
	movl	$62, -576(%rbp)	#, open_parm.1.common.line
	leaq	.LC3(%rip), %rax	#, tmp135
	movq	%rax, -528(%rbp)	# tmp135, open_parm.1.file
	movq	$24, -536(%rbp)	#, open_parm.1.file_len
	leaq	-28(%rbp), %rax	#, tmp136
	movq	%rax, -296(%rbp)	# tmp136, open_parm.1.newunit
	movl	$0, -288(%rbp)	#, open_parm.1.readonly
	movl	$25166080, -592(%rbp)	#, open_parm.1.common.flags
	movl	$0, -588(%rbp)	#, open_parm.1.common.unit
	leaq	-592(%rbp), %rax	#, tmp137
	movq	%rax, %rdi	# tmp137,
	call	_gfortran_st_open@PLT	#
# G1e13.f90:63:      write(fu,*) "# n, n * 0.1_wp , suma1 , ( suma1 - n * 0.1_wp)"
	leaq	.LC1(%rip), %rax	#, tmp138
	movq	%rax, -584(%rbp)	# tmp138, dt_parm.2.common.filename
	movl	$63, -576(%rbp)	#, dt_parm.2.common.line
	movl	$128, -592(%rbp)	#, dt_parm.2.common.flags
	movl	-28(%rbp), %eax	# fu, fu.12_3
	movl	%eax, -588(%rbp)	# fu.12_3, dt_parm.2.common.unit
	leaq	-592(%rbp), %rax	#, tmp139
	movq	%rax, %rdi	# tmp139,
	call	_gfortran_st_write@PLT	#
	leaq	-592(%rbp), %rax	#, tmp140
	movl	$47, %edx	#,
	leaq	.LC4(%rip), %rsi	#,
	movq	%rax, %rdi	# tmp140,
	call	_gfortran_transfer_character_write@PLT	#
	leaq	-592(%rbp), %rax	#, tmp141
	movq	%rax, %rdi	# tmp141,
	call	_gfortran_st_write_done@PLT	#
# G1e13.f90:65:      suma1 = 0.0_wp
	pxor	%xmm0, %xmm0	# tmp142
	movss	%xmm0, -36(%rbp)	# tmp142, suma1
# G1e13.f90:66:      do n = 1, nmax
	movl	-24(%rbp), %ebx	# nmax, _78
	movl	$1, -32(%rbp)	#, n
.L4:
# G1e13.f90:66:      do n = 1, nmax
	movl	-32(%rbp), %eax	# n, n.13_4
	cmpl	%eax, %ebx	# n.13_4, _78
	setl	%al	#, tmp143
	movzbl	%al, %eax	# tmp143, _80
	testl	%eax, %eax	# _80
	jne	.L9	#,
# G1e13.f90:68:         suma1 = suma1 + 0.1_wp
	movss	-36(%rbp), %xmm1	# suma1, suma1.14_5
	movss	.LC0(%rip), %xmm0	#, tmp144
	addss	%xmm1, %xmm0	# suma1.14_5, _6
	movss	%xmm0, -36(%rbp)	# _6, suma1
# G1e13.f90:69:         if (mod(n, 1000) == 0) then
	movl	-32(%rbp), %edx	# n, n.15_7
	movslq	%edx, %rax	# n.15_7, tmp145
	imulq	$274877907, %rax, %rax	#, tmp145, tmp146
	shrq	$32, %rax	#, tmp147
	movl	%eax, %ecx	# tmp147, tmp148
	sarl	$6, %ecx	#, tmp148
	movl	%edx, %eax	# n.15_7, tmp149
	sarl	$31, %eax	#, tmp149
	subl	%eax, %ecx	# tmp149, tmp148
	movl	%ecx, %eax	# tmp148, _8
	imull	$1000, %eax, %eax	#, _8, tmp150
	subl	%eax, %edx	# tmp150, n.15_7
	movl	%edx, %eax	# n.15_7, _8
	testl	%eax, %eax	# _8
	jne	.L3	#,
# G1e13.f90:70:            write(fu, 500) n, n * 0.1_wp , suma1 , ( suma1 - n * 0.1_wp )
	leaq	.LC1(%rip), %rax	#, tmp151
	movq	%rax, -584(%rbp)	# tmp151, dt_parm.3.common.filename
	movl	$70, -576(%rbp)	#, dt_parm.3.common.line
	leaq	.LC6(%rip), %rax	#, tmp152
	movq	%rax, -512(%rbp)	# tmp152, dt_parm.3.format
	movq	$21, -504(%rbp)	#, dt_parm.3.format_len
	movl	$4096, -592(%rbp)	#, dt_parm.3.common.flags
	movl	-28(%rbp), %eax	# fu, fu.16_9
	movl	%eax, -588(%rbp)	# fu.16_9, dt_parm.3.common.unit
	leaq	-592(%rbp), %rax	#, tmp153
	movq	%rax, %rdi	# tmp153,
	call	_gfortran_st_write@PLT	#
	leaq	-32(%rbp), %rcx	#, tmp154
	leaq	-592(%rbp), %rax	#, tmp155
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp154,
	movq	%rax, %rdi	# tmp155,
	call	_gfortran_transfer_integer_write@PLT	#
	movl	-32(%rbp), %eax	# n, n.17_10
	cvtsi2ssl	%eax, %xmm1	# n.17_10, _11
	movss	.LC0(%rip), %xmm0	#, tmp156
	mulss	%xmm1, %xmm0	# _11, _12
	movss	%xmm0, -44(%rbp)	# _12, D.3887
	leaq	-44(%rbp), %rcx	#, tmp157
	leaq	-592(%rbp), %rax	#, tmp158
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp157,
	movq	%rax, %rdi	# tmp158,
	call	_gfortran_transfer_real_write@PLT	#
	leaq	-36(%rbp), %rcx	#, tmp159
	leaq	-592(%rbp), %rax	#, tmp160
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp159,
	movq	%rax, %rdi	# tmp160,
	call	_gfortran_transfer_real_write@PLT	#
	movss	-36(%rbp), %xmm0	# suma1, suma1.18_13
	movl	-32(%rbp), %eax	# n, n.19_14
	cvtsi2ssl	%eax, %xmm2	# n.19_14, _15
	movss	.LC0(%rip), %xmm1	#, tmp161
	mulss	%xmm2, %xmm1	# _15, _16
	subss	%xmm1, %xmm0	# _16, _17
	movss	%xmm0, -48(%rbp)	# _18, D.3888
	leaq	-48(%rbp), %rcx	#, tmp162
	leaq	-592(%rbp), %rax	#, tmp163
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp162,
	movq	%rax, %rdi	# tmp163,
	call	_gfortran_transfer_real_write@PLT	#
	leaq	-592(%rbp), %rax	#, tmp164
	movq	%rax, %rdi	# tmp164,
	call	_gfortran_st_write_done@PLT	#
.L3:
# G1e13.f90:66:      do n = 1, nmax
	movl	-32(%rbp), %eax	# n, n.20_19
	addl	$1, %eax	#, _20
	movl	%eax, -32(%rbp)	# _20, n
	jmp	.L4	#
.L9:
# G1e13.f90:69:         if (mod(n, 1000) == 0) then
	nop	
# G1e13.f90:74:    close(fu)
	leaq	.LC1(%rip), %rax	#, tmp165
	movq	%rax, -584(%rbp)	# tmp165, close_parm.4.common.filename
	movl	$74, -576(%rbp)	#, close_parm.4.common.line
	movl	$0, -592(%rbp)	#, close_parm.4.common.flags
	movl	-28(%rbp), %eax	# fu, fu.21_21
	movl	%eax, -588(%rbp)	# fu.21_21, close_parm.4.common.unit
	leaq	-592(%rbp), %rax	#, tmp166
	movq	%rax, %rdi	# tmp166,
	call	_gfortran_st_close@PLT	#
# G1e13.f90:76:   write (*,*) ' suma de 1 a 1000000 de 0.1_wp = ',suma1
	leaq	.LC1(%rip), %rax	#, tmp167
	movq	%rax, -584(%rbp)	# tmp167, dt_parm.5.common.filename
	movl	$76, -576(%rbp)	#, dt_parm.5.common.line
	movl	$128, -592(%rbp)	#, dt_parm.5.common.flags
	movl	$6, -588(%rbp)	#, dt_parm.5.common.unit
	leaq	-592(%rbp), %rax	#, tmp168
	movq	%rax, %rdi	# tmp168,
	call	_gfortran_st_write@PLT	#
	leaq	-592(%rbp), %rax	#, tmp169
	movl	$33, %edx	#,
	leaq	.LC7(%rip), %rsi	#,
	movq	%rax, %rdi	# tmp169,
	call	_gfortran_transfer_character_write@PLT	#
	leaq	-36(%rbp), %rcx	#, tmp170
	leaq	-592(%rbp), %rax	#, tmp171
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp170,
	movq	%rax, %rdi	# tmp171,
	call	_gfortran_transfer_real_write@PLT	#
	leaq	-592(%rbp), %rax	#, tmp172
	movq	%rax, %rdi	# tmp172,
	call	_gfortran_st_write_done@PLT	#
# G1e13.f90:81:    suma1 = 0.0_wp
	pxor	%xmm0, %xmm0	# tmp173
	movss	%xmm0, -36(%rbp)	# tmp173, suma1
# G1e13.f90:82:    suma2 = 0.0_wp
	pxor	%xmm0, %xmm0	# tmp174
	movss	%xmm0, -40(%rbp)	# tmp174, suma2
# G1e13.f90:84:    do m = 1, 1000
	movl	$1, -20(%rbp)	#, m
.L6:
# G1e13.f90:84:    do m = 1, 1000
	cmpl	$1000, -20(%rbp)	#, m
	setg	%al	#, tmp175
	movzbl	%al, %eax	# tmp175, _118
	testl	%eax, %eax	# _118
	jne	.L10	#,
# G1e13.f90:85:      suma1 = suma1 + 0.1_wp
	movss	-36(%rbp), %xmm1	# suma1, suma1.22_22
	movss	.LC0(%rip), %xmm0	#, tmp176
	addss	%xmm1, %xmm0	# suma1.22_22, _23
	movss	%xmm0, -36(%rbp)	# _23, suma1
# G1e13.f90:84:    do m = 1, 1000
	addl	$1, -20(%rbp)	#, m
	jmp	.L6	#
.L10:
# G1e13.f90:85:      suma1 = suma1 + 0.1_wp
	nop	
# G1e13.f90:88:    open(newunit = fu, file = 'datossal/a_y_suma_c.dat ')
	leaq	.LC1(%rip), %rax	#, tmp177
	movq	%rax, -584(%rbp)	# tmp177, open_parm.6.common.filename
	movl	$88, -576(%rbp)	#, open_parm.6.common.line
	leaq	.LC8(%rip), %rax	#, tmp178
	movq	%rax, -528(%rbp)	# tmp178, open_parm.6.file
	movq	$24, -536(%rbp)	#, open_parm.6.file_len
	leaq	-28(%rbp), %rax	#, tmp179
	movq	%rax, -296(%rbp)	# tmp179, open_parm.6.newunit
	movl	$0, -288(%rbp)	#, open_parm.6.readonly
	movl	$25166080, -592(%rbp)	#, open_parm.6.common.flags
	movl	$0, -588(%rbp)	#, open_parm.6.common.unit
	leaq	-592(%rbp), %rax	#, tmp180
	movq	%rax, %rdi	# tmp180,
	call	_gfortran_st_open@PLT	#
# G1e13.f90:89:      write(fu,*) "# n, n * 100. _wp , suma2 , (suma2 - n * 100._wp)"
	leaq	.LC1(%rip), %rax	#, tmp181
	movq	%rax, -584(%rbp)	# tmp181, dt_parm.7.common.filename
	movl	$89, -576(%rbp)	#, dt_parm.7.common.line
	movl	$128, -592(%rbp)	#, dt_parm.7.common.flags
	movl	-28(%rbp), %eax	# fu, fu.23_24
	movl	%eax, -588(%rbp)	# fu.23_24, dt_parm.7.common.unit
	leaq	-592(%rbp), %rax	#, tmp182
	movq	%rax, %rdi	# tmp182,
	call	_gfortran_st_write@PLT	#
	leaq	-592(%rbp), %rax	#, tmp183
	movl	$49, %edx	#,
	leaq	.LC9(%rip), %rsi	#,
	movq	%rax, %rdi	# tmp183,
	call	_gfortran_transfer_character_write@PLT	#
	leaq	-592(%rbp), %rax	#, tmp184
	movq	%rax, %rdi	# tmp184,
	call	_gfortran_st_write_done@PLT	#
# G1e13.f90:91:      do n = 1, 1000
	movl	$1, -32(%rbp)	#, n
.L8:
# G1e13.f90:91:      do n = 1, 1000
	movl	-32(%rbp), %eax	# n, n.24_25
	cmpl	$1000, %eax	#, n.24_25
	setg	%al	#, tmp185
	movzbl	%al, %eax	# tmp185, _140
	testl	%eax, %eax	# _140
	jne	.L11	#,
# G1e13.f90:93:        suma2 = suma2 + suma1
	movss	-40(%rbp), %xmm1	# suma2, suma2.25_26
	movss	-36(%rbp), %xmm0	# suma1, suma1.26_27
	addss	%xmm1, %xmm0	# suma2.25_26, _28
	movss	%xmm0, -40(%rbp)	# _28, suma2
# G1e13.f90:95:        write(fu, 500) n, n * 100._wp , suma2 , ( suma2 - n * 100._wp )
	leaq	.LC1(%rip), %rax	#, tmp186
	movq	%rax, -584(%rbp)	# tmp186, dt_parm.8.common.filename
	movl	$95, -576(%rbp)	#, dt_parm.8.common.line
	leaq	.LC6(%rip), %rax	#, tmp187
	movq	%rax, -512(%rbp)	# tmp187, dt_parm.8.format
	movq	$21, -504(%rbp)	#, dt_parm.8.format_len
	movl	$4096, -592(%rbp)	#, dt_parm.8.common.flags
	movl	-28(%rbp), %eax	# fu, fu.27_29
	movl	%eax, -588(%rbp)	# fu.27_29, dt_parm.8.common.unit
	leaq	-592(%rbp), %rax	#, tmp188
	movq	%rax, %rdi	# tmp188,
	call	_gfortran_st_write@PLT	#
	leaq	-32(%rbp), %rcx	#, tmp189
	leaq	-592(%rbp), %rax	#, tmp190
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp189,
	movq	%rax, %rdi	# tmp190,
	call	_gfortran_transfer_integer_write@PLT	#
	movl	-32(%rbp), %eax	# n, n.28_30
	cvtsi2ssl	%eax, %xmm1	# n.28_30, _31
	movss	.LC10(%rip), %xmm0	#, tmp191
	mulss	%xmm1, %xmm0	# _31, _32
	movss	%xmm0, -52(%rbp)	# _32, D.3900
	leaq	-52(%rbp), %rcx	#, tmp192
	leaq	-592(%rbp), %rax	#, tmp193
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp192,
	movq	%rax, %rdi	# tmp193,
	call	_gfortran_transfer_real_write@PLT	#
	leaq	-40(%rbp), %rcx	#, tmp194
	leaq	-592(%rbp), %rax	#, tmp195
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp194,
	movq	%rax, %rdi	# tmp195,
	call	_gfortran_transfer_real_write@PLT	#
	movss	-40(%rbp), %xmm0	# suma2, suma2.29_33
	movl	-32(%rbp), %eax	# n, n.30_34
	cvtsi2ssl	%eax, %xmm2	# n.30_34, _35
	movss	.LC10(%rip), %xmm1	#, tmp196
	mulss	%xmm2, %xmm1	# _35, _36
	subss	%xmm1, %xmm0	# _36, _37
	movss	%xmm0, -56(%rbp)	# _38, D.3901
	leaq	-56(%rbp), %rcx	#, tmp197
	leaq	-592(%rbp), %rax	#, tmp198
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp197,
	movq	%rax, %rdi	# tmp198,
	call	_gfortran_transfer_real_write@PLT	#
	leaq	-592(%rbp), %rax	#, tmp199
	movq	%rax, %rdi	# tmp199,
	call	_gfortran_st_write_done@PLT	#
# G1e13.f90:91:      do n = 1, 1000
	movl	-32(%rbp), %eax	# n, n.31_39
	addl	$1, %eax	#, _40
	movl	%eax, -32(%rbp)	# _40, n
	jmp	.L8	#
.L11:
# G1e13.f90:95:        write(fu, 500) n, n * 100._wp , suma2 , ( suma2 - n * 100._wp )
	nop	
# G1e13.f90:98:    close(fu)
	leaq	.LC1(%rip), %rax	#, tmp200
	movq	%rax, -584(%rbp)	# tmp200, close_parm.9.common.filename
	movl	$98, -576(%rbp)	#, close_parm.9.common.line
	movl	$0, -592(%rbp)	#, close_parm.9.common.flags
	movl	-28(%rbp), %eax	# fu, fu.32_41
	movl	%eax, -588(%rbp)	# fu.32_41, close_parm.9.common.unit
	leaq	-592(%rbp), %rax	#, tmp201
	movq	%rax, %rdi	# tmp201,
	call	_gfortran_st_close@PLT	#
# G1e13.f90:100:    write(*,*) ' suma de 1 a 1000 de 1 a 1000 de 0.1_wp = ',suma2
	leaq	.LC1(%rip), %rax	#, tmp202
	movq	%rax, -584(%rbp)	# tmp202, dt_parm.10.common.filename
	movl	$100, -576(%rbp)	#, dt_parm.10.common.line
	movl	$128, -592(%rbp)	#, dt_parm.10.common.flags
	movl	$6, -588(%rbp)	#, dt_parm.10.common.unit
	leaq	-592(%rbp), %rax	#, tmp203
	movq	%rax, %rdi	# tmp203,
	call	_gfortran_st_write@PLT	#
	leaq	-592(%rbp), %rax	#, tmp204
	movl	$42, %edx	#,
	leaq	.LC11(%rip), %rsi	#,
	movq	%rax, %rdi	# tmp204,
	call	_gfortran_transfer_character_write@PLT	#
	leaq	-40(%rbp), %rcx	#, tmp205
	leaq	-592(%rbp), %rax	#, tmp206
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp205,
	movq	%rax, %rdi	# tmp206,
	call	_gfortran_transfer_real_write@PLT	#
	leaq	-592(%rbp), %rax	#, tmp207
	movq	%rax, %rdi	# tmp207,
	call	_gfortran_st_write_done@PLT	#
# G1e13.f90:104:       call system('gnuplot -p '//PltFile)
	movl	$20, %edx	#,
	movl	$0, %esi	#,
	leaq	.LC12(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	_gfortran_system_sub@PLT	#
# G1e13.f90:106: end program G1e13
	nop	
	addq	$584, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# argc, argc
	movq	%rsi, -16(%rbp)	# argv, argv
# G1e13.f90:106: end program G1e13
	movq	-16(%rbp), %rdx	# argv, tmp84
	movl	-4(%rbp), %eax	# argc, tmp85
	movq	%rdx, %rsi	# tmp84,
	movl	%eax, %edi	# tmp85,
	call	_gfortran_set_args@PLT	#
	leaq	options.11.3914(%rip), %rsi	#,
	movl	$7, %edi	#,
	call	_gfortran_set_options@PLT	#
	call	MAIN__	#
	movl	$0, %eax	#, _7
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 16
	.type	options.11.3914, @object
	.size	options.11.3914, 28
options.11.3914:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 4
.LC0:
	.long	1036831949
	.align 4
.LC10:
	.long	1120403456
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
