/* Definitions of target machine for GCC for IA-32.
   Copyright (C) 1988, 1992, 1994, 1995, 1996, 1997, 1998, 1999, 2000,
   2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011
   Free Software Foundation, Inc.

This file is part of GCC.

GCC is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3, or (at your option)
any later version.

GCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

Under Section 7 of GPL version 3, you are granted additional
permissions described in the GCC Runtime Library Exception, version
3.1, as published by the Free Software Foundation.

You should have received a copy of the GNU General Public License and
a copy of the GCC Runtime Library Exception along with this program;
see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
<http://www.gnu.org/licenses/>.  */

/* The purpose of this file is to define the characteristics of the i386,
   independent of assembler syntax or operating system.

   Three other files build on this one to describe a specific assembler syntax:
   bsd386.h, att386.h, and sun386.h.

   The actual tm.h file for a particular system should include
   this file, and then the file for the appropriate assembler syntax.

   Many macros that specify assembler syntax are omitted entirely from
   this file because they really belong in the files for particular
   assemblers.  These include RP, IP, LPREFIX, PUT_OP_SIZE, USE_STAR,
   ADDR_BEG, ADDR_END, PRINT_IREG, PRINT_SCALE, PRINT_B_I_S, and many
   that start with ASM_ or end in ASM_OP.  */

/* Redefines for option macros.  */

#define TARGET_64BIT	OPTION_ISA_64BIT
#define TARGET_X32	OPTION_ISA_X32
#define TARGET_MMX	OPTION_ISA_MMX
#define TARGET_3DNOW	OPTION_ISA_3DNOW
#define TARGET_3DNOW_A	OPTION_ISA_3DNOW_A
#define TARGET_SSE	OPTION_ISA_SSE
#define TARGET_SSE2	OPTION_ISA_SSE2
#define TARGET_SSE3	OPTION_ISA_SSE3
#define TARGET_SSSE3	OPTION_ISA_SSSE3
#define TARGET_SSE4_1	OPTION_ISA_SSE4_1
#define TARGET_SSE4_2	OPTION_ISA_SSE4_2
#define TARGET_AVX	OPTION_ISA_AVX
#define TARGET_AVX2	OPTION_ISA_AVX2
#define TARGET_FMA	OPTION_ISA_FMA
#define TARGET_SSE4A	OPTION_ISA_SSE4A
#define TARGET_FMA4	OPTION_ISA_FMA4
#define TARGET_XOP	OPTION_ISA_XOP
#define TARGET_LWP	OPTION_ISA_LWP
#define TARGET_ROUND	OPTION_ISA_ROUND
#define TARGET_ABM	OPTION_ISA_ABM
#define TARGET_BMI	OPTION_ISA_BMI
#define TARGET_BMI2	OPTION_ISA_BMI2
#define TARGET_LZCNT	OPTION_ISA_LZCNT
#define TARGET_TBM	OPTION_ISA_TBM
#define TARGET_POPCNT	OPTION_ISA_POPCNT
#define TARGET_SAHF	OPTION_ISA_SAHF
#define TARGET_MOVBE	OPTION_ISA_MOVBE
#define TARGET_CRC32	OPTION_ISA_CRC32
#define TARGET_AES	OPTION_ISA_AES
#define TARGET_PCLMUL	OPTION_ISA_PCLMUL
#define TARGET_CMPXCHG16B OPTION_ISA_CX16
#define TARGET_FSGSBASE	OPTION_ISA_FSGSBASE
#define TARGET_RDRND	OPTION_ISA_RDRND
#define TARGET_F16C	OPTION_ISA_F16C

#define TARGET_LP64	(TARGET_64BIT && !TARGET_X32)

/* SSE4.1 defines round instructions */
#define	OPTION_MASK_ISA_ROUND	OPTION_MASK_ISA_SSE4_1
#define	OPTION_ISA_ROUND	((ix86_isa_flags & OPTION_MASK_ISA_ROUND) != 0)

#include "config/vxworks-dummy.h"

#include "config/i386/i386-opts.h"

#define MAX_STRINGOP_ALGS 4

/* Specify what algorithm to use for stringops on known size.
   When size is unknown, the UNKNOWN_SIZE alg is used.  When size is
   known at compile time or estimated via feedback, the SIZE array
   is walked in order until MAX is greater then the estimate (or -1
   means infinity).  Corresponding ALG is used then.
   For example initializer:
    {{256, loop}, {-1, rep_prefix_4_byte}}
   will use loop for blocks smaller or equal to 256 bytes, rep prefix will
   be used otherwise.  */
struct stringop_algs
{
  const enum stringop_alg unknown_size;
  const struct stringop_strategy {
    const int max;
    const enum stringop_alg alg;
  } size [MAX_STRINGOP_ALGS];
};

/* Define the specific costs for a given cpu */

struct processor_costs {
  const int add;		/* cost of an add instruction */
  const int lea;		/* cost of a lea instruction */
  const int shift_var;		/* variable shift costs */
  const int shift_const;	/* constant shift costs */
  const int mult_init[5];	/* cost of starting a multiply
				   in QImode, HImode, SImode, DImode, TImode*/
  const int mult_bit;		/* cost of multiply per each bit set */
  const int divide[5];		/* cost of a divide/mod
				   in QImode, HImode, SImode, DImode, TImode*/
  int movsx;			/* The cost of movsx operation.  */
  int movzx;			/* The cost of movzx operation.  */
  const int large_insn;		/* insns larger than this cost more */
  const int move_ratio;		/* The threshold of number of scalar
				   memory-to-memory move insns.  */
  const int movzbl_load;	/* cost of loading using movzbl */
  const int int_load[3];	/* cost of loading integer registers
				   in QImode, HImode and SImode relative
				   to reg-reg move (2).  */
  const int int_store[3];	/* cost of storing integer register
				   in QImode, HImode and SImode */
  const int fp_move;		/* cost of reg,reg fld/fst */
  const int fp_load[3];		/* cost of loading FP register
				   in SFmode, DFmode and XFmode */
  const int fp_store[3];	/* cost of storing FP register
				   in SFmode, DFmode and XFmode */
  const int mmx_move;		/* cost of moving MMX register.  */
  const int mmx_load[2];	/* cost of loading MMX register
				   in SImode and DImode */
  const int mmx_store[2];	/* cost of storing MMX register
				   in SImode and DImode */
  const int sse_move;		/* cost of moving SSE register.  */
  const int sse_load[3];	/* cost of loading SSE register
				   in SImode, DImode and TImode*/
  const int sse_store[3];	/* cost of storing SSE register
				   in SImode, DImode and TImode*/
  const int mmxsse_to_integer;	/* cost of moving mmxsse register to
				   integer and vice versa.  */
  const int l1_cache_size;	/* size of l1 cache, in kilobytes.  */
  const int l2_cache_size;	/* size of l2 cache, in kilobytes.  */
  const int prefetch_block;	/* bytes moved to cache for prefetch.  */
  const int simultaneous_prefetches; /* number of parallel prefetch
				   operations.  */
  const int branch_cost;	/* Default value for BRANCH_COST.  */
  const int fadd;		/* cost of FADD and FSUB instructions.  */
  const int fmul;		/* cost of FMUL instruction.  */
  const int fdiv;		/* cost of FDIV instruction.  */
  const int fabs;		/* cost of FABS instruction.  */
  const int fchs;		/* cost of FCHS instruction.  */
  const int fsqrt;		/* cost of FSQRT instruction.  */
				/* Specify what algorithm
				   to use for stringops on unknown size.  */
  struct stringop_algs memcpy[2], memset[2];
  const int scalar_stmt_cost;   /* Cost of any scalar operation, excluding
				   load and store.  */
  const int scalar_load_cost;   /* Cost of scalar load.  */
  const int scalar_store_cost;  /* Cost of scalar store.  */
  const int vec_stmt_cost;      /* Cost of any vector operation, excluding
                                   load, store, vector-to-scalar and
                                   scalar-to-vector operation.  */
  const int vec_to_scalar_cost;    /* Cost of vect-to-scalar operation.  */
  const int scalar_to_vec_cost;    /* Cost of scalar-to-vector operation.  */
  const int vec_align_load_cost;   /* Cost of aligned vector load.  */
  const int vec_unalign_load_cost; /* Cost of unaligned vector load.  */
  const int vec_store_cost;        /* Cost of vector store.  */
  const int cond_taken_branch_cost;    /* Cost of taken branch for vectorizer
					  cost model.  */
  const int cond_not_taken_branch_cost;/* Cost of not taken branch for
					  vectorizer cost model.  */
};

extern const struct processor_costs *ix86_cost;
extern const struct processor_costs ix86_size_cost;

#define ix86_cur_cost() \
  (optimize_insn_for_size_p () ? &ix86_size_cost: ix86_cost)

/* Macros used in the machine description to test the flags.  */

/* configure can arrange to make this 2, to force a 486.  */

#ifndef TARGET_CPU_DEFAULT
#define TARGET_CPU_DEFAULT TARGET_CPU_DEFAULT_generic
#endif

#ifndef TARGET_FPMATH_DEFAULT
#define TARGET_FPMATH_DEFAULT \
  (TARGET_64BIT && TARGET_SSE ? FPMATH_SSE : FPMATH_387)
#endif

#define TARGET_FLOAT_RETURNS_IN_80387 TARGET_FLOAT_RETURNS

/* 64bit Sledgehammer mode.  For libgcc2 we make sure this is a
   compile-time constant.  */
#ifdef IN_LIBGCC2
#undef TARGET_64BIT
#ifdef __x86_64__
#define TARGET_64BIT 1
#else
#define TARGET_64BIT 0
#endif
#else
#ifndef TARGET_BI_ARCH
#undef TARGET_64BIT
#if TARGET_64BIT_DEFAULT
#define TARGET_64BIT 1
#else
#define TARGET_64BIT 0
#endif
#endif
#endif

#define HAS_LONG_COND_BRANCH 1
#define HAS_LONG_UNCOND_BRANCH 1

#define TARGET_386 (ix86_tune == PROCESSOR_I386)
#define TARGET_486 (ix86_tune == PROCESSOR_I486)
#define TARGET_PENTIUM (ix86_tune == PROCESSOR_PENTIUM)
#define TARGET_PENTIUMPRO (ix86_tune == PROCESSOR_PENTIUMPRO)
#define TARGET_GEODE (ix86_tune == PROCESSOR_GEODE)
#define TARGET_K6 (ix86_tune == PROCESSOR_K6)
#define TARGET_ATHLON (ix86_tune == PROCESSOR_ATHLON)
#define TARGET_PENTIUM4 (ix86_tune == PROCESSOR_PENTIUM4)
#define TARGET_K8 (ix86_tune == PROCESSOR_K8)
#define TARGET_ATHLON_K8 (TARGET_K8 || TARGET_ATHLON)
#define TARGET_NOCONA (ix86_tune == PROCESSOR_NOCONA)
#define TARGET_CORE2_32 (ix86_tune == PROCESSOR_CORE2_32)
#define TARGET_CORE2_64 (ix86_tune == PROCESSOR_CORE2_64)
#define TARGET_CORE2 (TARGET_CORE2_32 || TARGET_CORE2_64)
#define TARGET_COREI7_32 (ix86_tune == PROCESSOR_COREI7_32)
#define TARGET_COREI7_64 (ix86_tune == PROCESSOR_COREI7_64)
#define TARGET_COREI7 (TARGET_COREI7_32 || TARGET_COREI7_64)
#define TARGET_GENERIC32 (ix86_tune == PROCESSOR_GENERIC32)
#define TARGET_GENERIC64 (ix86_tune == PROCESSOR_GENERIC64)
#define TARGET_GENERIC (TARGET_GENERIC32 || TARGET_GENERIC64)
#define TARGET_AMDFAM10 (ix86_tune == PROCESSOR_AMDFAM10)
#define TARGET_BDVER1 (ix86_tune == PROCESSOR_BDVER1)
#define TARGET_BDVER2 (ix86_tune == PROCESSOR_BDVER2)
#define TARGET_BTVER1 (ix86_tune == PROCESSOR_BTVER1)
#define TARGET_ATOM (ix86_tune == PROCESSOR_ATOM)

/* Feature tests against the various tunings.  */
enum ix86_tune_indices {
  X86_TUNE_USE_LEAVE,
  X86_TUNE_PUSH_MEMORY,
  X86_TUNE_ZERO_EXTEND_WITH_AND,
  X86_TUNE_UNROLL_STRLEN,
  X86_TUNE_BRANCH_PREDICTION_HINTS,
  X86_TUNE_DOUBLE_WITH_ADD,
  X86_TUNE_USE_SAHF,
  X86_TUNE_MOVX,
  X86_TUNE_PARTIAL_REG_STALL,
  X86_TUNE_PARTIAL_FLAG_REG_STALL,
  X86_TUNE_USE_HIMODE_FIOP,
  X86_TUNE_USE_SIMODE_FIOP,
  X86_TUNE_USE_MOV0,
  X86_TUNE_USE_CLTD,
  X86_TUNE_USE_XCHGB,
  X86_TUNE_SPLIT_LONG_MOVES,
  X86_TUNE_READ_MODIFY_WRITE,
  X86_TUNE_READ_MODIFY,
  X86_TUNE_PROMOTE_QIMODE,
  X86_TUNE_FAST_PREFIX,
  X86_TUNE_SINGLE_STRINGOP,
  X86_TUNE_QIMODE_MATH,
  X86_TUNE_HIMODE_MATH,
  X86_TUNE_PROMOTE_QI_REGS,
  X86_TUNE_PROMOTE_HI_REGS,
  X86_TUNE_SINGLE_POP,
  X86_TUNE_DOUBLE_POP,
  X86_TUNE_SINGLE_PUSH,
  X86_TUNE_DOUBLE_PUSH,
  X86_TUNE_INTEGER_DFMODE_MOVES,
  X86_TUNE_PARTIAL_REG_DEPENDENCY,
  X86_TUNE_SSE_PARTIAL_REG_DEPENDENCY,
  X86_TUNE_SSE_UNALIGNED_LOAD_OPTIMAL,
  X86_TUNE_SSE_UNALIGNED_STORE_OPTIMAL,
  X86_TUNE_SSE_PACKED_SINGLE_INSN_OPTIMAL,
  X86_TUNE_SSE_SPLIT_REGS,
  X86_TUNE_SSE_TYPELESS_STORES,
  X86_TUNE_SSE_LOAD0_BY_PXOR,
  X86_TUNE_MEMORY_MISMATCH_STALL,
  X86_TUNE_PROLOGUE_USING_MOVE,
  X86_TUNE_EPILOGUE_USING_MOVE,
  X86_TUNE_SHIFT1,
  X86_TUNE_USE_FFREEP,
  X86_TUNE_INTER_UNIT_MOVES,
  X86_TUNE_INTER_UNIT_CONVERSIONS,
  X86_TUNE_FOUR_JUMP_LIMIT,
  X86_TUNE_SCHEDULE,
  X86_TUNE_USE_BT,
  X86_TUNE_USE_INCDEC,
  X86_TUNE_PAD_RETURNS,
  X86_TUNE_PAD_SHORT_FUNCTION,
  X86_TUNE_EXT_80387_CONSTANTS,
  X86_TUNE_SHORTEN_X87_SSE,
  X86_TUNE_AVOID_VECTOR_DECODE,
  X86_TUNE_PROMOTE_HIMODE_IMUL,
  X86_TUNE_SLOW_IMUL_IMM32_MEM,
  X86_TUNE_SLOW_IMUL_IMM8,
  X86_TUNE_MOVE_M1_VIA_OR,
  X86_TUNE_NOT_UNPAIRABLE,
  X86_TUNE_NOT_VECTORMODE,
  X86_TUNE_USE_VECTOR_FP_CONVERTS,
  X86_TUNE_USE_VECTOR_CONVERTS,
  X86_TUNE_FUSE_CMP_AND_BRANCH,
  X86_TUNE_OPT_AGU,
  X86_TUNE_VECTORIZE_DOUBLE,
  X86_TUNE_SOFTWARE_PREFETCHING_BENEFICIAL,
  X86_TUNE_AVX128_OPTIMAL,
  X86_TUNE_REASSOC_INT_TO_PARALLEL,
  X86_TUNE_REASSOC_FP_TO_PARALLEL,

  X86_TUNE_LAST
};

extern unsigned char ix86_tune_features[X86_TUNE_LAST];

#define TARGET_USE_LEAVE	ix86_tune_features[X86_TUNE_USE_LEAVE]
#define TARGET_PUSH_MEMORY	ix86_tune_features[X86_TUNE_PUSH_MEMORY]
#define TARGET_ZERO_EXTEND_WITH_AND \
	ix86_tune_features[X86_TUNE_ZERO_EXTEND_WITH_AND]
#define TARGET_UNROLL_STRLEN	ix86_tune_features[X86_TUNE_UNROLL_STRLEN]
#define TARGET_BRANCH_PREDICTION_HINTS \
	ix86_tune_features[X86_TUNE_BRANCH_PREDICTION_HINTS]
#define TARGET_DOUBLE_WITH_ADD	ix86_tune_features[X86_TUNE_DOUBLE_WITH_ADD]
#define TARGET_USE_SAHF		ix86_tune_features[X86_TUNE_USE_SAHF]
#define TARGET_MOVX		ix86_tune_features[X86_TUNE_MOVX]
#define TARGET_PARTIAL_REG_STALL ix86_tune_features[X86_TUNE_PARTIAL_REG_STALL]
#define TARGET_PARTIAL_FLAG_REG_STALL \
	ix86_tune_features[X86_TUNE_PARTIAL_FLAG_REG_STALL]
#define TARGET_USE_HIMODE_FIOP	ix86_tune_features[X86_TUNE_USE_HIMODE_FIOP]
#define TARGET_USE_SIMODE_FIOP	ix86_tune_features[X86_TUNE_USE_SIMODE_FIOP]
#define TARGET_USE_MOV0		ix86_tune_features[X86_TUNE_USE_MOV0]
#define TARGET_USE_CLTD		ix86_tune_features[X86_TUNE_USE_CLTD]
#define TARGET_USE_XCHGB	ix86_tune_features[X86_TUNE_USE_XCHGB]
#define TARGET_SPLIT_LONG_MOVES	ix86_tune_features[X86_TUNE_SPLIT_LONG_MOVES]
#define TARGET_READ_MODIFY_WRITE ix86_tune_features[X86_TUNE_READ_MODIFY_WRITE]
#define TARGET_READ_MODIFY	ix86_tune_features[X86_TUNE_READ_MODIFY]
#define TARGET_PROMOTE_QImode	ix86_tune_features[X86_TUNE_PROMOTE_QIMODE]
#define TARGET_FAST_PREFIX	ix86_tune_features[X86_TUNE_FAST_PREFIX]
#define TARGET_SINGLE_STRINGOP	ix86_tune_features[X86_TUNE_SINGLE_STRINGOP]
#define TARGET_QIMODE_MATH	ix86_tune_features[X86_TUNE_QIMODE_MATH]
#define TARGET_HIMODE_MATH	ix86_tune_features[X86_TUNE_HIMODE_MATH]
#define TARGET_PROMOTE_QI_REGS	ix86_tune_features[X86_TUNE_PROMOTE_QI_REGS]
#define TARGET_PROMOTE_HI_REGS	ix86_tune_features[X86_TUNE_PROMOTE_HI_REGS]
#define TARGET_SINGLE_POP	ix86_tune_features[X86_TUNE_SINGLE_POP]
#define TARGET_DOUBLE_POP	ix86_tune_features[X86_TUNE_DOUBLE_POP]
#define TARGET_SINGLE_PUSH	ix86_tune_features[X86_TUNE_SINGLE_PUSH]
#define TARGET_DOUBLE_PUSH	ix86_tune_features[X86_TUNE_DOUBLE_PUSH]
#define TARGET_INTEGER_DFMODE_MOVES \
	ix86_tune_features[X86_TUNE_INTEGER_DFMODE_MOVES]
#define TARGET_PARTIAL_REG_DEPENDENCY \
	ix86_tune_features[X86_TUNE_PARTIAL_REG_DEPENDENCY]
#define TARGET_SSE_PARTIAL_REG_DEPENDENCY \
	ix86_tune_features[X86_TUNE_SSE_PARTIAL_REG_DEPENDENCY]
#define TARGET_SSE_UNALIGNED_LOAD_OPTIMAL \
	ix86_tune_features[X86_TUNE_SSE_UNALIGNED_LOAD_OPTIMAL]
#define TARGET_SSE_UNALIGNED_STORE_OPTIMAL \
	ix86_tune_features[X86_TUNE_SSE_UNALIGNED_STORE_OPTIMAL]
#define TARGET_SSE_PACKED_SINGLE_INSN_OPTIMAL \
	ix86_tune_features[X86_TUNE_SSE_PACKED_SINGLE_INSN_OPTIMAL]
#define TARGET_SSE_SPLIT_REGS	ix86_tune_features[X86_TUNE_SSE_SPLIT_REGS]
#define TARGET_SSE_TYPELESS_STORES \
	ix86_tune_features[X86_TUNE_SSE_TYPELESS_STORES]
#define TARGET_SSE_LOAD0_BY_PXOR ix86_tune_features[X86_TUNE_SSE_LOAD0_BY_PXOR]
#define TARGET_MEMORY_MISMATCH_STALL \
	ix86_tune_features[X86_TUNE_MEMORY_MISMATCH_STALL]
#define TARGET_PROLOGUE_USING_MOVE \
	ix86_tune_features[X86_TUNE_PROLOGUE_USING_MOVE]
#define TARGET_EPILOGUE_USING_MOVE \
	ix86_tune_features[X86_TUNE_EPILOGUE_USING_MOVE]
#define TARGET_SHIFT1		ix86_tune_features[X86_TUNE_SHIFT1]
#define TARGET_USE_FFREEP	ix86_tune_features[X86_TUNE_USE_FFREEP]
#define TARGET_INTER_UNIT_MOVES	ix86_tune_features[X86_TUNE_INTER_UNIT_MOVES]
#define TARGET_INTER_UNIT_CONVERSIONS\
	ix86_tune_features[X86_TUNE_INTER_UNIT_CONVERSIONS]
#define TARGET_FOUR_JUMP_LIMIT	ix86_tune_features[X86_TUNE_FOUR_JUMP_LIMIT]
#define TARGET_SCHEDULE		ix86_tune_features[X86_TUNE_SCHEDULE]
#define TARGET_USE_BT		ix86_tune_features[X86_TUNE_USE_BT]
#define TARGET_USE_INCDEC	ix86_tune_features[X86_TUNE_USE_INCDEC]
#define TARGET_PAD_RETURNS	ix86_tune_features[X86_TUNE_PAD_RETURNS]
#define TARGET_PAD_SHORT_FUNCTION \
	ix86_tune_features[X86_TUNE_PAD_SHORT_FUNCTION]
#define TARGET_EXT_80387_CONSTANTS \
	ix86_tune_features[X86_TUNE_EXT_80387_CONSTANTS]
#define TARGET_SHORTEN_X87_SSE	ix86_tune_features[X86_TUNE_SHORTEN_X87_SSE]
#define TARGET_AVOID_VECTOR_DECODE \
	ix86_tune_features[X86_TUNE_AVOID_VECTOR_DECODE]
#define TARGET_TUNE_PROMOTE_HIMODE_IMUL \
	ix86_tune_features[X86_TUNE_PROMOTE_HIMODE_IMUL]
#define TARGET_SLOW_IMUL_IMM32_MEM \
	ix86_tune_features[X86_TUNE_SLOW_IMUL_IMM32_MEM]
#define TARGET_SLOW_IMUL_IMM8	ix86_tune_features[X86_TUNE_SLOW_IMUL_IMM8]
#define	TARGET_MOVE_M1_VIA_OR	ix86_tune_features[X86_TUNE_MOVE_M1_VIA_OR]
#define TARGET_NOT_UNPAIRABLE	ix86_tune_features[X86_TUNE_NOT_UNPAIRABLE]
#define TARGET_NOT_VECTORMODE	ix86_tune_features[X86_TUNE_NOT_VECTORMODE]
#define TARGET_USE_VECTOR_FP_CONVERTS \
	ix86_tune_features[X86_TUNE_USE_VECTOR_FP_CONVERTS]
#define TARGET_USE_VECTOR_CONVERTS \
	ix86_tune_features[X86_TUNE_USE_VECTOR_CONVERTS]
#define TARGET_FUSE_CMP_AND_BRANCH \
	ix86_tune_features[X86_TUNE_FUSE_CMP_AND_BRANCH]
#define TARGET_OPT_AGU ix86_tune_features[X86_TUNE_OPT_AGU]
#define TARGET_VECTORIZE_DOUBLE \
	ix86_tune_features[X86_TUNE_VECTORIZE_DOUBLE]
#define TARGET_SOFTWARE_PREFETCHING_BENEFICIAL \
	ix86_tune_features[X86_TUNE_SOFTWARE_PREFETCHING_BENEFICIAL]
#define TARGET_AVX128_OPTIMAL \
	ix86_tune_features[X86_TUNE_AVX128_OPTIMAL]
#define TARGET_REASSOC_INT_TO_PARALLEL \
	ix86_tune_features[X86_TUNE_REASSOC_INT_TO_PARALLEL]
#define TARGET_REASSOC_FP_TO_PARALLEL \
	ix86_tune_features[X86_TUNE_REASSOC_FP_TO_PARALLEL]

/* Feature tests against the various architecture variations.  */
enum ix86_arch_indices {
  X86_ARCH_CMOV,
  X86_ARCH_CMPXCHG,
  X86_ARCH_CMPXCHG8B,
  X86_ARCH_XADD,
  X86_ARCH_BSWAP,

  X86_ARCH_LAST
};

extern unsigned char ix86_arch_features[X86_ARCH_LAST];

#define TARGET_CMOV		ix86_arch_features[X86_ARCH_CMOV]
#define TARGET_CMPXCHG		ix86_arch_features[X86_ARCH_CMPXCHG]
#define TARGET_CMPXCHG8B	ix86_arch_features[X86_ARCH_CMPXCHG8B]
#define TARGET_XADD		ix86_arch_features[X86_ARCH_XADD]
#define TARGET_BSWAP		ix86_arch_features[X86_ARCH_BSWAP]

/* For sane SSE instruction set generation we need fcomi instruction.
   It is safe to enable all CMOVE instructions.  Also, RDRAND intrinsic
   expands to a sequence that includes conditional move. */
#define TARGET_CMOVE		(TARGET_CMOV || TARGET_SSE || TARGET_RDRND)

#define TARGET_FISTTP		(TARGET_SSE3 && TARGET_80387)

extern int x86_prefetch_sse;

#define TARGET_PREFETCH_SSE	x86_prefetch_sse

#define ASSEMBLER_DIALECT	(ix86_asm_dialect)

#define TARGET_SSE_MATH		((ix86_fpmath & FPMATH_SSE) != 0)
#define TARGET_MIX_SSE_I387 \
 ((ix86_fpmath & (FPMATH_SSE | FPMATH_387)) == (FPMATH_SSE | FPMATH_387))

#define TARGET_GNU_TLS		(ix86_tls_dialect == TLS_DIALECT_GNU)
#define TARGET_GNU2_TLS		(ix86_tls_dialect == TLS_DIALECT_GNU2)
#define TARGET_ANY_GNU_TLS	(TARGET_GNU_TLS || TARGET_GNU2_TLS)
#define TARGET_SUN_TLS		0

#ifndef TARGET_64BIT_DEFAULT
#define TARGET_64BIT_DEFAULT 0
#endif
#ifndef TARGET_TLS_DIRECT_SEG_REFS_DEFAULT
#define TARGET_TLS_DIRECT_SEG_REFS_DEFAULT 0
#endif

/* Fence to use after loop using storent.  */

extern tree x86_mfence;
#define FENCE_FOLLOWING_MOVNT x86_mfence

/* Once GDB has been enhanced to deal with functions without frame
   pointers, we can change this to allow for elimination of
   the frame pointer in leaf functions.  */
#define TARGET_DEFAULT 0

/* Extra bits to force.  */
#define TARGET_SUBTARGET_DEFAULT 0
#define TARGET_SUBTARGET_ISA_DEFAULT 0

/* Extra bits to force on w/ 32-bit mode.  */
#define TARGET_SUBTARGET32_DEFAULT 0
#define TARGET_SUBTARGET32_ISA_DEFAULT 0

/* Extra bits to force on w/ 64-bit mode.  */
#define TARGET_SUBTARGET64_DEFAULT 0
#define TARGET_SUBTARGET64_ISA_DEFAULT 0

/* Replace MACH-O, ifdefs by in-line tests, where possible. 
   (a) Macros defined in config/i386/darwin.h  */
#define TARGET_MACHO 0
#define TARGET_MACHO_BRANCH_ISLANDS 0
#define MACHOPIC_ATT_STUB 0
/* (b) Macros defined in config/darwin.h  */
#define MACHO_DYNAMIC_NO_PIC_P 0
#define MACHOPIC_INDIRECT 0
#define MACHOPIC_PURE 0

/* For the Windows 64-bit ABI.  */
#define TARGET_64BIT_MS_ABI (TARGET_64BIT && ix86_cfun_abi () == MS_ABI)

/* For the Windows 32-bit ABI.  */
#define TARGET_32BIT_MS_ABI (!TARGET_64BIT && ix86_cfun_abi () == MS_ABI)

/* This is re-defined by cygming.h.  */
#define TARGET_SEH 0

/* The default abi used by target.  */
#define DEFAULT_ABI SYSV_ABI

/* Subtargets may reset this to 1 in order to enable 96-bit long double
   with the rounding mode forced to 53 bits.  */
#define TARGET_96_ROUND_53_LONG_DOUBLE 0

/* -march=native handling only makes sense with compiler running on
   an x86 or x86_64 chip.  If changing this condition, also change
   the condition in driver-i386.c.  */
#if defined(__i386__) || defined(__x86_64__)
/* In driver-i386.c.  */
extern const char *host_detect_local_cpu (int argc, const char **argv);
#define EXTRA_SPEC_FUNCTIONS \
  { "local_cpu_detect", host_detect_local_cpu },
#define HAVE_LOCAL_CPU_DETECT
#endif

#if TARGET_64BIT_DEFAULT
#define OPT_ARCH64 "!m32"
#define OPT_ARCH32 "m32"
#else
#define OPT_ARCH64 "m64|mx32"
#define OPT_ARCH32 "m64|mx32:;"
#endif

/* Support for configure-time defaults of some command line options.
   The order here is important so that -march doesn't squash the
   tune or cpu values.  */
#define OPTION_DEFAULT_SPECS					   \
  {"tune", "%{!mtune=*:%{!mcpu=*:%{!march=*:-mtune=%(VALUE)}}}" }, \
  {"tune_32", "%{" OPT_ARCH32 ":%{!mtune=*:%{!mcpu=*:%{!march=*:-mtune=%(VALUE)}}}}" }, \
  {"tune_64", "%{" OPT_ARCH64 ":%{!mtune=*:%{!mcpu=*:%{!march=*:-mtune=%(VALUE)}}}}" }, \
  {"cpu", "%{!mtune=*:%{!mcpu=*:%{!march=*:-mtune=%(VALUE)}}}" },  \
  {"cpu_32", "%{" OPT_ARCH32 ":%{!mtune=*:%{!mcpu=*:%{!march=*:-mtune=%(VALUE)}}}}" }, \
  {"cpu_64", "%{" OPT_ARCH64 ":%{!mtune=*:%{!mcpu=*:%{!march=*:-mtune=%(VALUE)}}}}" }, \
  {"arch", "%{!march=*:-march=%(VALUE)}"},			   \
  {"arch_32", "%{" OPT_ARCH32 ":%{!march=*:-march=%(VALUE)}}"},	   \
  {"arch_64", "%{" OPT_ARCH64 ":%{!march=*:-march=%(VALUE)}}"},

/* Specs for the compiler proper */

#ifndef CC1_CPU_SPEC
#define CC1_CPU_SPEC_1 ""

#ifndef HAVE_LOCAL_CPU_DETECT
#define CC1_CPU_SPEC CC1_CPU_SPEC_1
#else
#define CC1_CPU_SPEC CC1_CPU_SPEC_1 \
"%{march=native:%>march=native %:local_cpu_detect(arch) \
  %{!mtune=*:%>mtune=native %:local_cpu_detect(tune)}} \
%{mtune=native:%>mtune=native %:local_cpu_detect(tune)}"
#endif
#endif

/* Target CPU builtins.  */
#define TARGET_CPU_CPP_BUILTINS() ix86_target_macros ()

/* Target Pragmas.  */
#define REGISTER_TARGET_PRAGMAS() ix86_register_pragmas ()

enum target_cpu_default
{
  TARGET_CPU_DEFAULT_generic = 0,

  TARGET_CPU_DEFAULT_i386,
  TARGET_CPU_DEFAULT_i486,
  TARGET_CPU_DEFAULT_pentium,
  TARGET_CPU_DEFAULT_pentium_mmx,
  TARGET_CPU_DEFAULT_pentiumpro,
  TARGET_CPU_DEFAULT_pentium2,
  TARGET_CPU_DEFAULT_pentium3,
  TARGET_CPU_DEFAULT_pentium4,
  TARGET_CPU_DEFAULT_pentium_m,
  TARGET_CPU_DEFAULT_prescott,
  TARGET_CPU_DEFAULT_nocona,
  TARGET_CPU_DEFAULT_core2,
  TARGET_CPU_DEFAULT_corei7,
  TARGET_CPU_DEFAULT_atom,

  TARGET_CPU_DEFAULT_geode,
  TARGET_CPU_DEFAULT_k6,
  TARGET_CPU_DEFAULT_k6_2,
  TARGET_CPU_DEFAULT_k6_3,
  TARGET_CPU_DEFAULT_athlon,
  TARGET_CPU_DEFAULT_athlon_sse,
  TARGET_CPU_DEFAULT_k8,
  TARGET_CPU_DEFAULT_amdfam10,
  TARGET_CPU_DEFAULT_bdver1,
  TARGET_CPU_DEFAULT_bdver2,
  TARGET_CPU_DEFAULT_btver1,

  TARGET_CPU_DEFAULT_max
};

#ifndef CC1_SPEC
#define CC1_SPEC "%(cc1_cpu) "
#endif

/* This macro defines names of additional specifications to put in the
   specs that can be used in various specifications like CC1_SPEC.  Its
   definition is an initializer with a subgrouping for each command option.

   Each subgrouping contains a string constant, that defines the
   specification name, and a string constant that used by the GCC driver
   program.

   Do not define this macro if it does not need to do anything.  */

#ifndef SUBTARGET_EXTRA_SPECS
#define SUBTARGET_EXTRA_SPECS
#endif

#define EXTRA_SPECS							\
  { "cc1_cpu",  CC1_CPU_SPEC },						\
  SUBTARGET_EXTRA_SPECS


/* Set the value of FLT_EVAL_METHOD in float.h.  When using only the
   FPU, assume that the fpcw is set to extended precision; when using
   only SSE, rounding is correct; when using both SSE and the FPU,
   the rounding precision is indeterminate, since either may be chosen
   apparently at random.  */
#define TARGET_FLT_EVAL_METHOD \
  (TARGET_MIX_SSE_I387 ? -1 : TARGET_SSE_MATH ? 0 : 2)

/* Whether to allow x87 floating-point arithmetic on MODE (one of
   SFmode, DFmode and XFmode) in the current excess precision
   configuration.  */
#define X87_ENABLE_ARITH(MODE) \
  (flag_excess_precision == EXCESS_PRECISION_FAST || (MODE) == XFmode)

/* Likewise, whether to allow direct conversions from integer mode
   IMODE (HImode, SImode or DImode) to MODE.  */
#define X87_ENABLE_FLOAT(MODE, IMODE)			\
  (flag_excess_precision == EXCESS_PRECISION_FAST	\
   || (MODE) == XFmode					\
   || ((MODE) == DFmode && (IMODE) == SImode)		\
   || (IMODE) == HImode)

/* target machine storage layout */

#define SHORT_TYPE_SIZE 16
#define INT_TYPE_SIZE 32
#define LONG_TYPE_SIZE (TARGET_X32 ? 32 : BITS_PER_WORD)
#define POINTER_SIZE (TARGET_X32 ? 32 : BITS_PER_WORD)
#define LONG_LONG_TYPE_SIZE 64
#define FLOAT_TYPE_SIZE 32
#define DOUBLE_TYPE_SIZE 64
#define LONG_DOUBLE_TYPE_SIZE 80

#define WIDEST_HARDWARE_FP_SIZE LONG_DOUBLE_TYPE_SIZE

#if defined (TARGET_BI_ARCH) || TARGET_64BIT_DEFAULT
#define MAX_BITS_PER_WORD 64
#else
#define MAX_BITS_PER_WORD 32
#endif

/* Define this if most significant byte of a word is the lowest numbered.  */
/* That is true on the 80386.  */

#define BITS_BIG_ENDIAN 0

/* Define this if most significant byte of a word is the lowest numbered.  */
/* That is not true on the 80386.  */
#define BYTES_BIG_ENDIAN 0

/* Define this if most significant word of a multiword number is the lowest
   numbered.  */
/* Not true for 80386 */
#define WORDS_BIG_ENDIAN 0

/* Width of a word, in units (bytes).  */
#define UNITS_PER_WORD		(TARGET_64BIT ? 8 : 4)

#ifndef IN_LIBGCC2
#define MIN_UNITS_PER_WORD	4
#endif

/* Allocation boundary (in *bits*) for storing arguments in argument list.  */
#define PARM_BOUNDARY BITS_PER_WORD

/* Boundary (in *bits*) on which stack pointer should be aligned.  */
#define STACK_BOUNDARY \
 (TARGET_64BIT && ix86_abi == MS_ABI ? 128 : BITS_PER_WORD)

/* Stack boundary of the main function guaranteed by OS.  */
#define MAIN_STACK_BOUNDARY (TARGET_64BIT ? 128 : 32)

/* Minimum stack boundary.  */
#define MIN_STACK_BOUNDARY (TARGET_64BIT ? 128 : 32)

/* Boundary (in *bits*) on which the stack pointer prefers to be
   aligned; the compiler cannot rely on having this alignment.  */
#define PREFERRED_STACK_BOUNDARY ix86_preferred_stack_boundary

/* It should be MIN_STACK_BOUNDARY.  But we set it to 128 bits for
   both 32bit and 64bit, to support codes that need 128 bit stack
   alignment for SSE instructions, but can't realign the stack.  */
#define PREFERRED_STACK_BOUNDARY_DEFAULT 128

/* 1 if -mstackrealign should be turned on by default.  It will
   generate an alternate prologue and epilogue that realigns the
   runtime stack if nessary.  This supports mixing codes that keep a
   4-byte aligned stack, as specified by i386 psABI, with codes that
   need a 16-byte aligned stack, as required by SSE instructions.  */
#define STACK_REALIGN_DEFAULT 0

/* Boundary (in *bits*) on which the incoming stack is aligned.  */
#define INCOMING_STACK_BOUNDARY ix86_incoming_stack_boundary

/* According to Windows x64 software convention, the maximum stack allocatable
   in the prologue is 4G - 8 bytes.  Furthermore, there is a limited set of
   instructions allowed to adjust the stack pointer in the epilog, forcing the
   use of frame pointer for frames larger than 2 GB.  This theorical limit
   is reduced by 256, an over-estimated upper bound for the stack use by the
   prologue.
   We define only one threshold for both the prolog and the epilog.  When the
   frame size is larger than this threshold, we allocate the area to save SSE
   regs, then save them, and then allocate the remaining.  There is no SEH
   unwind info for this later allocation.  */
#define SEH_MAX_FRAME_SIZE ((2U << 30) - 256)

/* Target OS keeps a vector-aligned (128-bit, 16-byte) stack.  This is
   mandatory for the 64-bit ABI, and may or may not be true for other
   operating systems.  */
#define TARGET_KEEPS_VECTOR_ALIGNED_STACK TARGET_64BIT

/* Minimum allocation boundary for the code of a function.  */
#define FUNCTION_BOUNDARY 8

/* C++ stores the virtual bit in the lowest bit of function pointers.  */
#define TARGET_PTRMEMFUNC_VBIT_LOCATION ptrmemfunc_vbit_in_pfn

/* Minimum size in bits of the largest boundary to which any
   and all fundamental data types supported by the hardware
   might need to be aligned. No data type wants to be aligned
   rounder than this.

   Pentium+ prefers DFmode values to be aligned to 64 bit boundary
   and Pentium Pro XFmode values at 128 bit boundaries.  */

#define BIGGEST_ALIGNMENT (TARGET_AVX ? 256 : 128)

/* Maximum stack alignment.  */
#define MAX_STACK_ALIGNMENT MAX_OFILE_ALIGNMENT

/* Alignment value for attribute ((aligned)).  It is a constant since
   it is the part of the ABI.  We shouldn't change it with -mavx.  */
#define ATTRIBUTE_ALIGNED_VALUE 128

/* Decide whether a variable of mode MODE should be 128 bit aligned.  */
#define ALIGN_MODE_128(MODE) \
 ((MODE) == XFmode || SSE_REG_MODE_P (MODE))

/* The published ABIs say that doubles should be aligned on word
   boundaries, so lower the alignment for structure fields unless
   -malign-double is set.  */

/* ??? Blah -- this macro is used directly by libobjc.  Since it
   supports no vector modes, cut out the complexity and fall back
   on BIGGEST_FIELD_ALIGNMENT.  */
#ifdef IN_TARGET_LIBS
#ifdef __x86_64__
#define BIGGEST_FIELD_ALIGNMENT 128
#else
#define BIGGEST_FIELD_ALIGNMENT 32
#endif
#else
#define ADJUST_FIELD_ALIGN(FIELD, COMPUTED) \
   x86_field_alignment (FIELD, COMPUTED)
#endif

/* If defined, a C expression to compute the alignment given to a
   constant that is being placed in memory.  EXP is the constant
   and ALIGN is the alignment that the object would ordinarily have.
   The value of this macro is used instead of that alignment to align
   the object.

   If this macro is not defined, then ALIGN is used.

   The typical use of this macro is to increase alignment for string
   constants to be word aligned so that `strcpy' calls that copy
   constants can be done inline.  */

#define CONSTANT_ALIGNMENT(EXP, ALIGN) ix86_constant_alignment ((EXP), (ALIGN))

/* If defined, a C expression to compute the alignment for a static
   variable.  TYPE is the data type, and ALIGN is the alignment that
   the object would ordinarily have.  The value of this macro is used
   instead of that alignment to align the object.

   If this macro is not defined, then ALIGN is used.

   One use of this macro is to increase alignment of medium-size
   data to make it all fit in fewer cache lines.  Another is to
   cause character arrays to be word-aligned so that `strcpy' calls
   that copy constants to character arrays can be done inline.  */

#define DATA_ALIGNMENT(TYPE, ALIGN) ix86_data_alignment ((TYPE), (ALIGN))

/* If defined, a C expression to compute the alignment for a local
   variable.  TYPE is the data type, and ALIGN is the alignment that
   the object would ordinarily have.  The value of this macro is used
   instead of that alignment to align the object.

   If this macro is not defined, then ALIGN is used.

   One use of this macro is to increase alignment of medium-size
   data to make it all fit in fewer cache lines.  */

#define LOCAL_ALIGNMENT(TYPE, ALIGN) \
  ix86_local_alignment ((TYPE), VOIDmode, (ALIGN))

/* If defined, a C expression to compute the alignment for stack slot.
   TYPE is the data type, MODE is the widest mode available, and ALIGN
   is the alignment that the slot would ordinarily have.  The value of
   this macro is used instead of that alignment to align the slot.

   If this macro is not defined, then ALIGN is used when TYPE is NULL,
   Otherwise, LOCAL_ALIGNMENT will be used.

   One use of this macro is to set alignment of stack slot to the
   maximum alignment of all possible modes which the slot may have.  */

#define STACK_SLOT_ALIGNMENT(TYPE, MODE, ALIGN) \
  ix86_local_alignment ((TYPE), (MODE), (ALIGN))

/* If defined, a C expression to compute the alignment for a local
   variable DECL.

   If this macro is not defined, then
   LOCAL_ALIGNMENT (TREE_TYPE (DECL), DECL_ALIGN (DECL)) will be used.

   One use of this macro is to increase alignment of medium-size
   data to make it all fit in fewer cache lines.  */

#define LOCAL_DECL_ALIGNMENT(DECL) \
  ix86_local_alignment ((DECL), VOIDmode, DECL_ALIGN (DECL))

/* If defined, a C expression to compute the minimum required alignment
   for dynamic stack realignment purposes for EXP (a TYPE or DECL),
   MODE, assuming normal alignment ALIGN.

   If this macro is not defined, then (ALIGN) will be used.  */

#define MINIMUM_ALIGNMENT(EXP, MODE, ALIGN) \
  ix86_minimum_alignment (EXP, MODE, ALIGN)


/* Set this nonzero if move instructions will actually fail to work
   when given unaligned data.  */
#define STRICT_ALIGNMENT 0

/* If bit field type is int, don't let it cross an int,
   and give entire struct the alignment of an int.  */
/* Required on the 386 since it doesn't have bit-field insns.  */
#define PCC_BITFIELD_TYPE_MATTERS 1

/* Standard register usage.  */

/* This processor has special stack-like registers.  See reg-stack.c
   for details.  */

#define STACK_REGS

#define IS_STACK_MODE(MODE)					\
  (((MODE) == SFmode && !(TARGET_SSE && TARGET_SSE_MATH))	\
   || ((MODE) == DFmode && !(TARGET_SSE2 && TARGET_SSE_MATH))	\
   || (MODE) == XFmode)

/* Number of actual hardware registers.
   The hardware registers are assigned numbers for the compiler
   from 0 to just below FIRST_PSEUDO_REGISTER.
   All registers that the compiler knows about must be given numbers,
   even those that are not normally considered general registers.

   In the 80386 we give the 8 general purpose registers the numbers 0-7.
   We number the floating point registers 8-15.
   Note that registers 0-7 can be accessed as a  short or int,
   while only 0-3 may be used with byte `mov' instructions.

   Reg 16 does not correspond to any hardware register, but instead
   appears in the RTL as an argument pointer prior to reload, and is
   eliminated during reloading in favor of either the stack or frame
   pointer.  */

#define FIRST_PSEUDO_REGISTER 53

/* Number of hardware registers that go into the DWARF-2 unwind info.
   If not defined, equals FIRST_PSEUDO_REGISTER.  */

#define DWARF_FRAME_REGISTERS 17

/* 1 for registers that have pervasive standard uses
   and are not available for the register allocator.
   On the 80386, the stack pointer is such, as is the arg pointer.

   The value is zero if the register is not fixed on either 32 or
   64 bit targets, one if the register if fixed on both 32 and 64
   bit targets, two if it is only fixed on 32bit targets and three
   if its only fixed on 64bit targets.
   Proper values are computed in TARGET_CONDITIONAL_REGISTER_USAGE.
 */
#define FIXED_REGISTERS						\
/*ax,dx,cx,bx,si,di,bp,sp,st,st1,st2,st3,st4,st5,st6,st7*/	\
{  0, 0, 0, 0, 0, 0, 0, 1, 0,  0,  0,  0,  0,  0,  0,  0,	\
/*arg,flags,fpsr,fpcr,frame*/					\
    1,    1,   1,   1,    1,					\
/*xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7*/			\
     0,   0,   0,   0,   0,   0,   0,   0,			\
/* mm0, mm1, mm2, mm3, mm4, mm5, mm6, mm7*/			\
     0,   0,   0,   0,   0,   0,   0,   0,			\
/*  r8,  r9, r10, r11, r12, r13, r14, r15*/			\
     2,   2,   2,   2,   2,   2,   2,   2,			\
/*xmm8,xmm9,xmm10,xmm11,xmm12,xmm13,xmm14,xmm15*/		\
     2,   2,    2,    2,    2,    2,    2,    2 }


/* 1 for registers not available across function calls.
   These must include the FIXED_REGISTERS and also any
   registers that can be used without being saved.
   The latter must include the registers where values are returned
   and the register where structure-value addresses are passed.
   Aside from that, you can include as many other registers as you like.

   The value is zero if the register is not call used on either 32 or
   64 bit targets, one if the register if call used on both 32 and 64
   bit targets, two if it is only call used on 32bit targets and three
   if its only call used on 64bit targets.
   Proper values are computed in TARGET_CONDITIONAL_REGISTER_USAGE.
*/
#define CALL_USED_REGISTERS					\
/*ax,dx,cx,bx,si,di,bp,sp,st,st1,st2,st3,st4,st5,st6,st7*/	\
{  1, 1, 1, 0, 3, 3, 0, 1, 1,  1,  1,  1,  1,  1,  1,  1,	\
/*arg,flags,fpsr,fpcr,frame*/					\
    1,   1,    1,   1,    1,					\
/*xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7*/			\
     1,   1,   1,   1,   1,   1,   1,   1,			\
/* mm0, mm1, mm2, mm3, mm4, mm5, mm6, mm7*/			\
     1,   1,   1,   1,   1,   1,   1,   1,			\
/*  r8,  r9, r10, r11, r12, r13, r14, r15*/			\
     1,   1,   1,   1,   2,   2,   2,   2,			\
/*xmm8,xmm9,xmm10,xmm11,xmm12,xmm13,xmm14,xmm15*/		\
     1,   1,    1,    1,    1,    1,    1,    1 }

/* Order in which to allocate registers.  Each register must be
   listed once, even those in FIXED_REGISTERS.  List frame pointer
   late and fixed registers last.  Note that, in general, we prefer
   registers listed in CALL_USED_REGISTERS, keeping the others
   available for storage of persistent values.

   The ADJUST_REG_ALLOC_ORDER actually overwrite the order,
   so this is just empty initializer for array.  */

#define REG_ALLOC_ORDER 					\
{  0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17,\
   18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32,	\
   33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47,  \
   48, 49, 50, 51, 52 }

/* ADJUST_REG_ALLOC_ORDER is a macro which permits reg_alloc_order
   to be rearranged based on a particular function.  When using sse math,
   we want to allocate SSE before x87 registers and vice versa.  */

#define ADJUST_REG_ALLOC_ORDER x86_order_regs_for_local_alloc ()


#define OVERRIDE_ABI_FORMAT(FNDECL) ix86_call_abi_override (FNDECL)

/* Return number of consecutive hard regs needed starting at reg REGNO
   to hold something of mode MODE.
   This is ordinarily the length in words of a value of mode MODE
   but can be less for certain modes in special long registers.

   Actually there are no two word move instructions for consecutive
   registers.  And only registers 0-3 may have mov byte instructions
   applied to them.  */

#define HARD_REGNO_NREGS(REGNO, MODE)					\
  (FP_REGNO_P (REGNO) || SSE_REGNO_P (REGNO) || MMX_REGNO_P (REGNO)	\
   ? (COMPLEX_MODE_P (MODE) ? 2 : 1)					\
   : ((MODE) == XFmode							\
      ? (TARGET_64BIT ? 2 : 3)						\
      : (MODE) == XCmode						\
      ? (TARGET_64BIT ? 4 : 6)						\
      : ((GET_MODE_SIZE (MODE) + UNITS_PER_WORD - 1) / UNITS_PER_WORD)))

#define HARD_REGNO_NREGS_HAS_PADDING(REGNO, MODE)			\
  ((TARGET_128BIT_LONG_DOUBLE && !TARGET_64BIT)				\
   ? (FP_REGNO_P (REGNO) || SSE_REGNO_P (REGNO) || MMX_REGNO_P (REGNO)	\
      ? 0								\
      : ((MODE) == XFmode || (MODE) == XCmode))				\
   : 0)

#define HARD_REGNO_NREGS_WITH_PADDING(REGNO, MODE) ((MODE) == XFmode ? 4 : 8)

#define VALID_AVX256_REG_MODE(MODE)					\
  ((MODE) == V32QImode || (MODE) == V16HImode || (MODE) == V8SImode	\
   || (MODE) == V4DImode || (MODE) == V2TImode || (MODE) == V8SFmode	\
   || (MODE) == V4DFmode)

#define VALID_SSE2_REG_MODE(MODE)					\
  ((MODE) == V16QImode || (MODE) == V8HImode || (MODE) == V2DFmode	\
   || (MODE) == V2DImode || (MODE) == DFmode)

#define VALID_SSE_REG_MODE(MODE)					\
  ((MODE) == V1TImode || (MODE) == TImode				\
   || (MODE) == V4SFmode || (MODE) == V4SImode				\
   || (MODE) == SFmode || (MODE) == TFmode)

#define VALID_MMX_REG_MODE_3DNOW(MODE) \
  ((MODE) == V2SFmode || (MODE) == SFmode)

#define VALID_MMX_REG_MODE(MODE)					\
  ((MODE == V1DImode) || (MODE) == DImode				\
   || (MODE) == V2SImode || (MODE) == SImode				\
   || (MODE) == V4HImode || (MODE) == V8QImode)

#define VALID_DFP_MODE_P(MODE) \
  ((MODE) == SDmode || (MODE) == DDmode || (MODE) == TDmode)

#define VALID_FP_MODE_P(MODE)						\
  ((MODE) == SFmode || (MODE) == DFmode || (MODE) == XFmode		\
   || (MODE) == SCmode || (MODE) == DCmode || (MODE) == XCmode)		\

#define VALID_INT_MODE_P(MODE)						\
  ((MODE) == QImode || (MODE) == HImode || (MODE) == SImode		\
   || (MODE) == DImode							\
   || (MODE) == CQImode || (MODE) == CHImode || (MODE) == CSImode	\
   || (MODE) == CDImode							\
   || (TARGET_64BIT && ((MODE) == TImode || (MODE) == CTImode		\
			|| (MODE) == TFmode || (MODE) == TCmode)))

/* Return true for modes passed in SSE registers.  */
#define SSE_REG_MODE_P(MODE)						\
  ((MODE) == V1TImode || (MODE) == TImode || (MODE) == V16QImode	\
   || (MODE) == TFmode || (MODE) == V8HImode || (MODE) == V2DFmode	\
   || (MODE) == V2DImode || (MODE) == V4SFmode || (MODE) == V4SImode	\
   || (MODE) == V32QImode || (MODE) == V16HImode || (MODE) == V8SImode	\
   || (MODE) == V4DImode || (MODE) == V8SFmode || (MODE) == V4DFmode	\
   || (MODE) == V2TImode)

/* Value is 1 if hard register REGNO can hold a value of machine-mode MODE.  */

#define HARD_REGNO_MODE_OK(REGNO, MODE)	\
   ix86_hard_regno_mode_ok ((REGNO), (MODE))

/* Value is 1 if it is a good idea to tie two pseudo registers
   when one has mode MODE1 and one has mode MODE2.
   If HARD_REGNO_MODE_OK could produce different values for MODE1 and MODE2,
   for any hard reg, then this must be 0 for correct output.  */

#define MODES_TIEABLE_P(MODE1, MODE2)  ix86_modes_tieable_p (MODE1, MODE2)

/* It is possible to write patterns to move flags; but until someone
   does it,  */
#define AVOID_CCMODE_COPIES

/* Specify the modes required to caller save a given hard regno.
   We do this on i386 to prevent flags from being saved at all.

   Kill any attempts to combine saving of modes.  */

#define HARD_REGNO_CALLER_SAVE_MODE(REGNO, NREGS, MODE)			\
  (CC_REGNO_P (REGNO) ? VOIDmode					\
   : (MODE) == VOIDmode && (NREGS) != 1 ? VOIDmode			\
   : (MODE) == VOIDmode ? choose_hard_reg_mode ((REGNO), (NREGS), false) \
   : (MODE) == HImode && !TARGET_PARTIAL_REG_STALL ? SImode		\
   : (MODE) == QImode && (REGNO) > BX_REG && !TARGET_64BIT ? SImode 	\
   : (MODE))

/* The only ABI that saves SSE registers across calls is Win64 (thus no
   need to check the current ABI here), and with AVX enabled Win64 only
   guarantees that the low 16 bytes are saved.  */
#define HARD_REGNO_CALL_PART_CLOBBERED(REGNO, MODE)             \
  (SSE_REGNO_P (REGNO) && GET_MODE_SIZE (MODE) > 16)

/* Specify the registers used for certain standard purposes.
   The values of these macros are register numbers.  */

/* on the 386 the pc register is %eip, and is not usable as a general
   register.  The ordinary mov instructions won't work */
/* #define PC_REGNUM  */

/* Register to use for pushing function arguments.  */
#define STACK_POINTER_REGNUM 7

/* Base register for access to local variables of the function.  */
#define HARD_FRAME_POINTER_REGNUM 6

/* Base register for access to local variables of the function.  */
#define FRAME_POINTER_REGNUM 20

/* First floating point reg */
#define FIRST_FLOAT_REG 8

/* First & last stack-like regs */
#define FIRST_STACK_REG FIRST_FLOAT_REG
#define LAST_STACK_REG (FIRST_FLOAT_REG + 7)

#define FIRST_SSE_REG (FRAME_POINTER_REGNUM + 1)
#define LAST_SSE_REG  (FIRST_SSE_REG + 7)

#define FIRST_MMX_REG  (LAST_SSE_REG + 1)
#define LAST_MMX_REG   (FIRST_MMX_REG + 7)

#define FIRST_REX_INT_REG  (LAST_MMX_REG + 1)
#define LAST_REX_INT_REG   (FIRST_REX_INT_REG + 7)

#define FIRST_REX_SSE_REG  (LAST_REX_INT_REG + 1)
#define LAST_REX_SSE_REG   (FIRST_REX_SSE_REG + 7)

/* Override this in other tm.h files to cope with various OS lossage
   requiring a frame pointer.  */
#ifndef SUBTARGET_FRAME_POINTER_REQUIRED
#define SUBTARGET_FRAME_POINTER_REQUIRED 0
#endif

/* Make sure we can access arbitrary call frames.  */
#define SETUP_FRAME_ADDRESSES()  ix86_setup_frame_addresses ()

/* Base register for access to arguments of the function.  */
#define ARG_POINTER_REGNUM 16

/* Register to hold the addressing base for position independent
   code access to data items.  We don't use PIC pointer for 64bit
   mode.  Define the regnum to dummy value to prevent gcc from
   pessimizing code dealing with EBX.

   To avoid clobbering a call-saved register unnecessarily, we renumber
   the pic register when possible.  The change is visible after the
   prologue has been emitted.  */

#define REAL_PIC_OFFSET_TABLE_REGNUM  BX_REG

#define PIC_OFFSET_TABLE_REGNUM				\
  ((TARGET_64BIT && ix86_cmodel == CM_SMALL_PIC)	\
   || !flag_pic ? INVALID_REGNUM			\
   : reload_completed ? REGNO (pic_offset_table_rtx)	\
   : REAL_PIC_OFFSET_TABLE_REGNUM)

#define GOT_SYMBOL_NAME "_GLOBAL_OFFSET_TABLE_"

/* This is overridden by <cygwin.h>.  */
#define MS_AGGREGATE_RETURN 0

#define KEEP_AGGREGATE_RETURN_POINTER 0

/* Define the classes of registers for register constraints in the
   machine description.  Also define ranges of constants.

   One of the classes must always be named ALL_REGS and include all hard regs.
   If there is more than one class, another class must be named NO_REGS
   and contain no registers.

   The name GENERAL_REGS must be the name of a class (or an alias for
   another name such as ALL_REGS).  This is the class of registers
   that is allowed by "g" or "r" in a register constraint.
   Also, registers outside this class are allocated only when
   instructions express preferences for them.

   The classes must be numbered in nondecreasing order; that is,
   a larger-numbered class must never be contained completely
   in a smaller-numbered class.

   For any two classes, it is very desirable that there be another
   class that represents their union.

   It might seem that class BREG is unnecessary, since no useful 386
   opcode needs reg %ebx.  But some systems pass args to the OS in ebx,
   and the "b" register constraint is useful in asms for syscalls.

   The flags, fpsr and fpcr registers are in no class.  */

enum reg_class
{
  NO_REGS,
  AREG, DREG, CREG, BREG, SIREG, DIREG,
  AD_REGS,			/* %eax/%edx for DImode */
  CLOBBERED_REGS,		/* call-clobbered integers */
  Q_REGS,			/* %eax %ebx %ecx %edx */
  NON_Q_REGS,			/* %esi %edi %ebp %esp */
  INDEX_REGS,			/* %eax %ebx %ecx %edx %esi %edi %ebp */
  LEGACY_REGS,			/* %eax %ebx %ecx %edx %esi %edi %ebp %esp */
  GENERAL_REGS,			/* %eax %ebx %ecx %edx %esi %edi %ebp %esp
				   %r8 %r9 %r10 %r11 %r12 %r13 %r14 %r15 */
  FP_TOP_REG, FP_SECOND_REG,	/* %st(0) %st(1) */
  FLOAT_REGS,
  SSE_FIRST_REG,
  SSE_REGS,
  MMX_REGS,
  FP_TOP_SSE_REGS,
  FP_SECOND_SSE_REGS,
  FLOAT_SSE_REGS,
  FLOAT_INT_REGS,
  INT_SSE_REGS,
  FLOAT_INT_SSE_REGS,
  ALL_REGS, LIM_REG_CLASSES
};

#define N_REG_CLASSES ((int) LIM_REG_CLASSES)

#define INTEGER_CLASS_P(CLASS) \
  reg_class_subset_p ((CLASS), GENERAL_REGS)
#define FLOAT_CLASS_P(CLASS) \
  reg_class_subset_p ((CLASS), FLOAT_REGS)
#define SSE_CLASS_P(CLASS) \
  reg_class_subset_p ((CLASS), SSE_REGS)
#define MMX_CLASS_P(CLASS) \
  ((CLASS) == MMX_REGS)
#define MAYBE_INTEGER_CLASS_P(CLASS) \
  reg_classes_intersect_p ((CLASS), GENERAL_REGS)
#define MAYBE_FLOAT_CLASS_P(CLASS) \
  reg_classes_intersect_p ((CLASS), FLOAT_REGS)
#define MAYBE_SSE_CLASS_P(CLASS) \
  reg_classes_intersect_p (SSE_REGS, (CLASS))
#define MAYBE_MMX_CLASS_P(CLASS) \
  reg_classes_intersect_p (MMX_REGS, (CLASS))

#define Q_CLASS_P(CLASS) \
  reg_class_subset_p ((CLASS), Q_REGS)

/* Give names of register classes as strings for dump file.  */

#define REG_CLASS_NAMES \
{  "NO_REGS",				\
   "AREG", "DREG", "CREG", "BREG",	\
   "SIREG", "DIREG",			\
   "AD_REGS",				\
   "CLOBBERED_REGS",			\
   "Q_REGS", "NON_Q_REGS",		\
   "INDEX_REGS",			\
   "LEGACY_REGS",			\
   "GENERAL_REGS",			\
   "FP_TOP_REG", "FP_SECOND_REG",	\
   "FLOAT_REGS",			\
   "SSE_FIRST_REG",			\
   "SSE_REGS",				\
   "MMX_REGS",				\
   "FP_TOP_SSE_REGS",			\
   "FP_SECOND_SSE_REGS",		\
   "FLOAT_SSE_REGS",			\
   "FLOAT_INT_REGS",			\
   "INT_SSE_REGS",			\
   "FLOAT_INT_SSE_REGS",		\
   "ALL_REGS" }

/* Define which registers fit in which classes.  This is an initializer
   for a vector of HARD_REG_SET of length N_REG_CLASSES.

   Note that the default setting of CLOBBERED_REGS is for 32-bit; this
   is adjusted by TARGET_CONDITIONAL_REGISTER_USAGE for the 64-bit ABI
   in effect.  */

#define REG_CLASS_CONTENTS						\
{     { 0x00,     0x0 },						\
      { 0x01,     0x0 }, { 0x02, 0x0 },	/* AREG, DREG */		\
      { 0x04,     0x0 }, { 0x08, 0x0 },	/* CREG, BREG */		\
      { 0x10,     0x0 }, { 0x20, 0x0 },	/* SIREG, DIREG */		\
      { 0x03,     0x0 },		/* AD_REGS */			\
      { 0x07,     0x0 },		/* CLOBBERED_REGS */		\
      { 0x0f,     0x0 },		/* Q_REGS */			\
  { 0x1100f0,  0x1fe0 },		/* NON_Q_REGS */		\
      { 0x7f,  0x1fe0 },		/* INDEX_REGS */		\
  { 0x1100ff,     0x0 },		/* LEGACY_REGS */		\
  { 0x1100ff,  0x1fe0 },		/* GENERAL_REGS */		\
     { 0x100,     0x0 }, { 0x0200, 0x0 },/* FP_TOP_REG, FP_SECOND_REG */\
    { 0xff00,     0x0 },		/* FLOAT_REGS */		\
  { 0x200000,     0x0 },		/* SSE_FIRST_REG */		\
{ 0x1fe00000,0x1fe000 },		/* SSE_REGS */			\
{ 0xe0000000,    0x1f },		/* MMX_REGS */			\
{ 0x1fe00100,0x1fe000 },		/* FP_TOP_SSE_REG */		\
{ 0x1fe00200,0x1fe000 },		/* FP_SECOND_SSE_REG */		\
{ 0x1fe0ff00,0x1fe000 },		/* FLOAT_SSE_REGS */		\
   { 0x1ffff,  0x1fe0 },		/* FLOAT_INT_REGS */		\
{ 0x1fe100ff,0x1fffe0 },		/* INT_SSE_REGS */		\
{ 0x1fe1ffff,0x1fffe0 },		/* FLOAT_INT_SSE_REGS */	\
{ 0xffffffff,0x1fffff }							\
}

/* The same information, inverted:
   Return the class number of the smallest class containing
   reg number REGNO.  This could be a conditional expression
   or could index an array.  */

#define REGNO_REG_CLASS(REGNO) (regclass_map[REGNO])

/* When this hook returns true for MODE, the compiler allows
   registers explicitly used in the rtl to be used as spill registers
   but prevents the compiler from extending the lifetime of these
   registers.  */
#define TARGET_SMALL_REGISTER_CLASSES_FOR_MODE_P hook_bool_mode_true

#define QI_REG_P(X) (REG_P (X) && REGNO (X) <= BX_REG)

#define GENERAL_REGNO_P(N) \
  ((N) <= STACK_POINTER_REGNUM || REX_INT_REGNO_P (N))

#define GENERAL_REG_P(X) \
  (REG_P (X) && GENERAL_REGNO_P (REGNO (X)))

#define ANY_QI_REG_P(X) (TARGET_64BIT ? GENERAL_REG_P(X) : QI_REG_P (X))

#define REX_INT_REGNO_P(N) \
  IN_RANGE ((N), FIRST_REX_INT_REG, LAST_REX_INT_REG)
#define REX_INT_REG_P(X) (REG_P (X) && REX_INT_REGNO_P (REGNO (X)))

#define FP_REG_P(X) (REG_P (X) && FP_REGNO_P (REGNO (X)))
#define FP_REGNO_P(N) IN_RANGE ((N), FIRST_STACK_REG, LAST_STACK_REG)
#define ANY_FP_REG_P(X) (REG_P (X) && ANY_FP_REGNO_P (REGNO (X)))
#define ANY_FP_REGNO_P(N) (FP_REGNO_P (N) || SSE_REGNO_P (N))

#define X87_FLOAT_MODE_P(MODE)	\
  (TARGET_80387 && ((MODE) == SFmode || (MODE) == DFmode || (MODE) == XFmode))

#define SSE_REG_P(N) (REG_P (N) && SSE_REGNO_P (REGNO (N)))
#define SSE_REGNO_P(N)						\
  (IN_RANGE ((N), FIRST_SSE_REG, LAST_SSE_REG)			\
   || REX_SSE_REGNO_P (N))

#define REX_SSE_REGNO_P(N) \
  IN_RANGE ((N), FIRST_REX_SSE_REG, LAST_REX_SSE_REG)

#define SSE_REGNO(N) \
  ((N) < 8 ? FIRST_SSE_REG + (N) : FIRST_REX_SSE_REG + (N) - 8)

#define SSE_FLOAT_MODE_P(MODE) \
  ((TARGET_SSE && (MODE) == SFmode) || (TARGET_SSE2 && (MODE) == DFmode))

#define FMA4_VEC_FLOAT_MODE_P(MODE) \
  (TARGET_FMA4 && ((MODE) == V4SFmode || (MODE) == V2DFmode \
		  || (MODE) == V8SFmode || (MODE) == V4DFmode))

#define MMX_REG_P(XOP) (REG_P (XOP) && MMX_REGNO_P (REGNO (XOP)))
#define MMX_REGNO_P(N) IN_RANGE ((N), FIRST_MMX_REG, LAST_MMX_REG)

#define STACK_REG_P(XOP) (REG_P (XOP) && STACK_REGNO_P (REGNO (XOP)))
#define STACK_REGNO_P(N) IN_RANGE ((N), FIRST_STACK_REG, LAST_STACK_REG)

#define STACK_TOP_P(XOP) (REG_P (XOP) && REGNO (XOP) == FIRST_STACK_REG)

#define CC_REG_P(X) (REG_P (X) && CC_REGNO_P (REGNO (X)))
#define CC_REGNO_P(X) ((X) == FLAGS_REG || (X) == FPSR_REG)

/* The class value for index registers, and the one for base regs.  */

#define INDEX_REG_CLASS INDEX_REGS
#define BASE_REG_CLASS GENERAL_REGS

/* Place additional restrictions on the register class to use when it
   is necessary to be able to hold a value of mode MODE in a reload
   register for which class CLASS would ordinarily be used.  */

#define LIMIT_RELOAD_CLASS(MODE, CLASS) 			\
  ((MODE) == QImode && !TARGET_64BIT				\
   && ((CLASS) == ALL_REGS || (CLASS) == GENERAL_REGS		\
       || (CLASS) == LEGACY_REGS || (CLASS) == INDEX_REGS)	\
   ? Q_REGS : (CLASS))

/* If we are copying between general and FP registers, we need a memory
   location. The same is true for SSE and MMX registers.  */
#define SECONDARY_MEMORY_NEEDED(CLASS1, CLASS2, MODE) \
  ix86_secondary_memory_needed ((CLASS1), (CLASS2), (MODE), 1)

/* Get_secondary_mem widens integral modes to BITS_PER_WORD.
   There is no need to emit full 64 bit move on 64 bit targets
   for integral modes that can be moved using 32 bit move.  */
#define SECONDARY_MEMORY_NEEDED_MODE(MODE)			\
  (GET_MODE_BITSIZE (MODE) < 32 && INTEGRAL_MODE_P (MODE)	\
   ? mode_for_size (32, GET_MODE_CLASS (MODE), 0)		\
   : MODE)

/* Return a class of registers that cannot change FROM mode to TO mode.  */

#define CANNOT_CHANGE_MODE_CLASS(FROM, TO, CLASS) \
  ix86_cannot_change_mode_class (FROM, TO, CLASS)

/* Stack layout; function entry, exit and calling.  */

/* Define this if pushing a word on the stack
   makes the stack pointer a smaller address.  */
#define STACK_GROWS_DOWNWARD

/* Define this to nonzero if the nominal address of the stack frame
   is at the high-address end of the local variables;
   that is, each additional local variable allocated
   goes at a more negative offset in the frame.  */
#define FRAME_GROWS_DOWNWARD 1

/* Offset within stack frame to start allocating local variables at.
   If FRAME_GROWS_DOWNWARD, this is the offset to the END of the
   first local allocated.  Otherwise, it is the offset to the BEGINNING
   of the first local allocated.  */
#define STARTING_FRAME_OFFSET 0

/* If we generate an insn to push BYTES bytes, this says how many the stack
   pointer really advances by.  On 386, we have pushw instruction that
   decrements by exactly 2 no matter what the position was, there is no pushb.

   But as CIE data alignment factor on this arch is -4 for 32bit targets
   and -8 for 64bit targets, we need to make sure all stack pointer adjustments
   are in multiple of 4 for 32bit targets and 8 for 64bit targets.  */

#define PUSH_ROUNDING(BYTES) \
  (((BYTES) + UNITS_PER_WORD - 1) & -UNITS_PER_WORD)

/* If defined, the maximum amount of space required for outgoing arguments
   will be computed and placed into the variable `crtl->outgoing_args_size'.
   No space will be pushed onto the stack for each call; instead, the
   function prologue should increase the stack frame size by this amount.  
   
   64-bit MS ABI seem to require 16 byte alignment everywhere except for
   function prologue and apilogue.  This is not possible without
   ACCUMULATE_OUTGOING_ARGS.  */

#define ACCUMULATE_OUTGOING_ARGS \
  (TARGET_ACCUMULATE_OUTGOING_ARGS || TARGET_64BIT_MS_ABI)

/* If defined, a C expression whose value is nonzero when we want to use PUSH
   instructions to pass outgoing arguments.  */

#define PUSH_ARGS (TARGET_PUSH_ARGS && !ACCUMULATE_OUTGOING_ARGS)

/* We want the stack and args grow in opposite directions, even if
   PUSH_ARGS is 0.  */
#define PUSH_ARGS_REVERSED 1

/* Offset of first parameter from the argument pointer register value.  */
#define FIRST_PARM_OFFSET(FNDECL) 0

/* Define this macro if functions should assume that stack space has been
   allocated for arguments even when their values are passed in registers.

   The value of this macro is the size, in bytes, of the area reserved for
   arguments passed in registers for the function represented by FNDECL.

   This space can be allocated by the caller, or be a part of the
   machine-dependent stack frame: `OUTGOING_REG_PARM_STACK_SPACE' says
   which.  */
#define REG_PARM_STACK_SPACE(FNDECL) ix86_reg_parm_stack_space (FNDECL)

#define OUTGOING_REG_PARM_STACK_SPACE(FNTYPE) \
  (TARGET_64BIT && ix86_function_type_abi (FNTYPE) == MS_ABI)

/* Define how to find the value returned by a library function
   assuming the value has mode MODE.  */

#define LIBCALL_VALUE(MODE) ix86_libcall_value (MODE)

/* Define the size of the result block used for communication between
   untyped_call and untyped_return.  The block contains a DImode value
   followed by the block used by fnsave and frstor.  */

#define APPLY_RESULT_SIZE (8+108)

/* 1 if N is a possible register number for function argument passing.  */
#define FUNCTION_ARG_REGNO_P(N) ix86_function_arg_regno_p (N)

/* Define a data type for recording info about an argument list
   during the scan of that argument list.  This data type should
   hold all necessary information about the function itself
   and about the args processed so far, enough to enable macros
   such as FUNCTION_ARG to determine where the next arg should go.  */

typedef struct ix86_args {
  int words;			/* # words passed so far */
  int nregs;			/* # registers available for passing */
  int regno;			/* next available register number */
  int fastcall;			/* fastcall or thiscall calling convention
				   is used */
  int sse_words;		/* # sse words passed so far */
  int sse_nregs;		/* # sse registers available for passing */
  int warn_avx;			/* True when we want to warn about AVX ABI.  */
  int warn_sse;			/* True when we want to warn about SSE ABI.  */
  int warn_mmx;			/* True when we want to warn about MMX ABI.  */
  int sse_regno;		/* next available sse register number */
  int mmx_words;		/* # mmx words passed so far */
  int mmx_nregs;		/* # mmx registers available for passing */
  int mmx_regno;		/* next available mmx register number */
  int maybe_vaarg;		/* true for calls to possibly vardic fncts.  */
  int caller;			/* true if it is caller.  */
  int float_in_sse;		/* Set to 1 or 2 for 32bit targets if
				   SFmode/DFmode arguments should be passed
				   in SSE registers.  Otherwise 0.  */
  enum calling_abi call_abi;	/* Set to SYSV_ABI for sysv abi. Otherwise
 				   MS_ABI for ms abi.  */
} CUMULATIVE_ARGS;

/* Initialize a variable CUM of type CUMULATIVE_ARGS
   for a call to a function whose data type is FNTYPE.
   For a library call, FNTYPE is 0.  */

#define INIT_CUMULATIVE_ARGS(CUM, FNTYPE, LIBNAME, FNDECL, N_NAMED_ARGS) \
  init_cumulative_args (&(CUM), (FNTYPE), (LIBNAME), (FNDECL), \
			(N_NAMED_ARGS) != -1)

/* Output assembler code to FILE to increment profiler label # LABELNO
   for profiling a function entry.  */

#define FUNCTION_PROFILER(FILE, LABELNO) x86_function_profiler (FILE, LABELNO)

#define MCOUNT_NAME "_mcount"

#define MCOUNT_NAME_BEFORE_PROLOGUE "__fentry__"

#define PROFILE_COUNT_REGISTER "edx"

/* EXIT_IGNORE_STACK should be nonzero if, when returning from a function,
   the stack pointer does not matter.  The value is tested only in
   functions that have frame pointers.
   No definition is equivalent to always zero.  */
/* Note on the 386 it might be more efficient not to define this since
   we have to restore it ourselves from the frame pointer, in order to
   use pop */

#define EXIT_IGNORE_STACK 1

/* Output assembler code for a block containing the constant parts
   of a trampoline, leaving space for the variable parts.  */

/* On the 386, the trampoline contains two instructions:
     mov #STATIC,ecx
     jmp FUNCTION
   The trampoline is generated entirely at runtime.  The operand of JMP
   is the address of FUNCTION relative to the instruction following the
   JMP (which is 5 bytes long).  */

/* Length in units of the trampoline for entering a nested function.  */

#define TRAMPOLINE_SIZE (TARGET_64BIT ? 24 : 10)

/* Definitions for register eliminations.

   This is an array of structures.  Each structure initializes one pair
   of eliminable registers.  The "from" register number is given first,
   followed by "to".  Eliminations of the same "from" register are listed
   in order of preference.

   There are two registers that can always be eliminated on the i386.
   The frame pointer and the arg pointer can be replaced by either the
   hard frame pointer or to the stack pointer, depending upon the
   circumstances.  The hard frame pointer is not used before reload and
   so it is not eligible for elimination.  */

#define ELIMINABLE_REGS					\
{{ ARG_POINTER_REGNUM, STACK_POINTER_REGNUM},		\
 { ARG_POINTER_REGNUM, HARD_FRAME_POINTER_REGNUM},	\
 { FRAME_POINTER_REGNUM, STACK_POINTER_REGNUM},		\
 { FRAME_POINTER_REGNUM, HARD_FRAME_POINTER_REGNUM}}	\

/* Define the offset between two registers, one to be eliminated, and the other
   its replacement, at the start of a routine.  */

#define INITIAL_ELIMINATION_OFFSET(FROM, TO, OFFSET) \
  ((OFFSET) = ix86_initial_elimination_offset ((FROM), (TO)))

/* Addressing modes, and classification of registers for them.  */

/* Macros to check register numbers against specific register classes.  */

/* These assume that REGNO is a hard or pseudo reg number.
   They give nonzero only if REGNO is a hard reg of the suitable class
   or a pseudo reg currently allocated to a suitable hard reg.
   Since they use reg_renumber, they are safe only once reg_renumber
   has been allocated, which happens in local-alloc.c.  */

#define REGNO_OK_FOR_INDEX_P(REGNO) 					\
  ((REGNO) < STACK_POINTER_REGNUM 					\
   || REX_INT_REGNO_P (REGNO)						\
   || (unsigned) reg_renumber[(REGNO)] < STACK_POINTER_REGNUM		\
   || REX_INT_REGNO_P ((unsigned) reg_renumber[(REGNO)]))

#define REGNO_OK_FOR_BASE_P(REGNO) 					\
  (GENERAL_REGNO_P (REGNO)						\
   || (REGNO) == ARG_POINTER_REGNUM 					\
   || (REGNO) == FRAME_POINTER_REGNUM 					\
   || GENERAL_REGNO_P ((unsigned) reg_renumber[(REGNO)]))

/* The macros REG_OK_FOR..._P assume that the arg is a REG rtx
   and check its validity for a certain class.
   We have two alternate definitions for each of them.
   The usual definition accepts all pseudo regs; the other rejects
   them unless they have been allocated suitable hard regs.
   The symbol REG_OK_STRICT causes the latter definition to be used.

   Most source files want to accept pseudo regs in the hope that
   they will get allocated to the class that the insn wants them to be in.
   Source files for reload pass need to be strict.
   After reload, it makes no difference, since pseudo regs have
   been eliminated by then.  */


/* Non strict versions, pseudos are ok.  */
#define REG_OK_FOR_INDEX_NONSTRICT_P(X)					\
  (REGNO (X) < STACK_POINTER_REGNUM					\
   || REX_INT_REGNO_P (REGNO (X))					\
   || REGNO (X) >= FIRST_PSEUDO_REGISTER)

#define REG_OK_FOR_BASE_NONSTRICT_P(X)					\
  (GENERAL_REGNO_P (REGNO (X))						\
   || REGNO (X) == ARG_POINTER_REGNUM					\
   || REGNO (X) == FRAME_POINTER_REGNUM 				\
   || REGNO (X) >= FIRST_PSEUDO_REGISTER)

/* Strict versions, hard registers only */
#define REG_OK_FOR_INDEX_STRICT_P(X) REGNO_OK_FOR_INDEX_P (REGNO (X))
#define REG_OK_FOR_BASE_STRICT_P(X)  REGNO_OK_FOR_BASE_P (REGNO (X))

#ifndef REG_OK_STRICT
#define REG_OK_FOR_INDEX_P(X)  REG_OK_FOR_INDEX_NONSTRICT_P (X)
#define REG_OK_FOR_BASE_P(X)   REG_OK_FOR_BASE_NONSTRICT_P (X)

#else
#define REG_OK_FOR_INDEX_P(X)  REG_OK_FOR_INDEX_STRICT_P (X)
#define REG_OK_FOR_BASE_P(X)   REG_OK_FOR_BASE_STRICT_P (X)
#endif

/* TARGET_LEGITIMATE_ADDRESS_P recognizes an RTL expression
   that is a valid memory address for an instruction.
   The MODE argument is the machine mode for the MEM expression
   that wants to use this address.

   The other macros defined here are used only in TARGET_LEGITIMATE_ADDRESS_P,
   except for CONSTANT_ADDRESS_P which is usually machine-independent.

   See legitimize_pic_address in i386.c for details as to what
   constitutes a legitimate address when -fpic is used.  */

#define MAX_REGS_PER_ADDRESS 2

#define CONSTANT_ADDRESS_P(X)  constant_address_p (X)

/* Try a machine-dependent way of reloading an illegitimate address
   operand.  If we find one, push the reload and jump to WIN.  This
   macro is used in only one place: `find_reloads_address' in reload.c.  */

#define LEGITIMIZE_RELOAD_ADDRESS(X, MODE, OPNUM, TYPE, INDL, WIN)	\
do {									\
  if (ix86_legitimize_reload_address ((X), (MODE), (OPNUM),		\
				      (int)(TYPE), (INDL)))		\
    goto WIN;								\
} while (0)

/* If defined, a C expression to determine the base term of address X.
   This macro is used in only one place: `find_base_term' in alias.c.

   It is always safe for this macro to not be defined.  It exists so
   that alias analysis can understand machine-dependent addresses.

   The typical use of this macro is to handle addresses containing
   a label_ref or symbol_ref within an UNSPEC.  */

#define FIND_BASE_TERM(X) ix86_find_base_term (X)

/* Nonzero if the constant value X is a legitimate general operand
   when generating PIC code.  It is given that flag_pic is on and
   that X satisfies CONSTANT_P or is a CONST_DOUBLE.  */

#define LEGITIMATE_PIC_OPERAND_P(X) legitimate_pic_operand_p (X)

#define SYMBOLIC_CONST(X)	\
  (GET_CODE (X) == SYMBOL_REF						\
   || GET_CODE (X) == LABEL_REF						\
   || (GET_CODE (X) == CONST && symbolic_reference_mentioned_p (X)))

/* Max number of args passed in registers.  If this is more than 3, we will
   have problems with ebx (register #4), since it is a caller save register and
   is also used as the pic register in ELF.  So for now, don't allow more than
   3 registers to be passed in registers.  */

/* Abi specific values for REGPARM_MAX and SSE_REGPARM_MAX */
#define X86_64_REGPARM_MAX 6
#define X86_64_MS_REGPARM_MAX 4

#define X86_32_REGPARM_MAX 3

#define REGPARM_MAX							\
  (TARGET_64BIT								\
   ? (TARGET_64BIT_MS_ABI						\
      ? X86_64_MS_REGPARM_MAX						\
      : X86_64_REGPARM_MAX)						\
   : X86_32_REGPARM_MAX)

#define X86_64_SSE_REGPARM_MAX 8
#define X86_64_MS_SSE_REGPARM_MAX 4

#define X86_32_SSE_REGPARM_MAX (TARGET_SSE ? (TARGET_MACHO ? 4 : 3) : 0)

#define SSE_REGPARM_MAX							\
  (TARGET_64BIT								\
   ? (TARGET_64BIT_MS_ABI						\
      ? X86_64_MS_SSE_REGPARM_MAX					\
      : X86_64_SSE_REGPARM_MAX)						\
   : X86_32_SSE_REGPARM_MAX)

#define MMX_REGPARM_MAX (TARGET_64BIT ? 0 : (TARGET_MMX ? 3 : 0))

/* Specify the machine mode that this machine uses
   for the index in the tablejump instruction.  */
#define CASE_VECTOR_MODE \
 (!TARGET_LP64 || (flag_pic && ix86_cmodel != CM_LARGE_PIC) ? SImode : DImode)

/* Define this as 1 if `char' should by default be signed; else as 0.  */
#define DEFAULT_SIGNED_CHAR 1

/* Max number of bytes we can move from memory to memory
   in one reasonably fast instruction.  */
#define MOVE_MAX 16

/* MOVE_MAX_PIECES is the number of bytes at a time which we can
   move efficiently, as opposed to  MOVE_MAX which is the maximum
   number of bytes we can move with a single instruction.  */
#define MOVE_MAX_PIECES UNITS_PER_WORD

/* If a memory-to-memory move would take MOVE_RATIO or more simple
   move-instruction pairs, we will do a movmem or libcall instead.
   Increasing the value will always make code faster, but eventually
   incurs high cost in increased code size.

   If you don't define this, a reasonable default is used.  */

#define MOVE_RATIO(speed) ((speed) ? ix86_cost->move_ratio : 3)

/* If a clear memory operation would take CLEAR_RATIO or more simple
   move-instruction sequences, we will do a clrmem or libcall instead.  */

#define CLEAR_RATIO(speed) ((speed) ? MIN (6, ix86_cost->move_ratio) : 2)

/* Define if shifts truncate the shift count which implies one can
   omit a sign-extension or zero-extension of a shift count.

   On i386, shifts do truncate the count.  But bit test instructions
   take the modulo of the bit offset operand.  */

/* #define SHIFT_COUNT_TRUNCATED */

/* Value is 1 if truncating an integer of INPREC bits to OUTPREC bits
   is done just by pretending it is already truncated.  */
#define TRULY_NOOP_TRUNCATION(OUTPREC, INPREC) 1

/* A macro to update M and UNSIGNEDP when an object whose type is
   TYPE and which has the specified mode and signedness is to be
   stored in a register.  This macro is only called when TYPE is a
   scalar type.

   On i386 it is sometimes useful to promote HImode and QImode
   quantities to SImode.  The choice depends on target type.  */

#define PROMOTE_MODE(MODE, UNSIGNEDP, TYPE) 		\
do {							\
  if (((MODE) == HImode && TARGET_PROMOTE_HI_REGS)	\
      || ((MODE) == QImode && TARGET_PROMOTE_QI_REGS))	\
    (MODE) = SImode;					\
} while (0)

/* Specify the machine mode that pointers have.
   After generation of rtl, the compiler makes no further distinction
   between pointers and any other objects of this machine mode.  */
#define Pmode (TARGET_64BIT ? DImode : SImode)

/* A C expression whose value is zero if pointers that need to be extended
   from being `POINTER_SIZE' bits wide to `Pmode' are sign-extended and
   greater then zero if they are zero-extended and less then zero if the
   ptr_extend instruction should be used.  */

#define POINTERS_EXTEND_UNSIGNED 1

/* A function address in a call instruction
   is a byte address (for indexing purposes)
   so give the MEM rtx a byte's mode.  */
#define FUNCTION_MODE QImode


/* A C expression for the cost of a branch instruction.  A value of 1
   is the default; other values are interpreted relative to that.  */

#define BRANCH_COST(speed_p, predictable_p) \
  (!(speed_p) ? 2 : (predictable_p) ? 0 : ix86_branch_cost)

/* Define this macro as a C expression which is nonzero if accessing
   less than a word of memory (i.e. a `char' or a `short') is no
   faster than accessing a word of memory, i.e., if such access
   require more than one instruction or if there is no difference in
   cost between byte and (aligned) word loads.

   When this macro is not defined, the compiler will access a field by
   finding the smallest containing object; when it is defined, a
   fullword load will be used if alignment permits.  Unless bytes
   accesses are faster than word accesses, using word accesses is
   preferable since it may eliminate subsequent memory access if
   subsequent accesses occur to other fields in the same word of the
   structure, but to different bytes.  */

#define SLOW_BYTE_ACCESS 0

/* Nonzero if access to memory by shorts is slow and undesirable.  */
#define SLOW_SHORT_ACCESS 0

/* Define this macro to be the value 1 if unaligned accesses have a
   cost many times greater than aligned accesses, for example if they
   are emulated in a trap handler.

   When this macro is nonzero, the compiler will act as if
   `STRICT_ALIGNMENT' were nonzero when generating code for block
   moves.  This can cause significantly more instructions to be
   produced.  Therefore, do not set this macro nonzero if unaligned
   accesses only add a cycle or two to the time for a memory access.

   If the value of this macro is always zero, it need not be defined.  */

/* #define SLOW_UNALIGNED_ACCESS(MODE, ALIGN) 0 */

/* Define this macro if it is as good or better to call a constant
   function address than to call an address kept in a register.

   Desirable on the 386 because a CALL with a constant address is
   faster than one with a register address.  */

#define NO_FUNCTION_CSE

/* Given a comparison code (EQ, NE, etc.) and the first operand of a COMPARE,
   return the mode to be used for the comparison.

   For floating-point equality comparisons, CCFPEQmode should be used.
   VOIDmode should be used in all other cases.

   For integer comparisons against zero, reduce to CCNOmode or CCZmode if
   possible, to allow for more combinations.  */

#define SELECT_CC_MODE(OP, X, Y) ix86_cc_mode ((OP), (X), (Y))

/* Return nonzero if MODE implies a floating point inequality can be
   reversed.  */

#define REVERSIBLE_CC_MODE(MODE) 1

/* A C expression whose value is reversed condition code of the CODE for
   comparison done in CC_MODE mode.  */
#define REVERSE_CONDITION(CODE, MODE) ix86_reverse_condition ((CODE), (MODE))


/* Control the assembler format that we output, to the extent
   this does not vary between assemblers.  */

/* How to refer to registers in assembler output.
   This sequence is indexed by compiler's hard-register-number (see above).  */

/* In order to refer to the first 8 regs as 32-bit regs, prefix an "e".
   For non floating point regs, the following are the HImode names.

   For float regs, the stack top is sometimes referred to as "%st(0)"
   instead of just "%st".  TARGET_PRINT_OPERAND handles this with the
   "y" code.  */

#define HI_REGISTER_NAMES						\
{"ax","dx","cx","bx","si","di","bp","sp",				\
 "st","st(1)","st(2)","st(3)","st(4)","st(5)","st(6)","st(7)",		\
 "argp", "flags", "fpsr", "fpcr", "frame",				\
 "xmm0","xmm1","xmm2","xmm3","xmm4","xmm5","xmm6","xmm7",		\
 "mm0", "mm1", "mm2", "mm3", "mm4", "mm5", "mm6", "mm7",		\
 "r8", "r9", "r10", "r11", "r12", "r13", "r14", "r15",			\
 "xmm8", "xmm9", "xmm10", "xmm11", "xmm12", "xmm13", "xmm14", "xmm15"}

#define REGISTER_NAMES HI_REGISTER_NAMES

/* Table of additional register names to use in user input.  */

#define ADDITIONAL_REGISTER_NAMES \
{ { "eax", 0 }, { "edx", 1 }, { "ecx", 2 }, { "ebx", 3 },	\
  { "esi", 4 }, { "edi", 5 }, { "ebp", 6 }, { "esp", 7 },	\
  { "rax", 0 }, { "rdx", 1 }, { "rcx", 2 }, { "rbx", 3 },	\
  { "rsi", 4 }, { "rdi", 5 }, { "rbp", 6 }, { "rsp", 7 },	\
  { "al", 0 }, { "dl", 1 }, { "cl", 2 }, { "bl", 3 },		\
  { "ah", 0 }, { "dh", 1 }, { "ch", 2 }, { "bh", 3 } }

/* Note we are omitting these since currently I don't know how
to get gcc to use these, since they want the same but different
number as al, and ax.
*/

#define QI_REGISTER_NAMES \
{"al", "dl", "cl", "bl", "sil", "dil", "bpl", "spl",}

/* These parallel the array above, and can be used to access bits 8:15
   of regs 0 through 3.  */

#define QI_HIGH_REGISTER_NAMES \
{"ah", "dh", "ch", "bh", }

/* How to renumber registers for dbx and gdb.  */

#define DBX_REGISTER_NUMBER(N) \
  (TARGET_64BIT ? dbx64_register_map[(N)] : dbx_register_map[(N)])

extern int const dbx_register_map[FIRST_PSEUDO_REGISTER];
extern int const dbx64_register_map[FIRST_PSEUDO_REGISTER];
extern int const svr4_dbx_register_map[FIRST_PSEUDO_REGISTER];

/* Before the prologue, RA is at 0(%esp).  */
#define INCOMING_RETURN_ADDR_RTX \
  gen_rtx_MEM (VOIDmode, gen_rtx_REG (VOIDmode, STACK_POINTER_REGNUM))

/* After the prologue, RA is at -4(AP) in the current frame.  */
#define RETURN_ADDR_RTX(COUNT, FRAME)					   \
  ((COUNT) == 0								   \
   ? gen_rtx_MEM (Pmode, plus_constant (arg_pointer_rtx, -UNITS_PER_WORD)) \
   : gen_rtx_MEM (Pmode, plus_constant (FRAME, UNITS_PER_WORD)))

/* PC is dbx register 8; let's use that column for RA.  */
#define DWARF_FRAME_RETURN_COLUMN 	(TARGET_64BIT ? 16 : 8)

/* Before the prologue, the top of the frame is at 4(%esp).  */
#define INCOMING_FRAME_SP_OFFSET UNITS_PER_WORD

/* Describe how we implement __builtin_eh_return.  */
#define EH_RETURN_DATA_REGNO(N)	((N) <= DX_REG ? (N) : INVALID_REGNUM)
#define EH_RETURN_STACKADJ_RTX	gen_rtx_REG (Pmode, CX_REG)


/* Select a format to encode pointers in exception handling data.  CODE
   is 0 for data, 1 for code labels, 2 for function pointers.  GLOBAL is
   true if the symbol may be affected by dynamic relocations.

   ??? All x86 object file formats are capable of representing this.
   After all, the relocation needed is the same as for the call insn.
   Whether or not a particular assembler allows us to enter such, I
   guess we'll have to see.  */
#define ASM_PREFERRED_EH_DATA_FORMAT(CODE, GLOBAL)       		\
  asm_preferred_eh_data_format ((CODE), (GLOBAL))

/* This is how to output an insn to push a register on the stack.
   It need not be very fast code.  */

#define ASM_OUTPUT_REG_PUSH(FILE, REGNO)  \
do {									\
  if (TARGET_64BIT)							\
    asm_fprintf ((FILE), "\tpush{q}\t%%r%s\n",				\
		 reg_names[(REGNO)] + (REX_INT_REGNO_P (REGNO) != 0));	\
  else									\
    asm_fprintf ((FILE), "\tpush{l}\t%%e%s\n", reg_names[(REGNO)]);	\
} while (0)

/* This is how to output an insn to pop a register from the stack.
   It need not be very fast code.  */

#define ASM_OUTPUT_REG_POP(FILE, REGNO)  \
do {									\
  if (TARGET_64BIT)							\
    asm_fprintf ((FILE), "\tpop{q}\t%%r%s\n",				\
		 reg_names[(REGNO)] + (REX_INT_REGNO_P (REGNO) != 0));	\
  else									\
    asm_fprintf ((FILE), "\tpop{l}\t%%e%s\n", reg_names[(REGNO)]);	\
} while (0)

/* This is how to output an element of a case-vector that is absolute.  */

#define ASM_OUTPUT_ADDR_VEC_ELT(FILE, VALUE)  \
  ix86_output_addr_vec_elt ((FILE), (VALUE))

/* This is how to output an element of a case-vector that is relative.  */

#define ASM_OUTPUT_ADDR_DIFF_ELT(FILE, BODY, VALUE, REL) \
  ix86_output_addr_diff_elt ((FILE), (VALUE), (REL))

/* When we see %v, we will print the 'v' prefix if TARGET_AVX is true.  */

#define ASM_OUTPUT_AVX_PREFIX(STREAM, PTR)	\
{						\
  if ((PTR)[0] == '%' && (PTR)[1] == 'v')	\
    (PTR) += TARGET_AVX ? 1 : 2;		\
}

/* A C statement or statements which output an assembler instruction
   opcode to the stdio stream STREAM.  The macro-operand PTR is a
   variable of type `char *' which points to the opcode name in
   its "internal" form--the form that is written in the machine
   description.  */

#define ASM_OUTPUT_OPCODE(STREAM, PTR) \
  ASM_OUTPUT_AVX_PREFIX ((STREAM), (PTR))

/* A C statement to output to the stdio stream FILE an assembler
   command to pad the location counter to a multiple of 1<<LOG
   bytes if it is within MAX_SKIP bytes.  */

#ifdef HAVE_GAS_MAX_SKIP_P2ALIGN
#undef  ASM_OUTPUT_MAX_SKIP_PAD
#define ASM_OUTPUT_MAX_SKIP_PAD(FILE, LOG, MAX_SKIP)			\
  if ((LOG) != 0)							\
    {									\
      if ((MAX_SKIP) == 0)						\
        fprintf ((FILE), "\t.p2align %d\n", (LOG));			\
      else								\
        fprintf ((FILE), "\t.p2align %d,,%d\n", (LOG), (MAX_SKIP));	\
    }
#endif

/* Write the extra assembler code needed to declare a function
   properly.  */

#undef ASM_OUTPUT_FUNCTION_LABEL
#define ASM_OUTPUT_FUNCTION_LABEL(FILE, NAME, DECL) \
  ix86_asm_output_function_label (FILE, NAME, DECL)

/* Under some conditions we need jump tables in the text section,
   because the assembler cannot handle label differences between
   sections.  This is the case for x86_64 on Mach-O for example.  */

#define JUMP_TABLES_IN_TEXT_SECTION \
  (flag_pic && ((TARGET_MACHO && TARGET_64BIT) \
   || (!TARGET_64BIT && !HAVE_AS_GOTOFF_IN_DATA)))

/* Switch to init or fini section via SECTION_OP, emit a call to FUNC,
   and switch back.  For x86 we do this only to save a few bytes that
   would otherwise be unused in the text section.  */
#define CRT_MKSTR2(VAL) #VAL
#define CRT_MKSTR(x) CRT_MKSTR2(x)

#define CRT_CALL_STATIC_FUNCTION(SECTION_OP, FUNC)		\
   asm (SECTION_OP "\n\t"					\
	"call " CRT_MKSTR(__USER_LABEL_PREFIX__) #FUNC "\n"	\
	TEXT_SECTION_ASM_OP);

/* Which processor to tune code generation for.  */

enum processor_type
{
  PROCESSOR_I386 = 0,			/* 80386 */
  PROCESSOR_I486,			/* 80486DX, 80486SX, 80486DX[24] */
  PROCESSOR_PENTIUM,
  PROCESSOR_PENTIUMPRO,
  PROCESSOR_GEODE,
  PROCESSOR_K6,
  PROCESSOR_ATHLON,
  PROCESSOR_PENTIUM4,
  PROCESSOR_K8,
  PROCESSOR_NOCONA,
  PROCESSOR_CORE2_32,
  PROCESSOR_CORE2_64,
  PROCESSOR_COREI7_32,
  PROCESSOR_COREI7_64,
  PROCESSOR_GENERIC32,
  PROCESSOR_GENERIC64,
  PROCESSOR_AMDFAM10,
  PROCESSOR_BDVER1,
  PROCESSOR_BDVER2,
  PROCESSOR_BTVER1,
  PROCESSOR_ATOM,
  PROCESSOR_max
};

extern enum processor_type ix86_tune;
extern enum processor_type ix86_arch;

/* Size of the RED_ZONE area.  */
#define RED_ZONE_SIZE 128
/* Reserved area of the red zone for temporaries.  */
#define RED_ZONE_RESERVE 8

extern unsigned int ix86_preferred_stack_boundary;
extern unsigned int ix86_incoming_stack_boundary;

/* Smallest class containing REGNO.  */
extern enum reg_class const regclass_map[FIRST_PSEUDO_REGISTER];

enum ix86_fpcmp_strategy {
  IX86_FPCMP_SAHF,
  IX86_FPCMP_COMI,
  IX86_FPCMP_ARITH
};

/* To properly truncate FP values into integers, we need to set i387 control
   word.  We can't emit proper mode switching code before reload, as spills
   generated by reload may truncate values incorrectly, but we still can avoid
   redundant computation of new control word by the mode switching pass.
   The fldcw instructions are still emitted redundantly, but this is probably
   not going to be noticeable problem, as most CPUs do have fast path for
   the sequence.

   The machinery is to emit simple truncation instructions and split them
   before reload to instructions having USEs of two memory locations that
   are filled by this code to old and new control word.

   Post-reload pass may be later used to eliminate the redundant fildcw if
   needed.  */

enum ix86_entity
{
  I387_TRUNC = 0,
  I387_FLOOR,
  I387_CEIL,
  I387_MASK_PM,
  MAX_386_ENTITIES
};

enum ix86_stack_slot
{
  SLOT_VIRTUAL = 0,
  SLOT_TEMP,
  SLOT_CW_STORED,
  SLOT_CW_TRUNC,
  SLOT_CW_FLOOR,
  SLOT_CW_CEIL,
  SLOT_CW_MASK_PM,
  MAX_386_STACK_LOCALS
};

/* Define this macro if the port needs extra instructions inserted
   for mode switching in an optimizing compilation.  */

#define OPTIMIZE_MODE_SWITCHING(ENTITY) \
   ix86_optimize_mode_switching[(ENTITY)]

/* If you define `OPTIMIZE_MODE_SWITCHING', you have to define this as
   initializer for an array of integers.  Each initializer element N
   refers to an entity that needs mode switching, and specifies the
   number of different modes that might need to be set for this
   entity.  The position of the initializer in the initializer -
   starting counting at zero - determines the integer that is used to
   refer to the mode-switched entity in question.  */

#define NUM_MODES_FOR_MODE_SWITCHING \
   { I387_CW_ANY, I387_CW_ANY, I387_CW_ANY, I387_CW_ANY }

/* ENTITY is an integer specifying a mode-switched entity.  If
   `OPTIMIZE_MODE_SWITCHING' is defined, you must define this macro to
   return an integer value not larger than the corresponding element
   in `NUM_MODES_FOR_MODE_SWITCHING', to denote the mode that ENTITY
   must be switched into prior to the execution of INSN. */

#define MODE_NEEDED(ENTITY, I) ix86_mode_needed ((ENTITY), (I))

/* This macro specifies the order in which modes for ENTITY are
   processed.  0 is the highest priority.  */

#define MODE_PRIORITY_TO_MODE(ENTITY, N) (N)

/* Generate one or more insns to set ENTITY to MODE.  HARD_REG_LIVE
   is the set of hard registers live at the point where the insn(s)
   are to be inserted.  */

#define EMIT_MODE_SET(ENTITY, MODE, HARD_REGS_LIVE) 			\
  ((MODE) != I387_CW_ANY && (MODE) != I387_CW_UNINITIALIZED		\
   ? emit_i387_cw_initialization (MODE), 0				\
   : 0)


/* Avoid renaming of stack registers, as doing so in combination with
   scheduling just increases amount of live registers at time and in
   the turn amount of fxch instructions needed.

   ??? Maybe Pentium chips benefits from renaming, someone can try....  */

#define HARD_REGNO_RENAME_OK(SRC, TARGET)  \
  (! IN_RANGE ((SRC), FIRST_STACK_REG, LAST_STACK_REG))


#define FASTCALL_PREFIX '@'

/* Machine specific frame tracking during prologue/epilogue generation.  */

#ifndef USED_FOR_TARGET
struct GTY(()) machine_frame_state
{
  /* This pair tracks the currently active CFA as reg+offset.  When reg
     is drap_reg, we don't bother trying to record here the real CFA when
     it might really be a DW_CFA_def_cfa_expression.  */
  rtx cfa_reg;
  HOST_WIDE_INT cfa_offset;

  /* The current offset (canonically from the CFA) of ESP and EBP.
     When stack frame re-alignment is active, these may not be relative
     to the CFA.  However, in all cases they are relative to the offsets
     of the saved registers stored in ix86_frame.  */
  HOST_WIDE_INT sp_offset;
  HOST_WIDE_INT fp_offset;

  /* The size of the red-zone that may be assumed for the purposes of
     eliding register restore notes in the epilogue.  This may be zero
     if no red-zone is in effect, or may be reduced from the real
     red-zone value by a maximum runtime stack re-alignment value.  */
  int red_zone_offset;

  /* Indicate whether each of ESP, EBP or DRAP currently holds a valid
     value within the frame.  If false then the offset above should be
     ignored.  Note that DRAP, if valid, *always* points to the CFA and
     thus has an offset of zero.  */
  BOOL_BITFIELD sp_valid : 1;
  BOOL_BITFIELD fp_valid : 1;
  BOOL_BITFIELD drap_valid : 1;

  /* Indicate whether the local stack frame has been re-aligned.  When
     set, the SP/FP offsets above are relative to the aligned frame
     and not the CFA.  */
  BOOL_BITFIELD realigned : 1;
};

/* Private to winnt.c.  */
struct seh_frame_state;

struct GTY(()) machine_function {
  struct stack_local_entry *stack_locals;
  const char *some_ld_name;
  int varargs_gpr_size;
  int varargs_fpr_size;
  int optimize_mode_switching[MAX_386_ENTITIES];

  /* Number of saved registers USE_FAST_PROLOGUE_EPILOGUE
     has been computed for.  */
  int use_fast_prologue_epilogue_nregs;

  /* For -fsplit-stack support: A stack local which holds a pointer to
     the stack arguments for a function with a variable number of
     arguments.  This is set at the start of the function and is used
     to initialize the overflow_arg_area field of the va_list
     structure.  */
  rtx split_stack_varargs_pointer;

  /* This value is used for amd64 targets and specifies the current abi
     to be used. MS_ABI means ms abi. Otherwise SYSV_ABI means sysv abi.  */
  ENUM_BITFIELD(calling_abi) call_abi : 8;

  /* Nonzero if the function accesses a previous frame.  */
  BOOL_BITFIELD accesses_prev_frame : 1;

  /* Nonzero if the function requires a CLD in the prologue.  */
  BOOL_BITFIELD needs_cld : 1;

  /* Set by ix86_compute_frame_layout and used by prologue/epilogue
     expander to determine the style used.  */
  BOOL_BITFIELD use_fast_prologue_epilogue : 1;

  /* If true, the current function needs the default PIC register, not
     an alternate register (on x86) and must not use the red zone (on
     x86_64), even if it's a leaf function.  We don't want the
     function to be regarded as non-leaf because TLS calls need not
     affect register allocation.  This flag is set when a TLS call
     instruction is expanded within a function, and never reset, even
     if all such instructions are optimized away.  Use the
     ix86_current_function_calls_tls_descriptor macro for a better
     approximation.  */
  BOOL_BITFIELD tls_descriptor_call_expanded_p : 1;

  /* If true, the current function has a STATIC_CHAIN is placed on the
     stack below the return address.  */
  BOOL_BITFIELD static_chain_on_stack : 1;

  /* Nonzero if caller passes 256bit AVX modes.  */
  BOOL_BITFIELD caller_pass_avx256_p : 1;

  /* Nonzero if caller returns 256bit AVX modes.  */
  BOOL_BITFIELD caller_return_avx256_p : 1;

  /* Nonzero if the current callee passes 256bit AVX modes.  */
  BOOL_BITFIELD callee_pass_avx256_p : 1;

  /* Nonzero if the current callee returns 256bit AVX modes.  */
  BOOL_BITFIELD callee_return_avx256_p : 1;

  /* Nonzero if rescan vzerouppers in the current function is needed.  */
  BOOL_BITFIELD rescan_vzeroupper_p : 1;

  /* During prologue/epilogue generation, the current frame state.
     Otherwise, the frame state at the end of the prologue.  */
  struct machine_frame_state fs;

  /* During SEH output, this is non-null.  */
  struct seh_frame_state * GTY((skip(""))) seh;
};
#endif

#define ix86_stack_locals (cfun->machine->stack_locals)
#define ix86_varargs_gpr_size (cfun->machine->varargs_gpr_size)
#define ix86_varargs_fpr_size (cfun->machine->varargs_fpr_size)
#define ix86_optimize_mode_switching (cfun->machine->optimize_mode_switching)
#define ix86_current_function_needs_cld (cfun->machine->needs_cld)
#define ix86_tls_descriptor_calls_expanded_in_cfun \
  (cfun->machine->tls_descriptor_call_expanded_p)
/* Since tls_descriptor_call_expanded is not cleared, even if all TLS
   calls are optimized away, we try to detect cases in which it was
   optimized away.  Since such instructions (use (reg REG_SP)), we can
   verify whether there's any such instruction live by testing that
   REG_SP is live.  */
#define ix86_current_function_calls_tls_descriptor \
  (ix86_tls_descriptor_calls_expanded_in_cfun && df_regs_ever_live_p (SP_REG))
#define ix86_static_chain_on_stack (cfun->machine->static_chain_on_stack)

/* Control behavior of x86_file_start.  */
#define X86_FILE_START_VERSION_DIRECTIVE false
#define X86_FILE_START_FLTUSED false

/* Flag to mark data that is in the large address area.  */
#define SYMBOL_FLAG_FAR_ADDR		(SYMBOL_FLAG_MACH_DEP << 0)
#define SYMBOL_REF_FAR_ADDR_P(X)	\
	((SYMBOL_REF_FLAGS (X) & SYMBOL_FLAG_FAR_ADDR) != 0)

/* Flags to mark dllimport/dllexport.  Used by PE ports, but handy to
   have defined always, to avoid ifdefing.  */
#define SYMBOL_FLAG_DLLIMPORT		(SYMBOL_FLAG_MACH_DEP << 1)
#define SYMBOL_REF_DLLIMPORT_P(X) \
	((SYMBOL_REF_FLAGS (X) & SYMBOL_FLAG_DLLIMPORT) != 0)

#define SYMBOL_FLAG_DLLEXPORT		(SYMBOL_FLAG_MACH_DEP << 2)
#define SYMBOL_REF_DLLEXPORT_P(X) \
	((SYMBOL_REF_FLAGS (X) & SYMBOL_FLAG_DLLEXPORT) != 0)

extern void debug_ready_dispatch (void);
extern void debug_dispatch_window (int);

/* The value at zero is only defined for the BMI instructions
   LZCNT and TZCNT, not the BSR/BSF insns in the original isa.  */
#define CTZ_DEFINED_VALUE_AT_ZERO(MODE, VALUE) \
	((VALUE) = GET_MODE_BITSIZE (MODE), TARGET_BMI)
#define CLZ_DEFINED_VALUE_AT_ZERO(MODE, VALUE) \
	((VALUE) = GET_MODE_BITSIZE (MODE), TARGET_LZCNT)


/* Flags returned by ix86_get_callcvt ().  */
#define IX86_CALLCVT_CDECL	0x1
#define IX86_CALLCVT_STDCALL	0x2
#define IX86_CALLCVT_FASTCALL	0x4
#define IX86_CALLCVT_THISCALL	0x8
#define IX86_CALLCVT_REGPARM	0x10
#define IX86_CALLCVT_SSEREGPARM	0x20

#define IX86_BASE_CALLCVT(FLAGS) \
	((FLAGS) & (IX86_CALLCVT_CDECL | IX86_CALLCVT_STDCALL \
		    | IX86_CALLCVT_FASTCALL | IX86_CALLCVT_THISCALL))

#define RECIP_MASK_NONE		0x00
#define RECIP_MASK_DIV		0x01
#define RECIP_MASK_SQRT		0x02
#define RECIP_MASK_VEC_DIV	0x04
#define RECIP_MASK_VEC_SQRT	0x08
#define RECIP_MASK_ALL	(RECIP_MASK_DIV | RECIP_MASK_SQRT \
			 | RECIP_MASK_VEC_DIV | RECIP_MASK_VEC_SQRT)
#define RECIP_MASK_DEFAULT (RECIP_MASK_VEC_DIV | RECIP_MASK_VEC_SQRT)

#define TARGET_RECIP_DIV	((recip_mask & RECIP_MASK_DIV) != 0)
#define TARGET_RECIP_SQRT	((recip_mask & RECIP_MASK_SQRT) != 0)
#define TARGET_RECIP_VEC_DIV	((recip_mask & RECIP_MASK_VEC_DIV) != 0)
#define TARGET_RECIP_VEC_SQRT	((recip_mask & RECIP_MASK_VEC_SQRT) != 0)

/*
Local variables:
version-control: t
End:
*/
