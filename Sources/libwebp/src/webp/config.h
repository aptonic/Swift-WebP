// Minimal config.h for libwebp 1.0.3
#ifndef WEBP_CONFIG_H
#define WEBP_CONFIG_H

// Define to 1 if you have the <dlfcn.h> header file.
#define HAVE_DLFCN_H 1

// Define to 1 if you have the <inttypes.h> header file.
#define HAVE_INTTYPES_H 1

// Define to 1 if you have the <memory.h> header file.
#define HAVE_MEMORY_H 1

// Define to 1 if you have the <pthread.h> header file.
#define HAVE_PTHREAD 1
#define HAVE_PTHREAD_H 1

// Define to 1 if you have the <stdint.h> header file.
#define HAVE_STDINT_H 1

// Define to 1 if you have the <stdlib.h> header file.
#define HAVE_STDLIB_H 1

// Define to 1 if you have the <strings.h> header file.
#define HAVE_STRINGS_H 1

// Define to 1 if you have the <string.h> header file.
#define HAVE_STRING_H 1

// Define to 1 if you have the <sys/stat.h> header file.
#define HAVE_SYS_STAT_H 1

// Define to 1 if you have the <sys/types.h> header file.
#define HAVE_SYS_TYPES_H 1

// Define to 1 if you have the <unistd.h> header file.
#define HAVE_UNISTD_H 1

// Enable threading support
#define WEBP_USE_THREAD 1

// Endianness detection
#if defined(__BYTE_ORDER__) && (__BYTE_ORDER__ == __ORDER_BIG_ENDIAN__)
#define WORDS_BIGENDIAN 1
#endif

// Package version
#define PACKAGE_VERSION "1.0.3"

#endif  // WEBP_CONFIG_H