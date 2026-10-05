#import "nelson_help.typ": *

= libpointer datatype <dynamic_link:C_datatype>

C\/Nelson equivalent data types

== Description

This table shows these Nelson types with their equivalent C types.

 

#table(
  columns: 2,
  [Nelson type], [C type], 
  [logical (scalar)], [uint8\_t], 
  [uint8 (scalar)], [uint8\_t], 
  [int8 (scalar)], [int8\_t], 
  [uint16 (scalar)], [uint16\_t], 
  [int16 (scalar)], [int16\_t], 
  [uint32 (scalar)], [uint32\_t], 
  [int32 (scalar)], [uint32\_t], 
  [uint64 (scalar)], [uint64\_t], 
  [int64 (scalar)], [int64\_t], 
  [float, single (scalar)], [float], 
  [double (scalar)], [double], 
  [cstring (string utf-8)], [char \*], 
  [wstring (string unicode)], [wchar\_t \*], 
  [void], [void], 
  [logicalPtr (logical vector or matrix)], [uint8\_t \*], 
  [uint8Ptr (uint8 vector or matrix)], [uint8\_t \*], 
  [int8Ptr (int8 vector or matrix)], [int8\_t \*], 
  [uint16Ptr (uint16 vector or matrix)], [uint16\_t \*], 
  [int16Ptr (int16 vector or matrix)], [int16\_t \*], 
  [uint32Ptr (uint32 vector or matrix)], [uint32\_t \*], 
  [int32Ptr (int32 vector or matrix)], [int32\_t \*], 
  [int64Ptr (uint64 vector or matrix)], [int64\_t \*], 
  [uint64Ptr (uint64 vector or matrix)], [uint64\_t \*], 
  [floatPtr, singlePtr (single vector or matrix)], [float \*], 
  [doublePtr (double vector or matrix)], [double \*], 
  [voidPtr], [void \*], 
  [libpointer], [void \*, uint8\_t \*, int8\_t \*, int16\_t \*, uint16\_t \*, ...], 
)

== See also

#nlink(<dynamic_link:libpointer>)[libpointer];, #nlink(<dynamic_link:dlsym>)[dlsym];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
