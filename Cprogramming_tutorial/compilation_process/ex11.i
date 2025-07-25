#define _BITS_FLOATN_COMMON_H 
#define __SSP_STRONG__ 3
#define __attr_access(x) __attribute__ ((__access__ x))
#define __DBL_MIN_EXP__ (-1021)
#define __CFLOAT32 _Complex _Float32
#define __UINT_LEAST16_MAX__ 0xffff
#define __ATOMIC_ACQUIRE 2
#define __FLT128_MAX_10_EXP__ 4932
#define __FLT_MIN__ 1.17549435082228750796873653722224568e-38F
#define __GCC_IEC_559_COMPLEX 2
#define __GLIBC_USE(F) __GLIBC_USE_ ## F
#define __glibc_fortify_n(f,__l,__s,__osz,...) (__glibc_safe_or_unknown_len (__l, __s, __osz) ? __ ## f ## _alias (__VA_ARGS__) : (__glibc_unsafe_len (__l, __s, __osz) ? __ ## f ## _chk_warn (__VA_ARGS__, (__osz) / (__s)) : __ ## f ## _chk (__VA_ARGS__, (__osz) / (__s))))
#define __UINT_LEAST8_TYPE__ unsigned char
#define __SIZEOF_FLOAT80__ 16
#define __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI 0
#define __CFLOAT64 _Complex _Float64
#define __flexarr []
#define __S64_TYPE long int
#define __stub_fchflags 
#define __SQUAD_TYPE long int
#define __INTMAX_C(c) c ## L
#define _BSD_SIZE_T_DEFINED_ 
#define __CHAR_BIT__ 8
#define __FSWORD_T_TYPE __SYSCALL_SLONG_TYPE
#define __UINT8_MAX__ 0xff
#define __SCHAR_WIDTH__ 8
#define __feof_unlocked_body(_fp) (((_fp)->_flags & _IO_EOF_SEEN) != 0)
#define __WINT_MAX__ 0xffffffffU
#define __FLT32_MIN_EXP__ (-125)
#define stderr stderr
#define __GLIBC_PREREQ(maj,min) ((__GLIBC__ << 16) + __GLIBC_MINOR__ >= ((maj) << 16) + (min))
#define __OFF_T_MATCHES_OFF64_T 1
#define __ORDER_LITTLE_ENDIAN__ 1234
#define __SIZE_MAX__ 0xffffffffffffffffUL
#define __WCHAR_MAX__ 0x7fffffff
#define __BLKCNT_T_TYPE __SYSCALL_SLONG_TYPE
#define __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1
#define __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1
#define __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1
#define __DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)
#define __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1
#define __GCC_ATOMIC_CHAR_LOCK_FREE 2
#define __GCC_IEC_559 2
#define __FLT32X_DECIMAL_DIG__ 17
#define _IOFBF 0
#define __FLT_EVAL_METHOD__ 0
#define _IO_USER_LOCK 0x8000
#define __ASMNAME2(prefix,cname) __STRING (prefix) cname
#define __FLT64_DECIMAL_DIG__ 17
#define __CET__ 3
#define __HAVE_GENERIC_SELECTION 1
#define __GCC_ATOMIC_CHAR32_T_LOCK_FREE 2
#define __HAVE_FLOAT64 1
#define __attribute_nonstring__ __attribute__ ((__nonstring__))
#define __CFLOAT128 _Complex _Float128
#define __UINT_FAST64_MAX__ 0xffffffffffffffffUL
#define __SIG_ATOMIC_TYPE__ int
#define __GID_T_TYPE __U32_TYPE
#define __STATFS_MATCHES_STATFS64 1
#define __DBL_MIN_10_EXP__ (-307)
#define __FINITE_MATH_ONLY__ 0
#define __attribute_alloc_size__(params) __attribute__ ((__alloc_size__ params))
#define __FLT32X_MAX_EXP__ 1024
#define __FLT32_HAS_DENORM__ 1
#define __UINT_FAST8_MAX__ 0xff
#define __LEAF , __leaf__
#define __LDBL_REDIR1(name,proto,alias) name proto
#define __size_t 
#define __FLT32_MAX_10_EXP__ 38
#define __DEC64_MAX_EXP__ 385
#define __INT8_C(c) c
#define __INT_LEAST8_WIDTH__ 8
#define __UINT_LEAST64_MAX__ 0xffffffffffffffffUL
#define __always_inline __inline __attribute__ ((__always_inline__))
#define __SHRT_MAX__ 0x7fff
#define __LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L
#define __FLT64X_MAX_10_EXP__ 4932
#define __LDBL_IS_IEC_60559__ 2
#define __fortify_function __extern_always_inline __attribute_artificial__
#define __FLT64X_HAS_QUIET_NAN__ 1
#define __UINT_LEAST8_MAX__ 0xff
#define __GCC_ATOMIC_BOOL_LOCK_FREE 2
#define __FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128
#define __UINTMAX_TYPE__ long unsigned int
#define __HAVE_DISTINCT_FLOAT32X 0
#define __linux 1
#define __DEC32_EPSILON__ 1E-6DF
#define __FLT_EVAL_METHOD_TS_18661_3__ 0
#define _BITS_TYPES_H 1
#define __unix 1
#define __UINT32_MAX__ 0xffffffffU
#define __UID_T_TYPE __U32_TYPE
#define __SIZE_T 
#define _ATFILE_SOURCE 1
#define __attr_dealloc_fclose __attr_dealloc (fclose, 1)
#define __FLT128_MIN_EXP__ (-16381)
#define __WINT_MIN__ 0U
#define __FLT128_MIN_10_EXP__ (-4931)
#define __FLT32X_IS_IEC_60559__ 2
#define __INT_LEAST16_WIDTH__ 16
#define _SIZE_T_DEFINED_ 
#define __LDBL_REDIR_NTH(name,proto) name proto __THROW
#define __SCHAR_MAX__ 0x7f
#define __FLT128_MANT_DIG__ 113
#define __WCHAR_MIN__ (-__WCHAR_MAX__ - 1)
#define __KERNEL_STRICT_NAMES 
#define __INT64_C(c) c ## L
#define __NTH(fct) __attribute__ ((__nothrow__ __LEAF)) fct
#define __GCC_ATOMIC_POINTER_LOCK_FREE 2
#define __GLIBC_USE_IEC_60559_TYPES_EXT 0
#define __attribute_format_strfmon__(a,b) __attribute__ ((__format__ (__strfmon__, a, b)))
#define _POSIX_SOURCE 1
#define _DEFAULT_SOURCE 1
#define __attribute_used__ __attribute__ ((__used__))
#define __FLT32X_MANT_DIG__ 53
#define __USER_LABEL_PREFIX__ 
#define __glibc_macro_warning(message) __glibc_macro_warning1 (GCC warning message)
#define __GLIBC__ 2
#define __END_DECLS 
#define __FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x
#define __CONCAT(x,y) x ## y
#define __STDC_HOSTED__ 1
#define __SLONG32_TYPE int
#define __DEC64_MIN_EXP__ (-382)
#define __SSIZE_T_TYPE __SWORD_TYPE
#define __GNU_LIBRARY__ 6
#define __DBL_DIG__ 15
#define __FLT32_DIG__ 6
#define __RLIM_T_MATCHES_RLIM64_T 1
#define __FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F
#define _IO_EOF_SEEN 0x0010
#define __RLIM_T_TYPE __SYSCALL_ULONG_TYPE
#define __SHRT_WIDTH__ 16
#define __f64x(x) x ##f64x
#define TMP_MAX 238328
#define __FLT32_IS_IEC_60559__ 2
#define __DEV_T_TYPE __UQUAD_TYPE
#define __LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L
#define __STDC_UTF_16__ 1
#define _____fpos_t_defined 1
#define __nonnull(params) __attribute_nonnull__ (params)
#define __DBL_IS_IEC_60559__ 2
#define _SIZE_T_DEFINED 
#define __glibc_safe_or_unknown_len(__l,__s,__osz) (__glibc_unsigned_or_positive (__l) && __builtin_constant_p (__glibc_safe_len_cond ((__SIZE_TYPE__) (__l), __s, __osz)) && __glibc_safe_len_cond ((__SIZE_TYPE__) (__l), __s, __osz))
#define __DEC32_MAX__ 9.999999E96DF
#define __GLIBC_USE_IEC_60559_BFP_EXT 0
#define __FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x
#define _VA_LIST_DEFINED 
#define __FLT32X_HAS_INFINITY__ 1
#define __INT32_MAX__ 0x7fffffff
#define __GLIBC_USE_DEPRECATED_GETS 0
#define __unix__ 1
#define __INT_WIDTH__ 32
#define __SIZEOF_LONG__ 8
#define _IONBF 2
#define __STDC_IEC_559__ 1
#define __STDC_ISO_10646__ 201706L
#define __UINT16_C(c) c
#define __DECIMAL_DIG__ 21
#define __NTHNL(fct) __attribute__ ((__nothrow__)) fct
#define __USE_FORTIFY_LEVEL 0
#define __STDC_IEC_559_COMPLEX__ 1
#define __FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64
#define __gnu_linux__ 1
#define __FLT128_IS_IEC_60559__ 2
#define __attribute_warn_unused_result__ __attribute__ ((__warn_unused_result__))
#define __HAVE_FLOAT64X_LONG_DOUBLE 1
#define __FLT64X_MIN_10_EXP__ (-4931)
#define __LDBL_HAS_QUIET_NAN__ 1
#define __USE_ISOC11 1
#define __HAVE_FLOAT64X 1
#define __FLT64_MANT_DIG__ 53
#define __attribute_const__ __attribute__ ((__const__))
#define __THROW __attribute__ ((__nothrow__ __LEAF))
#define __FLT64X_MANT_DIG__ 64
#define L_tmpnam 20
#define __GNUC__ 11
#define __SYSCALL_ULONG_TYPE __ULONGWORD_TYPE
#define __pie__ 2
#define __MMX__ 1
#define L_ctermid 9
#define __OFF64_T_TYPE __SQUAD_TYPE
#define __FLT_HAS_DENORM__ 1
#define __SIZEOF_LONG_DOUBLE__ 16
#define __LDBL_REDIR1_NTH(name,proto,alias) name proto __THROW
#define SEEK_CUR 1
#define __BIGGEST_ALIGNMENT__ 16
#define __returns_nonnull __attribute__ ((__returns_nonnull__))
#define __GLIBC_USE_DEPRECATED_SCANF 0
#define __FLT64_MAX_10_EXP__ 308
#define __GLIBC_USE_LIB_EXT2 0
#define __USE_ISOC95 1
#define __USE_ISOC99 1
#define __ASMNAME(cname) __ASMNAME2 (__USER_LABEL_PREFIX__, cname)
#define _STDIO_H 1
#define __DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)
#define __INT_FAST32_MAX__ 0x7fffffffffffffffL
#define __DBL_HAS_INFINITY__ 1
#define __GLIBC_USE_IEC_60559_FUNCS_EXT 0
#define __SIZEOF_FLOAT__ 4
#define __USE_XOPEN2K 1
#define __HAVE_SPECULATION_SAFE_VALUE 1
#define __DEC32_MIN_EXP__ (-94)
#define __DADDR_T_TYPE __S32_TYPE
#define __INTPTR_WIDTH__ 64
#define __FLT64X_HAS_INFINITY__ 1
#define __UINT_LEAST32_MAX__ 0xffffffffU
#define __FD_SETSIZE 1024
#define __FLT32X_HAS_DENORM__ 1
#define __INT_FAST16_TYPE__ long int
#define __HAVE_FLOAT128X 0
#define __MMX_WITH_SSE__ 1
#define __INO_T_MATCHES_INO64_T 1
#define __USE_POSIX199506 1
#define _FEATURES_H 1
#define __LDBL_HAS_DENORM__ 1
#define __stub_setlogin 
#define __FLT128_HAS_INFINITY__ 1
#define __DEC32_MIN__ 1E-95DF
#define __S32_TYPE int
#define __DBL_MAX_EXP__ 1024
#define __WCHAR_WIDTH__ 32
#define __FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32
#define __DEC128_EPSILON__ 1E-33DL
#define __SSE2_MATH__ 1
#define __ATOMIC_HLE_RELEASE 131072
#define __FSFILCNT_T_TYPE __SYSCALL_ULONG_TYPE
#define __HAVE_FLOAT16 0
#define __PTRDIFF_MAX__ 0x7fffffffffffffffL
#define __CPU_MASK_TYPE __SYSCALL_ULONG_TYPE
#define __amd64 1
#define __SYSCALL_WORDSIZE 64
#define __glibc_unsigned_or_positive(__l) ((__typeof (__l)) 0 < (__typeof (__l)) -1 || (__builtin_constant_p (__l) && (__l) > 0))
#define __USECONDS_T_TYPE __U32_TYPE
#define __OFF_T_TYPE __SYSCALL_SLONG_TYPE
#define __glibc_objsize(__o) __bos (__o)
#define __ATOMIC_HLE_ACQUIRE 65536
#define __LONG_LONG_MAX__ 0x7fffffffffffffffLL
#define __SIZEOF_SIZE_T__ 8
#define __FLT64X_MIN_EXP__ (-16381)
#define __SIZEOF_WINT_T__ 4
#define __f32x(x) x ##f32x
#define __LONG_LONG_WIDTH__ 64
#define __putc_unlocked_body(_ch,_fp) (__glibc_unlikely ((_fp)->_IO_write_ptr >= (_fp)->_IO_write_end) ? __overflow (_fp, (unsigned char) (_ch)) : (unsigned char) (*(_fp)->_IO_write_ptr++ = (_ch)))
#define __U16_TYPE unsigned short int
#define __fortified_attr_access(a,o,s) __attr_access ((a, o, s))
#define __FLT32_MAX_EXP__ 128
#define __HAVE_FLOATN_NOT_TYPEDEF 1
#define __GXX_ABI_VERSION 1016
#define __FLT_MIN_EXP__ (-125)
#define __GCC_HAVE_DWARF2_CFI_ASM 1
#define __INT16_MAX__ 0x7fff
#define __attribute_copy__(arg) __attribute__ ((__copy__ (arg)))
#define __x86_64 1
#define __REDIRECT(name,proto,alias) name proto __asm__ (__ASMNAME (#alias))
#define __HAVE_DISTINCT_FLOAT16 __HAVE_FLOAT16
#define __extern_always_inline extern __always_inline __attribute__ ((__gnu_inline__))
#define _BSD_SIZE_T_ 
#define __attr_access_none(argno) __attribute__ ((__access__ (__none__, argno)))
#define __INT_FAST64_TYPE__ long int
#define __FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64
#define __DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)
#define __FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128
#define __FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x
#define __SIZEOF_POINTER__ 8
#define __HAVE_DISTINCT_FLOAT64 0
#define __LP64__ 1
#define __DBL_HAS_QUIET_NAN__ 1
#define __HAVE_FLOAT32X 1
#define __FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x
#define __MODE_T_TYPE __U32_TYPE
#define __LEAF_ATTR __attribute__ ((__leaf__))
#define __DECIMAL_BID_FORMAT__ 1
#define __FLT64_MIN_EXP__ (-1021)
#define __RLIM64_T_TYPE __UQUAD_TYPE
#define __extern_inline extern __inline __attribute__ ((__gnu_inline__))
#define __glibc_has_attribute(attr) __has_attribute (attr)
#define __CFLOAT64X _Complex _Float64x
#define __FLT64_MIN_10_EXP__ (-307)
#define __FLT64X_DECIMAL_DIG__ 21
#define __DEC128_MIN__ 1E-6143DL
#define __REGISTER_PREFIX__ 
#define __UINT16_MAX__ 0xffff
#define __DBL_HAS_DENORM__ 1
#define __attr_dealloc_free __attr_dealloc (__builtin_free, 1)
#define __LDBL_HAS_INFINITY__ 1
#define __HAVE_DISTINCT_FLOAT128X __HAVE_FLOAT128X
#define __FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32
#define __UINT8_TYPE__ unsigned char
#define __FLT_DIG__ 6
#define __REDIRECT_LDBL(name,proto,alias) __REDIRECT (name, proto, alias)
#define __NO_INLINE__ 1
#define __DEC_EVAL_METHOD__ 2
#define __DEC128_MAX__ 9.999999999999999999999999999999999E6144DL
#define __FLT_MANT_DIG__ 24
#define __LDBL_DECIMAL_DIG__ 21
#define __VERSION__ "11.4.0"
#define __UINT64_C(c) c ## UL
#define _SYS_CDEFS_H 1
#define _STDC_PREDEF_H 1
#define __USE_XOPEN2K8 1
#define __INT_LEAST32_MAX__ 0x7fffffff
#define __STRING(x) #x
#define __GCC_ATOMIC_INT_LOCK_FREE 2
#define __FLT128_MAX_EXP__ 16384
#define __INO_T_TYPE __SYSCALL_ULONG_TYPE
#define __ssize_t_defined 
#define __GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))
#define __FLT32_MANT_DIG__ 24
#define _SYS_SIZE_T_H 
#define __FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X 0
#define __SUSECONDS_T_TYPE __SYSCALL_SLONG_TYPE
#define __SIZE_T__ 
#define __stub_gtty 
#define __NLINK_T_TYPE __SYSCALL_ULONG_TYPE
#define __attribute_deprecated_msg__(msg) __attribute__ ((__deprecated__ (msg)))
#define __STDC_IEC_60559_COMPLEX__ 201404L
#define __glibc_macro_warning1(message) _Pragma (#message)
#define __wur 
#define __FLT128_HAS_DENORM__ 1
#define __FLT32_DECIMAL_DIG__ 9
#define __FLT128_DIG__ 33
#define __INT32_C(c) c
#define __DEC64_EPSILON__ 1E-15DD
#define __ORDER_PDP_ENDIAN__ 3412
#define __DEC128_MIN_EXP__ (-6142)
#define __INT_FAST32_TYPE__ long int
#define _BITS_TYPESIZES_H 1
#define __SYSCALL_SLONG_TYPE __SLONGWORD_TYPE
#define __UINT_LEAST16_TYPE__ short unsigned int
#define __GLIBC_USE_IEC_60559_BFP_EXT_C2X 0
#define __glibc_unlikely(cond) __builtin_expect ((cond), 0)
#define unix 1
#define __attr_dealloc(dealloc,argno) __attribute__ ((__malloc__ (dealloc, argno)))
#define __THROWNL __attribute__ ((__nothrow__))
#define __SIZE_TYPE__ long unsigned int
#define __UINT64_MAX__ 0xffffffffffffffffUL
#define __va_arg_pack_len() __builtin_va_arg_pack_len ()
#define __ULONGWORD_TYPE unsigned long int
#define _SIZE_T_DECLARED 
#define __FLT_IS_IEC_60559__ 2
#define __GNUC_WIDE_EXECUTION_CHARSET_NAME "UTF-32LE"
#define __FLT64X_DIG__ 18
#define __INT8_TYPE__ signed char
#define __HAVE_DISTINCT_FLOAT128 1
#define __ELF__ 1
#define __GCC_ASM_FLAG_OUTPUTS__ 1
#define __UINT32_TYPE__ unsigned int
#define __ID_T_TYPE __U32_TYPE
#define __TIME_T_TYPE __SYSCALL_SLONG_TYPE
#define __warnattr(msg) __attribute__((__warning__ (msg)))
#define __FLT_RADIX__ 2
#define __INT_LEAST16_TYPE__ short int
#define __LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L
#define __UINTMAX_C(c) c ## UL
#define _POSIX_C_SOURCE 200809L
#define __SSE_MATH__ 1
#define __k8 1
#define __FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x
#define __LDBL_REDIR(name,proto) name proto
#define __SIG_ATOMIC_MAX__ 0x7fffffff
#define __f32(x) x ##f32
#define __GCC_ATOMIC_WCHAR_T_LOCK_FREE 2
#define __STDC_IEC_60559_BFP__ 201404L
#define __SIZEOF_PTRDIFF_T__ 8
#define SEEK_SET 0
#define __f64(x) x ##f64
#define __stub_sigreturn 
#define __errordecl(name,msg) extern void name (void) __attribute__((__error__ (msg)))
#define __restrict_arr __restrict
#define __CFLOAT32X _Complex _Float32x
#define __attribute_artificial__ __attribute__ ((__artificial__))
#define __USE_MISC 1
#define __UWORD_TYPE unsigned long int
#define __LDBL_DIG__ 18
#define __FLT64_IS_IEC_60559__ 2
#define __x86_64__ 1
#define _SIZE_T_ 
#define __FLT32X_MIN_EXP__ (-1021)
#define __DEC32_SUBNORMAL_MIN__ 0.000001E-95DF
#define __glibc_safe_len_cond(__l,__s,__osz) ((__l) <= (__osz) / (__s))
#define __INT_FAST16_MAX__ 0x7fffffffffffffffL
#define __stub_revoke 
#define __FLT64_DIG__ 15
#define __UINT_FAST32_MAX__ 0xffffffffffffffffUL
#define __UINT_LEAST64_TYPE__ long unsigned int
#define NULL ((void *)0)
#define __U64_TYPE unsigned long int
#define __FLT_HAS_QUIET_NAN__ 1
#define __FLT_MAX_10_EXP__ 38
#define _____fpos64_t_defined 1
#define __glibc_c99_flexarr_available 1
#define __LONG_MAX__ 0x7fffffffffffffffL
#define __FLT64X_HAS_DENORM__ 1
#define __DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL
#define __glibc_objsize0(__o) __bos0 (__o)
#define __FLT_HAS_INFINITY__ 1
#define __GNUC_EXECUTION_CHARSET_NAME "UTF-8"
#define __UINT_FAST16_TYPE__ long unsigned int
#define __bos0(ptr) __builtin_object_size (ptr, 0)
#define __DEC64_MAX__ 9.999999999999999E384DD
#define __INT_FAST32_WIDTH__ 64
#define __HAVE_FLOAT128_UNLIKE_LDBL (__HAVE_DISTINCT_FLOAT128 && __LDBL_MANT_DIG__ != 113)
#define __CHAR16_TYPE__ short unsigned int
#define __PRAGMA_REDEFINE_EXTNAME 1
#define __SIZE_WIDTH__ 64
#define __BLKSIZE_T_TYPE __SYSCALL_SLONG_TYPE
#define __SEG_FS 1
#define __INT_LEAST16_MAX__ 0x7fff
#define __DEC64_MANT_DIG__ 16
#define __INT64_MAX__ 0x7fffffffffffffffL
#define __SEG_GS 1
#define __FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32
#define __SIG_ATOMIC_WIDTH__ 32
#define __INT_LEAST64_TYPE__ long int
#define __INT16_TYPE__ short int
#define __INT_LEAST8_TYPE__ signed char
#define __STDC_VERSION__ 201710L
#define __SIZEOF_INT__ 4
#define __DEC32_MAX_EXP__ 97
#define __INT_FAST8_MAX__ 0x7f
#define __PMT(args) args
#define __FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128
#define __INTPTR_MAX__ 0x7fffffffffffffffL
#define linux 1
#define __FLT64_HAS_QUIET_NAN__ 1
#define ____FILE_defined 1
#define _IOLBF 1
#define __USE_POSIX2 1
#define __FLT32_MIN_10_EXP__ (-37)
#define __KEY_T_TYPE __S32_TYPE
#define __FLT32X_DIG__ 15
#define __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 1
#define __WORDSIZE 64
#define __PTRDIFF_WIDTH__ 64
#define __BEGIN_DECLS 
#define __LDBL_MANT_DIG__ 64
#define __FLT64_HAS_INFINITY__ 1
#define __FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x
#define __GNUC_VA_LIST 
#define __SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)
#define __code_model_small__ 1
#define __GCC_ATOMIC_LONG_LOCK_FREE 2
#define __DEC32_MANT_DIG__ 7
#define FILENAME_MAX 4096
#define __k8__ 1
#define __INTPTR_TYPE__ long int
#define __UINT16_TYPE__ short unsigned int
#define __WCHAR_TYPE__ int
#define __CLOCKID_T_TYPE __S32_TYPE
#define __SLONGWORD_TYPE long int
#define __pic__ 2
#define __UINTPTR_MAX__ 0xffffffffffffffffUL
#define __INT_FAST64_WIDTH__ 64
#define __stub_chflags 
#define __UQUAD_TYPE unsigned long int
#define __USE_POSIX 1
#define __INT_FAST64_MAX__ 0x7fffffffffffffffL
#define __GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1
#define BUFSIZ 8192
#define __FSID_T_TYPE struct { int __val[2]; }
#define __FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F
#define __FLT32_HAS_INFINITY__ 1
#define __FLT64X_MAX_EXP__ 16384
#define __UINT_FAST64_TYPE__ long unsigned int
#define __LDBL_REDIR_DECL(name) 
#define __INT_MAX__ 0x7fffffff
#define __linux__ 1
#define __S16_TYPE short int
#define __bos(ptr) __builtin_object_size (ptr, __USE_FORTIFY_LEVEL > 1)
#define _T_SIZE_ 
#define __TIMESIZE __WORDSIZE
#define __INT64_TYPE__ long int
#define __FLT_MAX_EXP__ 128
#define __ORDER_BIG_ENDIAN__ 4321
#define __ptr_t void *
#define __DBL_MANT_DIG__ 53
#define ___int_size_t_h 
#define __TIMER_T_TYPE void *
#define __FSBLKCNT64_T_TYPE __UQUAD_TYPE
#define __SIZEOF_FLOAT128__ 16
#define __INT_LEAST64_MAX__ 0x7fffffffffffffffL
#define __GCC_ATOMIC_CHAR16_T_LOCK_FREE 2
#define __GLIBC_MINOR__ 35
#define __DEC64_MIN__ 1E-383DD
#define __WINT_TYPE__ unsigned int
#define __UINT_LEAST32_TYPE__ unsigned int
#define __SIZEOF_SHORT__ 2
#define __FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32
#define __SSE__ 1
#define __LDBL_MIN_EXP__ (-16381)
#define __FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64
#define stdout stdout
#define __amd64__ 1
#define __WINT_WIDTH__ 32
#define __struct_FILE_defined 1
#define __REDIRECT_NTHNL(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROWNL
#define EOF (-1)
#define __INT_LEAST8_MAX__ 0x7f
#define __USE_POSIX199309 1
#define __INT_LEAST64_WIDTH__ 64
#define __LDBL_MAX_EXP__ 16384
#define __FLT32X_MAX_10_EXP__ 308
#define ____mbstate_t_defined 1
#define __SIZEOF_INT128__ 16
#define __FLT64X_IS_IEC_60559__ 2
#define __BLKCNT64_T_TYPE __SQUAD_TYPE
#define __LDBL_MAX_10_EXP__ 4932
#define __ATOMIC_RELAXED 0
#define __FSBLKCNT_T_TYPE __SYSCALL_ULONG_TYPE
#define __DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)
#define __stub_stty 
#define __attribute_maybe_unused__ __attribute__ ((__unused__))
#define __FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128
#define _SIZET_ 
#define _LP64 1
#define __REDIRECT_NTH_LDBL(name,proto,alias) __REDIRECT_NTH (name, proto, alias)
#define __UINT8_C(c) c
#define __FLT64_MAX_EXP__ 1024
#define __INT_LEAST32_TYPE__ int
#define SEEK_END 2
#define __SIZEOF_WCHAR_T__ 4
#define __USE_POSIX_IMPLICITLY 1
#define __UINT64_TYPE__ long unsigned int
#define __GNUC_PATCHLEVEL__ 0
#define __REDIRECT_NTH(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROW
#define __attribute_alloc_align__(param) __attribute__ ((__alloc_align__ param))
#define __FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128
#define __stub___compat_bdflush 
#define __FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64
#define __FLT128_HAS_QUIET_NAN__ 1
#define __INTMAX_MAX__ 0x7fffffffffffffffL
#define __INT_FAST8_TYPE__ signed char
#define __PID_T_TYPE __S32_TYPE
#define __FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x
#define __GLIBC_USE_ISOC2X 0
#define __f128(x) x ##f128
#define __glibc_has_extension(ext) 0
#define __GNUC_STDC_INLINE__ 1
#define __ferror_unlocked_body(_fp) (((_fp)->_flags & _IO_ERR_SEEN) != 0)
#define P_tmpdir "/tmp"
#define __attribute_pure__ __attribute__ ((__pure__))
#define __FLT64_HAS_DENORM__ 1
#define __HAVE_FLOAT32 1
#define __WORDSIZE_TIME64_COMPAT32 1
#define __HAVE_DISTINCT_FLOAT32 0
#define __FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32
#define __DBL_DECIMAL_DIG__ 17
#define __STDC_UTF_32__ 1
#define _BITS_STDIO_LIM_H 1
#define __INT_FAST8_WIDTH__ 8
#define __FXSR__ 1
#define _SIZE_T 
#define _IO_ERR_SEEN 0x0020
#define __FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x
#define __ULONG32_TYPE unsigned int
#define __DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)
#define FOPEN_MAX 16
#define __BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __off_t_defined 
#define __INTMAX_WIDTH__ 64
#define _GCC_SIZE_T 
#define __INO64_T_TYPE __UQUAD_TYPE
#define __UINT32_C(c) c ## U
#define __size_t__ 
#define __FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F
#define _BITS_TIME64_H 1
#define __TIME64_T_TYPE __TIME_T_TYPE
#define __glibc_has_builtin(name) __has_builtin (name)
#define __INT8_MAX__ 0x7f
#define __LONG_WIDTH__ 64
#define __PIC__ 2
#define __attribute_returns_twice__ __attribute__ ((__returns_twice__))
#define __UINT_FAST32_TYPE__ long unsigned int
#define __FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x
#define __CHAR32_TYPE__ unsigned int
#define __FLT_MAX__ 3.40282346638528859811704183484516925e+38F
#define __GLIBC_USE_IEC_60559_EXT 0
#define __HAVE_FLOAT128 1
#define __attribute_format_arg__(x) __attribute__ ((__format_arg__ (x)))
#define __SSE2__ 1
#define __INT32_TYPE__ int
#define __SIZEOF_DOUBLE__ 8
#define __FLT_MIN_10_EXP__ (-37)
#define __FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64
#define __INT_LEAST32_WIDTH__ 32
#define __SWORD_TYPE long int
#define __INTMAX_TYPE__ long int
#define __DEC128_MAX_EXP__ 6145
#define _T_SIZE 
#define __va_arg_pack() __builtin_va_arg_pack ()
#define __glibc_fortify(f,__l,__s,__osz,...) (__glibc_safe_or_unknown_len (__l, __s, __osz) ? __ ## f ## _alias (__VA_ARGS__) : (__glibc_unsafe_len (__l, __s, __osz) ? __ ## f ## _chk_warn (__VA_ARGS__, __osz) : __ ## f ## _chk (__VA_ARGS__, __osz)))
#define __FLT32X_HAS_QUIET_NAN__ 1
#define __ATOMIC_CONSUME 1
#define __GNUC_MINOR__ 4
#define __INT_FAST16_WIDTH__ 64
#define __UINTMAX_MAX__ 0xffffffffffffffffUL
#define __PIE__ 2
#define __FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x
#define __LDBL_REDIR2_DECL(name) 
#define __getc_unlocked_body(_fp) (__glibc_unlikely ((_fp)->_IO_read_ptr >= (_fp)->_IO_read_end) ? __uflow (_fp) : *(unsigned char *) (_fp)->_IO_read_ptr++)
#define __glibc_clang_prereq(maj,min) 0
#define __DBL_MAX_10_EXP__ 308
#define __FILE_defined 1
#define __LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L
#define __INT16_C(c) c
#define __U32_TYPE unsigned int
#define __STDC__ 1
#define __attribute_malloc__ __attribute__ ((__malloc__))
#define __PTRDIFF_TYPE__ long int
#define stdin stdin
#define __attribute_noinline__ __attribute__ ((__noinline__))
#define __ATOMIC_SEQ_CST 5
#define __CLOCK_T_TYPE __SYSCALL_SLONG_TYPE
#define _BITS_FLOATN_H 
#define __FLT32X_MIN_10_EXP__ (-307)
#define __UINTPTR_TYPE__ long unsigned int
#define __DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD
#define __FSFILCNT64_T_TYPE __UQUAD_TYPE
#define __DEC128_MANT_DIG__ 34
#define __LDBL_MIN_10_EXP__ (-4931)
#define __attribute_deprecated__ __attribute__ ((__deprecated__))
#define __HAVE_DISTINCT_FLOAT64X 0
#define __SIZEOF_LONG_LONG__ 8
#define __USE_ATFILE 1
#define __attribute_nonnull__(params) __attribute__ ((__nonnull__ params))
#define __FLT128_DECIMAL_DIG__ 36
#define __GCC_ATOMIC_LLONG_LOCK_FREE 2
#define __FLT32_HAS_QUIET_NAN__ 1
#define __FLT_DECIMAL_DIG__ 9
#define __UINT_FAST16_MAX__ 0xffffffffffffffffUL
#define __LDBL_NORM_MAX__ 1.18973149535723176502126385303097021e+4932L
#define __glibc_unsafe_len(__l,__s,__osz) (__glibc_unsigned_or_positive (__l) && __builtin_constant_p (__glibc_safe_len_cond ((__SIZE_TYPE__) (__l), __s, __osz)) && !__glibc_safe_len_cond ((__SIZE_TYPE__) (__l), __s, __osz))
#define __GCC_ATOMIC_SHORT_LOCK_FREE 2
#define __SUSECONDS64_T_TYPE __SQUAD_TYPE
#define __glibc_likely(cond) __builtin_expect ((cond), 1)
#define __UINT_FAST8_TYPE__ unsigned char
#define __P(args) args
#define __ATOMIC_ACQ_REL 4
#define __ATOMIC_RELEASE 3
