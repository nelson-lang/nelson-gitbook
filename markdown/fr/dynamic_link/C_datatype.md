# Types libpointer

Équivalences entre types C et Nelson

## 📄 Description

Ce tableau montre les types Nelson et leurs équivalents en C.

| Type Nelson                                   | Type C                                                       |
| --------------------------------------------- | ------------------------------------------------------------ |
| logical (scalaire)                            | uint8_t                                                      |
| uint8 (scalaire)                              | uint8_t                                                      |
| int8 (scalaire)                               | int8_t                                                       |
| uint16 (scalaire)                             | uint16_t                                                     |
| int16 (scalaire)                              | int16_t                                                      |
| uint32 (scalaire)                             | uint32_t                                                     |
| int32 (scalaire)                              | int32_t                                                      |
| uint64 (scalaire)                             | uint64_t                                                     |
| int64 (scalaire)                              | int64_t                                                      |
| float, single (scalaire)                      | float                                                        |
| double (scalaire)                             | double                                                       |
| cstring (chaîne utf-8)                        | char \*                                                      |
| wstring (chaîne unicode)                      | wchar_t \*                                                   |
| void                                          | void                                                         |
| logicalPtr (logical vector or matrix)         | uint8_t \*                                                   |
| uint8Ptr (uint8 vector or matrix)             | uint8_t \*                                                   |
| int8Ptr (int8 vector or matrix)               | int8_t \*                                                    |
| uint16Ptr (uint16 vector or matrix)           | uint16_t \*                                                  |
| int16Ptr (int16 vector or matrix)             | int16_t \*                                                   |
| uint32Ptr (uint32 vector or matrix)           | uint32_t \*                                                  |
| int32Ptr (int32 vector or matrix)             | int32_t \*                                                   |
| int64Ptr (uint64 vector or matrix)            | int64_t \*                                                   |
| uint64Ptr (uint64 vector or matrix)           | uint64_t \*                                                  |
| floatPtr, singlePtr (single vector or matrix) | float \*                                                     |
| doublePtr (double vector or matrix)           | double \*                                                    |
| voidPtr                                       | void \*                                                      |
| libpointer                                    | void \*, uint8_t \*, int8_t \*, int16_t \*, uint16_t \*, ... |

## 🔗 Voir aussi

[libpointer](../dynamic_link/libpointer.md), [dlsym](../dynamic_link/dlsym.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
