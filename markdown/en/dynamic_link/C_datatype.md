# libpointer datatype

C/Nelson equivalent data types

## 📄 Description

This table shows these Nelson types with their equivalent C types.
| Nelson type | C type |
| --- | --- |
| logical (scalar) | uint8*t |
| uint8 (scalar) | uint8_t |
| int8 (scalar) | int8_t |
| uint16 (scalar) | uint16_t |
| int16 (scalar) | int16_t |
| uint32 (scalar) | uint32_t |
| int32 (scalar) | uint32_t |
| uint64 (scalar) | uint64_t |
| int64 (scalar) | int64_t |
| float, single (scalar) | float |
| double (scalar) | double |
| cstring (string utf-8) | char * |
| wstring (string unicode) | wchar*t * |
| void | void |
| logicalPtr (logical vector or matrix) | uint8*t * |
| uint8Ptr (uint8 vector or matrix) | uint8*t * |
| int8Ptr (int8 vector or matrix) | int8*t * |
| uint16Ptr (uint16 vector or matrix) | uint16*t * |
| int16Ptr (int16 vector or matrix) | int16*t * |
| uint32Ptr (uint32 vector or matrix) | uint32*t * |
| int32Ptr (int32 vector or matrix) | int32*t * |
| int64Ptr (uint64 vector or matrix) | int64*t * |
| uint64Ptr (uint64 vector or matrix) | uint64*t * |
| floatPtr, singlePtr (single vector or matrix) | float _ |
| doublePtr (double vector or matrix) | double _ |
| voidPtr | void _ |
| libpointer | void _, uint8*t *, int8*t *, int16*t *, uint16_t \*, ... |

## 🔗 See also

[libpointer](../dynamic_link/libpointer.md), [dlsym](../dynamic_link/dlsym.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
